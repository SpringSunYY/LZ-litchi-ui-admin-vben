<script lang="ts" setup>
import type { SystemTenantPackageApi } from '#/api/system/tenant-package';

import { computed, ref } from 'vue';

import { useVbenModelDrawer } from '@vben/common-ui';

import { message } from 'ant-design-vue';

import { useVbenForm } from '#/adapter/form';
import {
  createTenantPackage,
  getTenantPackage,
  updateTenantPackage,
} from '#/api/system/tenant-package';
import { $t } from '#/locales';

import { useFormSchema } from '../data';

const emit = defineEmits(['success']);
const formData = ref<SystemTenantPackageApi.TenantPackage>();
const getTitle = computed(() => {
  return formData.value
    ? $t('ui.actionTitle.edit', ['套餐'])
    : $t('ui.actionTitle.create', ['套餐']);
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

const [FormModelDrawer, formModelDrawerApi] = useVbenModelDrawer({
  async onConfirm() {
    const { valid } = await formApi.validate();
    if (!valid) {
      return;
    }
    formModelDrawerApi.lock();
    // 提交表单
    const data =
      (await formApi.getValues()) as SystemTenantPackageApi.TenantPackage;
    try {
      await (formData.value
        ? updateTenantPackage(data)
        : createTenantPackage(data));
      // 关闭并提示
      await formModelDrawerApi.close();
      emit('success');
      message.success($t('ui.actionMessage.operationSuccess'));
    } finally {
      formModelDrawerApi.unlock();
    }
  },
  async onOpenChange(isOpen: boolean) {
    if (!isOpen) {
      formData.value = undefined;
      return;
    }
    const data =
      formModelDrawerApi.getData<SystemTenantPackageApi.TenantPackage>();
    if (!data || !data.id) {
      return;
    }
    formModelDrawerApi.lock();
    try {
      formData.value = await getTenantPackage(data.id as number);
      await formApi.setValues(formData.value as Record<string, any>);
    } finally {
      formModelDrawerApi.unlock();
    }
  },
});
</script>

<template>
  <FormModelDrawer class="w-[60%]" :title="getTitle">
    <Form class="mx-6" />
  </FormModelDrawer>
</template>
