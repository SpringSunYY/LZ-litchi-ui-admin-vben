<script setup lang="ts">
import type { CheckboxChangeEvent } from 'ant-design-vue/es/checkbox/interface';

import type { PropType } from 'vue';

import type { DictDataType } from '#/utils';

import { defineAsyncComponent } from 'vue';

import { $t } from '#/locales';

defineOptions({ name: 'I18nCheckbox' });

const props = defineProps({
  modelValue: {
    type: Array as PropType<string[]>,
    default: () => [],
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
  change: [value: string[]];
  'update:modelValue': [value: string[]];
}>();

const Checkbox = defineAsyncComponent(() =>
  import('ant-design-vue').then((res) => res.Checkbox),
);

function isChecked() {
  if (!props.option) return false;
  return props.modelValue.includes(String(props.option.value));
}

function handleChange(e: CheckboxChangeEvent) {
  if (!props.option) return;
  const checked = (e.target as HTMLInputElement).checked;
  let values = [...props.modelValue];
  if (checked) {
    values.push(String(props.option.value));
  } else {
    values = values.filter((v) => v !== String(props.option.value));
  }
  emit('update:modelValue', values);
  emit('change', values);
}
</script>

<template>
  <Checkbox
    v-if="props.option"
    :checked="isChecked()"
    :disabled="props.disabled"
    @change="handleChange"
  >
    {{ $t(props.option.label) }}
  </Checkbox>
</template>
