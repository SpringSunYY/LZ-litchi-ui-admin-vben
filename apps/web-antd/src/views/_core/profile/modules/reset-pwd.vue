<script setup lang="ts">
import type { Recordable } from '@vben/types';

import { $t } from '@vben/locales';

import { message } from 'ant-design-vue';

import { useVbenForm, z } from '#/adapter/form';
import { updateUserPassword } from '#/api/system/user/profile';

const [Form, formApi] = useVbenForm({
  commonConfig: {
    labelWidth: 120,
  },
  schema: [
    {
      component: 'InputPassword',
      fieldName: 'oldPassword',
      label: $t('system.profile.field.oldPassword'),
      rules: z
        .string({ message: $t('system.profile.message.passwordOldRequired') })
        .min(5, $t('system.profile.message.passwordMin'))
        .max(20, $t('system.profile.message.passwordMax')),
    },
    {
      component: 'InputPassword',
      dependencies: {
        rules(values) {
          return z
            .string({
              message: $t('system.profile.message.passwordNewRequired'),
            })
            .min(5, $t('system.profile.message.passwordMin'))
            .max(20, $t('system.profile.message.passwordMax'))
            .refine(
              (value) => value !== values.oldPassword,
              $t('system.profile.message.passwordOldNewSame'),
            );
        },
        triggerFields: ['newPassword', 'oldPassword'],
      },
      fieldName: 'newPassword',
      label: $t('system.profile.field.newPassword'),
      rules: 'required',
    },
    {
      component: 'InputPassword',
      dependencies: {
        rules(values) {
          return z
            .string({
              message: $t('system.profile.message.passwordConfirmRequired'),
            })
            .min(5, $t('system.profile.message.passwordMin'))
            .max(20, $t('system.profile.message.passwordMax'))
            .refine(
              (value) => value === values.newPassword,
              $t('system.profile.message.passwordMismatch'),
            );
        },
        triggerFields: ['newPassword', 'confirmPassword'],
      },
      fieldName: 'confirmPassword',
      label: $t('system.profile.field.confirmPassword'),
      rules: 'required',
    },
  ],
  resetButtonOptions: {
    show: false,
  },
  submitButtonOptions: {
    content: $t('system.profile.action.updatePassword'),
  },
  handleSubmit,
});

async function handleSubmit(values: Recordable<any>) {
  try {
    formApi.setLoading(true);
    // 提交表单
    await updateUserPassword({
      oldPassword: values.oldPassword,
      newPassword: values.newPassword,
    });
    message.success($t('ui.actionMessage.operationSuccess'));
  } catch (error) {
    console.error(error);
  } finally {
    formApi.setLoading(false);
  }
}
</script>

<template>
  <div class="mt-[16px] md:w-full lg:w-1/3 2xl:w-1/2">
    <Form />
  </div>
</template>
