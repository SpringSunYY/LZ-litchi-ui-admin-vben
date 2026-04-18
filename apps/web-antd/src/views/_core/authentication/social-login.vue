<script lang="ts" setup>
import type { VbenFormSchema } from '@vben/common-ui';

import { computed, onMounted, ref } from 'vue';
import { useRoute, useRouter } from 'vue-router';

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
} from '#/api/core/auth';
import { useAuthStore } from '#/store';

defineOptions({ name: 'SocialLogin' });

const authStore = useAuthStore();
const { query } = useRoute();
const router = useRouter();
const tenantEnable = isTenantEnable();
const captchaEnable = isCaptchaEnable();

const loginRef = ref();
const verifyRef = ref();

const captchaType = 'blockPuzzle'; // 验证码类型：'blockPuzzle' | 'clickWord'

const tenantCode = ref('');
async function fetchTenant() {
  if (!tenantEnable) {
    return;
  }
  try {
    const accessStore = useAccessStore();

    // 获取租户列表、域名对应租户
    const websiteTenantPromise = getTenantByWebsite(window.location.hostname);

    // 选中租户：域名 > store 中的租户 > 首个租户
    let tenantId: null | number = null;
    let code: null | string = '';
    const websiteTenant = await websiteTenantPromise;
    if (websiteTenant?.id) {
      tenantId = websiteTenant.id;
    }
    if (websiteTenant?.code) {
      code = websiteTenant.code;
    }
    // 如果没有从域名获取到租户，尝试从 store 中获取
    if (!tenantId && accessStore.tenantId) {
      tenantId = accessStore.tenantId;
    }
    if (!code && accessStore.tenantCode) {
      code = accessStore.tenantCode;
    }
    if (!code) {
      code = import.meta.env.VITE_APP_DEFAULT_TENANT_CODE;
    }
    // 设置选中的租户编号
    accessStore.setTenantId(tenantId);
    accessStore.setTenantCode(code || '');
    accessStore.setTenantId(tenantId);
    accessStore.setTenantCode(code || '');
    tenantCode.value = code || ''; // 同步更新响应式变量
    loginRef.value.getFormApi().setFieldValue('tenantCode', tenantCode);
    loginRef.value.getFormApi().setFieldValue('tenantId', tenantId?.toString());
  } catch (error) {
    console.error('获取租户列表失败:', error);
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
  const accessStore = useAccessStore();
  accessStore.setTenantId(tenant.id);
  accessStore.setTenantCode(tenant.code);
  return true;
}

/** 组件挂载时获取租户信息 */
onMounted(() => {
  fetchTenant();
});

/** 尝试登录：当账号已经绑定，socialLogin 会直接获得 token */
const socialType = Number(getUrlValue('type'));
const redirect = getUrlValue('redirect');
const socialCode = query?.code as string;
const socialState = query?.state as string;
async function tryLogin() {
  // 用于登录后，基于 redirect 的重定向
  if (redirect) {
    await router.replace({
      query: {
        ...query,
        redirect: encodeURIComponent(redirect),
      },
    });
  }

  // 尝试登录
  await authStore.authLogin('social', {
    type: socialType,
    code: socialCode,
    state: socialState,
  });
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
  await authStore.authLogin('username', {
    ...values,
    socialType,
    socialCode,
    socialState,
  });
}

/** 验证码通过，执行登录 */
async function handleVerifySuccess({ captchaVerification }: any) {
  try {
    const values = await loginRef.value.getFormApi().getValues();
    const isValid = await fetchTenantByCode(values.tenantCode);
    if (!isValid) {
      message.warn($t('authentication.tenantErrorTip'));
      return;
    }
    await authStore.authLogin('username', {
      ...values,
      captchaVerification,
      socialType,
      socialCode,
      socialState,
    });
  } catch (error) {
    console.error('Error in handleLogin:', error);
  }
}

/** tricky: 配合 login.vue 中，redirectUri 需要对参数进行 encode，需要在回调后进行decode */
function getUrlValue(key: string): string {
  const url = new URL(decodeURIComponent(location.href));
  return url.searchParams.get(key) ?? '';
}

/** 组件挂载时获取租户信息 */
onMounted(async () => {
  await fetchTenant();

  await tryLogin();
});

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
        trigger(values) {
          if (values.tenantCode) {
            tenantCode.value = values.tenantCode;
          }
        },
      },
      fieldName: 'tenantCode',
      label: $t('authentication.tenant'),
      rules: z
        .string()
        .min(1, { message: $t('authentication.tenantCodeTip') })
        .default(
          tenantCode.value !== '' ||
            import.meta.env.VITE_APP_DEFAULT_TENANT_CODE,
        ),
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
      :show-code-login="false"
      :show-qrcode-login="false"
      :show-third-party-login="false"
      :show-register="false"
      @submit="handleLogin"
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
