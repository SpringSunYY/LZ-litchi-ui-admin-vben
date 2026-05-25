import type { Locale } from 'ant-design-vue/es/locale';

import type { App } from 'vue';

import type { LocaleSetupOptions, SupportedLanguagesType } from '@vben/locales';

import { ref } from 'vue';

import { I18N_CACHE_PREFIX } from '@vben/constants';
import {
  $t,
  setupI18n as coreSetup,
  i18n,
  loadLocaleMessages,
  loadLocalesMapFromDir,
  mergeRemoteMessages,
  setRemoteMessageLoader,
} from '@vben/locales';

import antdDefaultLocale from 'ant-design-vue/es/locale/zh_CN';
import dayjs from 'dayjs';
import dayjsLocaleAr from 'dayjs/locale/ar';
import dayjsLocaleDe from 'dayjs/locale/de';
import dayjsLocaleEn from 'dayjs/locale/en';
import dayjsLocaleEs from 'dayjs/locale/es';
import dayjsLocaleFr from 'dayjs/locale/fr';
import dayjsLocaleHi from 'dayjs/locale/hi';
import dayjsLocaleId from 'dayjs/locale/id';
import dayjsLocaleIt from 'dayjs/locale/it';
import dayjsLocaleJa from 'dayjs/locale/ja';
import dayjsLocaleKo from 'dayjs/locale/ko';
import dayjsLocaleMs from 'dayjs/locale/ms';
import dayjsLocaleNl from 'dayjs/locale/nl';
import dayjsLocalePl from 'dayjs/locale/pl';
import dayjsLocalePtBr from 'dayjs/locale/pt-br';
import dayjsLocaleRu from 'dayjs/locale/ru';
import dayjsLocaleTh from 'dayjs/locale/th';
import dayjsLocaleUk from 'dayjs/locale/uk';
import dayjsLocaleVi from 'dayjs/locale/vi';
import dayjsLocaleZhCn from 'dayjs/locale/zh-cn';
import dayjsLocaleZhTw from 'dayjs/locale/zh-tw';

import { getI18nLocale, getI18nLocaleMessage } from '#/api/infra/i18n/i18n';

const antdLocale = ref<Locale>(antdDefaultLocale);

/** 当前的 fallback 语言（由 setupI18n 传入，供 fetchRemoteMessages 使用） */
let currentFallbackLocale: SupportedLanguagesType;

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
  return `${I18N_CACHE_PREFIX}${lang}_${today}`;
}

/**
 * 清除所有旧的 i18n 缓存（非当天的所有语言缓存）
 */
function clearOldI18nCache(): void {
  const today = new Date().toISOString().split('T')[0];
  const prefix = I18N_CACHE_PREFIX;
  const keysToRemove: string[] = [];

  for (let i = 0; i < localStorage.length; i++) {
    const key = localStorage.key(i);
    if (
      key &&
      key.startsWith(prefix) && // 检查是否不是今天的缓存
      // @ts-ignore
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
      const messages = JSON.parse(cachedData);
      i18n.global.mergeLocaleMessage(lang, messages);
      return messages;
    }

    // 缓存未命中，调用后端获取所有语言的消息
    const allMessages = await getI18nLocaleMessage(LOCALE_TARGET);

    if (Array.isArray(allMessages)) {
      // 按语言分组
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
      // 清除所有旧的缓存数据
      clearOldI18nCache();

      // 每种语言单独存储缓存
      for (const [langCode, messages] of Object.entries(messagesByLang)) {
        localStorage.setItem(
          getCacheKey(langCode as SupportedLanguagesType),
          JSON.stringify(messages),
        );
      }

      // 返回当前语言对应的消息，并合并 fallback 语言消息到 i18n
      if (
        lang !== currentFallbackLocale &&
        messagesByLang[currentFallbackLocale]
      ) {
        i18n.global.mergeLocaleMessage(
          currentFallbackLocale,
          messagesByLang[currentFallbackLocale]!,
        );
      }
      return messagesByLang[lang] ?? null;
    }
  } catch (error) {
    console.error(`Failed to load remote messages for ${lang}:`, error);
  }
  return null;
}

