import type { PageParam, PageResult } from '@vben/request';

import { requestClient } from '#/api/request';

export namespace I18nLocaleApi {
  /** 国际化国家信息 */
  export interface I18nLocale {
    id: number; // 编号
    localeName?: string; // 国家地区
    locale?: string; // 简称
    orderNum: number; // 显示顺序
    localeStatus?: number; // 状态
    localeTarget?: number; // 类型
    isDefault?: number; // 默认
    remark: string; // 备注
  }
}

/** 查询国际化国家分页 */
export function getI18nLocalePage(params: PageParam) {
  return requestClient.get<PageResult<I18nLocaleApi.I18nLocale>>(
    '/infra/i18n/locale/page',
    { params },
  );
}

/** 查询国际化国家详情 */
export function getI18nLocale(id: number) {
  return requestClient.get<I18nLocaleApi.I18nLocale>(
    `/infra/i18n/locale/get?id=${id}`,
  );
}

/** 新增国际化国家 */
export function createI18nLocale(data: I18nLocaleApi.I18nLocale) {
  return requestClient.post('/infra/i18n/locale/create', data);
}

/** 修改国际化国家 */
export function updateI18nLocale(data: I18nLocaleApi.I18nLocale) {
  return requestClient.put('/infra/i18n/locale/update', data);
}

/** 删除国际化国家 */
export function deleteI18nLocale(id: number) {
  return requestClient.delete(`/infra/i18n/locale/delete?id=${id}`);
}

/** 批量删除国际化国家 */
export function deleteI18nLocaleList(ids: number[]) {
  return requestClient.delete(
    `/infra/i18n-locale/delete/list?ids=${ids.join(',')}`,
  );
}

/** 导出国际化国家 */
export function exportI18nLocale(params: any) {
  return requestClient.download('/infra/i18n-locale/export/excel', params);
}
