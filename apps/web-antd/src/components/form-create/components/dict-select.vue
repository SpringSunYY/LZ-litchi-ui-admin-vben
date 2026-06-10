<!-- 数据字典 Select 选择器 -->
<script lang="ts" setup>
import type { DictSelectProps } from '../typing';

import { computed, useAttrs } from 'vue';

import { I18nCheckboxGroup } from '#/components/i18n/i18n-checkbox';
import { I18nRadioGroup } from '#/components/i18n/i18n-radio';
import { I18nSelect } from '#/components/i18n/i18n-select';
import {
  getBoolDictOptions,
  getIntDictOptions,
  getStrDictOptions,
} from '#/utils';

defineOptions({ name: 'DictSelect' });

const props = withDefaults(defineProps<DictSelectProps>(), {
  valueType: 'str',
  selectType: 'select',
});

const attrs = useAttrs();

const dictOptions = computed(() => {
  switch (props.valueType) {
    case 'bool': {
      return getBoolDictOptions(props.dictType);
    }
    case 'int': {
      return getIntDictOptions(props.dictType);
    }
    case 'str': {
      return getStrDictOptions(props.dictType);
    }
    default: {
      return [];
    }
  }
});
</script>

<template>
  <I18nSelect
    v-if="selectType === 'select'"
    class="w-1/1"
    :options="dictOptions"
    v-bind="attrs"
  />
  <I18nRadioGroup
    v-else-if="selectType === 'radio'"
    class="w-1/1"
    :options="dictOptions"
    v-bind="attrs"
  />
  <I18nCheckboxGroup
    v-else-if="selectType === 'checkbox'"
    class="w-1/1"
    :options="dictOptions"
    v-bind="attrs"
  />
</template>
