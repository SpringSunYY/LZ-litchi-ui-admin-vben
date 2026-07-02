<script setup lang="ts">
/**
 * 数字区间组件，用于选择最小值和最大值的范围
 */
import { computed, ref, watch } from 'vue';

import { $t } from '@vben/locales';
import { isNumber } from '@vben/utils';

import { InputNumber } from 'ant-design-vue';

defineOptions({ name: 'NumberRange', inheritAttrs: false });

const props = withDefaults(defineProps<Props>(), {
  modelValue: () => [null, null] as [null | number, null | number],
  min: undefined,
  max: undefined,
  precision: 2,
  step: 1,
  disabled: false,
  placeholder: () => [$t('common.min'), $t('common.max')] as [string, string],
});

const emit = defineEmits<{
  change: [value: [null | number, null | number]];
  'update:modelValue': [value: [null | number, null | number]];
}>();

interface Props {
  modelValue?: [null | number, null | number];
  min?: number;
  max?: number;
  precision?: number;
  step?: number;
  disabled?: boolean;
  placeholder?: [string, string];
}

const minValue = ref<any>(null);
const maxValue = ref<any>(null);

const minPlaceholder = computed(() => props.placeholder[0] || '最小值');
const maxPlaceholder = computed(() => props.placeholder[1] || '最大值');

watch(
  () => props.modelValue,
  (val) => {
    if (Array.isArray(val) && val.length >= 2) {
      minValue.value = isNumber(val[0]) ? val[0] : null;
      maxValue.value = isNumber(val[1]) ? val[1] : null;
    } else {
      minValue.value = null;
      maxValue.value = null;
    }
  },
  { immediate: true, deep: true },
);

function emitChange() {
  const value: [null | number, null | number] = [
    minValue.value,
    maxValue.value,
  ];
  emit('update:modelValue', value);
  emit('change', value);
}

function handleMinChange(value: any) {
  minValue.value = value;
}

function handleMaxChange(value: any) {
  maxValue.value = value;
}

function handleMinBlur() {
  if (
    minValue.value !== null &&
    maxValue.value !== null &&
    minValue.value > maxValue.value
  ) {
    maxValue.value = minValue.value;
  }
  emitChange();
}

function handleMaxBlur() {
  if (
    minValue.value !== null &&
    maxValue.value !== null &&
    maxValue.value < minValue.value
  ) {
    minValue.value = maxValue.value;
  }
  emitChange();
}

defineExpose({
  minValue,
  maxValue,
});
</script>

<template>
  <div class="flex w-full items-center gap-2">
    <InputNumber
      :value="minValue"
      :min="min"
      :max="max"
      :precision="precision"
      :step="step"
      :disabled="disabled"
      :placeholder="minPlaceholder"
      class="flex-1"
      @blur="handleMinBlur"
      @change="handleMinChange"
    />
    <span class="text-gray-400">-</span>
    <InputNumber
      :value="maxValue"
      :min="min"
      :max="max"
      :precision="precision"
      :step="step"
      :disabled="disabled"
      :placeholder="maxPlaceholder"
      class="flex-1"
      @blur="handleMaxBlur"
      @change="handleMaxChange"
    />
  </div>
</template>
