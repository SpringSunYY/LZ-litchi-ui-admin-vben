import type { App } from 'vue';
import type { Locale } from 'vue-i18n';

import type {
  ImportLocaleFn,
  LoadMessageFn,
  LocaleSetupOptions,
  SupportedLanguagesType,
} from './typing';

import { unref } from 'vue';
import { createI18n } from 'vue-i18n';

/** i18n 远程消息缓存 key 前缀 */
const I18N_CACHE_PREFIX = 'i18n_messages_';

const DEFAULT_LOCALE: SupportedLanguagesType = 'en-US';

export const i18n = createI18n({
  globalInjection: true,
  legacy: false,
  locale: '',
  fallbackLocale: DEFAULT_LOCALE,
  missingWarn: false,
  fallbackWarn: false,
  messages: {},
});

export const $t = (...args: unknown[]) => (i18n.global as any).t(...args);

export const $te = (...args: unknown[]) => (i18n.global as any).te(...args);

const modules = import.meta.glob('./langs/**/*.json');

const localesMap = loadLocalesMapFromDir(
  /\.\/langs\/([^/]+)\/(.*)\.json$/,
  modules,
);
let loadMessages: LoadMessageFn;

/** 远程消息加载器，可在应用初始化时设置 */
let remoteMessageLoader:
  | ((lang: SupportedLanguagesType) => Promise<null | Record<string, string>>)
  | null = null;

/**
 * 设置远程消息加载器
 * @param loader - 异步函数，接收语言代码，返回翻译数据或null
 */
export async function setRemoteMessageLoader(
  loader: (
    lang: SupportedLanguagesType,
  ) => Promise<null | Record<string, string>>,
) {
  remoteMessageLoader = loader;
}

/**
 * 合并远程消息到 i18n
 * @param lang 语言代码
 */
export async function mergeRemoteMessages(lang: SupportedLanguagesType) {
  if (remoteMessageLoader) {
    try {
      const messages = await remoteMessageLoader(lang);
      if (messages) {
        i18n.global.mergeLocaleMessage(lang, messages);
      }
    } catch (error) {
      console.error(`Failed to merge remote messages for ${lang}:`, error);
    }
  }
}

/**
 * Load locale modules
 * @param modules
 */
export function loadLocalesMap(
  modules: Record<string, () => Promise<unknown>>,
) {
  const localesMap: Record<Locale, ImportLocaleFn> = {};

  for (const [path, loadLocale] of Object.entries(modules)) {
    const key = path.match(/([\w-]*)\.(json)/)?.[1];
    if (key) {
      localesMap[key] = loadLocale as ImportLocaleFn;
    }
  }
  return localesMap;
}

/**
 * Load locale modules with directory structure
 * @param regexp - Regular expression to match language and file names
 * @param modules - The modules object containing paths and import functions
 * @returns A map of locales to their corresponding import functions
 */
export function loadLocalesMapFromDir(
  regexp: RegExp,
  modules: Record<string, () => Promise<unknown>>,
): Record<Locale, ImportLocaleFn> {
  const localesRaw: Record<Locale, Record<string, () => Promise<unknown>>> = {};
  const localesMap: Record<Locale, ImportLocaleFn> = {};

  for (const path in modules) {
    const match = path.match(regexp);
    if (match) {
      const [_, locale, fileName] = match;
      if (locale && fileName) {
        if (!localesRaw[locale]) {
          localesRaw[locale] = {};
        }
        if (modules[path]) {
          localesRaw[locale][fileName] = modules[path];
        }
      }
    }
  }

  for (const [locale, files] of Object.entries(localesRaw)) {
    localesMap[locale] = async () => {
      const messages: Record<string, any> = {};
      for (const [fileName, importFn] of Object.entries(files)) {
        messages[fileName] = ((await importFn()) as any)?.default;
      }
      return { default: messages };
    };
  }

  return localesMap;
}

/**
 * Set i18n language
 * @param locale
 */
function setI18nLanguage(locale: Locale) {
  i18n.global.locale.value = locale;

  document?.querySelector('html')?.setAttribute('lang', locale);
}

/**
 * Load locale messages
 * @param lang
 */
