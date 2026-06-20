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

/** 获取国际化更新Key，判断缓存key与返回key是否相同，如果不相同则表示有更新了 */
export function getI18nUpdateKey(localeTarget: number, locale: string) {
  return requestClient.get<string>(
    `/infra/i18n/locale/update-key?localeTarget=${localeTarget}&&locale=${locale}`,
  );
}

/** 获取国际化国家信息 */
export function getI18nLocale(localeTarget: number) {
  return requestClient.get<I18nApi.Locale[]>(
    `/infra/i18n/locale/target?localeTarget=${localeTarget}`,
  );
}

/** 获取国际化message信息 */
export function getI18nLocaleMessage(localeTarget: number) {
  return requestClient.get<I18nApi.Message[]>(
    `/infra/i18n/locale/message?localeTarget=${localeTarget}`,
    { timeout: 30_000 },
  );
}
