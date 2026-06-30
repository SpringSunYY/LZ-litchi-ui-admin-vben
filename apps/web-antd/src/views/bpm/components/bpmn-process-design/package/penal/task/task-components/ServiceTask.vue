<!-- eslint-disable unicorn/no-nested-ternary -->
<!-- eslint-disable prettier/prettier -->
<script lang="ts" setup>
import { inject, nextTick, onBeforeUnmount, ref, watch } from 'vue';

import { useVbenModal } from '@vben/common-ui';
import { IconifyIcon } from '@vben/icons';

import {
  Button,
  Form,
  FormItem,
  Input,
  RadioButton,
  RadioGroup,
  Select,
  Switch,
  Textarea,
} from 'ant-design-vue';

import { $t } from '#/locales';

import { updateElementExtensions } from '../../../utils';
import HttpHeaderEditor from './HttpHeaderEditor.vue';

defineOptions({ name: 'ServiceTask' });
const props = defineProps({
  id: { type: String, default: '' },
  type: { type: String, default: '' },
});

const prefix = (inject('prefix', 'flowable') || 'flowable') as string;
const flowableTypeKey = `${prefix}:type`;
const flowableFieldType = `${prefix}:Field`;

const HTTP_FIELD_NAMES = [
  'requestMethod',
  'requestUrl',
  'requestHeaders',
  'disallowRedirects',
  'ignoreException',
  'saveResponseParameters',
  'resultVariablePrefix',
  'saveResponseParametersTransient',
  'saveResponseVariableAsJson',
];
const HTTP_BOOLEAN_FIELDS = new Set([
  'disallowRedirects',
  'ignoreException',
  'saveResponseParameters',
  'saveResponseParametersTransient',
  'saveResponseVariableAsJson',
]);

const DEFAULT_TASK_FORM = {
  executeType: '',
  class: '',
  expression: '',
  delegateExpression: '',
};

const DEFAULT_HTTP_FORM = {
  requestMethod: 'GET',
  requestUrl: '',
  requestHeaders: 'Content-Type: application/json',
  resultVariablePrefix: '',
  disallowRedirects: false,
  ignoreException: false,
  saveResponseParameters: false,
  saveResponseParametersTransient: false,
  saveResponseVariableAsJson: false,
};

const serviceTaskForm = ref({ ...DEFAULT_TASK_FORM });
const httpTaskForm = ref<any>({ ...DEFAULT_HTTP_FORM });
const bpmnElement = ref();
const httpInitializing = ref(false);

const bpmnInstances = () => (window as any)?.bpmnInstances;

// 判断字符串是否包含表达式
const isExpression = (value: string): boolean => {
  if (!value) return false;
  // 检测 ${...} 或 #{...} 格式的表达式
  return /\$\{[^}]+\}/.test(value) || /#\{[^}]+\}/.test(value);
};

const collectHttpExtensionInfo = () => {
  const businessObject = bpmnElement.value?.businessObject;
  const extensionElements = businessObject?.extensionElements;
  const httpFields = new Map<string, string>();
  const httpFieldTypes = new Map<string, 'expression' | 'string'>();
  const otherExtensions: any[] = [];

  extensionElements?.values?.forEach((item: any) => {
    if (
      item?.$type === flowableFieldType &&
      HTTP_FIELD_NAMES.includes(item.name)
    ) {
      const value = item.string ?? item.stringValue ?? item.expression ?? '';
      const fieldType = item.expression ? 'expression' : 'string';
      httpFields.set(item.name, value);
      httpFieldTypes.set(item.name, fieldType);
    } else {
      otherExtensions.push(item);
    }
  });

  return { httpFields, httpFieldTypes, otherExtensions };
};

const resetHttpDefaults = () => {
  httpInitializing.value = true;
  httpTaskForm.value = { ...DEFAULT_HTTP_FORM };
  nextTick(() => {
    httpInitializing.value = false;
  });
};

