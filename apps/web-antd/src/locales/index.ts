import type { Locale } from 'ant-design-vue/es/locale';

import type { App } from 'vue';

import type { LocaleSetupOptions, SupportedLanguagesType } from '@vben/locales';

import { ref } from 'vue';

import {
  $t,
  setupI18n as coreSetup,
  loadLocalesMapFromDir,
} from '@vben/locales';
import { preferences } from '@vben/preferences';

import antdEnLocale from 'ant-design-vue/es/locale/en_US';
import antdDefaultLocale from 'ant-design-vue/es/locale/zh_CN';
import dayjs from 'dayjs';

const antdLocale = ref<Locale>(antdDefaultLocale);

const modules = import.meta.glob('./langs/**/*.json');

const localesMap = loadLocalesMapFromDir(
  /\.\/langs\/([^/]+)\/(.*)\.json$/,
  modules,
);
/**
 * 加载应用特有的语言包
 * 这里也可以改造为从服务端获取翻译数据
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
    const locale = await import(`dayjs/locale/${localeName}`);
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
  await coreSetup(app, {
    defaultLocale: preferences.app.locale,
    loadMessages,
    missingWarn: !import.meta.env.PROD,
    ...options,
  });
}

export { $t, antdLocale, setupI18n };
