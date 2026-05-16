<script setup lang="ts">
import type { RadioChangeEvent } from 'ant-design-vue';

/**
 * 批量选择组件 - 支持字符串与多选之间的转换
 * @description 支持两种展示类型和两种选择模式
 * @example type="check" mode="multiple" - Checkbox 多选
 * @example type="check" mode="single" - Checkbox 单选 (使用 RadioGroup)
 * @example type="select" mode="multiple" - Select 下拉多选
 * @example type="select" mode="single" - Select 下拉单选
 */
import type { PropType } from 'vue';

import type { DictDataType } from '#/utils';

import { computed, ref, watch } from 'vue';

import { Checkbox, Radio, RadioGroup, Select } from 'ant-design-vue';

import { $t } from '#/locales';

defineOptions({ name: 'SelectToString', inheritAttrs: false });

const props = defineProps({
  modelValue: {
    type: String,
    default: '',
  },
  options: {
    type: Array as PropType<DictDataType[]>,
    default: () => [],
  },
  disabled: {
    type: Boolean,
    default: false,
  },
  separator: {
    type: String,
    default: ';',
  },
  type: {
    type: String as PropType<SelectType>,
    default: 'check',
  },
  mode: {
    type: String as PropType<SelectMode>,
    default: 'multiple',
  },
});
const emit = defineEmits<{
  change: [value: string];
  'update:modelValue': [value: string];
}>();
type SelectType = 'check' | 'select';
type SelectMode = 'multiple' | 'single';

// 将字符串转换为数组
const selectedValues = ref<string[]>([]);

watch(
  () => props.modelValue,
  (val) => {
    selectedValues.value =
      val && typeof val === 'string'
        ? val
            .split(props.separator)
            .map((v) => v.trim())
            .filter(Boolean)
        : [];
  },
  { immediate: true, deep: true },
);

// Select 模式的 options
const selectOptions = computed(() =>
  props.options.map((item) => ({
    label: $t(item.label),
    value: String(item.value),
  })),
);

// Select 模式的 value
const selectValue = computed({
  get: () =>
    props.mode === 'single'
      ? selectedValues.value[0] || undefined
      : selectedValues.value,
  set: (val) => {
    if (props.mode === 'single') {
      selectedValues.value = val ? [String(val)] : [];
    } else {
      selectedValues.value = val ? [...(val as string[])] : [];
    }
    emitChange(selectedValues.value);
  },
});

// 将数组转换为字符串
function emitChange(values: string[]) {
  const value = values.join(props.separator);
  emit('update:modelValue', value);
  emit('change', value);
}

// Radio 变化处理 (单选模式)
function handleRadioChange(e: RadioChangeEvent) {
  selectedValues.value = [String(e.target.value)];
  emitChange(selectedValues.value);
}

// CheckboxGroup 变化处理 (多选模式)
function handleCheckboxGroupChange(e: any) {
  const values = (e.target.value as (boolean | number | string)[]).map(String);
  selectedValues.value = values;
  emitChange(values);
}
</script>

<template>
  <!-- Checkbox 模式 -->
  <template v-if="type === 'check'">
    <!-- 单选模式 -->
    <template v-if="mode === 'single'">
      <RadioGroup
        :value="selectedValues[0]"
        :disabled="disabled"
        @change="handleRadioChange"
      >
        <template v-for="item in options" :key="String(item.value)">
          <Radio :value="String(item.value)">
            {{ item.label }}
          </Radio>
        </template>
      </RadioGroup>
    </template>
    <!-- 多选模式 -->
    <template v-else>
      <Checkbox.Group
        :value="selectedValues"
        :disabled="disabled"
        @change="handleCheckboxGroupChange"
      >
        <template v-for="item in options" :key="String(item.value)">
          <Checkbox :value="String(item.value)">
            {{ item.label }}
          </Checkbox>
        </template>
      </Checkbox.Group>
    </template>
  </template>

  <!-- Select 下拉模式 -->
  <template v-else>
    <Select
      v-model:value="selectValue"
      :disabled="disabled"
      :mode="mode === 'single' ? undefined : 'multiple'"
      :options="selectOptions"
      :placeholder="$t('ui.selectToString.placeholder')"
      class="w-full"
      allow-clear
    />
  </template>
</template>
