<script lang="ts" setup>
import type { VbenFormSchema } from '@vben/common-ui';

import { computed, h, ref } from 'vue';
import { useRouter } from 'vue-router';

import { AuthenticationRegister, Verification, z } from '@vben/common-ui';
import { isCaptchaEnable, isTenantEnable } from '@vben/hooks';
import { $t } from '@vben/locales';
import { useAccessStore } from '@vben/stores';

import { checkCaptcha, getCaptcha } from '#/api/core/auth';
import { useAuthStore } from '#/store';

defineOptions({ name: 'Register' });

const loading = ref(false);

const accessStore = useAccessStore();
const authStore = useAuthStore();
const tenantEnable = isTenantEnable();
const captchaEnable = isCaptchaEnable();
const registerRef = ref();
const verifyRef = ref();
const loginPath = ref('/auth/login');
const captchaType = 'blockPuzzle'; // 验证码类型：'blockPuzzle' | 'clickWord'
const router = useRouter();
function handleGoLogin() {
  router.push(loginPath.value);
}

/** 执行注册 */
async function handleRegister(values: any) {
  // 如果开启验证码，则先验证验证码
  if (captchaEnable) {
    verifyRef.value.show();
    return;
  }
  // 先清除租户标志
  accessStore.resetTenant();
  accessStore.$reset();
  // 无验证码，直接登录
  await authStore.authLogin('register', values);
  handleGoLogin();
}

/** 验证码通过，执行注册 */
const handleVerifySuccess = async ({ captchaVerification }: any) => {
  try {
    accessStore.resetTenant();
    accessStore.$reset();
    await authStore.authLogin('register', {
      ...(await registerRef.value.getFormApi().getValues()),
      captchaVerification,
    });
    handleGoLogin();
  } catch (error) {
    console.error('Error in handleRegister:', error);
  }
};

const formSchema = computed((): VbenFormSchema[] => {
  return [
    {
      component: 'VbenInput',
      componentProps: {
        placeholder: $t('authentication.tenantCodeTip'),
      },
      dependencies: {
        triggerFields: ['tenantCode'],
        if: tenantEnable,
      },
      fieldName: 'tenantCode',
      label: $t('authentication.tenant'),
      rules: z
        .string()
        .min(1, { message: $t('authentication.createTenantCodeInputTip') }),
    },
    {
      component: 'VbenInput',
      componentProps: {
        placeholder: $t('authentication.tenantNameTip'),
      },
      dependencies: {
        triggerFields: ['tenantName'],
        if: tenantEnable,
      },
      fieldName: 'tenantName',
      label: $t('authentication.tenantName'),
      rules: z
        .string()
        .min(1, { message: $t('authentication.createTenantNameInputTip') }),
    },
    {
      fieldName: 'contactName',
      label: $t('authentication.tenantContactName'),
      rules: 'required',
      dependencies: {
        triggerFields: ['contactName'],
        if: tenantEnable,
      },
      component: 'VbenInput',
      componentProps: {
        placeholder: $t('authentication.tenantContactNameTip'),
      },
    },
    {
      dependencies: {
        triggerFields: ['contactMobile'],
        if: tenantEnable,
      },
      fieldName: 'contactMobile',
      label: $t('authentication.tenantContactMobileTip'),
      component: 'VbenInput',
      rules: 'mobileRequired',
      componentProps: {
        placeholder: $t('authentication.tenantContactMobile'),
      },
    },
    {
      component: 'VbenInput',
      componentProps: {
        placeholder: $t('authentication.usernameTip'),
      },
      fieldName: 'username',
      label: $t('authentication.username'),
      rules: z.string().min(1, { message: $t('authentication.usernameTip') }),
    },
    {
      component: 'VbenInput',
      componentProps: {
        placeholder: $t('authentication.nicknameTip'),
      },
      fieldName: 'nickname',
      label: $t('authentication.nickname'),
      rules: z.string().min(1, { message: $t('authentication.nicknameTip') }),
    },
    {
      component: 'VbenInputPassword',
      componentProps: {
        passwordStrength: true,
        placeholder: $t('authentication.password'),
      },
      fieldName: 'password',
      label: $t('authentication.password'),
      renderComponentContent() {
        return {
          strengthText: () => $t('authentication.passwordStrength'),
        };
      },
      rules: z.string().min(1, { message: $t('authentication.passwordTip') }),
    },
    {
      component: 'VbenInputPassword',
      componentProps: {
        placeholder: $t('authentication.confirmPassword'),
      },
      dependencies: {
        rules(values) {
          const { password } = values;
          return z
            .string({ required_error: $t('authentication.passwordTip') })
            .min(1, { message: $t('authentication.passwordTip') })
            .refine((value) => value === password, {
              message: $t('authentication.confirmPasswordTip'),
            });
        },
        triggerFields: ['password'],
      },
      fieldName: 'confirmPassword',
      label: $t('authentication.confirmPassword'),
    },
    {
      component: 'VbenCheckbox',
      fieldName: 'agreePolicy',
      renderComponentContent: () => ({
        default: () =>
          h('span', [
            $t('authentication.agree'),
            h(
              'a',
              {
                class: 'vben-link ml-1 ',
                href: '',
              },
              `${$t('authentication.privacyPolicy')} & ${$t('authentication.terms')}`,
            ),
          ]),
      }),
      rules: z.boolean().refine((value) => !!value, {
        message: $t('authentication.agreeTip'),
      }),
    },
  ];
});
</script>

<template>
  <div>
    <AuthenticationRegister
      ref="registerRef"
      :form-schema="formSchema"
      :loading="loading"
      @submit="handleRegister"
    />
    <Verification
      ref="verifyRef"
      v-if="captchaEnable"
      :captcha-type="captchaType"
      :check-captcha-api="checkCaptcha"
      :get-captcha-api="getCaptcha"
      :img-size="{ width: '400px', height: '200px' }"
      mode="pop"
      @on-success="handleVerifySuccess"
    />
  </div>
</template>
