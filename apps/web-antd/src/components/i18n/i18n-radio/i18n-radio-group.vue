<script setup lang="ts">
import type { PropType } from 'vue';

import type { DictDataType } from '#/utils';

import { computed, defineAsyncComponent } from 'vue';

import { Radio } from 'ant-design-vue';

import { $t } from '#/locales';

defineOptions({ name: 'I18nRadioGroup' });

const props = defineProps({
  modelValue: {
    type: [String, Number, Boolean] as PropType<boolean | number | string>,
    default: null,
  },
  options: {
    type: Array as PropType<DictDataType[]>,
    default: () => [],
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
