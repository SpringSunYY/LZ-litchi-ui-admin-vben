<script lang="ts" setup>
import type { SystemTenantApi } from '#/api/system/tenant';

import { computed, ref } from 'vue';

import { useVbenModelDrawer } from '@vben/common-ui';

import { message } from 'ant-design-vue';

import { useVbenForm } from '#/adapter/form';
import { createTenant, getTenant, updateTenant } from '#/api/system/tenant';
import { $t } from '#/locales';

import { useFormSchema } from '../data';

const emit = defineEmits(['success']);
const formData = ref<SystemTenantApi.Tenant>();
const getTitle = computed(() => {
  return formData.value
    ? $t('ui.actionTitle.edit', [$t('system.tenant.tenant')])
    : $t('ui.actionTitle.create', [$t('system.tenant.tenant')]);
});

const [Form, formApi] = useVbenForm({
  commonConfig: {
    componentProps: {
      class: 'w-full',
    },
    formItemClass: 'col-span-2',
    labelWidth: 80,
  },
  layout: 'horizontal',
  schema: useFormSchema(),
  showDefaultActions: false,
});

const [ModalDrawer, modalDrawerApi] = useVbenModelDrawer({
  async onConfirm() {
    const { valid } = await formApi.validate();
    if (!valid) {
      return;
    }
    modalDrawerApi.lock();
    // 提交表单
    const data = (await formApi.getValues()) as SystemTenantApi.Tenant;
    try {
      await (formData.value ? updateTenant(data) : createTenant(data));
      // 关闭并提示
      await modalDrawerApi.close();
      emit('success');
      message.success($t('ui.actionMessage.operationSuccess'));
    } finally {
      modalDrawerApi.unlock();
    }
  },
  async onOpenChange(isOpen: boolean) {
    if (!isOpen) {
      formData.value = undefined;
      return;
    }
    // 加载数据
    const data = modalDrawerApi.getData<SystemTenantApi.Tenant>();
    if (!data || !data.id) {
      return;
    }
    modalDrawerApi.lock();
    try {
      formData.value = await getTenant(data.id as number);
      // 设置到 values
      await formApi.setValues(formData.value);
    } finally {
      modalDrawerApi.unlock();
    }
  },
});
</script>
<template>
  <ModalDrawer :title="getTitle">
    <Form class="mx-4" />
  </ModalDrawer>
</template>