const resetHttpForm = () => {
  httpInitializing.value = true;
  const { httpFields } = collectHttpExtensionInfo();
  const nextForm: any = { ...DEFAULT_HTTP_FORM };

  HTTP_FIELD_NAMES.forEach((name) => {
    const stored = httpFields.get(name);
    if (stored !== undefined) {
      nextForm[name] = HTTP_BOOLEAN_FIELDS.has(name)
        ? stored === 'true'
        : stored;
    }
  });

  httpTaskForm.value = nextForm;
  nextTick(() => {
    httpInitializing.value = false;
    updateHttpExtensions(true);
  });
};

const resetServiceTaskForm = () => {
  const businessObject = bpmnElement.value?.businessObject;
  const nextForm = { ...DEFAULT_TASK_FORM };

  if (businessObject) {
    if (businessObject.class) {
      nextForm.class = businessObject.class;
      nextForm.executeType = 'class';
    }
    if (businessObject.expression) {
      nextForm.expression = businessObject.expression;
      nextForm.executeType = 'expression';
    }
    if (businessObject.delegateExpression) {
      nextForm.delegateExpression = businessObject.delegateExpression;
      nextForm.executeType = 'delegateExpression';
    }
    if (businessObject.$attrs?.[flowableTypeKey] === 'http') {
      nextForm.executeType = 'http';
    } else {
      // 兜底：如缺少 flowable:type=http，但扩展里已有 HTTP 的字段，也认为是 HTTP
      const { httpFields } = collectHttpExtensionInfo();
      if (httpFields.size > 0) {
        nextForm.executeType = 'http';
      }
    }
  }

  serviceTaskForm.value = nextForm;

  if (nextForm.executeType === 'http') {
    resetHttpForm();
  } else {
    resetHttpDefaults();
  }
};

const shouldPersistField = (name: string, value: any) => {
  if (HTTP_BOOLEAN_FIELDS.has(name)) return true;
  if (name === 'requestMethod') return true;
  if (name === 'requestUrl') return !!value;
  return value !== undefined && value !== '';
};

const updateHttpExtensions = (force = false) => {
  const instances = bpmnInstances();
  if (!instances || !instances.bpmnElement) return;
  // 直接使用原始BPMN元素，避免Vue响应式代理问题
  const bpmnElement = instances.bpmnElement;
  if (
    !force &&
    (httpInitializing.value || serviceTaskForm.value.executeType !== 'http')
  ) {
    return;
  }

  const {
    httpFields: existingFields,
    httpFieldTypes: existingTypes,
    otherExtensions,
  } = collectHttpExtensionInfo();

  const desiredEntries: [string, string][] = [];
  HTTP_FIELD_NAMES.forEach((name) => {
    const rawValue = httpTaskForm.value[name];
    if (!shouldPersistField(name, rawValue)) {
      return;
    }

    const persisted = HTTP_BOOLEAN_FIELDS.has(name)
      ? String(!!rawValue)
      : rawValue === undefined
        ? ''
        : rawValue.toString();

    desiredEntries.push([name, persisted]);
  });

  // 检查是否有变化：不仅比较值，还要比较字段类型（string vs expression）
  if (!force && desiredEntries.length === existingFields.size) {
    let noChange = true;
    for (const [name, value] of desiredEntries) {
      const existingValue = existingFields.get(name);
      const existingType = existingTypes.get(name);
      const currentType = isExpression(value) ? 'expression' : 'string';
      if (existingValue !== value || existingType !== currentType) {
        noChange = false;
        break;
      }
    }
    if (noChange) {
      return;
    }
  }

  const moddle = bpmnInstances().moddle;
  const httpFieldElements = desiredEntries.map(([name, value]) => {
    // 根据值是否包含表达式来决定使用 string 还是 expression 属性
    const isExpr = isExpression(value);
    return moddle.create(flowableFieldType, {
      name,
      ...(isExpr ? { expression: value } : { string: value }),
    });
  });

  updateElementExtensions(bpmnElement, [
    ...otherExtensions,
    ...httpFieldElements,
  ]);
};

