<script lang="ts" setup>
import { inject, nextTick, ref, watch } from 'vue';

import { confirm, useVbenModal } from '@vben/common-ui';
import { IconifyIcon } from '@vben/icons';
import { cloneDeep } from '@vben/utils';

import { Button, Divider, Form, FormItem, Input } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import { $t } from '#/locales';

defineOptions({ name: 'ElementProperties' });

const props = defineProps({
  id: {
    type: String,
    default: '',
  },
  type: {
    type: String,
    default: '',
  },
});

const prefix = inject('prefix');

const elementPropertyList = ref<Array<{ name: string; value: string }>>([]);
const propertyForm = ref<{ name?: string; value?: string }>({});
const editingPropertyIndex = ref(-1);
const otherExtensionList = ref<any[]>([]);
const bpmnElementProperties = ref<any[]>([]);
const bpmnElementPropertyList = ref<any[]>([]);
const attributeFormRef = ref<any>();
const bpmnInstances = () => (window as any)?.bpmnInstances;

const resetAttributesList = () => {
  const instances = bpmnInstances();
  if (!instances || !instances.bpmnElement) return;

  // 直接使用原始BPMN元素，避免Vue响应式代理问题
  const bpmnElement = instances.bpmnElement;
  const businessObject = bpmnElement.businessObject;

  otherExtensionList.value = []; // 其他扩展配置
  bpmnElementProperties.value =
    businessObject?.extensionElements?.values?.filter((ex: any) => {
      if (ex.$type !== `${prefix}:Properties`) {
        otherExtensionList.value.push(ex);
      }
      return ex.$type === `${prefix}:Properties`;
    }) ?? [];

  bpmnElementPropertyList.value = bpmnElementProperties.value.flatMap(
    (current: any) => current.values,
  );
  elementPropertyList.value = cloneDeep(bpmnElementPropertyList.value ?? []);
};

const removeAttributes = (
  _attr: { name: string; value: string },
  index: number,
) => {
  confirm({
    // 提示 / Prompt
    title: $t('bpm.bpmnProcessDesign.common.prompt'),
    // 确认移除该属性吗？/ Confirm remove this property?
    content: $t('bpm.bpmnProcessDesign.properties.confirmRemoveProperty'),
  }).then(() => {
    elementPropertyList.value.splice(index, 1);
    bpmnElementPropertyList.value.splice(index, 1);
    const propertiesObject = bpmnInstances().moddle.create(
      `${prefix}:Properties`,
      {
        values: bpmnElementPropertyList.value,
      },
    );
    updateElementExtensions(propertiesObject);
    resetAttributesList();
  });
};

const saveAttribute = async () => {
  try {
    await attributeFormRef.value?.validate();
  } catch {
    // 校验未通过，直接返回
    return;
  }

  const { name, value } = propertyForm.value;
  const instances = bpmnInstances();
  if (!instances || !instances.bpmnElement) return;

  const bpmnElement = instances.bpmnElement;

  if (editingPropertyIndex.value === -1) {
    // 新建属性字段
    const newPropertyObject = instances.moddle.create(`${prefix}:Property`, {
      name,
      value,
    });
    // 新建一个属性字段的保存列表
    const propertiesObject = instances.moddle.create(`${prefix}:Properties`, {
      values: [...bpmnElementPropertyList.value, newPropertyObject],
    });
    updateElementExtensions(propertiesObject);
  } else {
    instances.modeling.updateModdleProperties(
      bpmnElement,
      bpmnElementPropertyList.value[editingPropertyIndex.value],
      {
        name,
        value,
      },
    );
  }
  fieldModalApi.close();
  resetAttributesList();
};

