<script setup lang="ts">
import type { ImagePreviewProps } from './typing';

import { computed, ref } from 'vue';

const props = withDefaults(defineProps<ImagePreviewProps>(), {
  height: '100%',
  width: '100%',
  src: '',
});
const imageUrls = computed(() => {
  if (!props.src) return [];
  if (Array.isArray(props.src)) return props.src;
  if (typeof props.src === 'string' && props.src.includes('||')) {
    return props.src.split('||').map((url) => url.trim());
  }
  return [props.src];
});
const visible = ref(false);

const handleVisibleChange = (vis: boolean) => {
  visible.value = vis;
};
</script>

<template>
  <a-image
    v-if="imageUrls"
    :preview="{ visible: false }"
    :height="props.height"
    :width="props.width"
    :src="imageUrls[0]"
    @click="visible = true"
  />
  <div style="display: none">
    <a-image-preview-group
      :preview="{ visible, onVisibleChange: handleVisibleChange }"
    >
      <a-image
        v-for="(url, index) in imageUrls"
        :key="index"
        :src="url"
        :height="props.height"
        :width="props.width"
        class="hidden-preview-source"
      />
    </a-image-preview-group>
  </div>
</template>

<style scoped>
.hidden-preview-source {
  display: none;
}
</style>
