import type { Ref } from 'vue';

export interface ViewedRowStorageAdapter {
  /** 读取所有已查看的 key 列表 */
  getKeys(): Promise<Array<number | string>>;

  /** 移除所有已查看数据 */
  removeKeys(): Promise<void>;

  /** 持久化已查看的 key 列表 */
  setKeys(keys: Array<number | string>): Promise<void>;
}

/**
 * 已读行持久化 — 公共基础字段
 */
interface ViewedRowPersistBase {
  /** 持久化数据的存活时间（毫秒） */
  ttl?: number;
  /** 最大缓存数量，超出时淘汰最早标记的 key（FIFO），默认 100 */
  maxSize?: number;
}

/**
 * 已读行持久化配置（按 type 区分的联合类型）
 *
 * - 'memory'          → 仅内存，不持久化
 * - 'localStorage'    → 使用 localStorage 整体存储，key 必传
 * - 'sessionStorage'  → 使用 sessionStorage 整体存储，key 必传
 * - 'custom'          → 用户自定义存储适配器，storage 必传
 */
export type ViewedRowPersistOptions =
  | ({
      /** 存储 key / prefix（必传） */
      key: string;
      type: 'localStorage';
    } & ViewedRowPersistBase)
  | ({
      /** 存储 key / prefix（必传） */
      key: string;
      type: 'sessionStorage';
    } & ViewedRowPersistBase)
  | ({
      /** 用户自定义存储适配器（必传） */
      storage: ViewedRowStorageAdapter;
      type: 'custom';
    } & ViewedRowPersistBase)
  | {
      type: 'memory';
    };

export interface ViewedRowOptionConfig<T = any> {
  /** 用于从行数据中提取唯一标识的字段名 */
  keyField?: keyof T | string;
  /** 行标记为已读的 CSS 类名 */
  rowClassName?: ((params: any) => Record<string, boolean> | string) | string;
  /** 行标记为已读的内联样式 */
  rowStyle?: ((params: any) => Record<string, any>) | Record<string, any>;
  /** 自动标记已读的操作 code（CellOperation 中的 code） */
  actionCodes?: string | string[];
  /** 持久化配置 */
  persist?: string | ViewedRowPersistOptions;
  /** 外部已读 keys（响应式） */
  viewedKeys?: Array<number | string> | Ref<Array<number | string>>;
  /** 最大缓存数量 */
  maxSize?: number;
}

export type ViewedRowOptions<T = any> = boolean | ViewedRowOptionConfig<T>;

/**
 * 已读行 Helper 接口
 */
export interface ViewedRowHelper<T = any> {
  isViewed(record: T): boolean;
  markAsViewed(record: T): void;
  markKeysAsViewed(keys: Array<number | string>): void;
  clearViewed(): void;
  removeKeys(keys: Array<number | string>): void;
  viewedSet: { value: Set<number | string> };
}
