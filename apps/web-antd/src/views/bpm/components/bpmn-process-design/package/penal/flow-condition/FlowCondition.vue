<script lang="ts" setup>
import { nextTick, onBeforeUnmount, ref, toRaw, watch } from 'vue';

import { Form, FormItem, Input, Select, Textarea } from 'ant-design-vue';

import { $t } from '#/locales';

defineOptions({ name: 'FlowCondition' });

const props = defineProps({
  businessObject: {
    type: Object,
    default: () => ({}),
  },
  type: {
    type: String,
    default: '',
  },
});

const flowConditionForm = ref<any>({});
const bpmnElement = ref();
const bpmnElementSource = ref();
const bpmnElementSourceRef = ref();
const flowConditionRef = ref();
const bpmnInstances = () => (window as any)?.bpmnInstances;

const resetFlowCondition = () => {
  bpmnElement.value = bpmnInstances().bpmnElement;
  bpmnElementSource.value = bpmnElement.value.source;
  bpmnElementSourceRef.value = bpmnElement.value.businessObject.sourceRef;
  // 初始化默认type为default
  flowConditionForm.value = { type: 'default' };
  if (
    bpmnElementSourceRef.value &&
    bpmnElementSourceRef.value.default &&
    bpmnElementSourceRef.value.default.id === bpmnElement.value.id
  ) {
    flowConditionForm.value = { type: 'default' };
  } else if (bpmnElement.value.businessObject.conditionExpression) {
    // 带条件
    const conditionExpression =
      bpmnElement.value.businessObject.conditionExpression;
    flowConditionForm.value = { ...conditionExpression, type: 'condition' };
    // resource 可直接标识 是否是外部资源脚本
    if (flowConditionForm.value.resource) {
      // this.$set(this.flowConditionForm, "conditionType", "script");
      // this.$set(this.flowConditionForm, "scriptType", "externalScript");
      flowConditionForm.value.conditionType = 'script';
      flowConditionForm.value.scriptType = 'externalScript';
      return;
    }
    if (conditionExpression.language) {
      // this.$set(this.flowConditionForm, "conditionType", "script");
      // this.$set(this.flowConditionForm, "scriptType", "inlineScript");
      flowConditionForm.value.conditionType = 'script';
      flowConditionForm.value.scriptType = 'inlineScript';

      return;
    }
    // this.$set(this.flowConditionForm, "conditionType", "expression");
    flowConditionForm.value.conditionType = 'expression';
  } else {
    // 普通
    flowConditionForm.value = { type: 'normal' };
  }
};

const updateFlowType = (flowType: any) => {
  // 正常条件类
  if (flowType === 'condition') {
    flowConditionRef.value = bpmnInstances().moddle.create(
      'bpmn:FormalExpression',
    );
    bpmnInstances().modeling.updateProperties(toRaw(bpmnElement.value), {
      conditionExpression: flowConditionRef.value,
    });
    return;
  }
  // 默认路径
  if (flowType === 'default') {
    bpmnInstances().modeling.updateProperties(toRaw(bpmnElement.value), {
      conditionExpression: null,
    });
    bpmnInstances().modeling.updateProperties(toRaw(bpmnElementSource.value), {
      default: toRaw(bpmnElement.value),
    });
    return;
  }
  // 正常路径，如果来源节点的默认路径是当前连线时，清除父元素的默认路径配置
  if (
    bpmnElementSourceRef.value.default &&
    bpmnElementSourceRef.value.default.id === bpmnElement.value.id
  ) {
    bpmnInstances().modeling.updateProperties(toRaw(bpmnElementSource.value), {
      default: null,
    });
  }
  bpmnInstances().modeling.updateProperties(toRaw(bpmnElement.value), {
    conditionExpression: null,
  });
};

const updateFlowCondition = () => {
  const { conditionType, scriptType, body, resource, language } =
    flowConditionForm.value;
  let condition;
  if (conditionType === 'expression') {
    condition = bpmnInstances().moddle.create('bpmn:FormalExpression', {
      body,
    });
  } else {
    if (scriptType === 'inlineScript') {
      condition = bpmnInstances().moddle.create('bpmn:FormalExpression', {
        body,
        language,
      });
      // this.$set(this.flowConditionForm, "resource", "");
      flowConditionForm.value.resource = '';
    } else {
      // this.$set(this.flowConditionForm, "body", "");
      flowConditionForm.value.body = '';
      condition = bpmnInstances().moddle.create('bpmn:FormalExpression', {
        resource,
        language,
      });
    }
  }
  bpmnInstances().modeling.updateProperties(toRaw(bpmnElement.value), {
    conditionExpression: condition,
  });
};

