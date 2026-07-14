export interface I18nDictTagProps {
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
   * 最大显示数量，默认 0 表示不限制，设置为 1 表示只显示 1 个
   */
  max?: number;
}
