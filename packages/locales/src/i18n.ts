import type { App } from 'vue';
import type { Locale } from 'vue-i18n';

import type {
  ImportLocaleFn,
  LoadMessageFn,
  LocaleSetupOptions,
  SupportedLanguagesType,
} from './typing';

import { ref, unref } from 'vue';
import { createI18n } from 'vue-i18n';

/** i18n 远程消息缓存 key */
const I18N_CACHE_PREFIX = 'i18n_messages';
/** i18n 更新key */
const I18N_UPDATED_KEY = 'i18n_updated_key';

/** i18n 加载中状态（用于 UI 反馈） */
export const i18nLoading = ref(false);
export type LocaleTarget = number;

/** 语言列表 API（由 app 层注入） */
let appGetI18nLocale:
  | ((
      target: LocaleTarget,
    ) => Promise<
      Array<{ isDefault?: number; locale?: string; localeName?: string }>
    >)
  | null = null;

/** 当前 localeTarget（由 app 层注入，默认为环境变量或 2 = PC 管理后台） */
export const CURRENT_LOCALE_TARGET: number =
  Number(import.meta.env.VITE_I18N_LOCALE_TARGET) || 2;

export const LOCALE_FALLBACK: SupportedLanguagesType =
  (import.meta.env.VITE_APP_LOCALE_FALLBACK as SupportedLanguagesType) ||
  'zh-CN';

/** 缓存的语言列表（由 getDefaultLocaleFromBackend 填充，供 language-toggle 等组件复用） */
export const cachedLocaleList = ref<
  Array<{ isDefault?: number; locale?: string; localeName?: string }>
>([]);

/**
 * 设置语言列表 API 和 localeTarget（app 层在 setupI18n 时注入）
 */
export function setGetI18nLocaleApi(
  fn: (
    target: LocaleTarget,
  ) => Promise<
    Array<{ isDefault?: number; locale?: string; localeName?: string }>
  >,
) {
  appGetI18nLocale = fn;
}

/**
 * 获取已注入的语言列表 API（供 language-toggle 等组件使用）
 */
export function getGetI18nLocaleApi() {
  return appGetI18nLocale;
}

