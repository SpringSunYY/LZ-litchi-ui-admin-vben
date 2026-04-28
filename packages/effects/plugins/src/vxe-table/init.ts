import type { SetupVxeTable } from './types';

import { defineAsyncComponent, defineComponent, watch } from 'vue';

import { usePreferences } from '@vben/preferences';

import { useVbenForm } from '@vben-core/form-ui';

import {
  VxeButton,
  VxeCheckbox,
  VxeIcon,
  VxeInput,
  VxeLoading,
  VxeModal,
  VxeNumberInput,
  VxePager,
  VxeRadioGroup,
  VxeSelect,
  VxeTooltip,
  VxeUI,
  VxeUpload,
} from 'vxe-pc-ui';
import {
  VxeColgroup,
  VxeColumn,
  VxeGrid,
  VxeTable,
  VxeToolbar,
} from 'vxe-table';

import { extendsDefaultFormatter } from './extends';

/** vxe-pc-ui 支持的语言映射（动态导入） */
const vxeLocaleMap: Record<string, () => Promise<{ default: Record<string, string> }>> = {
  'zh-CN': () => import('vxe-pc-ui/lib/language/zh-CN'),
  'zh-TW': () => import('vxe-pc-ui/lib/language/zh-CHT'),
  'en-US': () => import('vxe-pc-ui/lib/language/en-US'),
  'ja-JP': () => import('vxe-pc-ui/lib/language/ja-JP'),
  'ko-KR': () => import('vxe-pc-ui/lib/language/ko-KR'),
  'es-ES': () => import('vxe-pc-ui/lib/language/es-ES'),
  'fr-FR': () => import('vxe-pc-ui/lib/language/fr-FR'),
  'de-DE': () => import('vxe-pc-ui/lib/language/de-DE'),
  'ru-RU': () => import('vxe-pc-ui/lib/language/ru-RU'),
  'pt-BR': () => import('vxe-pc-ui/lib/language/pt-BR'),
  'it-IT': () => import('vxe-pc-ui/lib/language/it-IT'),
  'vi-VN': () => import('vxe-pc-ui/lib/language/vi-VN'),
  'th-TH': () => import('vxe-pc-ui/lib/language/th-TH'),
  'id-ID': () => import('vxe-pc-ui/lib/language/id-ID'),
  'uk-UA': () => import('vxe-pc-ui/lib/language/uk-UA'),
};

// 是否加载过
let isInit = false;

// eslint-disable-next-line import/no-mutable-exports
export let useTableForm: typeof useVbenForm;

// 部分组件，如果没注册，vxe-table 会报错，这里实际没用组件，只是为了不报错，同时可以减少打包体积
const createVirtualComponent = (name = '') => {
  return defineComponent({
    name,
  });
};

export function initVxeTable() {
  if (isInit) {
    return;
  }

  VxeUI.component(VxeTable);
  VxeUI.component(VxeColumn);
  VxeUI.component(VxeColgroup);
  VxeUI.component(VxeGrid);
  VxeUI.component(VxeToolbar);

  VxeUI.component(VxeButton);
  VxeUI.component(VxeCheckbox);
  VxeUI.component(createVirtualComponent('VxeForm'));
  VxeUI.component(VxeIcon);
  VxeUI.component(VxeInput);
  VxeUI.component(VxeLoading);
  VxeUI.component(VxeModal);
  VxeUI.component(VxeNumberInput);
  VxeUI.component(VxePager);
  VxeUI.component(VxeRadioGroup);
  VxeUI.component(VxeSelect);
  VxeUI.component(VxeTooltip);
  VxeUI.component(VxeUpload);

  isInit = true;
}

// 异步导出 vxe-table 相关组件提供给需要单独使用 vxe-table 的场景
const AsyncVxeTable = defineAsyncComponent(() =>
  import('vxe-table').then((mod) => mod.VxeTable),
);
const AsyncVxeColumn = defineAsyncComponent(() =>
  import('vxe-table').then((mod) => mod.VxeColumn),
);
const AsyncVxeToolbar = defineAsyncComponent(() =>
  import('vxe-table').then((mod) => mod.VxeToolbar),
);
export const AsyncComponents = [AsyncVxeTable, AsyncVxeColumn, AsyncVxeToolbar];

/** 动态加载 vxe-pc-ui 的语言包 */
async function loadVxeLocale(locale: string) {
  const loader = vxeLocaleMap[locale];
  if (!loader) {
    // 未知的语言，回退到英语
    const enUS = await import('vxe-pc-ui/lib/language/en-US');
    return enUS.default;
  }

  try {
    const module = await loader();
    return module.default;
  } catch {
    // 加载失败，回退到英语
    const enUS = await import('vxe-pc-ui/lib/language/en-US');
    return enUS.default;
  }
}

export function setupVbenVxeTable(setupOptions: SetupVxeTable) {
  const { configVxeTable, useVbenForm } = setupOptions;

  initVxeTable();
  useTableForm = useVbenForm;

  const { isDark, locale } = usePreferences();

  watch(
    [() => isDark.value, () => locale.value],
    async ([isDarkValue, localeValue]) => {
      VxeUI.setTheme(isDarkValue ? 'dark' : 'light');
      const localeMessages = await loadVxeLocale(localeValue);
      VxeUI.setI18n(localeValue, localeMessages);
      VxeUI.setLanguage(localeValue);
    },
    {
      immediate: true,
    },
  );

  extendsDefaultFormatter(VxeUI);

  configVxeTable(VxeUI);
}
