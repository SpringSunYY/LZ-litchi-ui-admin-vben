<script setup lang="ts">
import type { PropType } from 'vue';

import type { DictDataType } from '#/utils';

import { computed } from 'vue';

import { Checkbox } from 'ant-design-vue';

import { $t } from '#/locales';

defineOptions({ name: 'I18nCheckboxGroup' });

const props = defineProps({
  modelValue: {
    type: Array as PropType<string[]>,
    default: () => [],
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
  change: [value: string[]];
  'update:modelValue': [value: string[]];
}>();

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
  const values = (e.target.value as (boolean | number | string)[]).map(String);
  emit('update:modelValue', values);
  emit('change', values);
}
</script>

<template>
  <Checkbox.Group
    :value="modelValue"
    :disabled="props.disabled"
    @change="handleChange"
  >
    <Checkbox
      v-for="item in i18nOptions"
      :key="String(item.value)"
      :value="String(item.value)"
    >
      {{ item.label }}
    </Checkbox>
  </Checkbox.Group>
</template>
