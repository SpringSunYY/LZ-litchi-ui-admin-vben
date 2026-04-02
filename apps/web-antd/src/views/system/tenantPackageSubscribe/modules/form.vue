<script lang="ts" setup>
import type { TenantPackageSubscribeApi } from '#/api/system/tenantPackageSubscribe';

import { computed, onMounted, ref } from 'vue';

import { useVbenModelDrawer } from '@vben/common-ui';

import { useDebounceFn } from '@vueuse/core';
import { message } from 'ant-design-vue';
import dayjs from 'dayjs';

import { useVbenForm } from '#/adapter/form';
import { getSimpleTenantList } from '#/api/system/tenant';
import { getTenantPackageList } from '#/api/system/tenant-package';
import {
  createTenantPackageSubscribe,
  getTenantPackageSubscribe,
  updateTenantPackageSubscribe,
} from '#/api/system/tenantPackageSubscribe';
import { $t } from '#/locales';

import { useFormSchema } from '../data';

const emit = defineEmits(['success']);

const getTodayStart = () => {
  const now = new Date();
  now.setHours(0, 0, 0, 0);
  return now.getTime();
};

const formData = ref<TenantPackageSubscribeApi.TenantPackageSubscribe>();
const getTitle = computed(() => {
  return formData.value?.id
    ? $t('ui.actionTitle.edit', ['租户套餐订阅'])
    : $t('ui.actionTitle.create', ['租户套餐订阅']);
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
  handleValuesChange: (values, fieldsChanged) => {
    const price = Number(values.price) || 0;
    const days = Number(values.days) || 0;
    const discountPrice = Number(values.discountPrice) || 0;
    const startTime = dayjs(values.startTime);

    if (
      (fieldsChanged.includes('startTime') || fieldsChanged.includes('days')) &&
      startTime.isValid() &&
      days > 0
    ) {
      formApi.setFieldValue('endTime', startTime.add(days, 'day'));
    }

    if (
      fieldsChanged.includes('price') ||
      fieldsChanged.includes('days') ||
      fieldsChanged.includes('discountPrice')
    ) {
      const total = Math.max(0, (price * days) / 30 - discountPrice);
      formApi.setFieldValue('totalPrice', Math.round(total * 100) / 100);
    }
  },
});

const doRecalc = (values: Record<string, any>) => {
  const price = Number(values.price) || 0;
  const days = Number(values.days) || 0;
  const discountPrice = Number(values.discountPrice) || 0;
  const startTime = dayjs(values.startTime);

  if (startTime.isValid() && days > 0) {
    formApi.setFieldValue('endTime', startTime.add(days, 'day'));
  }

  const total = Math.max(0, (price * days) / 30 - discountPrice);
  formApi.setFieldValue('totalPrice', total);
};

const [ModalDrawer, modalDrawerApi] = useVbenModelDrawer({
  async onConfirm() {
    const { valid } = await formApi.validate();
    if (!valid) {
      return;
    }
    modalDrawerApi.lock();
    const data =
      (await formApi.getValues()) as TenantPackageSubscribeApi.TenantPackageSubscribe;
    try {
      await (formData.value?.id
        ? updateTenantPackageSubscribe(data)
        : createTenantPackageSubscribe(data));
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
    const data =
      modalDrawerApi.getData<TenantPackageSubscribeApi.TenantPackageSubscribe>();
    if (data?.id) {
      modalDrawerApi.lock();
      try {
        formData.value = await getTenantPackageSubscribe(data.id);
      } finally {
        modalDrawerApi.unlock();
      }
      await formApi.setValues(formData.value);
    } else {
      formData.value = data;
      await formApi.setValues({
        startTime: getTodayStart(),
        days: 30,
        discountPrice: 0,
      });
      const values = await formApi.getValues();
      doRecalc(values);
    }
  },
});

onMounted(() => {
  loadTenants();
  loadTenantPackages();
});

const tenantKeyword = ref('');
const tenantOptions = ref<any[]>([]);
const tenantLoading = ref(false);

const loadTenants = async (keyword?: string) => {
  tenantLoading.value = true;
  try {
    const res = await getSimpleTenantList({
      pageNo: 1,
      pageSize: 50,
      name: keyword || '',
    });
    tenantOptions.value = res.list || [];
  } finally {
    tenantLoading.value = false;
  }
};

const handleTenantSearch = useDebounceFn((_value: string) => {
  tenantKeyword.value = _value;
  loadTenants(_value);
}, 300);

const handleTenantChange = (_value: any, option: any) => {
  formApi.setFieldValue('tenantName', option?.name || option?.label || '');
  formApi.setFieldValue('tenantCode', option?.code || option?.value || '');
};

const handleTenantOpenChange = (open: boolean) => {
  if (open) {
    loadTenants();
  }
};

const tenantPackageKeyword = ref('');
const tenantPackageOptions = ref<any[]>([]);
const tenantPackageLoading = ref(false);

const loadTenantPackages = async (keyword?: string) => {
  tenantPackageLoading.value = true;
  try {
    const res = await getTenantPackageList({
      pageNo: 1,
      pageSize: 50,
      name: keyword || '',
    });
    tenantPackageOptions.value = res.list || [];
  } finally {
    tenantPackageLoading.value = false;
  }
};

const handleTenantPackageSearch = useDebounceFn((_value: string) => {
  tenantPackageKeyword.value = _value;
  loadTenantPackages(_value);
}, 300);

const handleTenantPackageChange = (_value: any, option: any) => {
  formApi.setFieldValue('packageName', option?.name || option?.label || '');
  formApi.setFieldValue('packageCode', option?.code || option?.value || '');
  formApi.setFieldValue('price', option?.price || 0);
};

const handleTenantPackageOpenChange = (open: boolean) => {
  if (open) {
    loadTenantPackages();
  }
};
</script>

<template>
  <ModalDrawer class="w-[60%]" :title="getTitle">
    <Form class="mx-4">
      <template #tenantName="slotProps">
        <ASelect
          v-bind="slotProps"
          :show-search="true"
          :allow-clear="true"
          placeholder="请选择租户"
          :loading="tenantLoading"
          :options="tenantOptions"
          :field-names="{ label: 'name', value: 'name', key: 'id' }"
          :filter-option="false"
          class="w-full"
          @search="handleTenantSearch"
          @change="handleTenantChange"
          @dropdown-open-change="handleTenantOpenChange"
        />
      </template>
      <template #packageName="slotProps">
        <ASelect
          v-bind="slotProps"
          :show-search="true"
          :allow-clear="true"
          placeholder="请选择租户套餐"
          :loading="tenantPackageLoading"
          :options="tenantPackageOptions"
          :field-names="{ label: 'name', value: 'name', key: 'id' }"
          :filter-option="false"
          class="w-full"
          @search="handleTenantPackageSearch"
          @change="handleTenantPackageChange"
          @dropdown-open-change="handleTenantPackageOpenChange"
        />
      </template>
    </Form>
  </ModalDrawer>
</template>
