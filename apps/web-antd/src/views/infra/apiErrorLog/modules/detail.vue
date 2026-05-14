<script lang="ts" setup>
import type { InfraApiErrorLogApi } from '#/api/infra/api-error-log';

import { ref } from 'vue';

import { JsonViewer, useVbenModal } from '@vben/common-ui';
import { formatDateTime } from '@vben/utils';

import { Descriptions } from 'ant-design-vue';

import { DictTag } from '#/components/dict-tag';
import { DICT_TYPE } from '#/utils';

const formData = ref<InfraApiErrorLogApi.ApiErrorLog>();

const [Modal, modalApi] = useVbenModal({
  async onOpenChange(isOpen: boolean) {
    if (!isOpen) {
      formData.value = undefined;
      return;
    }
    // 加载数据
    const data = modalApi.getData<InfraApiErrorLogApi.ApiErrorLog>();
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
    :title="$t('infra.apiErrorLog.detail.title')"
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
      <Descriptions.Item :label="$t('infra.apiErrorLog.field.id')">
        {{ formData?.id }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiErrorLog.field.traceId')">
        {{ formData?.traceId }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiErrorLog.field.applicationName')">
        {{ formData?.applicationName }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiErrorLog.field.userId')">
        {{ formData?.userId }}
        <DictTag :type="DICT_TYPE.USER_TYPE" :value="formData?.userType" />
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiErrorLog.field.userIp')">
        {{ formData?.userIp }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiErrorLog.field.userAgent')">
        {{ formData?.userAgent }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiErrorLog.field.requestMethod')">
        {{ formData?.requestMethod }} {{ formData?.requestUrl }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiErrorLog.field.requestParams')">
        <JsonViewer :value="formData?.requestParams" preview-mode />
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiErrorLog.field.exceptionTime')">
        {{ formatDateTime(formData?.exceptionTime || '') }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiErrorLog.field.exceptionName')">
        {{ formData?.exceptionName }}
      </Descriptions.Item>
      <Descriptions.Item
        v-if="formData?.exceptionStackTrace"
        :label="$t('infra.apiErrorLog.field.exceptionStackTrace')"
      >
        <JsonViewer :value="formData?.exceptionStackTrace" preview-mode />
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiErrorLog.field.processStatus')">
        <DictTag
          :type="DICT_TYPE.INFRA_API_ERROR_LOG_PROCESS_STATUS"
          :value="formData?.processStatus"
        />
      </Descriptions.Item>
      <Descriptions.Item
        v-if="formData?.processUserId"
        :label="$t('infra.apiErrorLog.field.processUserId')"
      >
        {{ formData?.processUserId }}
      </Descriptions.Item>
      <Descriptions.Item
        v-if="formData?.processTime"
        :label="$t('infra.apiErrorLog.field.processTime')"
      >
        {{ formatDateTime(formData?.processTime || '') }}
      </Descriptions.Item>
    </Descriptions>
  </Modal>
</template>
