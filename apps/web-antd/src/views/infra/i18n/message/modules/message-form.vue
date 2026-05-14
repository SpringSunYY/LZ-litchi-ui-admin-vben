<script lang="ts" setup>
import type { I18nMessageApi } from '#/api/infra/i18n/i18nMessage';

import { computed, ref } from 'vue';

import { useVbenModelDrawer } from '@vben/common-ui';

import { message } from 'ant-design-vue';

import { useVbenForm } from '#/adapter/form';
import {
  createI18nMessage,
  getI18nMessage,
  updateI18nMessage,
} from '#/api/infra/i18n/i18nMessage';
import { $t } from '#/locales';

import { useMessageFormSchema } from '../data';

const emit = defineEmits(['success']);
const formData = ref<I18nMessageApi.I18nMessage>();
const getTitle = computed(() => {
  return formData.value?.id
    ? $t('ui.actionTitle.edit', [$t('infra.i18nMessage.messageLabel')])
    : $t('ui.actionTitle.create', [$t('infra.i18nMessage.messageLabel')]);
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
  schema: useMessageFormSchema(),
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
    let data = (await formApi.getValues()) as I18nMessageApi.I18nMessage;
    // 拆分 locale_localeTarget 为两个字段
    if (data.locale && data.locale.includes('_')) {
      const [locale, localeTarget] = data.locale.split('_');
      data = { ...data, locale, localeTarget: Number(localeTarget) };
    }
    try {
      await (formData.value?.id
        ? updateI18nMessage(data)
        : createI18nMessage(data));
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
    let data = modalApi.getData<I18nMessageApi.I18nMessage>();
    if (!data) {
      return;
    }
    if (data.id) {
      modalApi.lock();
      try {
        data = await getI18nMessage(data.id);
      } finally {
        modalApi.unlock();
      }
    }
    // 设置到 values，回显时拼接 locale_localeTarget
    formData.value = {
      ...data,
      locale:
        data.locale && data.localeTarget !== undefined
          ? `${data.locale}_${data.localeTarget}`
          : data.locale,
    };
    await formApi.setValues(formData.value);
  },
});
</script>

<template>
  <Modal class="w-[50%]" :title="getTitle">
    <Form class="mx-4" />
  </Modal>
</template>
