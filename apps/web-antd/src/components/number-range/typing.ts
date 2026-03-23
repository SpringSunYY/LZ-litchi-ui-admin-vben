export interface NumberRangeProps {
  modelValue?: [number | null, number | null];
  min?: number;
  max?: number;
  precision?: number;
  step?: number;
  disabled?: boolean;
  placeholder?: [string, string];
}
