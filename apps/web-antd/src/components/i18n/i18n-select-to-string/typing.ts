import type { DictDataType } from '#/utils';

export type SelectType = 'check' | 'select';
export type SelectMode = 'multiple' | 'single';

export interface SelectToStringProps {
  modelValue?: string;
  options?: DictDataType[];
  disabled?: boolean;
  separator?: string;
  type?: SelectType;
  mode?: SelectMode;
}
