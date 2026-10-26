import type { UploadProps } from 'ant-design-vue';

import type { Ref } from 'vue';

import type { AxiosProgressEvent } from '#/api/infra/file';

import { computed } from 'vue';

import { $t } from '@vben/locales';

import { message, Upload } from 'ant-design-vue';

import { checkFileType } from './helper';
import { UploadResultStatus } from './typing';

/* ================= accept / 文件名 ================= */

/**
 * 解析 accept 配置为数组
 * 支持 'jpg/jpeg/png' 字符串或 ['jpg', 'jpeg', 'png'] 数组
 */
export function parseAcceptToArray(
  accept: string | string[] | undefined,
): string[] {
  if (!accept) return [];
  if (Array.isArray(accept)) return accept;
  return accept.split('/').filter((item) => item.trim());
}

/** accept 数组/字符串 → 'jpg/png' 展示格式（用于错误提示） */
export function formatAcceptTypes(
  accept: string | string[] | undefined,
): string {
  return parseAcceptToArray(accept).join('/');
}

/** 从 url 截取文件名 */
export function getFileNameFromUrl(url: string): string {
  if (!url) return '';
  return url.slice(Math.max(0, url.lastIndexOf('/') + 1));
}

/* ================= fileList ↔ value 互转 ================= */

/** value（字符串 / 数组 / || 分隔）→ antd fileList */
export function buildFileListFromValue(
  value: null | string | string[] | undefined,
): UploadProps['fileList'] {
  let list: string[] = [];
  if (value) {
    list = Array.isArray(value)
      ? value
      : value.split('||').filter((item) => item.trim());
  }
  return list.map((item, i) => {
    if (item && typeof item === 'string') {
      return {
        uid: `${-i}`,
        name: getFileNameFromUrl(item),
        status: UploadResultStatus.DONE,
        url: item,
      };
    } else if (item && typeof item === 'object') {
      return item;
    }
    return null;
  }) as UploadProps['fileList'];
}

export interface UploadValueOptions {
  maxNumber?: number;
  resultField?: string;
}

/**
 * fileList → 表单值
 * maxNumber === 1 返回单个字符串，否则用 || 拼接
 */
export function getUploadValue(
  fileList: UploadProps['fileList'],
  options: UploadValueOptions = {},
): string {
  const { maxNumber, resultField } = options;
  const list = (fileList || [])
    .filter((item) => item?.status === UploadResultStatus.DONE)
    .map((item: any) => {
      if (item?.response && resultField) {
        return item?.response;
      }
      return item?.url || item?.response?.url || item?.response;
    });
  if (maxNumber === 1) {
    return list.length > 0 ? list[0] : '';
  }
  return list.length > 0 ? list.join('||') : '';
}

/* ================= 文件校验（类型 / 大小） ================= */

export interface ValidateFileOptions {
  accept?: string | string[] | undefined;
  maxSize?: number;
  minSize?: number;
  /** 类型检查函数，默认 checkFileType（图片组件传 checkImgType） */
  check?: (file: File, accept?: string | string[] | undefined) => boolean;
}

// 同一类错误提示 1s 内只弹一次（替代各组件内的 isLtMsg / isActMsg）
let lastTypeWarnAt = 0;
let lastSizeWarnAt = 0;

/**
 * 上传前校验：类型 → 大小上限 → 大小下限，不合格自动弹提示
 * 返回 true 表示通过，false 表示不通过（调用方返回 Upload.LIST_IGNORE）
 */
export function validateUploadFile(
  file: File,
  options: ValidateFileOptions = {},
): boolean {
  const { accept, maxSize, minSize, check } = options;
  const checkFn = check ?? checkFileType;
  const now = Date.now();

  if (!checkFn(file, accept)) {
    if (now - lastTypeWarnAt > 1000) {
      lastTypeWarnAt = now;
      message.error($t('ui.upload.acceptUpload', [formatAcceptTypes(accept)]));
    }
    return false;
  }
  if (maxSize && file.size / 1024 / 1024 > maxSize) {
    if (now - lastSizeWarnAt > 1000) {
      lastSizeWarnAt = now;
      message.error($t('ui.upload.maxSizeMultiple', [maxSize]));
    }
    return false;
  }
  if (minSize && minSize > 0 && file.size / 1024 / 1024 < minSize) {
    message.error($t('ui.upload.minSizeMultiple', [minSize]));
    return false;
  }
  return true;
}

/** beforeUpload 的通用包装：通过返回 true，否则返回 LIST_IGNORE */
export function createBeforeUpload(options: ValidateFileOptions) {
  return async (_file: File) => {
    return validateUploadFile(_file, options) ? true : Upload.LIST_IGNORE;
  };
}

/* ================= 数量截断（maxNumber） ================= */

