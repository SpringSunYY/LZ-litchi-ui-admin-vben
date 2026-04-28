import { requestClient } from '#/api/request';

export namespace I18nApi {
  /** 国际化国家信息 */
  export interface Locale {
    localeName?: string; // 国家地区
    locale?: string; // 简称
    isDefault?: number; // 默认
  }

  export interface Message {
    messageKey?: string; // key
    locale?: string; // 简称
    message?: string; // 内容
  }
}

export function getI18nLocale(localeTarget: number) {
  return requestClient.get<I18nApi.Locale[]>(
    `/infra/i18n/locale/target?localeTarget=${localeTarget}`,
  );
}

export function getI18nLocaleMessage(localeTarget: number) {
  return requestClient.get<I18nApi.Message[]>(
    `/infra/i18n/locale/message?localeTarget=${localeTarget}`,
  );
}
