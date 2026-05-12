<script setup lang="ts">
import { computed } from 'vue';

import { FilePreview } from '#/components/file-preview';
import CellImage from '#/components/image/image-preview.vue';

interface CellFileAndImagesProps {
  /** 文件 URL，多个用 separator 分隔 */
  value: string;
  /** 多个文件 URL 之间的分隔符 */
  separator?: string;
  /** 强制指定类型：'image' | 'file' | 'auto'，默认 auto */
  type?: 'auto' | 'file' | 'image';
}

const props = withDefaults(defineProps<CellFileAndImagesProps>(), {
  value: '',
  separator: '||',
  type: 'auto',
});

/** 图片扩展名 */
const IMAGE_EXTENSIONS = new Set([
  '.bmp',
  '.gif',
  '.ico',
  '.jfif',
  '.jpeg',
  '.jpg',
  '.pjp',
  '.pjpeg',
  '.png',
  '.svg',
  '.tif',
  '.tiff',
  '.webp',
]);

/** 获取文件扩展名（转小写） */
function getExtension(url: string): string {
  if (!url) return '';
  const idx = url.lastIndexOf('.');
  return idx === -1 ? '' : url.slice(idx + 1).toLowerCase();
}

/** 判断是否为图片 URL */
function isImageUrl(url: string): boolean {
  const ext = getExtension(url);
  return IMAGE_EXTENSIONS.has(`.${ext}`);
}

/** 获取文件列表 */
const fileList = computed(() => {
  if (!props.value) return [];
  return props.value
    .split(props.separator)
    .map((u) => u.trim())
    .filter(Boolean);
});

/** 根据类型判断每个文件应该使用哪个组件 */
const filesWithType = computed(() => {
  return fileList.value.map((url) => {
    if (props.type === 'image') {
      return { url, isImage: true };
    }
    if (props.type === 'file') {
      return { url, isImage: false };
    }
    return { url, isImage: isImageUrl(url) };
  });
});

/** 是否全部是图片 */
const allAreImages = computed(() => {
  return (
    filesWithType.value.length > 0 &&
    filesWithType.value.every((f) => f.isImage)
  );
});

/** 是否全部是文件 */
const allAreFiles = computed(() => {
  return (
    filesWithType.value.length > 0 &&
    filesWithType.value.every((f) => !f.isImage)
  );
});

/** 全部转为图片 URL */
const imageUrls = computed(() => {
  return fileList.value;
});
</script>

<template>
  <template v-if="fileList.length > 0">
    <!-- 全部是图片 -->
    <CellImage v-if="allAreImages" :src="imageUrls" />
    <!-- 混合类型或文件 -->
    <div v-else>
      <template v-for="(file, index) in filesWithType" :key="index">
        <CellImage
          v-if="file.isImage"
          :src="file.url"
          style="max-width: 80px; vertical-align: middle"
        />
        <FilePreview
          v-else
          :file-url="file.url"
          :separator="separator"
          style="margin: 0 auto"
        />
      </template>
    </div>
  </template>
  <span v-else>-</span>
</template>