const removeHttpExtensions = () => {
  const instances = bpmnInstances();
  if (!instances || !instances.bpmnElement) return;
  // 直接使用原始BPMN元素，避免Vue响应式代理问题
  const bpmnElement = instances.bpmnElement;
  const { httpFields, otherExtensions } = collectHttpExtensionInfo();
  if (httpFields.size === 0) {
    return;
  }

  if (otherExtensions.length === 0) {
    bpmnInstances().modeling.updateProperties(bpmnElement, {
      extensionElements: null,
    });
    return;
  }

  updateElementExtensions(bpmnElement, otherExtensions);
};

const updateElementTask = () => {
  const instances = bpmnInstances();
  if (!instances || !instances.bpmnElement) return;
  // 直接使用原始BPMN元素，避免Vue响应式代理问题
  const bpmnElement = instances.bpmnElement;

  const taskAttr: Record<string, any> = {
    class: null,
    expression: null,
    delegateExpression: null,
    [flowableTypeKey]: null,
  };

  const type = serviceTaskForm.value.executeType;
  if (
    type === 'class' ||
    type === 'expression' ||
    type === 'delegateExpression'
  ) {
    taskAttr[type] = serviceTaskForm.value[type] || null;
  } else if (type === 'http') {
    taskAttr[flowableTypeKey] = 'http';
  }

  bpmnInstances().modeling.updateProperties(bpmnElement, taskAttr);

  if (type === 'http') {
    updateHttpExtensions(true);
  } else {
    removeHttpExtensions();
  }
};

const handleExecuteTypeChange = (value: any) => {
  serviceTaskForm.value.executeType = value;
  if (value === 'http') {
    resetHttpForm();
  }
  updateElementTask();
};

/** 打开请求头编辑器 */
const openHttpHeaderEditor = () => {
  httpHeaderEditorApi
    .setData({
      headers: httpTaskForm.value.requestHeaders,
    })
    .open();
};

/** 保存请求头 */
const handleHeadersSave = (headersStr: string) => {
  httpTaskForm.value.requestHeaders = headersStr;
};

const [HttpHeaderEditorModal, httpHeaderEditorApi] = useVbenModal({
  connectedComponent: HttpHeaderEditor,
});

onBeforeUnmount(() => {
  bpmnElement.value = null;
});

watch(
  () => props.id,
  () => {
    bpmnElement.value = bpmnInstances().bpmnElement;
    nextTick(() => {
      resetServiceTaskForm();
    });
  },
  { immediate: true },
);

watch(
  () => httpTaskForm.value,
  () => {
    updateHttpExtensions();
  },
  { deep: true },
);
</script>

