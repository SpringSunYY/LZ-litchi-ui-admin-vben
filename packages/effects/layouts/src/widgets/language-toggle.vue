<script setup lang="ts">
import type { SupportedLanguagesType } from '@vben/locales';

import { computed, onMounted, ref, watch } from 'vue';

import { SUPPORT_LANGUAGES } from '@vben/constants';
import { Languages } from '@vben/icons';
import { $t, loadLocaleMessages } from '@vben/locales';
import { preferences, updatePreferences } from '@vben/preferences';

import { VbenDropdownRadioMenu, VbenIconButton } from '@vben-core/shadcn-ui';

import { Trash2 } from 'lucide-vue-next';

interface I18nLocale {
  localeName?: string;
  locale?: string;
  isDefault?: number;
}

defineOptions({
  name: 'LanguageToggle',
});

/** 后端返回的地区选项 */
const menuItems = ref<Array<{ label: string; value: string }>>([]);

/** 后端 locale 与框架 SupportedLanguagesType 的映射（动态构建） */
const localeMap = ref<Record<string, SupportedLanguagesType>>({});
/** 反向映射：框架格式 -> 后端格式 */
const reverseLocaleMap = ref<Record<string, string>>({});

/** 默认语言的后端格式（后端 isDefault === 1，例如 zh_CN） */
const defaultBackendLocale = ref<string>('');

/** 将后端格式转为框架格式，例如 zh_CN -> zh-CN */
function toFrameworkLocale(locale: string): SupportedLanguagesType {
  return locale.replaceAll('_', '-') as SupportedLanguagesType;
}

/** 将框架格式转回后端格式，例如 zh-CN -> zh_CN */
function toBackendLocale(locale: string): string {
  return locale.replaceAll('-', '_');
}

/** 加载后端菜单并动态构建映射 */
async function loadMenu() {
  try {
    const resp = await fetch(
      '/admin-api/infra/i18n/locale/target?localeTarget=2',
    );
    if (!resp.ok) return;
    const json = await resp.json();
    const list: I18nLocale[] = json?.data ?? [];

    menuItems.value = list.map((item: I18nLocale) => ({
      label: item.localeName ?? '',
      value: item.locale ?? '',
    }));

    // 动态构建映射
    const map: Record<string, SupportedLanguagesType> = {};
    const reverse: Record<string, string> = {};
    let defaultLang = '';

    for (const item of list) {
      const backend = item.locale ?? '';
      const framework = toFrameworkLocale(backend);
      map[backend] = framework;
      reverse[framework] = backend;
      if (item.isDefault === 1) {
        defaultLang = backend;
      }
    }

    localeMap.value = map;
    reverseLocaleMap.value = reverse;
    defaultBackendLocale.value = defaultLang;
  } catch {
    // 认证失败时不加载后端菜单，使用默认选项
  }
}

/** 清除所有 i18n 缓存 */
function clearI18nCache() {
  const prefix = 'i18n_messages_';
  const keysToRemove: string[] = [];

  for (let i = 0; i < localStorage.length; i++) {
    const key = localStorage.key(i);
    if (key && key.startsWith(prefix)) {
      keysToRemove.push(key);
    }
  }

  keysToRemove.forEach((key) => {
    localStorage.removeItem(key);
  });

  // 显示提示消息（使用国际化）
  alert($t('ui.alert.clearCacheSuccess', { count: keysToRemove.length }));

  // 延迟刷新页面以重新加载翻译
  setTimeout(() => {
    window.location.reload();
  }, 1000);
}

async function handleUpdate(value: string | undefined) {
  if (!value) return;
  const lang = toFrameworkLocale(value);
  updatePreferences({
    app: {
      locale: lang,
    },
  });
  // loadLocaleMessages 内部会自动调用 mergeRemoteMessages
  await loadLocaleMessages(lang);
}

/** 当前选中的后端格式 value */
const currentValue = ref<string>('');
function syncCurrentValue() {
  const pref = preferences.app.locale;
  // 如果有偏好，使用偏好的框架格式转换为后端格式
  if (pref) {
    currentValue.value = reverseLocaleMap.value[pref] ?? toBackendLocale(pref);
  } else if (defaultBackendLocale.value) {
    // 没有偏好，使用后端默认语言
    currentValue.value = defaultBackendLocale.value;
    const frameworkLocale = toFrameworkLocale(defaultBackendLocale.value);
    updatePreferences({ app: { locale: frameworkLocale } });
    // loadLocaleMessages 内部会自动调用 mergeRemoteMessages
    loadLocaleMessages(frameworkLocale);
  }
}

/** 构建下拉菜单项 */
const dropdownMenus = computed(() => {
  const languages =
    menuItems.value.length > 0 ? menuItems.value : SUPPORT_LANGUAGES;

  const languageMenus = languages.map((item) => ({
    label: item.label,
    value: item.value,
  }));

  return [
    ...languageMenus,
    { separator: true, label: '', value: 'separator-1' },
    {
      label: $t('ui.menu.clearCache'),
      value: 'clear-cache',
      icon: Trash2,
      handler: clearI18nCache,
    },
  ];
});

watch(
  () => preferences.app.locale,
  () => {
    syncCurrentValue();
  },
);

onMounted(async () => {
  await loadMenu();
  syncCurrentValue();
});
</script>

<template>
  <div>
    <VbenDropdownRadioMenu
      :menus="dropdownMenus"
      :model-value="currentValue"
      @update:model-value="handleUpdate"
    >
      <VbenIconButton>
        <Languages class="text-foreground size-4" />
      </VbenIconButton>
    </VbenDropdownRadioMenu>
  </div>
</template>
