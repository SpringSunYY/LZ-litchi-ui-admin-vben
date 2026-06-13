<script setup lang="ts">
import type { SupportedLanguagesType } from '@vben/locales';

import { computed, onMounted, ref, watch } from 'vue';

import { SUPPORT_LANGUAGES } from '@vben/constants';
import { Languages } from '@vben/icons';
import {
  $t,
  cachedLocaleList,
  clearI18nCaches,
  i18nLoading,
  loadLocaleMessages,
} from '@vben/locales';
import { preferences, updatePreferences } from '@vben/preferences';

import { alert, confirm } from '@vben-core/popup-ui';
import { VbenDropdownRadioMenu, VbenIconButton } from '@vben-core/shadcn-ui';

import { Loader2, Trash2 } from 'lucide-vue-next';

defineOptions({
  name: 'LanguageToggle',
});

/** 后端返回的地区选项 */
const menuItems = ref<Array<{ label: string; value: string }>>([]);

/** 反向映射：框架格式 -> 后端格式 */
const reverseLocaleMap = ref<Record<string, string>>({});

/** 默认语言的后端格式（后端 isDefault === 0，例如 zh_CN） */
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
    // 优先使用 bootstrap 阶段已缓存的语言列表，避免重复调用 API
    const list = cachedLocaleList.value;
    if (list.length === 0) return;

    menuItems.value = list.map((item) => ({
      label: item.localeName ?? '',
      value: item.locale ?? '',
    }));

    const reverse: Record<string, string> = {};
    let defaultLang = '';

    for (const item of list) {
      const backend = item.locale ?? '';
      const framework = toFrameworkLocale(backend);
      reverse[framework] = backend;
      if (item.isDefault === 0) {
        defaultLang = backend;
      }
    }

    reverseLocaleMap.value = reverse;
    defaultBackendLocale.value = defaultLang;
  } catch {
    // 认证失败时不加载后端菜单，使用默认选项
  }
}

/** 清除所有 i18n 缓存 */
async function clearI18nCache() {
  await confirm({
    title: $t('ui.menu.clearCache'),
    content: $t('ui.alert.clearCacheConfirm'),
    icon: 'warning',
  });

  const count = clearI18nCaches();

  const defaultLang = toFrameworkLocale(defaultBackendLocale.value);
  updatePreferences({ app: { locale: defaultLang } });
  syncCurrentValue();

  await alert({
    content: $t('ui.alert.clearCacheSuccess', { count }),
    icon: 'success',
    showCancel: false,
    confirmText: $t('ui.common.confirm'),
  });

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
  await loadLocaleMessages(lang);
}

/** 当前选中的后端格式 value */
const currentValue = ref<string>('');
function syncCurrentValue() {
  const pref = preferences.app.locale;
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
      :loading="i18nLoading"
      @update:model-value="handleUpdate"
    >
      <VbenIconButton>
        <Loader2
          v-if="i18nLoading"
          class="text-foreground size-4 animate-spin"
        />
        <Languages v-else class="text-foreground size-4" />
      </VbenIconButton>
    </VbenDropdownRadioMenu>
  </div>
</template>
