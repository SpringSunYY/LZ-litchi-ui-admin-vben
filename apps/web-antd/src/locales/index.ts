import type { Locale } from 'ant-design-vue/es/locale';

import type { App } from 'vue';

import type { LocaleSetupOptions, SupportedLanguagesType } from '@vben/locales';

import { ref } from 'vue';

import {
  $t,
  setupI18n as coreSetup,
  loadLocalesMapFromDir,
  mergeRemoteMessages,
  setRemoteMessageLoader,
} from '@vben/locales';
import { preferences } from '@vben/preferences';

import antdEnLocale from 'ant-design-vue/es/locale/en_US';
import antdDefaultLocale from 'ant-design-vue/es/locale/zh_CN';
import dayjs from 'dayjs';

import { getI18nLocaleMessage } from '#/api/infra/i18n/i18n';

const antdLocale = ref<Locale>(antdDefaultLocale);

const modules = import.meta.glob('./langs/**/*.json');

const localesMap = loadLocalesMapFromDir(
  /\.\/langs\/([^/]+)\/(.*)\.json$/,
  modules,
);

/**
 * 生成当天的缓存键
 * @param lang 语言代码
 */
function getCacheKey(lang: SupportedLanguagesType): string {
  const today = new Date().toISOString().split('T')[0]; // 格式: YYYY-MM-DD
  return `i18n_messages_${lang}_${today}`;
}

/**
 * 清除所有旧的 i18n 缓存（非当天的所有语言缓存）
 */
function clearOldI18nCache(): void {
  const today = new Date().toISOString().split('T')[0];
  const prefix = 'i18n_messages_';
  const keysToRemove: string[] = [];

  for (let i = 0; i < localStorage.length; i++) {
    const key = localStorage.key(i);
    if (
      key &&
      key.startsWith(prefix) && // 检查是否不是今天的缓存
      //@ts-ignore
      !key.endsWith(today)
    ) {
      keysToRemove.push(key);
    }
  }

  // 删除所有旧缓存
  keysToRemove.forEach((key) => {
    localStorage.removeItem(key);
  });
}

/**
 * 从后端加载翻译消息，带本地缓存
 * @param lang 语言代码
 */
async function fetchRemoteMessages(
  lang: SupportedLanguagesType,
): Promise<null | Record<string, string>> {
  try {
    const cacheKey = getCacheKey(lang);

    // 尝试从缓存中获取当天的数据
    const cachedData = localStorage.getItem(cacheKey);
    if (cachedData) {
      return JSON.parse(cachedData);
    }

    // 缓存未命中，从后端获取数据
    const res = await getI18nLocaleMessage(2);
    // API 返回格式: { code, data: [{ messageKey, locale, message }], msg }
    const data = (res as any)?.data ?? res;

    if (Array.isArray(data)) {
      const remoteMessages: Record<string, string> = {};
      for (const item of data) {
        if (item.messageKey && item.message) {
          remoteMessages[item.messageKey] = item.message;
        }
      }

      // 清除所有旧的缓存数据（所有语言的旧缓存）
      clearOldI18nCache();

      // 存储新的缓存数据
      localStorage.setItem(cacheKey, JSON.stringify(remoteMessages));

      return remoteMessages;
    }
  } catch (error) {
    console.error(`Failed to load remote messages for ${lang}:`, error);
  }
  return null;
}

/**
 * 加载应用特有的语言包
 * @param lang
 */
async function loadMessages(lang: SupportedLanguagesType) {
  const [appLocaleMessages] = await Promise.all([
    localesMap[lang]?.(),
    loadThirdPartyMessage(lang),
  ]);
  return appLocaleMessages?.default;
}

/**
 * 加载第三方组件库的语言包
 * @param lang
 */
async function loadThirdPartyMessage(lang: SupportedLanguagesType) {
  await Promise.all([loadAntdLocale(lang), loadDayjsLocale(lang)]);
}

/**
 * 加载dayjs的语言包
 * @param lang
 */
