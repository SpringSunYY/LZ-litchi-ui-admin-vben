<script lang="ts" setup>
import { ref } from 'vue';

import { useVbenModal } from '@vben/common-ui';

import { Form, FormItem, Input, Select, SelectOption } from 'ant-design-vue';

import { $t } from '#/locales';

import { fieldType } from './utilSelf';

defineOptions({ name: 'ListenerFieldModal' });

const emit = defineEmits<{
  confirm: [data: any];
}>();

const fieldTypeObject = ref(fieldType);
const form = ref<any>({});
const formRef = ref();

const [Modal, modalApi] = useVbenModal({
  onOpenChange(isOpen) {
    if (isOpen) {
      const data = modalApi.getData<any>();
      form.value = data || {};
      // clear validate
      setTimeout(() => {
        formRef.value?.clearValidate();
      }, 50);
    }
  },
  onConfirm: async () => {
    try {
      await formRef.value?.validate();
      emit('confirm', { ...form.value });
      await modalApi.close();
    } catch {
      // validate failed
    }
  },
});
</script>

<template>
  <!-- 字段配置 / Field Config -->
  <Modal
    :title="$t('bpm.bpmnProcessDesign.listenerConfig.fieldConfig')"
    class="w-3/5"
  >
    <Form
      ref="formRef"
      :model="form"
      :label-col="{ span: 4 }"
      :wrapper-col="{ span: 18 }"
    >
      <FormItem
        :label="$t('bpm.bpmnProcessDesign.listenerConfig.fieldName')"
        name="name"
        :rules="[
          {
            required: true,
            // 请填写字段名称 / Please fill in field name
            message: $t(
              'bpm.bpmnProcessDesign.listenerConfig.pleaseFillFieldName',
            ),
            trigger: ['blur', 'change'],
          },
        ]"
      >
        <Input v-model:value="form.name" allow-clear />
      </FormItem>
      <FormItem
        :label="$t('bpm.bpmnProcessDesign.listenerConfig.fieldType')"
        name="fieldType"
        :rules="[
          {
            required: true,
            // 请选择字段类型 / Please select field type
            message: $t(
              'bpm.bpmnProcessDesign.listenerConfig.pleaseSelectFieldType',
            ),
            trigger: ['blur', 'change'],
          },
        ]"
      >
        <Select v-model:value="form.fieldType">
          <SelectOption
            v-for="i in Object.keys(fieldTypeObject)"
            :key="i"
            :value="i"
          >
            {{ fieldTypeObject[i as keyof typeof fieldType] }}
          </SelectOption>
        </Select>
      </FormItem>
      <FormItem
        v-if="form.fieldType === 'string'"
        :label="$t('bpm.bpmnProcessDesign.listenerConfig.fieldValue')"
        name="string"
        key="field-string"
        :rules="[
          {
            required: true,
            // 请填写字段值 / Please fill in field value
            message: $t(
              'bpm.bpmnProcessDesign.listenerConfig.pleaseFillFieldValue',
            ),
            trigger: ['blur', 'change'],
          },
        ]"
      >
        <Input v-model:value="form.string" allow-clear />
      </FormItem>
      <FormItem
        v-if="form.fieldType === 'expression'"
        :label="$t('bpm.bpmnProcessDesign.listenerConfig.expression')"
        name="expression"
        key="field-expression"
        :rules="[
          {
            required: true,
            // 请填写表达式 / Please fill in expression
            message: $t(
              'bpm.bpmnProcessDesign.listenerConfig.pleaseFillExpression',
            ),
            trigger: ['blur', 'change'],
          },
        ]"
      >
        <Input v-model:value="form.expression" allow-clear />
      </FormItem>
    </Form>
  </Modal>
</template>
