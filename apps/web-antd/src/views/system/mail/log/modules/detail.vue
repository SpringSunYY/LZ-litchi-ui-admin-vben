<script lang="ts" setup>
import type { SystemMailLogApi } from '#/api/system/mail/log';

import { ref } from 'vue';

import { useVbenModal } from '@vben/common-ui';
import { formatDateTime } from '@vben/utils';

import { Descriptions } from 'ant-design-vue';

import { DictTag } from '#/components/dict-tag';
import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

const formData = ref<SystemMailLogApi.MailLog>();

const [Modal, modalApi] = useVbenModal({
  async onOpenChange(isOpen: boolean) {
    if (!isOpen) {
      formData.value = undefined;
      return;
    }
    // 加载数据
    const data = modalApi.getData<SystemMailLogApi.MailLog>();
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
    :title="$t('system.mail.log.message.detail')"
    class="w-1/2"
    :show-cancel-button="false"
    :show-confirm-button="false"
  >
    <div class="p-4">
      <Descriptions :column="2" bordered :label-style="{ width: '140px' }">
        <Descriptions.Item :label="$t('system.mail.log.field.id')">
          {{ formData?.id }}
        </Descriptions.Item>
        <Descriptions.Item :label="$t('system.mail.log.field.createTime')">
          {{ formatDateTime(formData?.createTime || '') }}
        </Descriptions.Item>
        <Descriptions.Item :label="$t('system.mail.log.field.toMail')">
          {{ formData?.toMail }}
        </Descriptions.Item>
        <Descriptions.Item :label="$t('system.mail.log.field.fromMail')">
          {{ formData?.fromMail }}
        </Descriptions.Item>
        <Descriptions.Item :label="$t('system.mail.log.field.userId')">
          {{ formData?.userId }}
        </Descriptions.Item>
        <Descriptions.Item :label="$t('system.mail.log.field.userType')">
          {{ formData?.userType }}
        </Descriptions.Item>
        <Descriptions.Item :label="$t('system.mail.log.field.templateId')">
          {{ formData?.templateId }}
        </Descriptions.Item>
        <Descriptions.Item :label="$t('system.mail.log.field.templateCode')">
          {{ formData?.templateCode }}
        </Descriptions.Item>
        <Descriptions.Item
          :label="$t('system.mail.log.field.templateTitle')"
          :span="2"
        >
          {{ formData?.templateTitle }}
        </Descriptions.Item>
        <Descriptions.Item
          :label="$t('system.mail.log.field.templateContent')"
          :span="2"
        >
          <!-- eslint-disable-next-line vue/no-v-html -->
          <div v-html="formData?.templateContent"></div>
        </Descriptions.Item>
        <Descriptions.Item :label="$t('system.mail.log.field.sendStatus')">
          <DictTag
            :type="DICT_TYPE.SYSTEM_MAIL_SEND_STATUS"
            :value="formData?.sendStatus"
          />
        </Descriptions.Item>
        <Descriptions.Item :label="$t('system.mail.log.field.sendTime')">
          {{ formatDateTime(formData?.sendTime || '') }}
        </Descriptions.Item>
        <Descriptions.Item :label="$t('system.mail.log.field.sendMessageId')">
          {{ formData?.sendMessageId }}
        </Descriptions.Item>
        <Descriptions.Item :label="$t('system.mail.log.field.sendException')">
          {{ formData?.sendException }}
        </Descriptions.Item>
      </Descriptions>
    </div>
  </Modal>
</template>
