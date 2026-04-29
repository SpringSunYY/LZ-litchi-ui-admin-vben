<script setup lang="ts">
import { computed, ref } from 'vue';

import { $t } from '#/locales';

interface FilePreviewProps {
  /** 文件 URL，多个用 separator 分隔 */
  fileUrl: string;
  /** 多个文件 URL 之间的分隔符 */
  separator?: string;
}
defineOptions({ name: 'FilePreview', inheritAttrs: false });

const props = withDefaults(defineProps<FilePreviewProps>(), {
  fileUrl: '',
  separator: '||',
});

const visible = ref(false);

/** 获取文件名 */
function getFileName(url: string): string {
  if (!url) return '';
  const idx = url.lastIndexOf('/');
  return idx === -1 ? url : url.slice(idx + 1);
}

/** 文件列表 */
const fileList = computed(() => {
  if (!props.fileUrl) return [];
  return props.fileUrl
    .split(props.separator)
    .map((u) => u.trim())
    .filter(Boolean);
});
</script>

<template>
  <template v-if="fileList.length > 0">
    <a-popover v-model:open="visible" placement="top" trigger="click">
      <template #title>{{ $t('ui.filePreview.viewFile') }}</template>
      <template #content>
        <div
          v-for="(url, index) in fileList"
          :key="index"
          style="text-align: left; padding: 2px 0; max-width: 300px"
        >
          <a
            :href="url"
            target="_blank"
            style="font-size: 13px; word-break: break-all"
          >
            {{ getFileName(url) }}
          </a>
        </div>
      </template>
      <span style="cursor: pointer; color: #1677ff">{{ $t('ui.filePreview.viewFile') }}</span>
    </a-popover>
  </template>
  <span v-else>-</span>
</template>
