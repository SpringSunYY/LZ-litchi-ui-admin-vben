<script setup lang="ts">
import { computed, ref } from 'vue';

import { message } from 'ant-design-vue';

import { $t } from '#/locales';

const props = defineProps<{
  value: null | Record<string, any> | string;
}>();

const visible = ref(false);

const items = computed(() => {
  if (!props.value) return [];
  let obj: Record<string, any> = {};
  if (typeof props.value === 'string') {
    try {
      obj = JSON.parse(props.value);
    } catch {
      return [];
    }
  } else {
    obj = props.value;
  }
  return Object.entries(obj).map(([key, val]) => ({
    key,
    value: val,
  }));
});

const formattedJson = computed(() => {
  if (!props.value) return '';
  let obj: Record<string, any> = {};
  if (typeof props.value === 'string') {
    try {
      obj = JSON.parse(props.value);
    } catch {
      return props.value;
    }
  } else {
    obj = props.value;
  }
  return JSON.stringify(obj, null, 2);
});

const copyJson = async () => {
  await navigator.clipboard.writeText(formattedJson.value);
  message.success($t('ui.json.copySuccess'));
  visible.value = false;
};
</script>

<template>
  <span v-if="!value || !items.length">-</span>
  <a-popover v-else v-model:open="visible" placement="top" trigger="hover">
    <template #content>
      <div class="json-preview-content">
        <div class="json-preview-items">
          <div v-for="item in items" :key="item.key" class="json-preview-item">
            <span class="json-preview-key">{{ item.key }}</span>
            <span class="json-preview-sep">:</span>
            <span class="json-preview-value">{{ item.value }}</span>
          </div>
        </div>
        <div class="json-preview-actions">
          <a-button type="link" size="small" @click="copyJson">
            {{ $t('ui.json.copyJson') }}
          </a-button>
        </div>
      </div>
    </template>
    <a-button type="link" size="small" @click.stop="visible = true">
      {{ $t('ui.json.view') }}
    </a-button>
  </a-popover>
</template>

<style scoped>
.json-preview-content {
  display: flex;
  flex-direction: column;
  gap: 4px;
  min-width: 200px;
  max-width: 400px;
}
.json-preview-items {
  display: flex;
  flex-direction: column;
  gap: 2px;
  font-size: 16px;
  padding-bottom: 4px;
  border-bottom: 1px solid #f0f0f0;
}
.json-preview-item {
  display: flex;
  gap: 4px;
}
.json-preview-key {
  color: #666;
  flex-shrink: 0;
}
.json-preview-sep {
  color: #999;
}
.json-preview-value {
  color: #333;
  word-break: break-all;
}
.json-preview-actions {
  display: flex;
  justify-content: center;
}
</style>
