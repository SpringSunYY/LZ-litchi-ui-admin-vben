import type { PropType } from 'vue';

import type { DictDataType } from '#/utils';

export type SelectToStringType = 'check' | 'select';
export type SelectToStringMode = 'multiple' | 'single';

export interface SelectToStringProps {
  modelValue?: string;
  options?: DictDataType[];
  disabled?: boolean;
  /** 多值分隔符，默认 ';' */
  separator?: string;
  /** 展示类型：'check' Checkbox/Radio；'select' 下拉 */
  type?: SelectToStringType;
  /** 选择模式：'multiple' 多选；'single' 单选 */
  mode?: SelectToStringMode;
}

export interface SelectToStringEmits {
  change: [value: string];
  'update:modelValue': [value: string];
}
