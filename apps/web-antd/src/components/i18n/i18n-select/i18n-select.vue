<script setup lang="ts" generic>
import type { I18nSelectProps } from './typing';

import { computed } from 'vue';

import { Select } from 'ant-design-vue';

import { $t } from '#/locales';

defineOptions({ name: 'I18nSelect', inheritAttrs: false });

const props = withDefaults(defineProps<I18nSelectProps>(), {
  modelValue: undefined,
  options: () => [],
  disabled: false,
  allowClear: false,
  placeholder: '',
});

const emit = defineEmits<{
  change: [value: boolean | number | string | undefined];
  'update:modelValue': [value: boolean | number | string | undefined];
}>();

const placeholderText = computed(
  () => props.placeholder || $t('ui.placeholder.select'),
);

// 带国际化的 options，value 统一转字符串避免类型比较问题
const i18nOptions = computed(() => {
  return props.options.map((item) => {
    let label = item.label || String(item.value);
    const i18nKey = item.i18n;
    if (i18nKey) {
      const translated = $t(i18nKey) as string;
      if (translated && translated !== i18nKey) {
        label = translated;
      }
    }
    return {
      label,
      value: String(item.value),
    };
  });
});

// modelValue 也转字符串或保持布尔值，和 options.value 保持一致
const normalizedValue = computed(() => {
  if (props.modelValue === undefined || props.modelValue === null) {
    return undefined;
  }
  if (typeof props.modelValue === 'boolean') {
    return props.modelValue ? 'true' : 'false';
  }
  return String(props.modelValue);
});

function handleChange(value: any) {
  if (value === undefined || value === null) {
    emit('update:modelValue', undefined);
    emit('change', undefined);
    return;
  }
  // 如果原始 modelValue 是 number，保持 number；如果是 boolean，保持 boolean
  const valueType =
    props.modelValue !== undefined && props.modelValue !== null
      ? typeof props.modelValue
      : typeof value;
  let finalValue: boolean | number | string;
  if (valueType === 'number') {
    finalValue = Number(value);
  } else if (valueType === 'boolean') {
    finalValue = value === 'true' ? true : value === 'false' ? false : value;
  } else {
    finalValue = value;
  }
  emit('update:modelValue', finalValue);
  emit('change', finalValue);
}
</script>

<template>
  <Select
    :value="normalizedValue"
    :disabled="props.disabled"
    :options="i18nOptions"
    :placeholder="placeholderText"
    :allow-clear="allowClear"
    class="w-full"
    @change="handleChange"
  />
</template>
