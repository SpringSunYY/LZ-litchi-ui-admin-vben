<script lang="ts" setup>
import type { CrmFollowUpApi } from '#/api/crm/followup';

import { ref } from 'vue';

import { useVbenModal } from '@vben/common-ui';

import { message } from 'ant-design-vue';

import { useVbenForm } from '#/adapter/form';
import { getBusinessPageByCustomer } from '#/api/crm/business';
import { getContactPageByCustomer } from '#/api/crm/contact';
import { createFollowUpRecord } from '#/api/crm/followup';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions } from '#/utils';

const emit = defineEmits(['success']);

const bizId = ref<number>();
const bizType = ref<number>();

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
      component: 'Input',
      fieldName: 'bizId',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      component: 'Input',
      fieldName: 'bizType',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'type',
      label: $t('crm.followup.field.type'),
      component: 'I18nSelect',
      componentProps: {
        options: getDictOptions(DICT_TYPE.CRM_FOLLOW_UP_TYPE, 'number'),
      },
      rules: 'required',
    },
    {
      fieldName: 'nextTime',
      label: $t('crm.followup.field.nextTime'),
      component: 'DatePicker',
      componentProps: {
        showTime: false,
        format: 'YYYY-MM-DD HH:mm:ss',
        valueFormat: 'x',
      },
      rules: 'required',
    },
    {
      fieldName: 'content',
      label: $t('crm.followup.field.content'),
      component: 'Textarea',
      rules: 'required',
    },
    {
      fieldName: 'picUrls',
      label: $t('crm.followup.field.picUrls'),
      component: 'ImageUpload',
      componentProps: {
        moduleType: 'crm',
      },
    },
    {
      fieldName: 'fileUrls',
      label: $t('crm.followup.field.fileUrls'),
      component: 'FileUpload',
    },
    {
      fieldName: 'contactIds',
      label: $t('crm.followup.field.contactIds'),
      component: 'ApiSelect',
      componentProps: {
        api: async () => {
          const res = await getContactPageByCustomer({
            pageNo: 1,
            pageSize: 100,
            customerId: bizId.value,
          });
          return res.list;
        },
        mode: 'multiple',
        fieldNames: { label: 'name', value: 'id' },
      },
    },
    {
      fieldName: 'businessIds',
      label: $t('crm.followup.field.businessIds'),
      component: 'ApiSelect',
      componentProps: {
        api: async () => {
          const res = await getBusinessPageByCustomer({
            pageNo: 1,
            pageSize: 100,
            customerId: bizId.value,
          });
          return res.list;
        },
        mode: 'multiple',
        fieldNames: { label: 'name', value: 'id' },
      },
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
    const data = (await formApi.getValues()) as CrmFollowUpApi.FollowUpRecord;
    try {
      await createFollowUpRecord(data);
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
    const data = modalApi.getData<CrmFollowUpApi.FollowUpRecord>();
    if (!data) {
      return;
    }
    if (data.bizId && data.bizType) {
      bizId.value = data.bizId;
      bizType.value = data.bizType;
    }
    modalApi.lock();
    try {
      await formApi.setValues(data);
    } finally {
      modalApi.unlock();
    }
  },
});
</script>

<template>
  <Modal :title="$t('crm.followup.action.create')" class="w-[40%]">
    <Form class="mx-4" />
  </Modal>
</template>
