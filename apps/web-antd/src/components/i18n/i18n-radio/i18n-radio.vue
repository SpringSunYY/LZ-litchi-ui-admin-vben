<script setup lang="ts" generic>
import type { I18nRadioProps } from './typing';

import type { DictDataType } from '#/utils';

import { defineAsyncComponent } from 'vue';

import { $t } from '#/locales';

defineOptions({ name: 'I18nRadio' });

const props = withDefaults(defineProps<I18nRadioProps>(), {
  modelValue: undefined,
  disabled: false,
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

function getLabel(option: DictDataType) {
  if (option.i18n) {
    const translated = $t(option.i18n) as string;
    if (translated && translated !== option.i18n) {
      return translated;
    }
  }
  return option.label;
}
</script>

<template>
  <Radio
    :value="props.option.value"
    :disabled="props.disabled"
    :checked="modelValue === props.option.value"
    @change="handleChange"
  >
    {{ getLabel(props.option) }}
  </Radio>
</template>
