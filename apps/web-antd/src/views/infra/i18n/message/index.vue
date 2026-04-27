<script lang="ts" setup>
import type { I18nKeyApi } from '#/api/infra/i18n/i18nKey';

import { ref } from 'vue';

import { DocAlert, Page } from '@vben/common-ui';

import KeyGrid from './modules/key-grid.vue';
import MessageGrid from './modules/message-grid.vue';

const messageGridRef = ref<InstanceType<typeof MessageGrid>>();
const searchRow = ref<I18nKeyApi.I18nKey | null>(null);

function handleKeySelect(row: I18nKeyApi.I18nKey) {
  searchRow.value = row;
}

function handleKeyDeleted() {
  searchRow.value = null;
  messageGridRef.value?.onRefresh();
}
</script>

<template>
  <Page auto-content-height>
    <template #doc>
      <DocAlert title="国际化管理" url="https://doc.iocoder.cn/i18n/" />
    </template>

    <div class="flex h-full">
      <!-- 左侧国际化键名列表 -->
      <div class="w-1/2 pr-3">
        <KeyGrid @select="handleKeySelect" @deleted="handleKeyDeleted" />
      </div>
      <!-- 右侧国际化信息列表 -->
      <div class="w-1/2">
        <MessageGrid ref="messageGridRef" :row="searchRow" />
      </div>
    </div>
  </Page>
</template>