export async function loadLocaleMessages(lang: SupportedLanguagesType) {
  if (unref(i18n.global.locale) === lang) {
    return setI18nLanguage(lang);
  }
  const message = await localesMap[lang]?.();

  if (message?.default) {
    i18n.global.setLocaleMessage(lang, message.default);
  }

  const mergeMessage = await loadMessages?.(lang);
  if (mergeMessage) {
    i18n.global.mergeLocaleMessage(lang, mergeMessage);
  }

  await mergeRemoteMessages(lang);

  return setI18nLanguage(lang);
}

// ============================================================
// 以下为 app 层扩展逻辑（通过 setupI18n 参数传入）
// ============================================================

/** app 层自己的 locale modules */
let appModules: null | Record<string, () => Promise<unknown>> = null;

/** 第三方组件库语言加载函数 */
let thirdPartySetup: ((lang: SupportedLanguagesType) => Promise<void>) | null =
  null;

export const LOCALE_FALLBACK: SupportedLanguagesType =
  (import.meta.env.VITE_APP_LOCALE_FALLBACK as SupportedLanguagesType) ||
  'zh-CN';

export type LocaleTarget = number;

export interface SetupI18nOptions extends LocaleSetupOptions {
  /** app 层的 locale modules（import.meta.glob 结果），用于扩展 package 自带的 locale */
  appModules?: Record<string, () => Promise<unknown>>;
  /** 第三方组件库语言加载函数（dayjs / antd / 等），为空时跳过第三方加载 */
  thirdPartySetup?: (lang: SupportedLanguagesType) => Promise<void>;
  /** 后端 i18n 目标端（对应后端 localeTarget 字段，默认 2 = PC 管理后台） */
  localeTarget?: LocaleTarget;
  /** 后端 i18n API — 获取语言列表（locale + isDefault） */
  getI18nLocaleApi?: (
    target: LocaleTarget,
  ) => Promise<Array<{ isDefault?: number; locale?: string }>>;
  /** 后端 i18n API — 获取翻译消息 */
  getI18nLocaleMessageApi?: (
    target: LocaleTarget,
  ) => Promise<
    Array<{ locale?: string; message?: string; messageKey?: string }>
  >;
}

function getCacheKey(lang: SupportedLanguagesType): string {
  const now = new Date();
  const year = now.getFullYear();
  const month = String(now.getMonth() + 1).padStart(2, '0');
  return `${I18N_CACHE_PREFIX}${lang}_${year}-${month}`;
}

function clearOldI18nCache(): void {
  const now = new Date();
  const year = now.getFullYear();
  const month = String(now.getMonth() + 1).padStart(2, '0');
  const currentYearMonth = `${year}-${month}`;
  const prefix = I18N_CACHE_PREFIX;
  const keysToRemove: string[] = [];

  for (let i = 0; i < localStorage.length; i++) {
    const key = localStorage.key(i);
    if (key && key.startsWith(prefix) && !key.endsWith(currentYearMonth)) {
      keysToRemove.push(key);
    }
  }

  keysToRemove.forEach((key) => {
    localStorage.removeItem(key);
  });
}

async function fetchRemoteMessages(
  lang: SupportedLanguagesType,
  options: SetupI18nOptions,
): Promise<null | Record<string, string>> {
  const { localeTarget = 2, getI18nLocaleMessageApi } = options;

  if (!getI18nLocaleMessageApi) return null;

  try {
    const cacheKey = getCacheKey(lang);

    const cachedData = localStorage.getItem(cacheKey);
    if (cachedData) {
      const messages = JSON.parse(cachedData);
      i18n.global.mergeLocaleMessage(lang, messages);
      return messages;
    }

    const allMessages = await getI18nLocaleMessageApi(localeTarget);

    if (Array.isArray(allMessages)) {
      const messagesByLang: Record<string, Record<string, string>> = {};
      for (const item of allMessages) {
        if (item.messageKey && item.locale && item.message) {
          const langCode = item.locale.replaceAll(
            '_',
            '-',
          ) as SupportedLanguagesType;
          if (!messagesByLang[langCode]) {
            messagesByLang[langCode] = {};
          }
          messagesByLang[langCode][item.messageKey] = item.message;
        }
      }

      const hasData = Object.keys(messagesByLang).length > 0;
      if (hasData) {
        clearOldI18nCache();

        for (const [langCode, messages] of Object.entries(messagesByLang)) {
          localStorage.setItem(
            getCacheKey(langCode as SupportedLanguagesType),
            JSON.stringify(messages),
          );
        }

        if (
          lang !== currentFallbackLocale &&
          messagesByLang[currentFallbackLocale]
        ) {
          i18n.global.mergeLocaleMessage(
            currentFallbackLocale,
            messagesByLang[currentFallbackLocale],
          );
        }
      }
      return messagesByLang[lang] ?? null;
    }
  } catch (error) {
    console.error(`Failed to load remote messages for ${lang}:`, error);
  }
  return null;
}

