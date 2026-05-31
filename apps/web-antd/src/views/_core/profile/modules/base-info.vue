<script setup lang="ts">
import type { Recordable } from '@vben/types';

import type { SystemUserProfileApi } from '#/api/system/user/profile';

import { watch } from 'vue';

import { $t } from '@vben/locales';

import { message } from 'ant-design-vue';

import { useVbenForm, z } from '#/adapter/form';
import { updateUserProfile } from '#/api/system/user/profile';
import { DICT_TYPE, getDictOptions } from '#/utils';

const props = defineProps<{
  profile?: SystemUserProfileApi.UserProfileRespVO;
}>();
const emit = defineEmits<{
  (e: 'success'): void;
}>();

const [Form, formApi] = useVbenForm({
  commonConfig: {
    labelWidth: 70,
  },
  schema: [
    {
      label: $t('system.user.field.nickname'),
      fieldName: 'nickname',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.user.field.nickname'),
        ]),
      },
      rules: 'required',
    },
    {
      label: $t('system.user.field.mobile'),
      fieldName: 'mobile',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.user.field.mobile'),
        ]),
      },
      rules: z.string(),
    },
    {
      label: $t('system.user.field.email'),
      fieldName: 'email',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.user.field.email'),
        ]),
      },
      rules: z.string().email($t('ui.validate.email')),
    },
    {
      label: $t('system.user.field.sex'),
      fieldName: 'sex',
      component: 'I18nRadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_USER_SEX, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number(),
    },
  ],
  resetButtonOptions: {
    show: false,
  },
  submitButtonOptions: {
    content: $t('system.profile.action.updateInfo'),
  },
  handleSubmit,
});

async function handleSubmit(values: Recordable<any>) {
  try {
    formApi.setLoading(true);
    // 提交表单
    await updateUserProfile(values as SystemUserProfileApi.UpdateProfileReqVO);
    // 关闭并提示
    emit('success');
    message.success($t('ui.actionMessage.operationSuccess'));
  } catch (error) {
    console.error(error);
  } finally {
    formApi.setLoading(false);
  }
}

/** 监听 profile 变化 */
watch(
  () => props.profile,
  (newProfile) => {
    if (newProfile) {
      formApi.setValues(newProfile);
    }
  },
  { immediate: true },
);
</script>

<template>
  <div class="mt-16px md:w-full lg:w-1/2 2xl:w-2/5">
    <Form />
  </div>
</template>
