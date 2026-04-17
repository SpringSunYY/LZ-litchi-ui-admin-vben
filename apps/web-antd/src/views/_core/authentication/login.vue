<script lang="ts" setup>
import type { VbenFormSchema } from '@vben/common-ui';

import { computed, onMounted, ref } from 'vue';
import { useRoute } from 'vue-router';

import { AuthenticationLogin, Verification, z } from '@vben/common-ui';
import { isCaptchaEnable, isTenantEnable } from '@vben/hooks';
import { $t } from '@vben/locales';
import { useAccessStore } from '@vben/stores';

import { message } from 'ant-design-vue';

import {
  checkCaptcha,
  getCaptcha,
  getTenantByCode,
  getTenantByWebsite,
  socialAuthRedirect,
} from '#/api/core/auth';
import { useAuthStore } from '#/store';

defineOptions({ name: 'Login' });

const { query } = useRoute();
const authStore = useAuthStore();
const accessStore = useAccessStore();
const tenantEnable = isTenantEnable();
const captchaEnable = isCaptchaEnable();

const loginRef = ref();
const verifyRef = ref();

const captchaType = 'blockPuzzle'; // 验证码类型：'blockPuzzle' | 'clickWord'

/** 获取租户列表，并默认选中 */
const tenantCode = ref('');

async function fetchTenant() {
  if (!tenantEnable) {
    return;
  }

  // 等待下一个 tick，确保持久化数据已加载
  await new Promise((resolve) => setTimeout(resolve, 0));

  // 选中租户：域名 > store 中的租户（持久化）> 默认租户
  let tenantId: null | number = null;
  let code: null | string = null;

  // 1. 优先从域名获取租户
  const websiteTenant = await getTenantByWebsite(window.location.hostname);
  if (websiteTenant?.id) {
    tenantId = websiteTenant.id;
  }
  if (websiteTenant?.code) {
    code = websiteTenant.code;
  }

  // 2. 如果域名没有获取到，尝试从持久化的 store 中获取
  if (!tenantId && accessStore.tenantId) {
    tenantId = accessStore.tenantId;
  }
  if (!code && accessStore.tenantCode) {
    code = accessStore.tenantCode;
  }

  // 3. 如果还是没有，使用默认租户
  if (!code) {
    code = import.meta.env.VITE_APP_DEFAULT_TENANT_CODE || null;
  }

  // 设置选中的租户编号
  accessStore.setTenantId(tenantId);
  accessStore.setTenantCode(code);
  tenantCode.value = code || '';

  // 更新表单字段
  if (loginRef.value) {
    loginRef.value.getFormApi().setFieldValue('tenantCode', code);
    loginRef.value.getFormApi().setFieldValue('tenantId', tenantId?.toString());
  }
}

async function fetchTenantByCode(code: string) {
  if (!tenantEnable) {
    return true;
  }
  // 如果是4-32位长度
  if (code.length < 4 || code.length > 32) {
    return false;
  }
  // 根据租户编码查询租户信息
  const tenant = await getTenantByCode(code);
  if (!tenant) {
    return false;
  }
  accessStore.setTenantId(tenant.id);
  accessStore.setTenantCode(tenant.code);
  tenantCode.value = tenant.code || '';
  loginRef.value.getFormApi().setFieldValue('tenantCode', tenant.code);
  loginRef.value.getFormApi().setFieldValue('tenantId', tenant.id?.toString());
  return true;
}
/** 处理登录 */
async function handleLogin(values: any) {
  // 如果开启验证码，则先验证验证码
  if (captchaEnable) {
    verifyRef.value.show();
    return;
  }
  const isValid = await fetchTenantByCode(values.tenantCode);
  if (!isValid) {
    message.warn($t('authentication.tenantErrorTip'));
    return;
  }
  // 无验证码，直接登录
  await authStore.authLogin('username', values);
}

/** 验证码通过，执行登录 */
async function handleVerifySuccess({ captchaVerification }: any) {
  try {
    await authStore.authLogin('username', {
      ...(await loginRef.value.getFormApi().getValues()),
      captchaVerification,
    });
  } catch (error) {
    console.error('Error in handleLogin:', error);
  }
}

/** 处理第三方登录 */
const redirect = query?.redirect;

async function handleThirdLogin(type: number) {
  if (type <= 0) {
    return;
  }
  try {
    // 计算 redirectUri
    // tricky: type、redirect 需要先 encode 一次，否则钉钉回调会丢失。配合 social-login.vue#getUrlValue() 使用
    const redirectUri = `${
      location.origin
    }/auth/social-login?${encodeURIComponent(
      `type=${type}&redirect=${redirect || '/'}`,
    )}`;

    // 进行跳转
    window.location.href = await socialAuthRedirect(type, redirectUri);
  } catch (error) {
    console.error('第三方登录处理失败:', error);
  }
}

/** 组件挂载时获取租户信息 */
onMounted(() => {
  fetchTenant();
});

const formSchema = computed((): VbenFormSchema[] => {
  return [
    {
      component: 'VbenInput',
      componentProps: {
        placeholder: $t('authentication.tenantTip'),
      },
      dependencies: {
        triggerFields: ['tenantCode'],
        if: tenantEnable,
      },
      fieldName: 'tenantCode',
      label: $t('authentication.tenant'),
      rules: z.string().min(1, { message: $t('authentication.tenantTip') }),
    },
    {
      component: 'VbenInput',
      componentProps: {
        placeholder: $t('authentication.usernameTip'),
      },
      fieldName: 'username',
      label: $t('authentication.username'),
      rules: z
        .string()
        .min(1, { message: $t('authentication.usernameTip') })
        .default(import.meta.env.VITE_APP_DEFAULT_USERNAME),
    },
    {
      component: 'VbenInputPassword',
      componentProps: {
        placeholder: $t('authentication.passwordTip'),
      },
      fieldName: 'password',
      label: $t('authentication.password'),
      rules: z
        .string()
        .min(1, { message: $t('authentication.passwordTip') })
        .default(import.meta.env.VITE_APP_DEFAULT_PASSWORD),
    },
  ];
});
</script>

<template>
  <div>
    <AuthenticationLogin
      ref="loginRef"
      :form-schema="formSchema"
      :loading="authStore.loginLoading"
      @submit="handleLogin"
      @third-login="handleThirdLogin"
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
