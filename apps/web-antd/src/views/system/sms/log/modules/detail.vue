<script lang="ts" setup>
import type { SystemSmsLogApi } from '#/api/system/sms/log';

import { ref } from 'vue';

import { useVbenModal } from '@vben/common-ui';
import { formatDateTime } from '@vben/utils';

import { Descriptions } from 'ant-design-vue';

import { DictTag } from '#/components/dict-tag';
import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

const formData = ref<SystemSmsLogApi.SmsLog>();

const [Modal, modalApi] = useVbenModal({
  async onOpenChange(isOpen: boolean) {
    if (!isOpen) {
      formData.value = undefined;
      return;
    }
    // 加载数据
    const data = modalApi.getData<SystemSmsLogApi.SmsLog>();
    if (!data || !data.id) {
      return;
    }
    modalApi.lock();
    try {
      formData.value = data;
    } finally {
      modalApi.unlock();
    }
  },
});
</script>

<template>
  <Modal
    :title="$t('system.sms.log.message.detail')"
    class="w-1/2"
    :show-cancel-button="false"
    :show-confirm-button="false"
  >
    <Descriptions
      bordered
      :column="2"
      size="middle"
      class="mx-4"
      :label-style="{ width: '140px' }"
    >
      <Descriptions.Item :label="$t('system.sms.log.field.createTime')">
        {{ formatDateTime(formData?.createTime || '') }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.sms.log.field.mobile')">
        {{ formData?.mobile }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.sms.log.field.channelCode')">
        {{ formData?.channelCode }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.sms.log.field.templateId')">
        {{ formData?.templateId }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.sms.log.field.templateType')">
        <DictTag
          :type="DICT_TYPE.SYSTEM_SMS_TEMPLATE_TYPE"
          :value="formData?.templateType"
        />
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.sms.log.field.templateContent')">
        {{ formData?.templateContent }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.sms.log.field.sendStatus')">
        <DictTag
          :type="DICT_TYPE.SYSTEM_SMS_SEND_STATUS"
          :value="formData?.sendStatus"
        />
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.sms.log.field.sendTime')">
        {{ formatDateTime(formData?.sendTime || '') }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.sms.log.field.apiSendCode')">
        {{ formData?.apiSendCode }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.sms.log.field.apiSendMsg')">
        {{ formData?.apiSendMsg }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.sms.log.field.receiveStatus')">
        <DictTag
          :type="DICT_TYPE.SYSTEM_SMS_RECEIVE_STATUS"
          :value="formData?.receiveStatus"
        />
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.sms.log.field.receiveTime')">
        {{ formatDateTime(formData?.receiveTime || '') }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.sms.log.field.apiReceiveCode')">
        {{ formData?.apiReceiveCode }}
      </Descriptions.Item>
      <Descriptions.Item
        :label="$t('system.sms.log.field.apiReceiveMsg')"
        :span="2"
      >
        {{ formData?.apiReceiveMsg }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.sms.log.field.apiRequestId')">
        {{ formData?.apiRequestId }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.sms.log.field.apiSerialNo')">
        {{ formData?.apiSerialNo }}
      </Descriptions.Item>
    </Descriptions>
  </Modal>
</template>