onBeforeUnmount(() => {
  bpmnElement.value = null;
  bpmnElementSource.value = null;
  bpmnElementSourceRef.value = null;
});

watch(
  () => props.businessObject,
  (_) => {
    // console.log(val, 'val');
    nextTick(() => {
      resetFlowCondition();
    });
  },
  {
    immediate: true,
  },
);
</script>

<template>
  <div class="panel-tab__content">
    <Form
      :model="flowConditionForm"
      :label-col="{ span: 6 }"
      :wrapper-col="{ span: 18 }"
    >
      <!-- 流转类型 / Flow Type -->
      <FormItem :label="$t('bpm.bpmnProcessDesign.flowCondition.flowType')">
        <Select v-model:value="flowConditionForm.type" @change="updateFlowType">
          <!-- 普通流转路径 / Normal Flow Path -->
          <Select.Option value="normal">
            {{ $t('bpm.bpmnProcessDesign.flowCondition.normalFlowPath') }}
          </Select.Option>
          <!-- 默认流转路径 / Default Flow Path -->
          <Select.Option value="default">
            {{ $t('bpm.bpmnProcessDesign.flowCondition.defaultFlowPath') }}
          </Select.Option>
          <!-- 条件流转路径 / Conditional Flow Path -->
          <Select.Option value="condition">
            {{ $t('bpm.bpmnProcessDesign.flowCondition.conditionalFlowPath') }}
          </Select.Option>
        </Select>
      </FormItem>
      <!-- 条件格式 / Condition Format -->
      <FormItem
        :label="$t('bpm.bpmnProcessDesign.flowCondition.conditionFormat')"
        v-if="flowConditionForm.type === 'condition'"
        key="condition"
      >
        <Select v-model:value="flowConditionForm.conditionType">
          <!-- 表达式 / Expression -->
          <Select.Option value="expression">
            {{ $t('bpm.bpmnProcessDesign.flowCondition.expression') }}
          </Select.Option>
          <!-- 脚本 / Script -->
          <Select.Option value="script">
            {{ $t('bpm.bpmnProcessDesign.flowCondition.script') }}
          </Select.Option>
        </Select>
      </FormItem>
      <!-- 表达式 / Expression -->
      <FormItem
        :label="$t('bpm.bpmnProcessDesign.flowCondition.expression')"
        v-if="
          flowConditionForm.conditionType &&
          flowConditionForm.conditionType === 'expression'
        "
        key="express"
      >
        <Textarea
          v-model:value="flowConditionForm.body"
          :auto-size="{ minRows: 2, maxRows: 6 }"
          allow-clear
          @change="updateFlowCondition"
        />
      </FormItem>
      <template
        v-if="
          flowConditionForm.conditionType &&
          flowConditionForm.conditionType === 'script'
        "
      >
        <!-- 脚本语言 / Script Language -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.flowCondition.scriptLanguage')"
          key="language"
        >
          <Input
            v-model:value="flowConditionForm.language"
            allow-clear
            @change="updateFlowCondition"
          />
        </FormItem>
        <!-- 脚本类型 / Script Type -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.flowCondition.scriptType')"
          key="scriptType"
        >
          <Select v-model:value="flowConditionForm.scriptType">
            <!-- 内联脚本 / Inline Script -->
            <Select.Option value="inlineScript">
              {{ $t('bpm.bpmnProcessDesign.flowCondition.inlineScript') }}
            </Select.Option>
            <!-- 外部脚本 / External Script -->
            <Select.Option value="externalScript">
              {{ $t('bpm.bpmnProcessDesign.flowCondition.externalScript') }}
            </Select.Option>
          </Select>
        </FormItem>
        <!-- 脚本 / Script -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.flowCondition.script')"
          v-if="flowConditionForm.scriptType === 'inlineScript'"
          key="body"
        >
          <Textarea
            v-model:value="flowConditionForm.body"
            :auto-size="{ minRows: 2, maxRows: 6 }"
            allow-clear
            @change="updateFlowCondition"
          />
        </FormItem>
        <!-- 资源地址 / Resource Address -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.flowCondition.resourceAddress')"
          v-if="flowConditionForm.scriptType === 'externalScript'"
          key="resource"
        >
          <Input
            v-model:value="flowConditionForm.resource"
            allow-clear
            @change="updateFlowCondition"
          />
        </FormItem>
      </template>
    </Form>
  </div>
</template>
