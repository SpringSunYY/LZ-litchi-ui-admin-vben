import type { PageParam, PageResult } from '@vben/request';

import { requestClient } from '#/api/request';

export namespace I18nMessageApi {
  /** 国际化信息信息 */
  export interface I18nMessage {
    id: number; // 主键
    messageName?: string; // 名称
    messageKey?: string; // 键
    locale?: string; // 简称
    target?: number; // 使用端
    isSystem?: number; // 是否内置
    moduleType?: number; // 模块
    useType?: number; // 使用类型
    message?: string; // 消息
    remark: string; // 备注
  }
}

/** 查询国际化信息分页 */
export function getI18nMessagePage(params: PageParam) {
  return requestClient.get<PageResult<I18nMessageApi.I18nMessage>>(
    '/infra/i18n/message/page',
    { params },
  );
}

/** 查询国际化信息详情 */
export function getI18nMessage(id: number) {
  return requestClient.get<I18nMessageApi.I18nMessage>(
    `/infra/i18n/message/get?id=${id}`,
  );
}

/** 新增国际化信息 */
export function createI18nMessage(data: I18nMessageApi.I18nMessage) {
  return requestClient.post('/infra/i18n/message/create', data);
}

/** 修改国际化信息 */
export function updateI18nMessage(data: I18nMessageApi.I18nMessage) {
  return requestClient.put('/infra/i18n/message/update', data);
}

/** 删除国际化信息 */
export function deleteI18nMessage(id: number) {
  return requestClient.delete(`/infra/i18n/message/delete?id=${id}`);
}

/** 批量删除国际化信息 */
export function deleteI18nMessageList(ids: number[]) {
  return requestClient.delete(
    `/infra/i18n/message/delete-list?ids=${ids.join(',')}`,
  );
}

/** 导出国际化信息 */
export function exportI18nMessage(params: any) {
  return requestClient.download('/infra/i18n/message/export-excel', params);
}