/** 目标端，对应后端 localeTarget 字段（默认 2 = PC 管理后台） */
const LOCALE_TARGET = Number(import.meta.env.VITE_APP_LOCALE_TARGET) || 2;

/** 回退语言（后端默认语言不可用时使用） */
const LOCALE_FALLBACK =
  (import.meta.env.VITE_APP_LOCALE_FALLBACK as SupportedLanguagesType) ||
  'zh-CN';

/**
 * 从后端获取默认语言
 * 优先使用后端配置的默认语言（isDefault === 0），否则回退到 LOCALE_FALLBACK
 */
async function getDefaultLocaleFromBackend(): Promise<SupportedLanguagesType> {
  try {
    const list = await getI18nLocale(LOCALE_TARGET);
    if (Array.isArray(list)) {
      const defaultItem = list.find(
        (item: { isDefault?: number }) => item.isDefault === 0,
      );
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
  // dayjs 的 locale 代码映射（静态预导入，编译时解析，无运行动态 import）
  const dayjsLocaleMap: Record<string, () => void> = {
    'en-US': () => dayjs.locale(dayjsLocaleEn),
    'zh-CN': () => dayjs.locale(dayjsLocaleZhCn),
    'zh-TW': () => dayjs.locale(dayjsLocaleZhTw),
    'ja-JP': () => dayjs.locale(dayjsLocaleJa),
    'ko-KR': () => dayjs.locale(dayjsLocaleKo),
    'es-ES': () => dayjs.locale(dayjsLocaleEs),
    'fr-FR': () => dayjs.locale(dayjsLocaleFr),
    'de-DE': () => dayjs.locale(dayjsLocaleDe),
    'ru-RU': () => dayjs.locale(dayjsLocaleRu),
    'pt-BR': () => dayjs.locale(dayjsLocalePtBr),
    'ar-SA': () => dayjs.locale(dayjsLocaleAr),
    'it-IT': () => dayjs.locale(dayjsLocaleIt),
    'vi-VN': () => dayjs.locale(dayjsLocaleVi),
    'th-TH': () => dayjs.locale(dayjsLocaleTh),
    'id-ID': () => dayjs.locale(dayjsLocaleId),
    'ms-MY': () => dayjs.locale(dayjsLocaleMs),
    'hi-IN': () => dayjs.locale(dayjsLocaleHi),
    'uk-UA': () => dayjs.locale(dayjsLocaleUk),
    'pl-PL': () => dayjs.locale(dayjsLocalePl),
    'nl-NL': () => dayjs.locale(dayjsLocaleNl),
  };

  const setLocale = dayjsLocaleMap[lang];
  if (setLocale) {
    setLocale();
  } else {
    dayjs.locale(dayjsLocaleZhCn);
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
    // 未知的语言，回退到默认语言
    antdLocale.value = antdDefaultLocale;
    return;
  }

  try {
    const module = await loader();
    antdLocale.value = module.default;
  } catch {
    // 加载失败，回退到默认语言
    antdLocale.value = antdDefaultLocale;
  }
}

async function setupI18n(
  app: App,
  options: LocaleSetupOptions = {},
  defaultLocale?: SupportedLanguagesType,
  fallbackLocale?: SupportedLanguagesType,
) {
  // 先设置 fallbackLocale，供 fetchRemoteMessages 使用（它在 coreSetup 内部被调用）
  currentFallbackLocale = fallbackLocale ?? LOCALE_FALLBACK;

  // 注册远程消息加载器
  await setRemoteMessageLoader(fetchRemoteMessages);

  await coreSetup(app, {
    defaultLocale: defaultLocale ?? LOCALE_FALLBACK,
    fallbackLocale: currentFallbackLocale,
    loadMessages,
    missingWarn: !import.meta.env.PROD,
    ...options,
  });

  // 默认语言加载完成后，确保 fallback 语言也被加载并缓存
  if (currentFallbackLocale && currentFallbackLocale !== defaultLocale) {
    await loadLocaleMessages(currentFallbackLocale);
  }
}

export {
  $t,
  antdLocale,
  getDefaultLocaleFromBackend,
  LOCALE_FALLBACK,
  mergeRemoteMessages,
  setupI18n,
};
