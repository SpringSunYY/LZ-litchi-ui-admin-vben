<script lang="ts" setup>
import { Popover } from 'ant-design-vue';

defineOptions({
  name: 'EllipsisContent',
  inheritAttrs: false,
});

withDefaults(
  defineProps<{
    title?: string;
  }>(),
  {
    title: '',
  },
);
</script>

<template>
  <Popover trigger="hover" placement="top">
    <template v-if="title" #title>
      <div class="ellipsis-content-tooltip-title">{{ title }}</div>
    </template>
    <template #content>
      <slot></slot>
    </template>
    <span class="ellipsis-content-span" v-bind="$attrs">
      {{ title || '' }}
      <slot v-if="!title"></slot>
    </span>
  </Popover>
</template>

<style scoped>
.ellipsis-content-span {
  display: inline;
  width: 100%;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
</style>

<style>
.ellipsis-content-tooltip-title {
  text-align: center;
}
</style>