async function loadDayjsLocale(lang: SupportedLanguagesType) {
  // dayjs 的 locale 代码映射
  const dayjsLocaleMap: Record<string, string> = {
    'en-US': 'en',
    'zh-CN': 'zh-cn',
    'zh-TW': 'zh-tw',
    'ja-JP': 'ja',
    'ko-KR': 'ko',
    'es-ES': 'es',
    'fr-FR': 'fr',
    'de-DE': 'de',
    'ru-RU': 'ru',
    'pt-BR': 'pt-br',
    'ar-SA': 'ar',
    'it-IT': 'it',
    'vi-VN': 'vi',
    'th-TH': 'th',
    'id-ID': 'id',
    'ms-MY': 'ms',
    'hi-IN': 'hi',
    'uk-UA': 'uk',
    'pl-PL': 'pl',
    'nl-NL': 'nl',
  };

  const localeName = dayjsLocaleMap[lang];
  if (!localeName) {
    // 未知的语言，回退到英语
    const locale = await import('dayjs/locale/en');
    dayjs.locale(locale);
    return;
  }

  try {
    const locale = await import(
      /* @vite-ignore */ `dayjs/locale/${localeName}`
    );
    dayjs.locale(locale);
  } catch {
    // 加载失败，回退到英语
    const locale = await import('dayjs/locale/en');
    dayjs.locale(locale);
  }
}

/**
 * 加载antd的语言包
 * @param lang
 */
async function loadAntdLocale(lang: SupportedLanguagesType) {
  // antd 的 locale 代码映射
  const antdLocaleMap: Record<string, () => Promise<{ default: Locale }>> = {
    'en-US': () => import('ant-design-vue/es/locale/en_US'),
    'zh-CN': () => import('ant-design-vue/es/locale/zh_CN'),
    'zh-TW': () => import('ant-design-vue/es/locale/zh_TW'),
    'ja-JP': () => import('ant-design-vue/es/locale/ja_JP'),
    'ko-KR': () => import('ant-design-vue/es/locale/ko_KR'),
    'es-ES': () => import('ant-design-vue/es/locale/es_ES'),
    'fr-FR': () => import('ant-design-vue/es/locale/fr_FR'),
    'de-DE': () => import('ant-design-vue/es/locale/de_DE'),
    'ru-RU': () => import('ant-design-vue/es/locale/ru_RU'),
    'pt-BR': () => import('ant-design-vue/es/locale/pt_BR'),
    'it-IT': () => import('ant-design-vue/es/locale/it_IT'),
    'vi-VN': () => import('ant-design-vue/es/locale/vi_VN'),
    'th-TH': () => import('ant-design-vue/es/locale/th_TH'),
    'id-ID': () => import('ant-design-vue/es/locale/id_ID'),
    'ms-MY': () => import('ant-design-vue/es/locale/ms_MY'),
    'hi-IN': () => import('ant-design-vue/es/locale/hi_IN'),
    'uk-UA': () => import('ant-design-vue/es/locale/uk_UA'),
    'pl-PL': () => import('ant-design-vue/es/locale/pl_PL'),
    'nl-NL': () => import('ant-design-vue/es/locale/nl_NL'),
  };

  const loader = antdLocaleMap[lang];
  if (!loader) {
    // 未知的语言，回退到英语
    antdLocale.value = antdEnLocale;
    return;
  }

  try {
    const module = await loader();
    antdLocale.value = module.default;
  } catch {
    // 加载失败，回退到英语
    antdLocale.value = antdEnLocale;
  }
}

async function setupI18n(app: App, options: LocaleSetupOptions = {}) {
  // 注册远程消息加载器
  setRemoteMessageLoader(fetchRemoteMessages);

  await coreSetup(app, {
    defaultLocale: preferences.app.locale,
    loadMessages,
    missingWarn: !import.meta.env.PROD,
    ...options,
  });
}

export { $t, antdLocale, mergeRemoteMessages, setupI18n };
