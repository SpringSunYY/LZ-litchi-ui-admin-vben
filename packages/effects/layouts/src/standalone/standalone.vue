<script setup lang="ts">
import { LayoutContent } from './content';

defineOptions({ name: 'StandaloneLayout' });
</script>

<template>
  <div class="standalone-layout">
    <LayoutContent />
  </div>
</template>

<style scoped>
.standalone-layout {
  width: 100%;
  height: 100%;
}
</style>
