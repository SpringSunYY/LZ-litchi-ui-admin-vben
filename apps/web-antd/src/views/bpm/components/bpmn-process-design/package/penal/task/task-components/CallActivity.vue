<script lang="ts" setup>
import { inject, nextTick, onMounted, ref, toRaw, watch } from 'vue';

import { confirm, useVbenModal } from '@vben/common-ui';
import { IconifyIcon } from '@vben/icons';

import {
  Button,
  Divider,
  Form,
  FormItem,
  Input,
  Select,
  SelectOption,
  Switch,
} from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import { getModelList } from '#/api/bpm/model';
import { $t } from '#/locales';

interface FormData {
  processInstanceName: string;
  calledElement: string;
  inheritVariables: boolean;
  businessKey: string;
  inheritBusinessKey: boolean;
  calledElementType: string;
}

defineOptions({ name: 'CallActivity' });
const props = defineProps({
  id: { type: String, default: '' },
  type: { type: String, default: '' },
});
const prefix = inject('prefix');

const formData = ref<FormData>({
  processInstanceName: '',
  calledElement: '',
  inheritVariables: false,
  businessKey: '',
  inheritBusinessKey: false,
  calledElementType: 'key',
});
const inVariableList = ref<any[]>([]);
const outVariableList = ref<any[]>([]);
const variableType = ref<string>(); // 参数类型
const editingVariableIndex = ref<number>(-1); // 编辑参数下标
const varialbeFormRef = ref();
const varialbeFormData = ref<{
  source: string;
  target: string;
}>({
  source: '',
  target: '',
});

const bpmnInstances = () => (window as any)?.bpmnInstances;
const bpmnElement = ref<any>();
const otherExtensionList = ref<any[]>([]);
const childProcessOptions = ref<{ key: string; name: string }[]>([]);

const initCallActivity = () => {
  bpmnElement.value = bpmnInstances().bpmnElement;

  // 初始化所有配置项
  Object.keys(formData.value).forEach((key: string) => {
    // @ts-expect-error: form state is updated through dynamic schema keys
    formData.value[key] =
      bpmnElement.value.businessObject[key] ??
      formData.value[key as keyof FormData];
  });

  otherExtensionList.value = []; // 其他扩展配置
  inVariableList.value.length = 0;
  outVariableList.value.length = 0;
  // 初始化输入参数
  bpmnElement.value.businessObject?.extensionElements?.values?.forEach(
    (ex: any) => {
      if (ex.$type === `${prefix}:In`) {
        inVariableList.value.push(ex);
      } else if (ex.$type === `${prefix}:Out`) {
        outVariableList.value.push(ex);
      } else {
        otherExtensionList.value.push(ex);
      }
    },
  );
};

const updateCallActivityAttr = (attr: keyof FormData) => {
  bpmnInstances().modeling.updateProperties(toRaw(bpmnElement.value), {
    [attr]: formData.value[attr],
  });
};

const [VariableModal, variableModalApi] = useVbenModal({
  // 参数配置 / Parameter Config
  title: $t('bpm.bpmnProcessDesign.callActivity.parameterConfig'),
  onConfirm: () => {
    saveVariable();
  },
});

const openVariableForm = (type: string, data: any, index: number) => {
  editingVariableIndex.value = index;
  variableType.value = type;
  varialbeFormData.value = index === -1 ? {} : { ...data };
  variableModalApi.open();
};

const removeVariable = async (type: string, index: number) => {
  try {
    await confirm({
      // 提示 / Prompt
      title: $t('bpm.bpmnProcessDesign.common.prompt'),
      // 是否确认删除？/ Confirm delete?
      content: $t('bpm.bpmnProcessDesign.common.confirmDelete'),
    });
    if (type === 'in') {
      inVariableList.value.splice(index, 1);
    }
    if (type === 'out') {
      outVariableList.value.splice(index, 1);
    }
    updateElementExtensions();
  } catch (error: any) {
    console.error(`[removeVariable error ]: ${error.message || error}`);
  }
};

