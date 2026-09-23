import type { VxeGridProps as VxeTableGridProps } from 'vxe-table';

import type {
  ViewedRowOptionConfig,
  ViewedRowOptions,
  ViewedRowPersistOptions,
  ViewedRowStorageAdapter,
} from './types';

import { isRef, shallowRef, toRaw, triggerRef, watch } from 'vue';

import { isBoolean, isFunction } from '@vben/utils';

import { StorageManager } from '@vben-core/shared/cache';

import { useDebounceFn } from '@vueuse/core';

const DEFAULT_VIEWED_CLASS = 'vxe-row--viewed';

// ========== 持久化策略 ==========

/**
 * localStorage / sessionStorage 适配器
 * 整体存储：key → [1, 2, 3]
 */
function createWebStorageAdapter(
  storageType: 'localStorage' | 'sessionStorage',
  key: string,
  ttl?: number,
): ViewedRowStorageAdapter {
  const manager = new StorageManager({ storageType });

  return {
    async getKeys() {
      const stored = manager.getItem<Array<number | string>>(key);
      return stored ?? [];
    },
    async removeKeys() {
      manager.removeItem(key);
    },
    async setKeys(keys) {
      manager.setItem(key, keys, ttl);
    },
  };
}

/**
 * 根据 persist 配置创建存储适配器
 */
function createStorageAdapter(
  persist?: string | ViewedRowPersistOptions,
): null | ViewedRowStorageAdapter {
  if (!persist) return null;

  // 简写模式：string → localStorage
  if (typeof persist === 'string') {
    return createWebStorageAdapter('localStorage', persist);
  }

  switch (persist.type) {
    case 'custom': {
      // 用户自定义适配器，解除 Vue 响应式代理
      return toRaw(persist.storage);
    }
    case 'localStorage': {
      return createWebStorageAdapter('localStorage', persist.key, persist.ttl);
    }
    case 'memory': {
      return null;
    }
    case 'sessionStorage': {
      return createWebStorageAdapter(
        'sessionStorage',
        persist.key,
        persist.ttl,
      );
    }
    default: {
      return null;
    }
  }
}

// ========== maxSize 淘汰 ==========

/**
 * 强制执行 maxSize 限制，超出时淘汰最早插入的 key（FIFO）
 */
function enforceMaxSize(set: Set<number | string>, maxSize: number): void {
  if (maxSize > 0 && set.size > maxSize) {
    const iterator = set.values();
    while (set.size > maxSize) {
      const oldest = iterator.next().value;
      if (oldest !== undefined) {
        set.delete(oldest);
      }
    }
  }
}

// ========== 核心 composable ==========

