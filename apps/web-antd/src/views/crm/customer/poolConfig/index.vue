<script lang="ts" setup>
import type { CrmCustomerPoolConfigApi } from '#/api/crm/customer/poolConfig';

import { onMounted } from 'vue';

import { Page } from '@vben/common-ui';

import { Card, message } from 'ant-design-vue';

import { useVbenForm } from '#/adapter/form';
import {
  getCustomerPoolConfig,
  saveCustomerPoolConfig,
} from '#/api/crm/customer/poolConfig';
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
      component: 'I18nRadioGroup',
      fieldName: 'enabled',
      label: $t('crm.customerPoolConfig.field.poolConfig'),
      componentProps: {
        options: [
          { label: $t('crm.customerPoolConfig.field.enable'), value: true },
          { label: $t('crm.customerPoolConfig.field.disable'), value: false },
        ],
      },
    },
    {
      component: 'InputNumber',
      fieldName: 'contactExpireDays',
      componentProps: {
        min: 0,
        precision: 0,
      },
      renderComponentContent: () => ({
        addonAfter: () => $t('crm.customerPoolConfig.field.contactExpireDays'),
      }),
      dependencies: {
        triggerFields: ['enabled'],
        show: (value) => value.enabled,
      },
    },
    {
      component: 'InputNumber',
      fieldName: 'dealExpireDays',
      renderComponentContent: () => ({
        addonBefore: () => $t('crm.customerPoolConfig.field.or'),
        addonAfter: () => $t('crm.customerPoolConfig.field.dealExpireDays'),
      }),
      componentProps: {
        min: 0,
        precision: 0,
      },
      dependencies: {
        triggerFields: ['enabled'],
        show: (value) => value.enabled,
      },
    },
    {
      component: 'I18nRadioGroup',
      fieldName: 'notifyEnabled',
      label: $t('crm.customerPoolConfig.field.notifyEnabled'),
      componentProps: {
        options: [
          { label: $t('crm.customerPoolConfig.field.enable'), value: true },
          { label: $t('crm.customerPoolConfig.field.disable'), value: false },
        ],
      },
      dependencies: {
        triggerFields: ['enabled'],
        show: (value) => value.enabled,
      },
      defaultValue: false,
    },
    {
      component: 'InputNumber',
      fieldName: 'notifyDays',
      componentProps: {
        min: 0,
        precision: 0,
      },
      renderComponentContent: () => ({
        addonBefore: () => $t('crm.customerPoolConfig.field.notifyDays'),
        addonAfter: () => $t('crm.customerPoolConfig.field.daysTip'),
      }),
      dependencies: {
        triggerFields: ['notifyEnabled'],
        show: (value) => value.enabled && value.notifyEnabled,
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
  const data =
    (await formApi.getValues()) as CrmCustomerPoolConfigApi.CustomerPoolConfig;
  if (!data.enabled) {
    data.contactExpireDays = undefined;
    data.dealExpireDays = undefined;
    data.notifyEnabled = false;
  }
  if (!data.notifyEnabled) {
    data.notifyDays = undefined;
  }
  formApi.setValues(data);
  try {
    await saveCustomerPoolConfig(data);
    emit('success');
    message.success($t('ui.actionMessage.operationSuccess'));
  } finally {
    formApi.setValues(data);
  }
}

async function getConfigInfo() {
  try {
    const res = await getCustomerPoolConfig();
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
    <Card :title="$t('crm.customerPoolConfig.field.poolConfigTitle')">
      <Form class="w-100%" />
    </Card>
  </Page>
</template>
