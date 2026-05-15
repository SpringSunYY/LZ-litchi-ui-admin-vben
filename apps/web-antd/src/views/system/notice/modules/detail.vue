<script lang="ts" setup>
import type { SystemNoticeApi } from '#/api/system/notice';

import { useVbenModal } from '@vben/common-ui';

import { useDescription } from '#/components/description';
import { $t } from '#/locales';

import { useDetailSchema } from '../data';

const [Description, descApi] = useDescription({
  componentProps: {
    bordered: true,
    column: 2,
    size: 'middle',
    class: 'mx-4',
  },
  schema: useDetailSchema(),
});

const [Modal, modalApi] = useVbenModal({
  class: 'w-[1000px]',
  async onOpenChange(isOpen: boolean) {
    if (!isOpen) {
      return;
    }
    // 加载数据
    const data = modalApi.getData<SystemNoticeApi.Notice>();
    if (!data || !data.id) {
      return;
    }
    modalApi.lock();
    try {
      descApi.setState({ data });
    } finally {
      modalApi.unlock();
    }
  },
});
</script>

<template>
  <Modal
    :title="$t('system.notice.message.detail')"
    :show-cancel-button="false"
    :show-confirm-button="false"
  >
    <Description />
  </Modal>
</template>
