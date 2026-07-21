export interface TableToolbarProps {
  /** 是否隐藏搜索栏 */
  hiddenSearch: boolean;
}

export interface TableToolbarEmits {
  /** 同步 hiddenSearch 状态 */
  'update:hiddenSearch': [value: boolean];
}

export interface TableToolbarExpose {
  getToolbarRef: () => any;
}
