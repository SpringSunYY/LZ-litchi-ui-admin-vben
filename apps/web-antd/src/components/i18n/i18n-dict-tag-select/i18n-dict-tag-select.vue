<script lang="ts" setup>
import type { PropType } from 'vue';

import type { DictDataType } from '#/utils';

defineOptions({ name: 'I18nDictTagSelect' });

const props = defineProps({
  modelValue: {
    type: [String, Number, Boolean] as PropType<boolean | number | string>,
    default: null,
  },
  tags: {
    type: Array as PropType<DictDataType[]>,
    default: () => [],
  },
  disabled: {
    type: Boolean,
    default: false,
  },
});

const emits = defineEmits<{
  (e: 'update:modelValue', value: boolean | number | string): void;
  (e: 'change', value: boolean | number | string): void;
}>();

function handleClick(value: boolean | number | string) {
  if (props.disabled) return;
  emits('update:modelValue', value);
  emits('change', value);
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
