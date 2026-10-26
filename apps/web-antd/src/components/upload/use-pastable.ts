import type { Ref } from 'vue';

import type { ValidateFileOptions } from './upload-common';

import { onBeforeUnmount, ref, unref, watch } from 'vue';

import { $t } from '@vben/locales';

import { message } from 'ant-design-vue';

import {
  limitFilesByMaxNumber,
  mergeAndDedupeFiles,
  normalizeClipboardFileName,
  validateUploadFile,
  wrapBlobAsFile,
} from './upload-common';

export interface UsePastableOptions {
  /**
   * 包裹 antd Upload 的容器元素，用于定位内部隐藏的 input[type="file"]
   */
  containerRef: Ref<HTMLElement | null | undefined>;
  /** 当前已上传的文件数量，用于计算剩余可粘贴的数量 */
  fileCount?: Ref<number | undefined>;
  /** 是否启用粘贴上传 */
  pastable: Ref<boolean>;
  /** 是否支持多文件（对应 antd Upload 的 multiple） */
  multiple?: Ref<boolean>;
  /** 最大上传数量，超出的部分会被忽略（对应 antd Upload 的 maxCount） */
  maxNumber?: Ref<number | undefined>;
  /** 回调：本次粘贴实际接收的文件 */
  onFiles?: (files: File[]) => void;
  /**
   * 粘贴预校验（与组件 beforeUpload 同规则，校验函数引用即可）。
   * 注入 input 前先过滤掉不合格的文件，避免「成功 N 个」与实际对不上。
   * 传了才做预校验；不传则保持原行为（全部注入，由 beforeUpload 拦截）。
   */
  validate?: () => Omit<ValidateFileOptions, 'check'> & {
    check?: ValidateFileOptions['check'];
  };
}

interface PastableTarget {
  busy: boolean;
  containerRef: Ref<HTMLElement | null | undefined>;
  fileCount: Ref<number | undefined>;
  handle: (event: ClipboardEvent) => void;
  maxNumber: Ref<number | undefined>;
  multiple: Ref<boolean>;
  onFiles?: (files: File[]) => void;
  pastable: Ref<boolean>;
  validate?: UsePastableOptions['validate'];
}

/** 所有已注册的粘贴目标 */
const targets: PastableTarget[] = [];
/** 最近一次交互（悬停 / 聚焦）过的目标，作为全局粘贴的默认落点 */
let activeTarget: PastableTarget | undefined;
let listening = false;

/**
 * 提取剪贴板中的文件
 *
 * 优先走 items（能拿到「复制网页图片 / 截图」产生的 image/png），
 * 兜底走 files（Windows 资源管理器复制的文件）。
 *
 * 两个来源都会收集，再按下面的规则去重：
 * - 两边都有文件名：文件名 + 大小 + 修改时间 完全一致才算重复
 * - 有一边没有文件名（items 常见）：只要大小 + 类型一致就算重复
 *
 * 这样既不会把「同一次粘贴里两个不同文件」误判成重复（大小可能相同），
 * 也不会因为 items / files 同时提供同一个文件而重复上传。
 */
function getClipboardFiles(data: DataTransfer | null | undefined): File[] {
  if (!data) {
    return [];
  }
  const files: File[] = [];
  const items = data.items ? [...data.items] : [];

  const isDuplicate = (file: File) =>
    files.some((item) => {
      if (item.size !== file.size || item.type !== file.type) return false;
      // 两边都有文件名：必须完全一致
      if (item.name && file.name) {
        return (
          item.name === file.name && item.lastModified === file.lastModified
        );
      }
      // 有一边没有文件名：大小 + 类型一致即认为是同一个文件
      return true;
    });

  const push = (file: File | null | undefined) => {
    if (!file || file.size <= 0) {
      return;
    }
    if (isDuplicate(file)) {
      return;
    }
    files.push(normalizeClipboardFileName(file));
  };

  for (const item of items) {
    if (item.kind !== 'file') continue;
    push(item.getAsFile());
  }
  if (data.files) {
    for (const file of data.files) {
      push(file);
    }
  }
  return files;
}

/**
 * 通过 Async Clipboard API (navigator.clipboard.read) 读取剪贴板中所有图片文件。
 * 这是 web.dev 官方推荐的"多文件粘贴"增强路径，
 * 绕开 DataTransfer 在事件 dispatch 结束就被销毁的限制，
 * 能拿到 Windows 资源管理器多选文件的完整列表（DataTransfer 路径只能取到部分）。
 *
 * 限制：
 *   - 必须 HTTPS / localhost
 *   - 必须用户激活（paste 事件天然满足）
 *   - 需要 Permissions-Policy 允许 clipboard-read
 *   - Chrome / Edge 支持；Firefox 不支持（抛 NotAllowedError，静默退到 DataTransfer 路径）
 */
