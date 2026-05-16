<script setup lang="ts">
import type { PropType } from 'vue';

import type { DictDataType } from '#/utils';

import { defineAsyncComponent } from 'vue';

import { $t } from '#/locales';

defineOptions({ name: 'I18nRadio' });

const props = defineProps({
  modelValue: {
    type: [String, Number, Boolean] as PropType<boolean | number | string>,
    default: null,
  },
  option: {
    type: Object as PropType<DictDataType>,
    required: true,
  },
  disabled: {
    type: Boolean,
    default: false,
  },
});

const emit = defineEmits<{
  change: [value: boolean | number | string];
  'update:modelValue': [value: boolean | number | string];
}>();

const Radio = defineAsyncComponent(() => import('ant-design-vue/es/radio'));

function handleChange(e: any) {
  const value = (e.target as HTMLInputElement).value;
  emit('update:modelValue', value);
  emit('change', value);
}
</script>

<template>
  <Radio
    :value="option.value"
    :disabled="props.disabled"
    :checked="modelValue === option.value"
    @change="handleChange"
  >
    {{ $t(option.label) }}
  </Radio>
</template>