export function useViewedRow<T = any>(
  options: ViewedRowOptionConfig<T> & { keyField: string },
) {
  // ========== 解析持久化配置 ==========
  let persistOpts: null | ViewedRowPersistOptions = null;
  if (options.persist) {
    persistOpts =
      typeof options.persist === 'string'
        ? {
            key: options.persist,
            type: 'localStorage',
          }
        : options.persist;
  }

  const adapter = createStorageAdapter(options.persist);
  // maxSize 字段可能在 union type 中没有显式暴露，使用可选链 + 类型断言
  const maxSize =
    (persistOpts as null | undefined | { maxSize?: number })?.maxSize ?? 100;

  // ========== 初始化已读集合 ==========
  const viewedSet = shallowRef<Set<number | string>>(new Set());

  // ========== 持久化（防抖） ==========
  function persistImmediate() {
    if (!adapter) return;
    adapter.setKeys([...viewedSet.value]).catch((error) => {
      console.error('[viewedRow] persist failed:', error);
    });
  }

  const persist = useDebounceFn(persistImmediate, 300);

  // ========== 从存储恢复 ==========
  async function restoreFromStorage(): Promise<void> {
    if (!adapter) return;

    try {
      const stored = await adapter.getKeys();
      if (stored && stored.length > 0) {
        for (const key of stored) {
          viewedSet.value.add(key);
        }
        if (maxSize > 0) {
          enforceMaxSize(viewedSet.value, maxSize);
        }
        triggerRef(viewedSet);
      }
    } catch (error) {
      console.error('[viewedRow] restore failed:', error);
    }
  }

  // 先恢复存储，再合并外部 viewedKeys
  restoreFromStorage().then(() => {
    if (options.viewedKeys) {
      const keys = isRef(options.viewedKeys)
        ? options.viewedKeys.value
        : options.viewedKeys;
      updateViewedSet((set) => {
        let changed = false;
        for (const key of keys) {
          if (!set.has(key)) {
            set.add(key);
            changed = true;
          }
        }
        return changed;
      });
    }
  });

  // ========== 更新 viewedSet 的统一入口 ==========
  function updateViewedSet(updater: (set: Set<number | string>) => boolean) {
    const changed = updater(viewedSet.value);

    if (changed) {
      if (maxSize > 0) {
        enforceMaxSize(viewedSet.value, maxSize);
      }
      triggerRef(viewedSet);
      persist();
    }
  }

  // ========== 监听外部 viewedKeys 变化（如果是 Ref） ==========
  if (isRef(options.viewedKeys)) {
    watch(options.viewedKeys, (newKeys) => {
      updateViewedSet((set) => {
        let changed = false;
        for (const key of newKeys) {
          if (!set.has(key)) {
            set.add(key);
            changed = true;
          }
        }
        return changed;
      });
    });
  }

  // ========== 标记已读 ==========
  function markAsViewed(record: T) {
    const key = (record as Record<string, any>)[options.keyField] as
      | number
      | string;
    if (key === null || key === undefined) return;

    updateViewedSet((set) => {
      if (set.has(key)) return false;
      set.add(key);
      return true;
    });
  }

  function markKeysAsViewed(keys: Array<number | string>) {
    updateViewedSet((set) => {
      let changed = false;
      for (const key of keys) {
        if (!set.has(key)) {
          set.add(key);
          changed = true;
        }
      }
      return changed;
    });
  }

  // ========== 查询 ==========
  function isViewed(record: T): boolean {
    const key = (record as Record<string, any>)[options.keyField] as
      | number
      | string;
    return viewedSet.value.has(key);
  }

  // ========== 清除 ==========
  function clearViewed() {
    const hadData = viewedSet.value.size > 0;
    viewedSet.value.clear();

    if (hadData) {
      triggerRef(viewedSet);
    }

    if (adapter) {
      adapter.removeKeys().catch((error) => {
        console.error('[viewedRow] clear persist failed:', error);
      });
    }
  }

  // ========== 移除指定 keys ==========
  function removeKeys(keys: Array<number | string>) {
    updateViewedSet((set) => {
      let changed = false;
      for (const key of keys) {
        if (set.has(key)) {
          set.delete(key);
          changed = true;
        }
      }
      return changed;
    });
  }

  // ========== rowClassName 函数 ==========
  function getRowClassName(params: any): string {
    if (!isViewed(params.row)) return '';

    const { rowClassName } = options;
    if (rowClassName === undefined || rowClassName === null) {
      return DEFAULT_VIEWED_CLASS;
    }
    if (typeof rowClassName === 'string') {
      return rowClassName;
    }
    if (isFunction(rowClassName)) {
      return normalizeClassName(rowClassName(params));
    }
    return DEFAULT_VIEWED_CLASS;
  }

  // ========== rowStyle 函数 ==========
  function getRowStyle(params: any): any {
    if (!isViewed(params.row)) return undefined;

    const { rowStyle } = options;
    if (rowStyle === undefined || rowStyle === null) {
      return undefined;
    }
    if (isFunction(rowStyle)) {
      return rowStyle(params);
    }
    return rowStyle;
  }

  return {
    clearViewed,
    getRowClassName,
    getRowStyle,
    isViewed,
    markAsViewed,
    markKeysAsViewed,
    removeKeys,
    viewedSet,
  };
}

export type ViewedRowHelper<T = any> = ReturnType<typeof useViewedRow<T>>;

// ========== 工具函数 ==========

function normalizeClassName(value: any): string {
  if (!value) return '';
  if (typeof value === 'string') return value;
  if (typeof value === 'object') {
    return Object.entries(value)
      .filter(([, v]) => v)
      .map(([k]) => k)
      .join(' ');
  }
  return '';
}

function mergeClassNames(...classNames: any[]): string {
  return classNames
    .map((c) => normalizeClassName(c))
    .filter(Boolean)
    .join(' ');
}

