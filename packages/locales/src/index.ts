export {
  $t,
  $te,
  getDefaultLocaleFromBackend,
  i18n,
  i18nLoading,
  loadLocaleMessages,
  loadLocalesMap,
  loadLocalesMapFromDir,
  LOCALE_FALLBACK,
  mergeRemoteMessages,
  setRemoteMessageLoader,
  setupI18n,
} from './i18n';

export {
  cachedLocaleList,
  clearI18nCaches,
  getGetI18nLocaleApi,
  getLocaleInfo,
} from './i18n';
export type { LocaleTarget, SetupI18nOptions } from './i18n';
export type { LocaleSetupOptions, SupportedLanguagesType } from './typing';
export { useI18n } from 'vue-i18n';
export type { Locale } from 'vue-i18n';
