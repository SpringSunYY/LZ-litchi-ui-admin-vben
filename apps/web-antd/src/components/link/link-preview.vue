<script setup lang="ts">
import { ref } from 'vue';

import { message } from 'ant-design-vue';

import { $t } from '#/locales';

const props = defineProps<{
  url?: null | string;
}>();

const visible = ref(false);

const openLink = () => {
  if (props.url) {
    window.open(props.url, '_blank');
  }
  visible.value = false;
};

const copyLink = async () => {
  if (props.url) {
    await navigator.clipboard.writeText(props.url);
    message.success($t('ui.link.copySuccess'));
  }
  visible.value = false;
};
</script>

<template>
  <span v-if="!url">-</span>
  <a-popover v-else v-model:open="visible" placement="top" trigger="hover">
    <template #content>
      <div class="link-preview-content">
        <div class="link-preview-url">{{ url }}</div>
        <div class="link-preview-actions">
          <a-button type="link" size="small" @click="openLink">
            {{ $t('ui.link.openLink') }}
          </a-button>
          <a-button type="link" size="small" @click="copyLink">
            {{ $t('ui.link.copyLink') }}
          </a-button>
        </div>
      </div>
    </template>
    <a-button type="link" size="small" @click.stop="openLink">
      {{ $t('ui.link.view') }}
    </a-button>
  </a-popover>
</template>

<style scoped>
.link-preview-content {
  display: flex;
  flex-direction: column;
  gap: 4px;
  min-width: 200px;
  max-width: 400px;
}
.link-preview-url {
  font-size: 12px;
  color: #666;
  word-break: break-all;
  padding: 4px 0;
  border-bottom: 1px solid #f0f0f0;
  margin-bottom: 4px;
}
.link-preview-actions {
  display: flex;
  flex-direction: column;
  gap: 4px;
}
</style>
