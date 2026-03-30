import type { Component, Ref } from 'vue';

import type { MaybePromise } from '@vben-core/typings';

export type ModelDrawerType = 'drawer' | 'modal';

export type DrawerPlacement = 'bottom' | 'left' | 'right' | 'top';

export type CloseIconPlacement = 'left' | 'right';

/**
 * 统一弹窗/抽屉组件的共享配置
 * 支持通过 type 属性切换为 modal 或 drawer 风格
 */
export interface ModelDrawerProps {
  /**
   * 是否挂载到内容区域
   * @default false
   */
  appendToMain?: boolean;
  /**
   * 是否显示边框（仅 modal 生效）
   * @default false
   */
  bordered?: boolean;
  /**
   * 取消按钮文字
   */
  cancelText?: string;
  /**
   * 是否居中（仅 modal 生效）
   * @default false
   */
  centered?: boolean;
  class?: string;
  /**
   * 是否显示关闭按钮
   * @default true
   */
  closable?: boolean;
  /**
   * 关闭按钮的位置
   */
  closeIconPlacement?: CloseIconPlacement;
  /**
   * 点击弹窗遮罩是否关闭弹窗
   * @default true
   */
  closeOnClickModal?: boolean;
  /**
   * 按下 ESC 键是否关闭弹窗
   * @default true
   */
  closeOnPressEscape?: boolean;
  /**
   * 禁用确认按钮
   */
  confirmDisabled?: boolean;
  /**
   * 确定按钮 loading
   * @default false
   */
  confirmLoading?: boolean;
  /**
   * 确定按钮文字
   */
  confirmText?: string;
  contentClass?: string;
  /**
   * 弹窗描述
   */
  description?: string;
  /**
   * 在关闭时销毁弹窗
   */
  destroyOnClose?: boolean;
  /**
   * 是否可拖拽（仅 modal 生效）
   * @default false
   */
  draggable?: boolean;
  /**
   * 点击遮罩关闭时是否显示确认弹窗（用于防止误操作导致数据丢失）
   * @default true
   */
  externalCloseConfirm?: boolean;
  /**
   * 点击遮罩关闭时确认弹窗的内容
   * @default '关闭后你所填写的数据将会丢失'
   */
  externalCloseConfirmTip?: string;
  /**
   * 点击遮罩关闭时确认弹窗的标题
   * @default '确定要退出吗？'
   */
  externalCloseConfirmTitle?: string;
  /**
   * 是否显示底部
   * @default true
   */
  footer?: boolean;
  /**
   * 弹窗底部样式
   */
  footerClass?: string;
  /**
   * 是否全屏（仅 modal 生效）
   * @default false
   */
  fullscreen?: boolean;
  /**
   * 是否显示全屏按钮（仅 modal 生效）
   * @default true
   */
  fullscreenButton?: boolean;
  /**
   * 是否显示顶栏
   * @default true
   */
  header?: boolean;
  /**
   * 弹窗头部样式
   */
  headerClass?: string;
  /**
   * 弹窗是否显示
   * @default false
   */
  loading?: boolean;
  /**
   * 是否显示遮罩
   * @default true
   */
  modal?: boolean;
  /**
   * 是否自动聚焦
   */
  openAutoFocus?: boolean;
  /**
   * 弹窗遮罩模糊效果
   */
  overlayBlur?: number;
  /**
   * 抽屉位置（仅 drawer 生效）
   * @default right
   */
  placement?: DrawerPlacement;
  /**
   * 是否显示取消按钮
   * @default true
   */
  showCancelButton?: boolean;
  /**
   * 是否显示确认按钮
   * @default true
   */
  showConfirmButton?: boolean;
  /**
   * 提交中（锁定弹窗状态）
   */
  submitting?: boolean;
  /**
   * 弹窗标题
   */
  title?: string;
  /**
   * 弹窗标题提示
   */
  titleTooltip?: string;
  /**
   * 弹窗类型：modal 或 drawer
   * @default 'drawer'
   */
  type?: ModelDrawerType;
  /**
   * 弹窗层级
   */
  zIndex?: number;
}

export interface ModelDrawerState extends ModelDrawerProps {
  /** 弹窗打开状态 */
  isOpen?: boolean;
  /**
   * 共享数据
   */
  sharedData?: Record<string, any>;
}

export type ExtendedModelDrawerApi = {
  /** 关闭弹窗 */
  close(): Promise<void>;
  /** 获取共享数据 */
  getData<T extends object = Record<string, any>>(): T;
  /** 锁定弹窗状态 */
  lock(isLocked?: boolean): ExtendedModelDrawerApi;
  /** 取消操作 */
  onCancel(): void;
  /** 弹窗关闭动画结束回调 */
  onClosed(): void;
  /** 确认操作 */
  onConfirm(): void;
  /** 弹窗打开动画结束回调 */
  onOpened(): void;
  /** 打开弹窗 */
  open(): void;
  /** 设置共享数据 */
  setData<T>(payload: T): ExtendedModelDrawerApi;
  /** 设置状态 */
  setState(
    stateOrFn:
      | ((prev: ModelDrawerState) => Partial<ModelDrawerState>)
      | Partial<ModelDrawerState>,
  ): ExtendedModelDrawerApi;
  /** 共享数据 */
  sharedData: Record<'payload', any>;
  /** 解除弹窗锁定状态 */
  unlock(): ExtendedModelDrawerApi;
  useStore: <T = NoInfer<ModelDrawerState>>(
    selector?: (state: NoInfer<ModelDrawerState>) => T,
  ) => Readonly<Ref<T>>;
};

export interface ModelDrawerApiOptions extends ModelDrawerState {
  /**
   * 独立的弹窗组件
   */
  connectedComponent?: Component;
  /**
   * 关闭前的回调，返回 false 可以阻止关闭
   */
  onBeforeClose?: () => MaybePromise<boolean | undefined>;
  /**
   * 点击取消按钮的回调
   */
  onCancel?: () => void;
  /**
   * 弹窗关闭动画结束的回调
   */
  onClosed?: () => void;
  /**
   * 点击确定按钮的回调
   */
  onConfirm?: () => void;
  /**
   * 弹窗状态变化回调
   */
  onOpenChange?: (isOpen: boolean) => void;
  /**
   * 弹窗打开动画结束的回调
   */
  onOpened?: () => void;
}
