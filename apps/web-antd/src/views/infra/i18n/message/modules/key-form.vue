<script lang="ts" setup>
import type { I18nKeyApi } from '#/api/infra/i18n/i18nKey';

import { computed, ref } from 'vue';

import { useVbenModelDrawer } from '@vben/common-ui';

import { message } from 'ant-design-vue';

import { useVbenForm } from '#/adapter/form';
import {
  createI18nKey,
  getI18nKey,
  updateI18nKey,
} from '#/api/infra/i18n/i18nKey';
import { $t } from '#/locales';

import { useKeyFormSchema } from '../data';

const emit = defineEmits(['success']);
const formData = ref<I18nKeyApi.I18nKey>();
const getTitle = computed(() => {
  return formData.value?.id
    ? $t('ui.actionTitle.edit', ['国际化键名'])
    : $t('ui.actionTitle.create', ['国际化键名']);
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
  schema: useKeyFormSchema(),
  showDefaultActions: false,
});

const [Modal, modalApi] = useVbenModelDrawer({
  async onConfirm() {
    const { valid } = await formApi.validate();
    if (!valid) {
      return;
    }
    modalApi.lock();
    // 提交表单
    const data = (await formApi.getValues()) as I18nKeyApi.I18nKey;
    try {
      await (formData.value?.id ? updateI18nKey(data) : createI18nKey(data));
      // 关闭并提示
      await modalApi.close();
      emit('success');
      message.success($t('ui.actionMessage.operationSuccess'));
    } finally {
      modalApi.unlock();
    }
  },
  async onOpenChange(isOpen: boolean) {
    if (!isOpen) {
      formData.value = undefined;
      return;
    }
    // 加载数据
    let data = modalApi.getData<I18nKeyApi.I18nKey>();
    if (!data) {
      return;
    }
    if (data.id) {
      modalApi.lock();
      try {
        data = await getI18nKey(data.id);
      } finally {
        modalApi.unlock();
      }
    }
    // 设置到 values
    formData.value = data;
    await formApi.setValues(formData.value);
  },
});
</script>

<template>
  <Modal class="w-[50%]" :title="getTitle">
    <Form class="mx-4" />
  </Modal>
</template>
