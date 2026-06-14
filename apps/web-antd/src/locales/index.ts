import type { Locale } from 'ant-design-vue/es/locale';

import type { SetupI18nOptions } from '@vben/locales';

import { ref } from 'vue';

import {
  $t,
  clearI18nCaches,
  getLocaleInfo,
  i18nLoading,
  LOCALE_FALLBACK,
  mergeRemoteMessages,
  getDefaultLocaleFromBackend as pkgGetDefaultLocaleFromBackend,
  setupI18n as pkgSetupI18n,
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

import {
  getI18nLocale,
  getI18nLocaleMessage,
  getI18nUpdateKey,
} from '#/api/infra/i18n/i18n';

export {
  $t,
  clearI18nCaches,
  getLocaleInfo,
  i18nLoading,
  LOCALE_FALLBACK,
  mergeRemoteMessages,
};

export { type SetupI18nOptions };

const antdLocale = ref<Locale>(antdDefaultLocale);

const appModules = import.meta.glob('./langs/**/*.json');

async function loadDayjsLocale(lang: string) {
  const map: Record<string, () => void> = {
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
  const fn = map[lang];
  fn ? fn() : dayjs.locale(dayjsLocaleZhCn);
}

async function loadAntdLocale(lang: string) {
  const map: Record<string, () => Promise<{ default: Locale }>> = {
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
  const loader = map[lang];
  if (!loader) {
    antdLocale.value = antdDefaultLocale;
    return;
  }
  try {
    const mod = await loader();
    antdLocale.value = mod.default;
  } catch {
    antdLocale.value = antdDefaultLocale;
  }
}

async function loadThirdPartyMessage(lang: string) {
  await Promise.all([loadAntdLocale(lang), loadDayjsLocale(lang)]);
}

export { antdLocale };

export async function setupI18n(
  app: Parameters<typeof pkgSetupI18n>[0],
  options?: SetupI18nOptions,
) {
  return pkgSetupI18n(app, {
    ...options,
    appModules,
    thirdPartySetup: loadThirdPartyMessage,
    getI18nLocaleApi: getI18nLocale,
    getI18nLocaleMessageApi: getI18nLocaleMessage,
    getI18nUpdateKeyApi: getI18nUpdateKey,
  });
}

export async function getDefaultLocaleFromBackend() {
  return pkgGetDefaultLocaleFromBackend({
    getI18nLocaleApi: getI18nLocale,
  });
}
