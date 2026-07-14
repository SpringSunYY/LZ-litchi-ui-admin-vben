import type { DictDataType } from '#/utils';

export interface I18nCheckboxProps {
  modelValue?: string[];
  option: DictDataType;
  disabled?: boolean;
}

export interface I18nCheckboxGroupProps {
  modelValue?: string[];
  options?: DictDataType[];
  disabled?: boolean;
}