async function collectFromAsyncClipboard(): Promise<File[]> {
  if (typeof navigator === 'undefined') return [];
  if (!navigator.clipboard || typeof navigator.clipboard.read !== 'function') {
    return [];
  }
  let items: ClipboardItem[];
  try {
    items = await navigator.clipboard.read();
  } catch {
    // 权限被拒 / 不支持 / 非激活状态 —— 静默返回空，让调用方继续走 DataTransfer 路径
    return [];
  }
  const files: File[] = [];
  for (const item of items) {
    const types = Array.isArray(item.types) ? item.types : [];
    for (const t of types) {
      if (typeof t === 'string' && t.startsWith('image/')) {
        try {
          const blob = await item.getType(t);
          if (blob && blob.size > 0) {
            files.push(normalizeClipboardFileName(wrapBlobAsFile(blob)));
          }
        } catch {
          // 单个 type 读取失败不影响整体
        }
      }
    }
  }
  return files;
}

/** 是否是可编辑区域（输入框 / 文本域 / 富文本） */
function isEditableElement(target: EventTarget | null): boolean {
  if (!(target instanceof HTMLElement)) return false;
  if (
    target instanceof HTMLInputElement ||
    target instanceof HTMLTextAreaElement
  ) {
    return true;
  }
  return target.isContentEditable;
}

function pastableTargets(): PastableTarget[] {
  return targets.filter((item) => unref(item.pastable));
}

/**
 * 解析本次粘贴应该落到哪个上传组件上
 *
 * 优先级：
 * 1. 粘贴事件就发生在某个上传容器内
 * 2. 焦点在某个上传容器内
 * 3. 最近交互过（悬停 / 聚焦）的那个
 * 4. 页面上只有一个开启粘贴上传的组件时，直接落到它身上
 */
function resolveTarget(event: ClipboardEvent): PastableTarget | undefined {
  const enabled = pastableTargets();
  if (enabled.length === 0) return undefined;

  const eventTarget = event.target;
  if (eventTarget instanceof Node) {
    const hit = enabled.find((item) =>
      item.containerRef.value?.contains(eventTarget),
    );
    if (hit) return hit;
  }

  const activeElement = document.activeElement;
  if (activeElement) {
    const hit = enabled.find((item) =>
      item.containerRef.value?.contains(activeElement),
    );
    if (hit) return hit;
  }

  if (activeTarget && enabled.includes(activeTarget)) {
    return activeTarget;
  }

  return enabled.length === 1 ? enabled[0] : undefined;
}

/**
 * 把文件写入 antd Upload 内部的隐藏 input，并派发 change 事件
 *
 * 这样 antd Upload 的完整链路（beforeUpload 校验 → customRequest 上传 →
 * fileList 更新 → 进度显示）全部由 antd 负责，我们只负责「拿到剪贴板文件」。
 */
function injectFiles(
  container: HTMLElement | null | undefined,
  files: File[],
): boolean {
  const input =
    container?.querySelector<HTMLInputElement>('input[type="file"]');
  if (!input) {
    return false;
  }
  try {
    const transfer = new DataTransfer();
    for (const file of files) {
      transfer.items.add(file);
    }
    // 关键：HTML 规范规定，input 不带 multiple 属性时，
    // 赋值 input.files 只会保留第一个文件，其余会被静默丢弃。
    // 所以批量粘贴前必须先补上 multiple，写完再恢复原值，
    // 避免影响「点击选择文件」弹窗的行为。
    const originMultiple = input.multiple;
    if (files.length > 1) {
      input.multiple = true;
    }
    input.files = transfer.files;
    input.dispatchEvent(new Event('change', { bubbles: true }));
    input.multiple = originMultiple;
    return true;
  } catch {
    return false;
  }
}

function createHandler(target: PastableTarget) {
  return (event: ClipboardEvent) => {
    if (!unref(target.pastable)) return;

    const data = event.clipboardData;
    if (!data) {
      return;
    }

    // 用户正在编辑的输入框 / 富文本区域不劫持（粘贴文字属于正常编辑行为）
    const eventTarget = event.target;
    if (isEditableElement(eventTarget)) {
      const inside = pastableTargets().some((item) =>
        item.containerRef.value?.contains(eventTarget as Node),
      );
      if (!inside) return;
    }

    // DataTransfer 在事件 dispatch 结束（await 让步后）会被浏览器清空。
    // 必须在这里同步提取并存到本地变量，不能在 await 之后再访问 event.clipboardData。
    const syncFiles = getClipboardFiles(data);
    target.onFiles?.(syncFiles.slice(0, 1));

    // 并发锁：粘贴路径只允许一个"轮次"在前台跑
    if (target.busy) {
      message.warning($t('ui.upload.pastable.busy'));
      return;
    }
    target.busy = true;

    // 剪贴板里确实有文件，拦截默认行为
    event.preventDefault();
    event.stopPropagation();

    // 从这里开始才进入异步区域
    void runPasteFlow(target, syncFiles);
  };
}

