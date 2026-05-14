<script lang="ts" setup>
import type { InfraApiAccessLogApi } from '#/api/infra/api-access-log';

import { ref } from 'vue';

import { JsonViewer, useVbenModal } from '@vben/common-ui';
import { formatDateTime } from '@vben/utils';

import { Descriptions } from 'ant-design-vue';

import { DictTag } from '#/components/dict-tag';
import { DICT_TYPE } from '#/utils';

const formData = ref<InfraApiAccessLogApi.ApiAccessLog>();

const [Modal, modalApi] = useVbenModal({
  async onOpenChange(isOpen: boolean) {
    if (!isOpen) {
      formData.value = undefined;
      return;
    }
    // 加载数据
    const data = modalApi.getData<InfraApiAccessLogApi.ApiAccessLog>();
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
    :title="$t('infra.apiAccessLog.detail.title')"
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
      <Descriptions.Item :label="$t('infra.apiAccessLog.field.id')">
        {{ formData?.id }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiAccessLog.field.traceId')">
        {{ formData?.traceId }}
      </Descriptions.Item>
      <Descriptions.Item
        :label="$t('infra.apiAccessLog.field.applicationName')"
      >
        {{ formData?.applicationName }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiAccessLog.field.userId')">
        {{ formData?.userId }}
        <DictTag :type="DICT_TYPE.USER_TYPE" :value="formData?.userType" />
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiAccessLog.field.userIp')">
        {{ formData?.userIp }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiAccessLog.field.userAgent')">
        {{ formData?.userAgent }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiAccessLog.field.requestMethod')">
        {{ formData?.requestMethod }} {{ formData?.requestUrl }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiAccessLog.field.requestParams')">
        <JsonViewer :value="formData?.requestParams" preview-mode />
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiAccessLog.field.responseBody')">
        {{ formData?.responseBody }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiAccessLog.field.beginTime')">
        {{ formatDateTime(formData?.beginTime || '') }} ~
        {{ formatDateTime(formData?.endTime || '') }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiAccessLog.field.duration')">
        {{ formData?.duration }} {{ $t('infra.apiAccessLog.unit.duration') }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiAccessLog.field.resultCode')">
        <div v-if="formData?.resultCode === 0">
          {{ $t('infra.apiAccessLog.result.success') }}
        </div>
        <div v-else-if="formData && formData?.resultCode > 0">
          {{ $t('infra.apiAccessLog.result.fail') }} |
          {{ formData?.resultCode }} | {{ formData?.resultMsg }}
        </div>
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiAccessLog.field.operateModule')">
        {{ formData?.operateModule }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiAccessLog.field.operateName')">
        {{ formData?.operateName }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('infra.apiAccessLog.field.operateType')">
        <DictTag
          :type="DICT_TYPE.INFRA_OPERATE_TYPE"
          :value="formData?.operateType"
        />
      </Descriptions.Item>
    </Descriptions>
  </Modal>
</template>