export interface LimitFilesResult {
  /** 截断后实际要处理的文件 */
  list: File[];
  /** 是否因为超量丢弃了一部分 */
  truncated: boolean;
}

/**
 * 按 multiple / maxNumber / 已上传数量截断
 * 超量时自动弹「最多只能上传 N 个文件」提示
 */
export function limitFilesByMaxNumber(
  files: File[],
  options: {
    currentCount?: number;
    maxNumber?: number;
    multiple?: boolean;
  } = {},
): LimitFilesResult {
  const { multiple = true, maxNumber, currentCount = 0 } = options;
  const list = multiple ? files : files.slice(0, 1);
  if (maxNumber && maxNumber !== Number.POSITIVE_INFINITY) {
    const remaining = Math.max(maxNumber - currentCount, 0);
    if (remaining === 0) {
      message.warning($t('ui.upload.maxNumber', [maxNumber]));
      return { list: [], truncated: true };
    }
    if (list.length > remaining) {
      message.warning($t('ui.upload.maxNumber', [maxNumber]));
      return { list: list.slice(0, remaining), truncated: true };
    }
  }
  return { list, truncated: false };
}

/** 是否还有剩余名额（达到 maxNumber 后隐藏粘贴入口 / 上传按钮） */
export function useRemainCount(
  fileListRef: Ref<UploadProps['fileList']>,
  maxNumberRef: Ref<number>,
) {
  const fileCount = computed(() => fileListRef.value?.length ?? 0);
  const hasRemainCount = computed(() => fileCount.value < maxNumberRef.value);
  return { fileCount, hasRemainCount };
}

/* ================= 上传请求（含超时） ================= */

/**
 * 执行上传请求，timeout > 0 时启用超时竞速
 * @param api 上传函数
 * @param file 待上传文件
 * @param onProgress 进度回调
 * @param timeout 超时毫秒，0 表示不限制
 */
export async function runUploadRequest(
  api: (file: File, onProgress?: AxiosProgressEvent) => Promise<any>,
  file: File,
  onProgress: AxiosProgressEvent | undefined,
  timeout?: number,
): Promise<any> {
  const uploadPromise = api?.(file, onProgress);
  if (timeout && timeout > 0) {
    const timeoutPromise = new Promise((_, reject) => {
      setTimeout(() => reject(new Error('上传超时')), timeout);
    });
    return await Promise.race([uploadPromise, timeoutPromise]);
  }
  return await uploadPromise;
}

/* ================= 剪贴板文件处理 ================= */

/** MIME 类型 → 扩展名，用于给剪贴板文件补全文件名 */
export const MIME_EXT_MAP: Record<string, string> = {
  'application/pdf': 'pdf',
  'image/bmp': 'bmp',
  'image/gif': 'gif',
  'image/jpeg': 'jpg',
  'image/png': 'png',
  'image/svg+xml': 'svg',
  'image/webp': 'webp',
  'text/plain': 'txt',
};

/**
 * 给剪贴板文件补全文件名
 * 部分场景拿到的文件 name 为空，而类型校验按扩展名匹配，空名会导致失败
 */
export function normalizeClipboardFileName(file: File): File {
  if (file.name && file.name.trim()) {
    return file;
  }
  const ext = MIME_EXT_MAP[file.type] ?? 'png';
  try {
    return new File([file], `image.${ext}`, {
      type: file.type || 'application/octet-stream',
      lastModified: file.lastModified || Date.now(),
    });
  } catch {
    return file;
  }
}

/**
 * 把 Blob 包装为独立 File，避免与上层引用共享底层 Blob 导致读取时被消费
 * 注意：name 不传时间戳，同一张图在 DataTransfer / Async 两条路径
 * 拿到的 name 一致才能正确去重
 */
export function wrapBlobAsFile(blob: Blob, fileName = 'image.png'): File {
  try {
    return new File([blob], fileName, {
      type: blob.type || 'application/octet-stream',
      lastModified: Date.now(),
    });
  } catch {
    const f = new Blob([blob], { type: blob.type }) as any;
    f.name = fileName;
    f.lastModified = Date.now();
    return f as File;
  }
}

/**
 * 合并 DataTransfer（同步）与 Async Clipboard API（异步）两路文件并按 name 去重
 * sync 优先；sync 非空时 async 只补充 name 不重复的部分
 * （微信单图场景 async 常带回无关历史图片，sync 为空时才整体采用 async）
 */
export function mergeAndDedupeFiles(
  syncFiles: File[],
  asyncFiles: File[],
): File[] {
  const seen = new Set<string>();
  const out: File[] = [];
  const all = syncFiles.length > 0 ? [...syncFiles, ...asyncFiles] : asyncFiles;
  for (const f of all) {
    if (!seen.has(f.name)) {
      seen.add(f.name);
      out.push(f);
    }
  }
  return out;
}
