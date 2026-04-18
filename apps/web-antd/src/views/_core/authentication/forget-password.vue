<script lang="ts" setup>
import type { VbenFormSchema } from '@vben/common-ui';
import type { Recordable } from '@vben/types';

import { computed, onMounted, ref } from 'vue';
import { useRouter } from 'vue-router';

import { AuthenticationForgetPassword, z } from '@vben/common-ui';
import { isTenantEnable } from '@vben/hooks';
import { $t } from '@vben/locales';
import { useAccessStore } from '@vben/stores';

import { message } from 'ant-design-vue';

import { getTenantByCode, sendSmsCode, smsResetPassword } from '#/api';
import { getTenantByWebsite } from '#/api/core/auth';

defineOptions({ name: 'ForgetPassword' });

const router = useRouter();
const tenantEnable = isTenantEnable();

const loading = ref(false);
const CODE_LENGTH = 4;
const forgetPasswordRef = ref();

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
    tenantCode.value = code || ''; // 同步更新响应式变量
    forgetPasswordRef.value
      .getFormApi()
      .setFieldValue('tenantCode', tenantCode);
    forgetPasswordRef.value
      .getFormApi()
      .setFieldValue('tenantId', tenantId?.toString());
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
        placeholder: $t('authentication.mobile'),
      },
      fieldName: 'mobile',
      label: $t('authentication.mobile'),
      rules: z
        .string()
        .min(1, { message: $t('authentication.mobileTip') })
        .refine((v) => /^\d{11}$/.test(v), {
          message: $t('authentication.mobileErrortip'),
        }),
    },
    {
      component: 'VbenPinInput',
      componentProps: {
        codeLength: CODE_LENGTH,
        createText: (countdown: number) => {
          const text =
            countdown > 0
              ? $t('authentication.sendText', [countdown])
              : $t('authentication.sendCode');
          return text;
        },
        placeholder: $t('authentication.code'),
        handleSendCode: async () => {
          loading.value = true;
          try {
            const formApi = forgetPasswordRef.value?.getFormApi();
            if (!formApi) {
              throw new Error('表单未准备好');
            }
            // 验证手机号
            await formApi.validateField('mobile');
            const isMobileValid = await formApi.isFieldValid('mobile');
            if (!isMobileValid) {
              throw new Error('请输入有效的手机号码');
            }

            // 发送验证码
            const { mobile } = await formApi.getValues();
            const scene = 23; // 场景：重置密码
            await sendSmsCode({ mobile, scene });
            message.success('验证码发送成功');
          } finally {
            loading.value = false;
          }
        },
      },
      fieldName: 'code',
      label: $t('authentication.code'),
      rules: z.string().length(CODE_LENGTH, {
        message: $t('authentication.codeTip', [CODE_LENGTH]),
      }),
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
  ];
});

/**
 * 处理重置密码操作
 * @param values 表单数据
 */
async function handleSubmit(values: Recordable<any>) {
  loading.value = true;
  try {
    const { mobile, code, password } = values;
    const isValid = await fetchTenantByCode(values.tenantCode);
    if (!isValid) {
      message.warn($t('authentication.tenantErrorTip'));
      return;
    }
    await smsResetPassword({ mobile, code, password });
    message.success($t('authentication.resetPasswordSuccess'));
    // 重置成功后跳转到首页
    router.push('/');
  } catch (error) {
    console.error('重置密码失败:', error);
  } finally {
    loading.value = false;
  }
}
</script>

<template>
  <AuthenticationForgetPassword
    ref="forgetPasswordRef"
    :form-schema="formSchema"
    :loading="loading"
    @submit="handleSubmit"
  />
</template>