export const i18n = createI18n({
  globalInjection: true,
  legacy: false,
  locale: '',
  fallbackLocale: LOCALE_FALLBACK,
  missingWarn: false,
  fallbackWarn: false,
  messages: {},
  messageResolver: (obj: unknown, path: string) => {
    // 自定义解析器：首先检查平键，然后遍历嵌套路径。
    const messages = obj as Record<string, any>;
    // 1. 检查路径是否以平键形式存在（后端数据）
    if (messages && path in messages) {
      return messages[path];
    }
    // 2. 像默认 intlify 解析器一样遍历嵌套路径
    let current: unknown = messages;
    const parts = path.split('.');
    for (const part of parts) {
      if (current === null || typeof current !== 'object') {
        return null;
      }
      current = (current as Record<string, any>)[part];
    }
    return current as null | string;
  },
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
      i18nLoading.value = true;
      await remoteMessageLoader(lang);
    } catch (error) {
      console.error(`Failed to merge remote messages for ${lang}:`, error);
    } finally {
      i18nLoading.value = false;
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

function getCacheKey(lang: SupportedLanguagesType): string {
  return `${I18N_CACHE_PREFIX}_${CURRENT_LOCALE_TARGET}_${lang}`;
}

function getUpdateCacheKey(lang: SupportedLanguagesType): string {
  return `${I18N_UPDATED_KEY}_${CURRENT_LOCALE_TARGET}_${lang}`;
}

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
  /** 后端 i18n API — 检查后端是否有更新，返回 true 表示有更新需重新拉取 */
  getI18nUpdateKeyApi?: (localeTarget: number, lang: string) => Promise<string>;
}

/**
 * 获取语言列表，每次都从后端拉取（语言列表数据量小，无需缓存）
 */
export async function getLocaleInfo(options: {
  getI18nLocaleApi?: (
    target: LocaleTarget,
  ) => Promise<
    Array<{ isDefault?: number; locale?: string; localeName?: string }>
  >;
  localeTarget?: LocaleTarget;
}): Promise<Array<{
  isDefault?: number;
  locale?: string;
  localeName?: string;
}> | null> {
  const localeTarget = options.localeTarget ?? CURRENT_LOCALE_TARGET;
  const api = options.getI18nLocaleApi ?? appGetI18nLocale;
  if (!api) return null;

  const list = await api(localeTarget);
  return Array.isArray(list) ? list : null;
}

/**
 * 清除所有 i18n 相关缓存（消息缓存、updateKey 状态缓存）
 */
export function clearI18nCaches() {
  const prefixes = [I18N_CACHE_PREFIX, I18N_UPDATED_KEY];
  const keysToRemove: string[] = [];

  for (let i = 0; i < localStorage.length; i++) {
    const key = localStorage.key(i);
    if (key && prefixes.some((p) => key.startsWith(p))) {
      keysToRemove.push(key);
    }
  }

  keysToRemove.forEach((key) => {
    localStorage.removeItem(key);
  });

  return keysToRemove.length;
}

/**
 * Convert flat key-value map to nested object for vue-i18n mergeLocaleMessage.
 * e.g. { "infra.i18nMessage.message": "foo" } → { infra: { i18nMessage: { message: "foo" } } }
 */
export function flattenToNested(
  flat: Record<string, string>,
): Record<string, any> {
  const result: Record<string, any> = {};
  for (const [key, value] of Object.entries(flat)) {
    const parts = key.split('.');
    let current: Record<string, any> = result;
    for (let i = 0; i < parts.length - 1; i++) {
      const part = parts[i];
      if (!part) continue;
      if (current[part] !== null && typeof current[part] === 'object') {
        current = current[part];
      } else {
        current[part] = {};
        current = current[part];
      }
    }
    const lastPart = parts.at(-1);
    if (!lastPart) continue;
    current[lastPart] = value;
  }
  return result;
}

/**
 * Merge remote messages into i18n.
 * Stores backend flat key-value pairs directly into the locale messages object.
 */
function mergeFlatMessages(
  lang: SupportedLanguagesType,
  flatMessages: Record<string, string>,
) {
  // 直接将扁平 key 合并进 vue-i18n 的 locale 消息对象
  const messages = (i18n.global.messages as any).value;
  if (!messages[lang]) {
    messages[lang] = {};
  }
  Object.assign(messages[lang], flatMessages);
}

/**
 * 确保 fallback 语言消息已加载到 vue-i18n，避免 fallback 链断裂。
 * 优先从后端响应数据（messagesByLang）加载；否则从 localStorage 缓存加载。
 */
function ensureFallbackMessages(
  messagesByLang?: Record<string, Record<string, string>>,
) {
  if (!currentFallbackLocale) return;
  const messages = (i18n.global.messages as any).value;
  // 如果 fallback 语言已有消息，跳过
  if (
    messages[currentFallbackLocale] &&
    Object.keys(messages[currentFallbackLocale]).length > 0
  ) {
    return;
  }

  // 优先用后端响应数据
  const fallbackMessages = messagesByLang?.[currentFallbackLocale];
  if (fallbackMessages) {
    mergeFlatMessages(currentFallbackLocale, fallbackMessages);
    return;
  }

  // 其次从 localStorage 缓存加载
  const fallbackCached = localStorage.getItem(
    getCacheKey(currentFallbackLocale),
  );
  if (fallbackCached) {
    mergeFlatMessages(currentFallbackLocale, JSON.parse(fallbackCached));
  }
}

/** 获取国际化信息*/
async function fetchRemoteMessages(
  lang: SupportedLanguagesType,
  options: SetupI18nOptions,
): Promise<null | Record<string, string>> {
  const {
    localeTarget = CURRENT_LOCALE_TARGET,
    getI18nLocaleMessageApi,
    getI18nUpdateKeyApi,
  } = options;

  if (!getI18nLocaleMessageApi) return null;

  try {
    const cacheKey = getCacheKey(lang);
    const updateCacheKey = getUpdateCacheKey(lang);
    const cachedData = localStorage.getItem(cacheKey);
    const currentUpdateKey = localStorage.getItem(updateCacheKey);
    // 拿到updateKey
    const updateKey = await getI18nUpdateKeyApi?.(CURRENT_LOCALE_TARGET, lang);

    // 有缓存并对比updateKey 前后端状态不一致，需要拉取新数据
    if (cachedData && currentUpdateKey && updateKey === currentUpdateKey) {
      try {
        const messages = JSON.parse(cachedData);
        mergeFlatMessages(lang, messages);
        ensureFallbackMessages();
        return messages;
      } catch (error) {
        console.warn(
          `[i18n][${lang}] getI18nUpdatedApi error, using cache`,
          error,
        );
      }
    }
    // 无缓存 或 后端有更新：重新拉取全部消息
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

      // 持久化所有语言缓存
      for (const [langCode, messages] of Object.entries(messagesByLang)) {
        localStorage.setItem(
          getCacheKey(langCode as SupportedLanguagesType),
          JSON.stringify(messages),
        );
      }

      if (messagesByLang[lang]) {
        mergeFlatMessages(lang, messagesByLang[lang]);
      }
      // 强制加载 fallback 语言消息，不管当前语言是否就是 fallback
      ensureFallbackMessages(messagesByLang);
      // 持久化 updateKey
      if (updateKey) {
        localStorage.setItem(updateCacheKey, updateKey);
      }
      return messagesByLang[lang] ?? null;
    }
  } catch (error) {
    // 拉取失败，如果有缓存则降级使用
    const cacheKey = getCacheKey(lang);
    const cachedData = localStorage.getItem(cacheKey);
    if (cachedData) {
      try {
        const messages = JSON.parse(cachedData);
        mergeFlatMessages(lang, messages);
        ensureFallbackMessages();
        return messages;
      } catch {
        // 缓存损坏，无可用数据
      }
    }
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
  const [packageMessages, appMessages] = await Promise.all([
    localesMap[lang]?.(),
    appModules
      ? localesMapFromModules(appModules)[lang]?.()
      : Promise.resolve(null),
    thirdPartySetup?.(lang),
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
  const localeTarget = options.localeTarget ?? CURRENT_LOCALE_TARGET;
  const getApi = options.getI18nLocaleApi ?? appGetI18nLocale;

  if (!getApi) return LOCALE_FALLBACK;

  try {
    const list = await getLocaleInfo({
      getI18nLocaleApi: getApi,
      localeTarget,
    });
    if (list) {
      cachedLocaleList.value = list;
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

  if (fallbackLocale) {
    i18n.global.fallbackRoot = true;
    i18n.global.fallbackLocale.value = fallbackLocale;
  }

  app.use(i18n);
  await loadLocaleMessages(defaultLocale);
}

export async function setupI18n(app: App, options: SetupI18nOptions = {}) {
  const {
    appModules: modules,
    thirdPartySetup: tpSetup,
    localeTarget = Number(import.meta.env.VITE_I18N_LOCALE_TARGET) || 2,
    getI18nLocaleApi,
    getI18nLocaleMessageApi,
    getI18nUpdateKeyApi,
    defaultLocale,
    fallbackLocale,
  } = options;

  appModules = modules ?? null;
  thirdPartySetup = tpSetup ?? null;
  currentFallbackLocale = fallbackLocale ?? LOCALE_FALLBACK;

  if (getI18nLocaleApi) {
    setGetI18nLocaleApi(getI18nLocaleApi as any);
  }

  await setRemoteMessageLoader((lang) =>
    fetchRemoteMessages(lang, {
      localeTarget,
      getI18nLocaleApi,
      getI18nLocaleMessageApi,
      getI18nUpdateKeyApi,
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