/**
 * 异步粘贴流程
 *
 * 1. 先走 Async Clipboard API（Windows 多文件场景的完整列表就靠它）
 * 2. 与同步阶段抓到的 DataTransfer 文件合并去重
 * 3. multiple / maxNumber 截断后注入 antd Upload 隐藏 input
 */
async function runPasteFlow(target: PastableTarget, syncFiles: File[]) {
  try {
    const asyncFiles = await collectFromAsyncClipboard();
    const files = mergeAndDedupeFiles(syncFiles, asyncFiles);

    if (files.length === 0) {
      // 剪贴板里没有文件（纯文字 / 空文件 / 取不到内容）——给出提示，
      // 避免用户以为粘贴没反应。注意：能走到这里说明焦点本来就在
      // 上传组件内，所以弹提示不会误伤正常文本编辑。
      message.warning($t('ui.upload.pastable.notFile'));
      return;
    }

    // 与 antd Upload 的 maxCount 保持一致，超出的部分不上传
    // 注意：maxCount 限制的是「列表总数」，所以要减去已上传的数量
    const { list: truncated } = limitFilesByMaxNumber(files, {
      multiple: unref(target.multiple),
      maxNumber: unref(target.maxNumber),
      currentCount: unref(target.fileCount) ?? 0,
    });
    if (truncated.length === 0) {
      return;
    }

    // 粘贴预校验：与组件 beforeUpload 同规则，提前过滤不合格文件。
    // 不合格的本来也会被 beforeUpload 挡掉（LIST_IGNORE），但那时
    // 「成功 N 个」的提示已经按注入数报了，数字会对不上。
    // validateUploadFile 内部会对每个不合格文件弹一次对应提示，
    // 所以这里只做过滤，不再额外提示。
    const validateOptions = target.validate?.();
    const list = validateOptions
      ? truncated.filter((file) => validateUploadFile(file, validateOptions))
      : truncated;
    if (list.length === 0) {
      return;
    }

    if (!injectFiles(target.containerRef.value, list)) {
      message.error($t('ui.upload.pastable.failed'));
      return;
    }
    if (list.length > 1) {
      message.success($t('ui.upload.pastable.success', [list.length]));
    }
    target.onFiles?.(list);
  } finally {
    target.busy = false;
  }
}

function onDocumentPaste(event: ClipboardEvent) {
  const target = resolveTarget(event);
  target?.handle(event);
}

/**
 * 粘贴上传
 * 在 document 上监听 paste 事件拿到剪贴板文件，再把文件塞进 antd Upload
 * 内部的隐藏 input，由 antd Upload 自己走完剩下的上传流程。
 *
 * 与官方实现的一处差异：官方是每个 Upload 各自监听 document 的 paste，
 * 页面上有多个 pastable Upload 时同一个文件会被上传多次；这里改成
 * 「先解析出唯一目标，再只上传一次」。
 */
export function usePastable(options: UsePastableOptions) {
  const {
    containerRef,
    fileCount,
    maxNumber,
    multiple,
    onFiles,
    pastable,
    validate,
  } = options;

  const target: PastableTarget = {
    busy: false,
    containerRef,
    fileCount: fileCount ?? ref(undefined),
    handle: () => {},
    maxNumber: maxNumber ?? ref(undefined),
    multiple: multiple ?? ref(true),
    onFiles,
    pastable,
    validate,
  };
  target.handle = createHandler(target);

  targets.push(target);

  if (!listening) {
    document.addEventListener('paste', onDocumentPaste);
    listening = true;
  }

  // 记录鼠标悬停 / 聚焦过的组件，作为全局粘贴的默认落点
  const markActive = () => {
    activeTarget = target;
  };
  watch(
    containerRef,
    (el, oldEl) => {
      oldEl?.removeEventListener('mouseenter', markActive);
      oldEl?.removeEventListener('focusin', markActive);
      el?.addEventListener('mouseenter', markActive);
      el?.addEventListener('focusin', markActive);
    },
    { immediate: true },
  );

  onBeforeUnmount(() => {
    const index = targets.indexOf(target);
    if (index !== -1) {
      targets.splice(index, 1);
    }
    if (activeTarget === target) {
      activeTarget = undefined;
    }
    if (targets.length === 0 && listening) {
      document.removeEventListener('paste', onDocumentPaste);
      listening = false;
    }
  });

  return {
    /** 处理 paste 事件（一般由内部 document 监听器调用，也可手动调用） */
    handlePaste: target.handle,
    /** 手动注入文件（供外部调用） */
    injectFiles: (files: File[]) => injectFiles(containerRef.value, files),
  };
}
