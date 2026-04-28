import type { PageResult } from '@vben/request';

import { requestClient } from '#/api/request';

export namespace I18nApi {
  /** 国际化国家信息 */
  export interface Locale {
    localeName?: string; // 国家地区
    locale?: string; // 简称
    isDefault?: number; // 默认
  }
}

export function getI18nLocale(localeTarget: number) {
  return requestClient.get<PageResult<I18nApi.Locale>>(
    `/i18n/locale?localeTarget=${localeTarget}`,
  );
}
