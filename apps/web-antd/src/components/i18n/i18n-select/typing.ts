import type { DictDataType } from '#/utils';

export interface I18nSelectProps<T = boolean | number | string> {
  modelValue?: T;
  options?: DictDataType[];
  disabled?: boolean;
  allowClear?: boolean;
  placeholder?: string;
}
