<script lang="ts" setup>
import type { Rule } from 'ant-design-vue/es/form';

import { ref } from 'vue';

import { Form, Input, Select } from 'ant-design-vue';

import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions } from '#/utils';

const modelData = defineModel<any>(); // 创建本地数据副本
const formRef = ref(); // 表单引用
const rules: Record<string, Rule[]> = {
  code: [
    {
      required: true,
      message: $t('ai.workflow.message.codeRequired'),
      trigger: 'blur',
    },
  ],
  name: [
    {
      required: true,
      message: $t('ai.workflow.message.nameRequired'),
      trigger: 'blur',
    },
  ],
  status: [
    {
      required: true,
      message: $t('ai.workflow.message.statusRequired'),
      trigger: 'change',
    },
  ],
};

/** 表单校验 */
async function validate() {
  await formRef.value?.validate();
}

defineExpose({ validate });
</script>

<template>
  <Form
    ref="formRef"
    :model="modelData"
    :rules="rules"
    :label-col="{ span: 4 }"
    :wrapper-col="{ span: 20 }"
    class="mt-5"
  >
    <Form.Item :label="$t('ai.workflow.field.code')" name="code" class="mb-5">
      <Input
        class="w-full"
        v-model:value="modelData.code"
        allow-clear
        :placeholder="
          $t('ui.placeholder.input', [$t('ai.workflow.field.code')])
        "
      />
    </Form.Item>
    <Form.Item :label="$t('ai.workflow.field.name')" name="name" class="mb-5">
      <Input
        v-model:value="modelData.name"
        allow-clear
        :placeholder="
          $t('ui.placeholder.input', [$t('ai.workflow.field.name')])
        "
      />
    </Form.Item>
    <Form.Item
      :label="$t('ai.workflow.field.status')"
      name="status"
      class="mb-5"
    >
      <Select
        class="w-full"
        v-model:value="modelData.status"
        allow-clear
        :placeholder="
          $t('ui.placeholder.select', [$t('ai.workflow.field.status')])
        "
      >
        <Select.Option
          v-for="dict in getDictOptions(DICT_TYPE.COMMON_STATUS, 'number')"
          :key="dict.value"
          :value="dict.value"
        >
          {{ dict.label }}
        </Select.Option>
      </Select>
    </Form.Item>
    <Form.Item
      :label="$t('ai.workflow.field.description')"
      name="description"
      class="mb-5"
    >
      <Input.TextArea v-model:value="modelData.description" allow-clear />
    </Form.Item>
  </Form>
</template>