/**
 * 包装 columns，拦截 CellOperation 的 onClick，根据 actionCodes 自动标记已读
 */
function wrapColumnsForViewedRow(
  columns: any[],
  actionCodes: string[],
  markAsViewed: (record: any) => void,
): any[] {
  return columns.map((column) => {
    if (!column || typeof column !== 'object') return column;

    const nextColumn = { ...column };

    if (nextColumn.cellRender?.name === 'CellOperation') {
      const cellRender = { ...nextColumn.cellRender };
      const attrs = { ...cellRender.attrs };
      const originalOnClick = attrs.onClick;

      attrs.onClick = (params: { code: string; row: any }) => {
        originalOnClick?.(params);
        if (actionCodes.includes(params.code)) {
          markAsViewed(params.row);
        }
      };

      cellRender.attrs = attrs;
      nextColumn.cellRender = cellRender;
    }

    if (Array.isArray(nextColumn.children)) {
      nextColumn.children = wrapColumnsForViewedRow(
        nextColumn.children,
        actionCodes,
        markAsViewed,
      );
    }

    return nextColumn;
  });
}

/**
 * 将 viewedRow 配置应用到 mergedOptions 上
 * 注入 rowClassName、rowStyle、columns 拦截
 */
export function applyViewedRowOptions(
  mergedOptions: VxeTableGridProps,
  viewedRowConfig: boolean | ViewedRowOptions,
  helper: ReturnType<typeof useViewedRow>,
) {
  // 从最新的配置中读取 rowClassName 和 rowStyle
  const viewedRowClassName = isBoolean(viewedRowConfig)
    ? undefined
    : viewedRowConfig.rowClassName;
  const viewedRowStyle = isBoolean(viewedRowConfig)
    ? undefined
    : viewedRowConfig.rowStyle;

  // 注入 rowClassName
  const originalRowClassName = mergedOptions.rowClassName;
  mergedOptions.rowClassName = (params: any) => {
    if (!helper.isViewed(params.row)) {
      return normalizeClassName(
        isFunction(originalRowClassName)
          ? originalRowClassName(params)
          : originalRowClassName,
      );
    }

    let viewedClass: string;
    if (viewedRowClassName === undefined || viewedRowClassName === null) {
      viewedClass = DEFAULT_VIEWED_CLASS;
    } else if (typeof viewedRowClassName === 'string') {
      viewedClass = viewedRowClassName;
    } else if (isFunction(viewedRowClassName)) {
      viewedClass = normalizeClassName(viewedRowClassName(params));
    } else {
      viewedClass = DEFAULT_VIEWED_CLASS;
    }

    return mergeClassNames(
      isFunction(originalRowClassName)
        ? originalRowClassName(params)
        : originalRowClassName,
      viewedClass,
    );
  };

  // 注入 rowStyle
  const originalRowStyle = mergedOptions.rowStyle;
  mergedOptions.rowStyle = (params: any) => {
    const originalStyle = isFunction(originalRowStyle)
      ? originalRowStyle(params)
      : originalRowStyle;

    if (!helper.isViewed(params.row)) {
      return originalStyle || undefined;
    }

    let viewedStyle: any;
    if (viewedRowStyle === undefined || viewedRowStyle === null) {
      viewedStyle = undefined;
    } else if (isFunction(viewedRowStyle)) {
      viewedStyle = viewedRowStyle(params);
    } else {
      viewedStyle = viewedRowStyle;
    }

    if (!viewedStyle && !originalStyle) return undefined;
    if (!originalStyle) return viewedStyle;
    if (!viewedStyle) return originalStyle;
    return { ...originalStyle, ...viewedStyle };
  };

  // 拦截 CellOperation columns
  const actionCodes = (() => {
    if (isBoolean(viewedRowConfig) || !viewedRowConfig.actionCodes) return [];
    return Array.isArray(viewedRowConfig.actionCodes)
      ? viewedRowConfig.actionCodes
      : [viewedRowConfig.actionCodes];
  })();

  if (actionCodes.length > 0 && Array.isArray(mergedOptions.columns)) {
    mergedOptions.columns = wrapColumnsForViewedRow(
      mergedOptions.columns,
      actionCodes,
      helper.markAsViewed,
    );
  }
}