const saveVariable = async () => {
  try {
    await varialbeFormRef.value?.validate();
  } catch {
    // 验证失败直接返回
    return;
  }

  if (editingVariableIndex.value === -1) {
    if (variableType.value === 'in') {
      inVariableList.value.push(
        bpmnInstances().moddle.create(`${prefix}:In`, {
          ...varialbeFormData.value,
        }),
      );
    }
    if (variableType.value === 'out') {
      outVariableList.value.push(
        bpmnInstances().moddle.create(`${prefix}:Out`, {
          ...varialbeFormData.value,
        }),
      );
    }
    updateElementExtensions();
  } else {
    if (variableType.value === 'in') {
      inVariableList.value[editingVariableIndex.value].source =
        varialbeFormData.value.source;
      inVariableList.value[editingVariableIndex.value].target =
        varialbeFormData.value.target;
    }
    if (variableType.value === 'out') {
      outVariableList.value[editingVariableIndex.value].source =
        varialbeFormData.value.source;
      outVariableList.value[editingVariableIndex.value].target =
        varialbeFormData.value.target;
    }
  }
  variableModalApi.close();
};

const updateElementExtensions = () => {
  const extensions = bpmnInstances().moddle.create('bpmn:ExtensionElements', {
    values: [
      ...inVariableList.value,
      ...outVariableList.value,
      ...otherExtensionList.value,
    ],
  });
  bpmnInstances().modeling.updateProperties(toRaw(bpmnElement.value), {
    extensionElements: extensions,
  });
};

watch(
  () => props.id,
  (val) => {
    // oxlint-disable-next-line no-unused-expressions
    val &&
      val.length > 0 &&
      nextTick(() => {
        initCallActivity();
      });
  },
  { immediate: true },
);

const gridOptions = {
  columns: [
    // 源 / Source
    {
      title: $t('bpm.bpmnProcessDesign.callActivity.source'),
      field: 'source',
      minWidth: 100,
    },
    // 目标 / Target
    {
      title: $t('bpm.bpmnProcessDesign.callActivity.target'),
      field: 'target',
      minWidth: 100,
    },
    {
      // 操作 / Action
      title: $t('bpm.bpmnProcessDesign.common.action'),
      width: 130,
      slots: { default: 'action' },
      fixed: 'right' as const,
    },
  ],
  border: true,
  showOverflow: true,
  height: 'auto',
  toolbarConfig: { enabled: false },
  pagerConfig: { enabled: false },
};

const [InVariableGrid, inVariableGridApi] = useVbenVxeGrid({
  gridOptions,
});

const [OutVariableGrid, outVariableGridApi] = useVbenVxeGrid({
  gridOptions,
});

// 使用浅层监听，避免无限循环
watch(
  () => [...inVariableList.value],
  (val) => {
    inVariableGridApi.setGridOptions({ data: val });
  },
);

watch(
  () => [...outVariableList.value],
  (val) => {
    outVariableGridApi.setGridOptions({ data: val });
  },
);

/** 选择子流程, 更新 bpmn callActivity calledElement 和 processInstanceName 属性 */
const handleChildProcessChange = (key: any) => {
  if (!key) return;
  const selected = childProcessOptions.value.find((item) => item.key === key);
  if (selected) {
    formData.value.calledElement = selected.key;
    formData.value.processInstanceName = selected.name;
    updateCallActivityAttr('calledElement');
    updateCallActivityAttr('processInstanceName');
  }
};

onMounted(async () => {
  try {
    // 获取流程模型列表
    const list = await getModelList(undefined);
    childProcessOptions.value = list.map((item) => ({
      key: item.key,
      name: item.name,
    }));
  } catch (error) {
    console.error('获取子流程列表失败', error);
  }
});
</script>

