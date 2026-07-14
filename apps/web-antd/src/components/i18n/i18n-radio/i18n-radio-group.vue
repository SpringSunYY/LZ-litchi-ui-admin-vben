<script setup lang="ts" generic>
import type { I18nRadioGroupProps } from './typing';

import { computed, defineAsyncComponent } from 'vue';

import { Radio } from 'ant-design-vue';

import { $t } from '#/locales';

defineOptions({ name: 'I18nRadioGroup' });

const props = withDefaults(defineProps<I18nRadioGroupProps>(), {
  modelValue: undefined,
  options: () => [],
  disabled: false,
});

const emit = defineEmits<{
  change: [value: boolean | number | string];
  'update:modelValue': [value: boolean | number | string];
}>();

const RadioGroup = defineAsyncComponent(() =>
  import('ant-design-vue/es/radio').then((res) => res.RadioGroup),
);

const i18nOptions = computed(() =>
  props.options.map((item) => {
    let label = item.label;
    if (item.i18n) {
      const translated = $t(item.i18n) as string;
      if (translated && translated !== item.i18n) {
        label = translated;
      }
    }
    return { ...item, label };
  }),
);

function handleChange(e: any) {
  const value = (e.target as HTMLInputElement).value;
  emit('update:modelValue', value);
  emit('change', value);
}
</script>

<template>
  <RadioGroup
    :value="modelValue"
    :disabled="props.disabled"
    @change="handleChange"
  >
    <Radio
      v-for="item in i18nOptions"
      :key="String(item.value)"
      :value="item.value"
    >
      {{ item.label }}
    </Radio>
  </RadioGroup>
</template>
