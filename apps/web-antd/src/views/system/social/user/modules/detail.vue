<script lang="ts" setup>
import type { SystemSocialUserApi } from '#/api/system/social/user';

import { ref } from 'vue';

import { useVbenModal } from '@vben/common-ui';

import { Descriptions, DescriptionsItem, Image } from 'ant-design-vue';

import { getSocialUser } from '#/api/system/social/user';
import { DictTag } from '#/components/dict-tag';
import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

const formData = ref<SystemSocialUserApi.SocialUser>();

const [Modal, modalApi] = useVbenModal({
  title: $t('ui.actionTitle.detail'),
  async onOpenChange(isOpen: boolean) {
    if (!isOpen) {
      formData.value = undefined;
      return;
    }
    // 加载数据
    const data = modalApi.getData();
    if (!data || !data.id) {
      return;
    }
    modalApi.lock();
    try {
      formData.value = await getSocialUser(data.id);
    } finally {
      modalApi.unlock();
    }
  },
});
</script>

<template>
  <Modal
    :title="$t('system.social.user.message.detail')"
    class="w-1/2"
    :show-cancel-button="false"
    :show-confirm-button="false"
  >
    <Descriptions
      bordered
      :column="1"
      size="middle"
      class="mx-4"
      :label-style="{ width: '185px' }"
    >
      <DescriptionsItem :label="$t('system.social.user.field.type')">
        <DictTag :type="DICT_TYPE.SYSTEM_SOCIAL_TYPE" :value="formData?.type" />
      </DescriptionsItem>
      <DescriptionsItem :label="$t('system.social.user.field.nickname')">
        {{ formData?.nickname }}
      </DescriptionsItem>
      <DescriptionsItem :label="$t('system.social.user.field.avatar')">
        <Image :src="formData?.avatar" :width="30" :height="30" />
      </DescriptionsItem>
      <DescriptionsItem :label="$t('system.social.user.field.token')">
        {{ formData?.token }}
      </DescriptionsItem>
      <DescriptionsItem :label="$t('system.social.user.field.rawTokenInfo')">
        {{ formData?.rawTokenInfo }}
      </DescriptionsItem>
      <DescriptionsItem :label="$t('system.social.user.field.rawUserInfo')">
        {{ formData?.rawUserInfo }}
      </DescriptionsItem>
      <DescriptionsItem :label="$t('system.social.user.field.code')">
        {{ formData?.code }}
      </DescriptionsItem>
      <DescriptionsItem :label="$t('system.social.user.field.state')">
        {{ formData?.state }}
      </DescriptionsItem>
    </Descriptions>
  </Modal>
</template>
