<script lang="ts" setup>
import type { CrmContractConfigApi } from '#/api/crm/contract/config';

import { onMounted } from 'vue';

import { Page } from '@vben/common-ui';

import { Card, message } from 'ant-design-vue';

import { useVbenForm } from '#/adapter/form';
import {
  getContractConfig,
  saveContractConfig,
} from '#/api/crm/contract/config';
import { $t } from '#/locales';

const emit = defineEmits(['success']);

const [Form, formApi] = useVbenForm({
  commonConfig: {
    labelClass: 'w-2/6',
  },
  layout: 'horizontal',
  wrapperClass: 'grid-cols-1',
  actionWrapperClass: 'text-center',
  schema: [
    {
      component: 'RadioGroup',
      fieldName: 'notifyEnabled',
      label: $t('crm.contract.config.notifyEnabled'),
      componentProps: {
        options: [
          { label: $t('crm.contract.config.remind'), value: true },
          { label: $t('crm.contract.config.notRemind'), value: false },
        ],
      },
    },
    {
      component: 'InputNumber',
      fieldName: 'notifyDays',
      componentProps: {
        min: 0,
        precision: 0,
      },
      renderComponentContent: () => ({
        addonBefore: () => $t('crm.contract.config.notifyDays'),
        addonAfter: () => $t('crm.contract.config.daysTip'),
      }),
      dependencies: {
        triggerFields: ['notifyEnabled'],
        trigger(values) {
          values.notifyDays = undefined;
        },
        show: (value) => value.notifyEnabled,
      },
    },
  ],
  handleSubmit: onSubmit,
});

async function onSubmit() {
  const { valid } = await formApi.validate();
  if (!valid) {
    return;
  }
  const data = (await formApi.getValues()) as CrmContractConfigApi.Config;
  if (!data.notifyEnabled) {
    data.notifyDays = undefined;
  }
  formApi.setValues(data);
  try {
    await saveContractConfig(data);
    emit('success');
    message.success($t('ui.actionMessage.operationSuccess'));
  } finally {
    formApi.setValues(data);
  }
}

async function getConfigInfo() {
  try {
    const res = await getContractConfig();
    formApi.setValues(res);
  } catch (error) {
    console.error(error);
  }
}

onMounted(() => {
  getConfigInfo();
});
</script>

<template>
  <Page auto-content-height>
    <Card :title="$t('crm.contract.config.title')">
      <Form class="w-1/4" />
    </Card>
  </Page>
</template>