const updateElementExtensions = (properties: any) => {
  const instances = bpmnInstances();
  if (!instances || !instances.bpmnElement) return;

  const bpmnElement = instances.bpmnElement;
  const extensions = instances.moddle.create('bpmn:ExtensionElements', {
    values: [...otherExtensionList.value, properties],
  });
  instances.modeling.updateProperties(bpmnElement, {
    extensionElements: extensions,
  });
};

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns: [
      // 序号 / No.
      { type: 'seq', width: 50, title: '#' },
      // 属性名 / Property Name
      {
        field: 'name',
        title: $t('bpm.bpmnProcessDesign.properties.propertyName'),
      },
      // 属性值 / Property Value
      {
        field: 'value',
        title: $t('bpm.bpmnProcessDesign.properties.propertyValue'),
      },
      {
        // 操作 / Action
        title: $t('bpm.bpmnProcessDesign.common.action'),
        width: 120,
        slots: { default: 'action' },
        fixed: 'right',
      },
    ],
    border: true,
    showOverflow: true,
    height: 'auto',
    toolbarConfig: {
      enabled: false,
    },
    pagerConfig: {
      enabled: false,
    },
  },
});

const [FieldModal, fieldModalApi] = useVbenModal({
  // 属性配置 / Property Config
  title: $t('bpm.bpmnProcessDesign.properties.propertyConfig'),
  onConfirm: saveAttribute,
});

const openAttributesForm = (
  attr: null | { name: string; value: string },
  index: number,
) => {
  editingPropertyIndex.value = index;
  propertyForm.value = index === -1 ? {} : cloneDeep(attr || {});
  fieldModalApi.open();
  nextTick(() => {
    if (attributeFormRef.value) attributeFormRef.value.clearValidate();
  });
};

watch(
  elementPropertyList,
  (val) => {
    gridApi.setGridOptions({ data: val });
  },
  { deep: true },
);

watch(
  () => props.id,
  (val) => {
    if (val && val.length > 0) {
      resetAttributesList();
    }
  },
  { immediate: true },
);
</script>

<template>
  <div class="-mx-2">
    <Grid :data="elementPropertyList">
      <template #action="{ row, rowIndex }">
        <!-- 编辑 / Edit -->
        <Button
          size="small"
          type="link"
          @click="openAttributesForm(row, rowIndex)"
        >
          {{ $t('bpm.bpmnProcessDesign.common.edit') }}
        </Button>
        <Divider type="vertical" />
        <!-- 移除 / Remove -->
        <Button
          size="small"
          type="link"
          danger
          @click="removeAttributes(row, rowIndex)"
        >
          {{ $t('bpm.bpmnProcessDesign.common.remove') }}
        </Button>
      </template>
    </Grid>
    <div class="mt-1 flex w-full items-center justify-center gap-2 px-2">
      <Button
        class="flex flex-1 items-center justify-center"
        type="primary"
        size="small"
        @click="openAttributesForm(null, -1)"
      >
        <template #icon>
          <IconifyIcon icon="ep:plus" />
        </template>
        {{ $t('bpm.bpmnProcessDesign.properties.addProperty') }}
        <!-- 添加属性 / Add Property -->
      </Button>
    </div>

    <FieldModal class="w-3/5">
      <Form
        :model="propertyForm"
        ref="attributeFormRef"
        :label-col="{ span: 5 }"
        :wrapper-col="{ span: 17 }"
      >
        <!-- 属性名 / Property Name -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.properties.propertyName')"
          name="name"
          :rules="[
            {
              required: true,
              message: $t(
                'bpm.bpmnProcessDesign.properties.pleaseInputPropertyName',
              ),
            },
          ]"
        >
          <Input v-model:value="propertyForm.name" allow-clear />
        </FormItem>
        <!-- 属性值 / Property Value -->
        <FormItem
          :label="$t('bpm.bpmnProcessDesign.properties.propertyValue')"
          name="value"
          :rules="[
            {
              required: true,
              message: $t(
                'bpm.bpmnProcessDesign.properties.pleaseInputPropertyValue',
              ),
            },
          ]"
        >
          <Input v-model:value="propertyForm.value" allow-clear />
        </FormItem>
      </Form>
    </FieldModal>
  </div>
</template>
