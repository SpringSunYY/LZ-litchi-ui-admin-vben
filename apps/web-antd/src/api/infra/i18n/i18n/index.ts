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

/** 获取国际化更新，如果当前状态和后台不同则返回true，反之false */
export function getI18nUpdated(localeTarget: number, locale: string) {
  return requestClient.get<boolean>(
    `/infra/i18n/locale/updated?localeTarget=${localeTarget}&&locale=${locale}`,
  );
}

/** 获取国际化国家信息 */
export function getI18nLocale(localeTarget: number) {
  return requestClient.get<I18nApi.Locale[]>(
    `/infra/i18n/locale/target?localeTarget=${localeTarget}`,
  );
}

/** 获取国际化国家信息 */
export function getI18nLocaleMessage(localeTarget: number) {
  return requestClient.get<I18nApi.Message[]>(
    `/infra/i18n/locale/message?localeTarget=${localeTarget}`,
    { timeout: 30_000 },
  );
}
