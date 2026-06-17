<!-- 标签选项 -->
<script setup lang="ts">
const props = withDefaults(
  defineProps<{
    modelValue: number | string;
    tags?: { i18n?: string; label: string; value: number | string }[];
  }>(),
  {
    tags: () => [],
  },
);

const emits = defineEmits<{
  (e: 'update:modelValue', value: number | string): void;
}>();
</script>

<template>
  <div class="flex flex-wrap gap-2">
    <span
      v-for="tag in tags"
      :key="tag.value"
      class="border-card-100 bg-card mb-2 cursor-pointer rounded border-2 border-solid px-1 text-xs leading-6"
      :class="
        props.modelValue === tag.value &&
        '!border-primary-500 !text-primary-500'
      "
      @click="emits('update:modelValue', tag.value)"
    >
      {{ tag.i18n ? $t(tag.i18n) : tag.label }}
    </span>
  </div>
</template>