<template>
  <div class="-mx-2">
    <Form :label-col="{ span: 6 }" :wrapper-col="{ span: 18 }">
      <!-- 被调用子流程 / Called Sub-Process -->
      <FormItem
        :label="$t('bpm.bpmnProcessDesign.callActivity.calledSubProcess')"
      >
        <Select
          v-model:value="formData.calledElement"
          :placeholder="
            $t('bpm.bpmnProcessDesign.callActivity.pleaseSelectSubProcess')
          "
          allow-clear
          @change="handleChildProcessChange"
        >
          <SelectOption
            v-for="item in childProcessOptions"
            :key="item.key"
            :value="item.key"
            :label="item.name"
          >
            {{ item.name }}
          </SelectOption>
        </Select>
      </FormItem>

      <!-- 继承变量 / Inherit Variables -->
      <FormItem
        :label="$t('bpm.bpmnProcessDesign.callActivity.inheritVariables')"
      >
        <Switch
          v-model:checked="formData.inheritVariables"
          @change="updateCallActivityAttr('inheritVariables')"
        />
      </FormItem>

      <!-- 继承业务键 / Inherit Business Key -->
      <FormItem
        :label="$t('bpm.bpmnProcessDesign.callActivity.inheritBusinessKey')"
      >
        <Switch
          v-model:checked="formData.inheritBusinessKey"
          @change="updateCallActivityAttr('inheritBusinessKey')"
        />
      </FormItem>

      <!-- 业务键表达式 / Business Key Expression -->
      <FormItem
        v-if="!formData.inheritBusinessKey"
        :label="$t('bpm.bpmnProcessDesign.callActivity.businessKeyExpression')"
      >
        <Input
          v-model:value="formData.businessKey"
          allow-clear
          :placeholder="
            $t(
              'bpm.bpmnProcessDesign.callActivity.pleaseInputBusinessKeyExpression',
            )
          "
          @change="updateCallActivityAttr('businessKey')"
        />
      </FormItem>

      <!-- 输入参数 / Input Parameters -->
      <div
        class="mb-1 mt-2 flex items-center justify-between border-t border-gray-200 pt-2"
      >
        <span class="flex items-center text-sm font-medium">
          {{ $t('bpm.bpmnProcessDesign.callActivity.inputParameters') }}
        </span>
        <Button
          class="flex items-center"
          size="small"
          type="link"
          @click="openVariableForm('in', null, -1)"
        >
          <template #icon>
            <IconifyIcon icon="ep:plus" />
          </template>
          {{ $t('bpm.bpmnProcessDesign.callActivity.addParameter') }}
          <!-- 添加参数 / Add Parameter -->
        </Button>
      </div>
      <InVariableGrid class="-mx-2 mb-4">
        <template #action="{ row, rowIndex }">
          {{ $t('bpm.bpmnProcessDesign.common.edit') }}
          <!-- 编辑 / Edit -->
          <Button
            size="small"
            type="link"
            @click="openVariableForm('in', row, rowIndex)"
          >
            {{ $t('bpm.bpmnProcessDesign.common.edit') }}
          </Button>
          <Divider type="vertical" />
          <Button
            size="small"
            type="link"
            danger
            @click="removeVariable('in', rowIndex)"
          >
            {{ $t('bpm.bpmnProcessDesign.common.remove') }}
          </Button>
        </template>
      </InVariableGrid>

      <!-- 输出参数 / Output Parameters -->
      <div
        class="mb-1 mt-2 flex items-center justify-between border-t border-gray-200 pt-2"
      >
        <span class="flex items-center text-sm font-medium">
          {{ $t('bpm.bpmnProcessDesign.callActivity.outputParameters') }}
        </span>
        <Button
          class="flex items-center"
          size="small"
          type="link"
          @click="openVariableForm('out', null, -1)"
        >
          <template #icon>
            <IconifyIcon icon="lucide:plus" class="size-4" />
          </template>
          {{ $t('bpm.bpmnProcessDesign.callActivity.addParameter') }}
        </Button>
      </div>
      <OutVariableGrid class="-mx-2">
        <template #action="{ row, rowIndex }">
          <Button
            size="small"
            type="link"
            @click="openVariableForm('out', row, rowIndex)"
          >
            {{ $t('bpm.bpmnProcessDesign.common.edit') }}
          </Button>
          <Divider type="vertical" />
          <Button
            size="small"
            type="link"
            danger
            @click="removeVariable('out', rowIndex)"
          >
            {{ $t('bpm.bpmnProcessDesign.common.remove') }}
          </Button>
        </template>
      </OutVariableGrid>
    </Form>

    <VariableModal>
      <Form
        :model="varialbeFormData"
        ref="varialbeFormRef"
        :label-col="{ span: 4 }"
        :wrapper-col="{ span: 18 }"
      >
        <!-- 源 / Source -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.callActivity.source')"
          name="source"
          :rules="[
            {
              required: true,
              message: $t('bpm.bpmnProcessDesign.callActivity.sourceRequired'), // 源不能为空 / Source cannot be empty
              trigger: ['blur', 'change'],
            },
          ]"
        >
          <Input v-model:value="varialbeFormData.source" allow-clear />
        </FormItem>
        <!-- 目标 / Target -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.callActivity.target')"
          name="target"
          :rules="[
            {
              required: true,
              message: $t('bpm.bpmnProcessDesign.callActivity.targetRequired'), // 目标不能为空 / Target cannot be empty
              trigger: ['blur', 'change'],
            },
          ]"
        >
          <Input v-model:value="varialbeFormData.target" allow-clear />
        </FormItem>
      </Form>
    </VariableModal>
  </div>
</template>
