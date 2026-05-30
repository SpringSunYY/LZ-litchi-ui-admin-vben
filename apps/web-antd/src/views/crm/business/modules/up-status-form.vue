<script lang="ts" setup>
import type { CrmBusinessApi } from '#/api/crm/business';

import { ref } from 'vue';

import { useVbenModal } from '@vben/common-ui';

import { message } from 'ant-design-vue';

import { useVbenForm } from '#/adapter/form';
import { updateBusinessStatus } from '#/api/crm/business';
import { getBusinessStatusSimpleList } from '#/api/crm/business/status';
import { DEFAULT_STATUSES } from '#/utils/constants/crm';
import { $t } from '#/locales';

const emit = defineEmits(['success']);

const formData = ref<CrmBusinessApi.Business>();

const [Form, formApi] = useVbenForm({
  commonConfig: {
    componentProps: {
      class: 'w-full',
    },
    formItemClass: 'col-span-2',
    labelWidth: 120,
  },
  layout: 'horizontal',
  schema: [
    {
      fieldName: 'id',
      component: 'Input',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'statusId',
      label: $t('crm.business.field.status'),
      component: 'Input',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'endStatus',
      label: $t('crm.business.field.status'),
      component: 'Input',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'status',
      label: $t('crm.business.field.stage'),
      component: 'Select',
      dependencies: {
        triggerFields: [''],
        async componentProps() {
          const statusList = await getBusinessStatusSimpleList(
            formData.value?.statusTypeId ?? 0,
          );
          const statusOptions = statusList.map((item) => ({
            label: `${item.name}${$t('crm.business.field.winRate', [item.percent])}`,
            value: item.id,
          }));
          const options = DEFAULT_STATUSES.map((item) => ({
            label: `${item.name}${$t('crm.business.field.winRate', [item.percent])}`,
            value: item.endStatus,
          }));
          statusOptions.push(...options);
          return {
            options: statusOptions,
          };
        },
      },
      rules: 'required',
    },
  ],
  showDefaultActions: false,
});

const [Modal, modalApi] = useVbenModal({
  async onConfirm() {
    const { valid } = await formApi.validate();
    if (!valid) {
      return;
    }
    modalApi.lock();
    const data = (await formApi.getValues()) as CrmBusinessApi.Business;
    try {
      if (!data.status) {
        return;
      }
      await updateBusinessStatus({
        id: data.id,
        statusId: data.status > 0 ? data.status : undefined,
        endStatus: data.status < 0 ? -data.status : undefined,
      });
      await modalApi.close();
      emit('success');
      message.success($t('ui.actionMessage.operationSuccess'));
    } finally {
      modalApi.unlock();
    }
  },
  async onOpenChange(isOpen: boolean) {
    if (!isOpen) {
      return;
    }
    const data = modalApi.getData<CrmBusinessApi.Business>();
    if (!data || !data.id) {
      return;
    }
    data.status = data.endStatus === null ? data.statusId : -data.endStatus;
    formData.value = data;
    modalApi.lock();
    try {
      await formApi.setValues(formData.value);
    } finally {
      modalApi.unlock();
    }
  },
});
</script>

<template>
  <Modal :title="$t('crm.business.message.changeStatusTitle')" class="w-[40%]">
    <Form class="mx-4" />
  </Modal>
</template>
