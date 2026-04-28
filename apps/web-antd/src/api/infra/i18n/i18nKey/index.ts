import type { PageParam, PageResult } from '@vben/request';

import { requestClient } from '#/api/request';

export namespace I18nKeyApi {
  /** 国际化键名信息 */
  export interface I18nKey {
    id: number; // 编号
    messageName?: string; // 名称
    messageKey?: string; // 键
    localeTarget?: number; // 使用端
    isSystem?: number; // 是否内置
    moduleType?: number; // 模块
    useType?: number; // 使用类型
    orderNum: number; // 显示顺序
    remark: string; // 备注
  }
}

/** 查询国际化键名分页 */
export function getI18nKeyPage(params: PageParam) {
  return requestClient.get<PageResult<I18nKeyApi.I18nKey>>(
    '/infra/i18n/key/page',
    { params },
  );
}

/** 查询国际化键名详情 */
export function getI18nKey(id: number) {
  return requestClient.get<I18nKeyApi.I18nKey>(`/infra/i18n/key/get?id=${id}`);
}

/** 新增国际化键名 */
export function createI18nKey(data: I18nKeyApi.I18nKey) {
  return requestClient.post('/infra/i18n/key/create', data);
}

/** 修改国际化键名 */
export function updateI18nKey(data: I18nKeyApi.I18nKey) {
  return requestClient.put('/infra/i18n/key/update', data);
}

/** 删除国际化键名 */
export function deleteI18nKey(id: number, deleteChildren = false) {
  return requestClient.delete(
    `/infra/i18n/key/delete?id=${id}&isDeleteChildren=${deleteChildren}`,
  );
}

/** 批量删除国际化键名 */
export function deleteI18nKeyList(ids: number[]) {
  return requestClient.delete(
    `/infra/i18n/key/delete-list?ids=${ids.join(',')}`,
  );
}

/** 导出国际化键名 */
export function exportI18nKey(params: any) {
  return requestClient.download('/infra/i18n/key/export-excel', params);
}
