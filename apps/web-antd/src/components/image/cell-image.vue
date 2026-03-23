<script setup lang="ts">
import { computed, ref } from 'vue';

const props = defineProps<{
  src: string | string[] | null;
}>();

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
    :preview="{ visible: false }"
    width="100%"
    :src="imageUrls[0]"
    @click="visible = true"
  />
  <div style="display: none">
    <a-image-preview-group
      :preview="{ visible, onVisibleChange: handleVisibleChange }"
    >
      <a-image
        v-for="url in imageUrls"
        :key="url"
        :src="url"
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
