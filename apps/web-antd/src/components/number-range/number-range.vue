<script setup lang="ts">
/**
 * 数字区间组件，用于选择最小值和最大值的范围
 */
import type { PropType } from 'vue';

import { computed, ref, watch } from 'vue';

import { isNumber } from '@vben/utils';

import { InputNumber } from 'ant-design-vue';

defineOptions({ name: 'NumberRange', inheritAttrs: false });

const props = defineProps({
  modelValue: {
    type: Array as PropType<[null | number, null | number]>,
    default: () => [null, null] as [null | number, null | number],
  },
  min: {
    type: Number,
    default: undefined,
  },
  max: {
    type: Number,
    default: undefined,
  },
  precision: {
    type: Number,
    default: 2,
  },
  step: {
    type: Number,
    default: 1,
  },
  disabled: {
    type: Boolean,
    default: false,
  },
  placeholder: {
    type: Array as () => [string, string],
    default: () => ['最小值', '最大值'],
  },
});

const emit = defineEmits<{
  change: [value: [null | number, null | number]];
  'update:modelValue': [value: [null | number, null | number]];
}>();

const minValue = ref<null | number>(null);
const maxValue = ref<null | number>(null);

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

function handleMinChange(value: null | number) {
  minValue.value = value;
}

function handleMaxChange(value: null | number) {
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
    <span class="text-gray-400">至</span>
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