<template>
  <div>
    <Form :label-col="{ span: 6 }" :wrapper-col="{ span: 18 }">
      <!-- 执行类型 / Execute Type -->
      <FormItem
        :label="$t('bpm.bpmnProcessDesign.task.executeType')"
        key="executeType"
      >
        <Select
          v-model:value="serviceTaskForm.executeType"
          :options="[
            {
              label: $t('bpm.bpmnProcessDesign.task.javaClass'),
              value: 'class',
            },
            {
              label: $t('bpm.bpmnProcessDesign.task.expression'),
              value: 'expression',
            },
            {
              label: $t('bpm.bpmnProcessDesign.task.delegateExpression'),
              value: 'delegateExpression',
            },
            { label: $t('bpm.bpmnProcessDesign.task.httpCall'), value: 'http' },
          ]"
          @change="handleExecuteTypeChange"
        />
      </FormItem>
      <!-- Java类 / Java Class -->
      <FormItem
        v-if="serviceTaskForm.executeType === 'class'"
        :label="$t('bpm.bpmnProcessDesign.task.javaClass')"
        name="class"
        key="execute-class"
      >
        <Input
          v-model:value="serviceTaskForm.class"
          allow-clear
          @change="updateElementTask"
        />
      </FormItem>
      <!-- 表达式 / Expression -->
      <FormItem
        v-if="serviceTaskForm.executeType === 'expression'"
        :label="$t('bpm.bpmnProcessDesign.task.expression')"
        name="expression"
        key="execute-expression"
      >
        <Input
          v-model:value="serviceTaskForm.expression"
          allow-clear
          @change="updateElementTask"
        />
      </FormItem>
      <!-- 代理表达式 / Delegate Expression -->
      <FormItem
        v-if="serviceTaskForm.executeType === 'delegateExpression'"
        :label="$t('bpm.bpmnProcessDesign.task.delegateExpression')"
        name="delegateExpression"
        key="execute-delegate"
      >
        <Input
          v-model:value="serviceTaskForm.delegateExpression"
          allow-clear
          @change="updateElementTask"
        />
      </FormItem>
      <!-- HTTP 请求配置 / HTTP Request Config -->
      <template v-if="serviceTaskForm.executeType === 'http'">
        <!-- 请求方法 / Request Method -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.task.requestMethod')"
          key="http-method"
          name="requestMethod"
        >
          <RadioGroup v-model:value="httpTaskForm.requestMethod">
            <RadioButton value="GET">GET</RadioButton>
            <RadioButton value="POST">POST</RadioButton>
            <RadioButton value="PUT">PUT</RadioButton>
            <RadioButton value="DELETE">DELETE</RadioButton>
          </RadioGroup>
        </FormItem>
        <!-- 请求地址 / Request URL -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.task.requestUrl')"
          key="http-url"
          name="requestUrl"
        >
          <Input v-model:value="httpTaskForm.requestUrl" allow-clear />
        </FormItem>
        <!-- 请求头 / Request Headers -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.task.requestHeaders')"
          key="http-headers"
          name="requestHeaders"
        >
          <div class="flex w-full flex-col gap-2">
            <Textarea
              v-model:value="httpTaskForm.requestHeaders"
              :auto-size="{ minRows: 4, maxRows: 8 }"
              readonly
              :placeholder="$t('bpm.bpmnProcessDesign.task.clickToAddHeaders')"
              class="min-w-0 flex-1"
            />
            <div class="flex w-full items-center justify-center">
              <Button
                class="flex flex-1 items-center justify-center"
                size="small"
                type="primary"
                @click="openHttpHeaderEditor"
              >
                <template #icon>
                  <IconifyIcon icon="ep:edit" />
                </template>
                {{ $t('bpm.bpmnProcessDesign.common.edit') }}
                <!-- 编辑 / Edit -->
              </Button>
            </div>
          </div>
        </FormItem>
        <!-- 禁止重定向 / Disallow Redirects -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.task.disallowRedirects')"
          key="http-disallow-redirects"
          name="disallowRedirects"
        >
          <Switch v-model:checked="httpTaskForm.disallowRedirects" />
        </FormItem>
        <!-- 忽略异常 / Ignore Exception -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.task.ignoreException')"
          key="http-ignore-exception"
          name="ignoreException"
        >
          <Switch v-model:checked="httpTaskForm.ignoreException" />
        </FormItem>
        <!-- 保存返回变量 / Save Response Variable -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.task.saveResponseVariable')"
          key="http-save-response"
          name="saveResponseParameters"
        >
          <Switch v-model:checked="httpTaskForm.saveResponseParameters" />
        </FormItem>
        <!-- 是否瞬间变量 / Is Transient Variable -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.task.isTransientVariable')"
          key="http-save-transient"
          name="saveResponseParametersTransient"
        >
          <Switch
            v-model:checked="httpTaskForm.saveResponseParametersTransient"
          />
        </FormItem>
        <!-- 返回变量前缀 / Response Variable Prefix -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.task.responseVariablePrefix')"
          key="http-result-variable-prefix"
          name="resultVariablePrefix"
        >
          <Input v-model:value="httpTaskForm.resultVariablePrefix" />
        </FormItem>
        <!-- 保存为 JSON 变量 / Save as JSON Variable -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.task.saveAsJsonVariable')"
          :label-col="{ span: 8 }"
          :wrapper-col="{ span: 16 }"
          key="http-save-json"
          name="saveResponseVariableAsJson"
        >
          <Switch v-model:checked="httpTaskForm.saveResponseVariableAsJson" />
        </FormItem>
      </template>
    </Form>
    <!-- 请求头编辑器 -->
    <HttpHeaderEditorModal @save="handleHeadersSave" />
  </div>
</template>
