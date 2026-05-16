<script setup lang="ts">
import type { PropType } from 'vue';

import type { DictDataType } from '#/utils';

import { computed } from 'vue';

import { Select } from 'ant-design-vue';

import { $t } from '#/locales';

defineOptions({ name: 'I18nSelect', inheritAttrs: false });

const props = defineProps({
  modelValue: {
    type: [String, Number] as PropType<number | string>,
    default: undefined,
  },
  options: {
    type: Array as PropType<DictDataType[]>,
    default: () => [],
  },
  disabled: {
    type: Boolean,
    default: false,
  },
  placeholder: {
    type: String,
    default: () => $t('ui.placeholder.select'),
  },
});

const emit = defineEmits<{
  change: [value: number | string];
  'update:modelValue': [value: number | string];
}>();

// 带国际化的 options
const i18nOptions = computed(() =>
  props.options.map((item) => ({
    label: $t(item.label),
    value: String(item.value),
  })),
);

function handleChange(value: any) {
  if (value === undefined || value === null) return;
  const finalValue =
    typeof value === 'string' || typeof value === 'number'
      ? value
      : String(value);
  emit('update:modelValue', finalValue);
  emit('change', finalValue);
}
</script>

<template>
  <Select
    :value="modelValue"
    :disabled="props.disabled"
    :options="i18nOptions"
    :placeholder="placeholder"
    class="w-full"
    @change="handleChange"
  />
</template>
