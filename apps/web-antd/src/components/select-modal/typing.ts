export interface DeptSelectModalProps {
  /** 取消按钮文本 */
  cancelText?: string;
  /** checkable 状态下节点选择完全受控 */
  checkStrictly?: boolean;
  /** 确认按钮文本 */
  confirmText?: string;
  /** 是否支持多选，默认 true */
  multiple?: boolean;
  /** 标题 */
  title?: string;
}

export interface DeptSelectModalEmits {
  /** 确认选择时触发,回传选中的部门列表 */
  confirm: [deptList: any[]];
}

export interface UserSelectModalProps {
  /** 取消按钮文本 */
  cancelText?: string;
  /** 确认按钮文本 */
  confirmText?: string;
  /** 标题 */
  title?: string;
}

export interface UserSelectModalEmits {
  /** 取消选择 */
  cancel: [];
  /** 弹窗完全关闭 */
  closed: [];
  /** 确认选择,回传选中的用户列表 */
  confirm: [value: any[]];
  /** 选中的用户 ID 列表 */
  'update:value': [value: number[]];
}
