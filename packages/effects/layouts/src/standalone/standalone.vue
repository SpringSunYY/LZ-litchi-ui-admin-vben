<script setup lang="ts">
import { onMounted, onUnmounted, ref } from 'vue';

defineOptions({ name: 'StandaloneLayout' });

const layoutRef = ref<HTMLDivElement | null>(null);
let resizeObserver: null | ResizeObserver = null;

function updateContentHeight() {
  if (!layoutRef.value) return;
  document.documentElement.style.setProperty(
    '--vben-content-height',
    `${layoutRef.value.getBoundingClientRect().height}px`,
  );
}

onMounted(() => {
  updateContentHeight();
  resizeObserver = new ResizeObserver(() => {
    updateContentHeight();
  });
  if (layoutRef.value) {
    resizeObserver.observe(layoutRef.value);
  }
});

onUnmounted(() => {
  resizeObserver?.disconnect();
  resizeObserver = null;
});
</script>

<template>
  <div ref="layoutRef" class="standalone-layout">
    <div class="standalone-layout__content">
      <RouterView v-slot="{ Component, route }">
        <component :is="Component" v-if="Component" :key="route.path" />
      </RouterView>
    </div>
  </div>
</template>

<style scoped>
.standalone-layout {
  display: flex;
  flex-direction: column;
  width: 100%;
  height: 100%;
  overflow: hidden;
}

.standalone-layout__content {
  flex: 1;
  min-height: 0;
  overflow: hidden;
}
</style>
