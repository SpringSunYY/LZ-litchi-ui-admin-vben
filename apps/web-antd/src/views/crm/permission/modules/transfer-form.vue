<script lang="ts" setup>
import type { CrmPermissionApi } from '#/api/crm/permission';

import { computed } from 'vue';

import { useVbenModal } from '@vben/common-ui';

import { message } from 'ant-design-vue';

import { useVbenForm } from '#/adapter/form';
import { transferBusiness } from '#/api/crm/business';
import { transferClue } from '#/api/crm/clue';
import { transferContact } from '#/api/crm/contact';
import { transferContract } from '#/api/crm/contract';
import { transferCustomer } from '#/api/crm/customer';
import { BizTypeEnum } from '#/api/crm/permission';
import { $t } from '#/locales';

import { useTransferFormSchema } from './data';

const emit = defineEmits(['success']);

const bizType = defineModel<number>('bizType');

const getTitle = computed(() => {
  return $t('crm.permission.action.transfer');
});

const [Form, formApi] = useVbenForm({
  commonConfig: {
    componentProps: {
      class: 'w-full',
    },
    formItemClass: 'col-span-2',
    labelWidth: 120,
  },
  layout: 'horizontal',
  schema: useTransferFormSchema(),
  showDefaultActions: false,
});

const [Modal, modalApi] = useVbenModal({
  async onConfirm() {
    const { valid } = await formApi.validate();
    if (!valid) {
      return;
    }
    modalApi.lock();
    const data = (await formApi.getValues()) as CrmPermissionApi.TransferReq;
    try {
      switch (bizType.value) {
        case BizTypeEnum.CRM_BUSINESS: {
          return await transferBusiness(data);
        }
        case BizTypeEnum.CRM_CLUE: {
          return await transferClue(data);
        }
        case BizTypeEnum.CRM_CONTACT: {
          return await transferContact(data);
        }
        case BizTypeEnum.CRM_CONTRACT: {
          return await transferContract(data);
        }
        case BizTypeEnum.CRM_CUSTOMER: {
          return await transferCustomer(data);
        }
        default: {
          message.error($t('crm.permission.message.noTransferApi'));
          throw new Error($t('crm.permission.message.noTransferApi'));
        }
      }
    } finally {
      await modalApi.close();
      emit('success');
      message.success($t('ui.actionMessage.operationSuccess'));
      modalApi.unlock();
    }
  },
  async onOpenChange(isOpen: boolean) {
    if (!isOpen) {
      formApi.resetForm();
      return;
    }
    const data = modalApi.getData<{ bizType: number }>();
    if (!data || !data.bizType) {
      return;
    }
    bizType.value = data.bizType;
    formApi.setFieldValue('id', data.bizType);
  },
});
</script>

<template>
  <Modal :title="getTitle" class="w-[40%]">
    <Form class="mx-4" />
  </Modal>
</template>
