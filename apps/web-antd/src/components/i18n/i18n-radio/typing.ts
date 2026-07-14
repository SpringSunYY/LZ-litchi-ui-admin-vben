import type { DictDataType } from '#/utils';

export interface I18nRadioProps {
  modelValue?: boolean | number | string;
  option: DictDataType;
  disabled?: boolean;
}

export interface I18nRadioGroupProps {
  modelValue?: boolean | number | string;
  options?: DictDataType[];
  disabled?: boolean;
}
