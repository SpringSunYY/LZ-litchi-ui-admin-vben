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
  allowClear: {
    type: Boolean,
    default: false,
  },
  placeholder: {
    type: String,
    default: () => $t('ui.placeholder.select'),
  },
});

const emit = defineEmits<{
  change: [value: number | string | undefined];
  'update:modelValue': [value: number | string | undefined];
}>();

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

// modelValue 也转字符串，和 options.value 保持一致
const normalizedValue = computed(() =>
  props.modelValue !== undefined && props.modelValue !== null
    ? String(props.modelValue)
    : undefined,
);

function handleChange(value: any) {
  if (value === undefined || value === null) {
    emit('update:modelValue', undefined);
    emit('change', undefined);
    return;
  }
  // 如果原始 modelValue 是 number，emit 时保持 number
  const isNumberModel =
    props.modelValue !== undefined &&
    props.modelValue !== null &&
    typeof props.modelValue === 'number';
  const finalValue = isNumberModel ? Number(value) : value;
  emit('update:modelValue', finalValue);
  emit('change', finalValue);
}
</script>

<template>
  <Select
    :value="normalizedValue"
    :disabled="props.disabled"
    :options="i18nOptions"
    :placeholder="placeholder"
    :allow-clear="allowClear"
    class="w-full"
    @change="handleChange"
  />
</template>
