<script setup lang="ts" generic>
import type { I18nDictTagSelectProps } from './typing';

import { $t } from '#/locales';

defineOptions({ name: 'I18nDictTagSelect' });

const props = withDefaults(defineProps<I18nDictTagSelectProps>(), {
  modelValue: undefined,
  tags: () => [],
  disabled: false,
});

const emit = defineEmits<{
  change: [value: boolean | number | string];
  'update:modelValue': [value: boolean | number | string];
}>();

function handleClick(value: boolean | number | string) {
  if (props.disabled) return;
  emit('update:modelValue', value);
  emit('change', value);
}
</script>

<template>
  <div class="flex flex-wrap gap-2">
    <span
      v-for="tag in tags"
      :key="String(tag.value)"
      class="border-card-100 bg-card mb-2 cursor-pointer rounded border-2 border-solid px-1 text-xs leading-6"
      :class="[
        modelValue === tag.value && '!border-primary-500 !text-primary-500',
        props.disabled && '!cursor-not-allowed opacity-60',
      ]"
      @click="handleClick(tag.value)"
    >
      {{ tag.i18n ? $t(tag.i18n) : tag.label }}
    </span>
  </div>
</template>
