/**
 * @zh_CN 登录页面 url 地址
 */
export const LOGIN_PATH = '/auth/login';

export interface LanguageOption {
  label: string;
  value: string;
}

/** i18n 远程消息缓存 key 前缀 */
export const I18N_CACHE_PREFIX = 'i18n_messages_';

/**
 * Supported languages
 */
export const SUPPORT_LANGUAGES: LanguageOption[] = [
  {
    label: '简体中文',
    value: 'zh-CN',
  },
  {
    label: 'English',
    value: 'en-US',
  },
];

export interface LayoutConfig {
  isDefault?: boolean; // 是否是默认布局，推荐root，如果root不是默认布局，他还是会走默认布局
  layout: string; // 布局名称
  name: string; // 名称
  path: string; // 路由地址
}

export const DEFAULT_LAYOUT_CONFIG: LayoutConfig[] = [
  {
    name: 'Root',
    path: '/',
    layout: 'BasicLayout',
    isDefault: true,
  },
  {
    name: 'StandaloneRoot',
    path: '/standalone',
    layout: 'StandaloneLayout',
    isDefault: false,
  },
];