function localesMapFromModules(
  modules: Record<string, () => Promise<unknown>>,
) {
  return loadLocalesMapFromDir(/\.\/langs\/([^/]+)\/(.*)\.json$/, modules);
}

async function appLoadMessages(lang: SupportedLanguagesType) {
  const thirdParty = thirdPartySetup;
  const [packageMessages, appMessages] = await Promise.all([
    localesMap[lang]?.(),
    appModules
      ? localesMapFromModules(appModules)[lang]?.()
      : Promise.resolve(null),
    thirdParty?.(lang),
  ]);

  return {
    ...packageMessages?.default,
    ...appMessages?.default,
  };
}

/** 当前的 fallback 语言 */
let currentFallbackLocale: SupportedLanguagesType;

export async function getDefaultLocaleFromBackend(
  options: SetupI18nOptions = {},
): Promise<SupportedLanguagesType> {
  const { localeTarget = 2, getI18nLocaleApi } = options;

  if (!getI18nLocaleApi) return LOCALE_FALLBACK;

  try {
    const list = await getI18nLocaleApi(localeTarget);
    if (Array.isArray(list)) {
      const defaultItem = list.find((item) => item.isDefault === 0);
      if (defaultItem?.locale) {
        return defaultItem.locale.replaceAll(
          '_',
          '-',
        ) as SupportedLanguagesType;
      }
    }
  } catch {
    // 获取失败，使用回退语言
  }
  return LOCALE_FALLBACK;
}

async function setupI18nCore(app: App, options: LocaleSetupOptions = {}) {
  const { defaultLocale = 'zh-CN', fallbackLocale } = options;
  loadMessages = options.loadMessages || (async () => ({}));

  if (fallbackLocale && fallbackLocale !== defaultLocale) {
    i18n.global.fallbackRoot = true;
    // @ts-ignore
    i18n.global.fallbackLocale.value = fallbackLocale;
  }

  if (fallbackLocale) {
    i18n.global.fallbackRoot = true;
    // @ts-ignore
    i18n.global.fallbackLocale.value = fallbackLocale;
  }

  app.use(i18n);
  await loadLocaleMessages(defaultLocale);
}

export async function setupI18n(app: App, options: SetupI18nOptions = {}) {
  const {
    appModules: modules,
    thirdPartySetup: tpSetup,
    localeTarget = 2,
    getI18nLocaleApi,
    getI18nLocaleMessageApi,
    defaultLocale,
    fallbackLocale,
  } = options;

  appModules = modules ?? null;
  thirdPartySetup = tpSetup ?? null;
  currentFallbackLocale = fallbackLocale ?? LOCALE_FALLBACK;

  await setRemoteMessageLoader((lang) =>
    fetchRemoteMessages(lang, {
      localeTarget,
      getI18nLocaleApi,
      getI18nLocaleMessageApi,
    }),
  );

  await setupI18nCore(app, {
    defaultLocale: defaultLocale ?? LOCALE_FALLBACK,
    fallbackLocale: currentFallbackLocale,
    loadMessages: appLoadMessages,
    missingWarn: !import.meta.env.PROD,
  });

  if (currentFallbackLocale && currentFallbackLocale !== defaultLocale) {
    const savedLocale = i18n.global.locale.value;
    await loadLocaleMessages(currentFallbackLocale);
    i18n.global.locale.value = savedLocale;
  }
}
