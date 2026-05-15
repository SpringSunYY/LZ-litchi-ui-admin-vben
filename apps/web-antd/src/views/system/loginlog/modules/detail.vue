<script lang="ts" setup>
import type { SystemLoginLogApi } from '#/api/system/login-log';

import { ref } from 'vue';

import { useVbenModal } from '@vben/common-ui';
import { formatDateTime } from '@vben/utils';

import { Descriptions } from 'ant-design-vue';

import { DictTag } from '#/components/dict-tag';
import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

const formData = ref<SystemLoginLogApi.LoginLog>();

const [Modal, modalApi] = useVbenModal({
  async onOpenChange(isOpen: boolean) {
    if (!isOpen) {
      formData.value = undefined;
      return;
    }
    // 加载数据
    const data = modalApi.getData<SystemLoginLogApi.LoginLog>();
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
    :title="$t('system.loginlog.message.detail')"
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
      <Descriptions.Item :label="$t('system.loginlog.field.id')">
        {{ formData?.id }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.loginlog.field.logType')">
        <DictTag
          :type="DICT_TYPE.SYSTEM_LOGIN_TYPE"
          :value="formData?.logType"
        />
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.loginlog.field.username')">
        {{ formData?.username }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.loginlog.field.userIp')">
        {{ formData?.userIp }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.loginlog.field.userAgent')">
        {{ formData?.userAgent }}
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.loginlog.field.result')">
        <DictTag
          :type="DICT_TYPE.SYSTEM_LOGIN_RESULT"
          :value="formData?.result"
        />
      </Descriptions.Item>
      <Descriptions.Item :label="$t('system.loginlog.field.createTime')">
        {{ formatDateTime(formData?.createTime || '') }}
      </Descriptions.Item>
    </Descriptions>
  </Modal>
</template>
