<script lang="ts" setup>
import type { SystemOperateLogApi } from '#/api/system/operate-log';

import { ref } from 'vue';

import { useVbenModal } from '@vben/common-ui';
import { formatDateTime } from '@vben/utils';

import { Descriptions } from 'ant-design-vue';

import { $t } from '#/locales';

const formData = ref<SystemOperateLogApi.OperateLog>();

const [Modal, modalApi] = useVbenModal({
  async onOpenChange(isOpen: boolean) {
    if (!isOpen) {
      formData.value = undefined;
      return;
    }
    // 加载数据
    const data = modalApi.getData<SystemOperateLogApi.OperateLog>();
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
    :title="$t('system.operatelog.message.detail')"
    class="w-1/2"
    :show-cancel-button="false"
    :show-confirm-button="false"
  >
    <Descriptions
      bordered
      :column="1"
      size="middle"
      class="mx-4"
      :label-style="{ width: '110px' }"
    >
      <Descriptions.Item :label="$t('system.operatelog.field.id')">
        {{ formData?.id }}
      </Descriptions.Item>
      <Descriptions.Item
        v-if="formData?.traceId"
        :label="$t('system.operatelog.field.traceId')"
      >
        {{ formData?.traceId }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.operatelog.field.userId')">
        {{ formData?.userId }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.operatelog.field.userName')">
        {{ formData?.userName }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.operatelog.field.userIp')">
        {{ formData?.userIp }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.operatelog.field.userAgent')">
        {{ formData?.userAgent }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.operatelog.field.type')">
        {{ formData?.type }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.operatelog.field.subType')">
        {{ formData?.subType }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.operatelog.field.action')">
        {{ formData?.action }}
      </Descriptions.Item>
      <Descriptions.Item
        v-if="formData?.extra"
        :label="$t('system.operatelog.field.extra')"
      >
        {{ formData?.extra }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.operatelog.field.requestUrl')">
        {{ formData?.requestMethod }} {{ formData?.requestUrl }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.operatelog.field.createTime')">
        {{ formatDateTime(formData?.createTime || '') }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.operatelog.field.bizId')">
        {{ formData?.bizId }}
      </Descriptions.Item>
    </Descriptions>
  </Modal>
</template>
