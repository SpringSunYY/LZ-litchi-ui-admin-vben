import type { RouteRecordRaw } from 'vue-router';

import type { MenuRecordRaw } from '@vben-core/typings';

import { acceptHMRUpdate, defineStore } from 'pinia';

type AccessToken = null | string;

interface AccessState {
  /**
   * 权限码
   */
  accessCodes: string[];
  /**
   * 可访问的菜单列表
   */
  accessMenus: MenuRecordRaw[];
  /**
   * 可访问的路由列表
   */
  accessRoutes: RouteRecordRaw[];
  /**
   * 登录 accessToken
   */
  accessToken: AccessToken;
  /**
   * 是否已经检查过权限
   */
  isAccessChecked: boolean;
  /**
   * 是否锁屏状态
   */
  isLockScreen: boolean;
  /**
   * 锁屏密码
   */
  lockScreenPassword?: string;
  /**
   * 登录是否过期
   */
  loginExpired: boolean;
  /**
   * 登录 accessToken
   */
  refreshToken: AccessToken;
  /**
   * 登录租户编号
   */
  tenantCode: null | string;
  /**
   * 登录租户编号
   */
  tenantId: null | number;
  /**
   * 访问租户编号
   */
  visitTenantId: null | number;
}

const PERSIST_KEY = 'core-access-tenant';

/**
 * 手动持久化租户信息
 */
function loadPersistedTenant(): {
  tenantCode: null | string;
  tenantId: null | number;
} {
  try {
    const raw = localStorage.getItem(PERSIST_KEY);
    if (raw) {
      return JSON.parse(raw);
    }
  } catch {
    // ignore
  }
  return { tenantCode: null, tenantId: null };
}

function savePersistedTenant(
  tenantCode: null | string,
  tenantId: null | number,
) {
  try {
    localStorage.setItem(PERSIST_KEY, JSON.stringify({ tenantCode, tenantId }));
  } catch {
    // ignore
  }
}

/**
 * @zh_CN 访问权限相关
 */
export const useAccessStore = defineStore('core-access', {
  actions: {
    getMenuByPath(path: string) {
      function findMenu(
        menus: MenuRecordRaw[],
        path: string,
      ): MenuRecordRaw | undefined {
        for (const menu of menus) {
          if (menu.path === path) {
            return menu;
          }
          if (menu.children) {
            const matched = findMenu(menu.children, path);
            if (matched) {
              return matched;
            }
          }
        }
      }

      return findMenu(this.accessMenus, path);
    },
    lockScreen(password: string) {
      this.isLockScreen = true;
      this.lockScreenPassword = password;
      savePersistedTenant(this.tenantCode, this.tenantId);
    },
    setAccessCodes(codes: string[]) {
      this.accessCodes = codes;
    },
    setAccessMenus(menus: MenuRecordRaw[]) {
      this.accessMenus = menus;
    },
    setAccessRoutes(routes: RouteRecordRaw[]) {
      this.accessRoutes = routes;
    },
    setAccessToken(token: AccessToken) {
      this.accessToken = token;
    },
    setIsAccessChecked(isAccessChecked: boolean) {
      this.isAccessChecked = isAccessChecked;
    },
    setLoginExpired(loginExpired: boolean) {
      this.loginExpired = loginExpired;
    },
    setRefreshToken(token: AccessToken) {
      this.refreshToken = token;
    },
    setTenantId(tenantId: null | number) {
      this.tenantId = tenantId;
      savePersistedTenant(this.tenantCode, tenantId);
    },
    setVisitTenantId(visitTenantId: number) {
      this.visitTenantId = visitTenantId;
    },
    setTenantCode(tenantCode: null | string) {
      this.tenantCode = tenantCode;
      savePersistedTenant(tenantCode, this.tenantId);
    },
    unlockScreen() {
      this.isLockScreen = false;
      this.lockScreenPassword = undefined;
    },
  },
  // @ts-ignore
  state: (): AccessState => {
    const persisted = loadPersistedTenant();
    return {
      accessCodes: [],
      accessMenus: [],
      accessRoutes: [],
      accessToken: null,
      isAccessChecked: false,
      isLockScreen: false,
      lockScreenPassword: undefined,
      loginExpired: false,
      refreshToken: null,
      tenantId: persisted.tenantId,
      tenantCode: persisted.tenantCode,
      visitTenantId: null,
    };
  },
});

// 解决热更新问题
const hot = import.meta.hot;
if (hot) {
  hot.accept(acceptHMRUpdate(useAccessStore, hot));
}
