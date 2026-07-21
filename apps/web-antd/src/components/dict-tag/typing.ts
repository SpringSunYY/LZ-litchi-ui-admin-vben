export interface DictTagProps {
  /**
   * 字典类型
   */
  type: string;
  /**
   * 字典值
   */
  value: any;
  /**
   * 图标
   */
  icon?: string;
  /**
   * 多值分隔符，默认 ';'
   */
  separator?: string;
  /**
   * 未匹配时是否显示原字符，默认 true
   */
  useOriginal?: boolean;
  /**
   * 最大显示数量，默认 1
   */
  max?: number;
}
