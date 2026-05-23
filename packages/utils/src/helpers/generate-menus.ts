import type { Router, RouteRecordRaw } from 'vue-router';

import type {
  AppRouteRecordRaw,
  ExRouteRecordRaw,
  MenuRecordRaw,
  RouteMeta,
  RouteRecordStringComponent,
} from '@vben-core/typings';

import { filterTree, isHttpUrl, mapTree } from '@vben-core/shared/utils';

/**
 * 根据 routes 生成菜单列表
 * @param routes - 路由配置列表
 * @param router - Vue Router 实例
 * @returns 生成的菜单列表
 */
function generateMenus(
  routes: RouteRecordRaw[],
  router: Router,
): MenuRecordRaw[] {
  // 将路由列表转换为一个以 name 为键的对象映射
  const finalRoutesMap: { [key: string]: string } = Object.fromEntries(
    router.getRoutes().map(({ name, path }) => [name, path]),
  );

  let menus = mapTree<ExRouteRecordRaw, MenuRecordRaw>(routes, (route) => {
    // 获取最终的路由路径
    const path = finalRoutesMap[route.name as string] ?? route.path ?? '';

    const {
      meta = {} as RouteMeta,
      name: routeName,
      redirect,
      children = [],
    } = route;
    const {
      activeIcon,
      badge,
      badgeType,
      badgeVariants,
      hideChildrenInMenu = false,
      icon,
      link,
      order,
      title = '',
    } = meta;

    // 确保菜单名称不为空
    const name = (title || routeName || '') as string;

    // 处理子菜单
    const resultChildren = hideChildrenInMenu
      ? []
      : ((children as MenuRecordRaw[]) ?? []);

    // 设置子菜单的父子关系
    if (resultChildren.length > 0) {
      resultChildren.forEach((child) => {
        child.parents = [...(route.parents ?? []), path];
        child.parent = path;
      });
    }

    // 确定最终路径
    const resultPath = hideChildrenInMenu ? redirect || path : link || path;

    return {
      activeIcon,
      badge,
      badgeType,
      badgeVariants,
      icon,
      i18n: meta.i18n,
      name,
      order,
      parent: route.parent,
      parents: route.parents,
      path: resultPath,
      show: !meta.hideInMenu,
      children: resultChildren,
    };
  });

  // 对菜单进行排序，避免order=0时被替换成999的问题
  menus = menus.sort((a, b) => (a?.order ?? 999) - (b?.order ?? 999));

  // 过滤掉隐藏的菜单项
  return filterTree(menus, (menu) => !!menu.show);
}

/**
 * 转换后端菜单数据为路由数据
 * @param menuList 后端菜单数据
 * @param parent 父级菜单
 * @returns 路由数据
 */
function convertServerMenuToRouteRecordStringComponent(
  menuList: AppRouteRecordRaw[],
  parent = '',
): RouteRecordStringComponent[] {
  const menus: RouteRecordStringComponent[] = [];
  menuList.forEach((menu) => {
    // 处理顶级链接菜单
    if (isHttpUrl(menu.path) && menu.parentId === 0) {
      const urlMenu: RouteRecordStringComponent = {
        component: 'IFrameView',
        meta: {
          hideInMenu: !menu.visible || !menu.alwaysShow,
          icon: menu.icon,
          link: menu.path,
          orderNo: menu.sort,
          title: menu.name,
        },
        name: menu.name,
        path: `/${menu.path}/index`,
      };
      menus.push(urlMenu);
      return;
    }
    // sidebar === false → 无侧边栏布局（优先级最高，先处理）
    // 有子菜单 → StandaloneLayout；叶子节点 → 打标记让它不被 BasicLayout 包裹
    if (!menu.sidebar) {
      console.log('[MENU] sidebar=false:', menu.name, {
        hasChildren: !!(menu.children && menu.children.length > 0),
        childrenCount: menu.children?.length ?? 0,
      });
      if (menu.children && menu.children.length > 0) {
        menu.component = 'StandaloneLayout';
      }
      // 叶子节点也打标记，让 accessible.ts 把路由拎出来作为顶层路由
      (menu as any)._noBasicLayout = true;
    } else if (menu.children && menu.parentId === 0) {
      // 顶级菜单有 children → BasicLayout
      menu.component = 'BasicLayout';
    } else if (menu.component === 'Layout') {
      menu.component = 'BasicLayout';
    } else if (menu.children && menu.parentId !== 0) {
      // 非顶级菜单有 children → 空（作为布局壳）
      menu.component =
        menu.children.length > 0 ? '' : (menu.component as string);
    }
    // path
    if (parent) {
      menu.path = `${parent}/${menu.path}`;
    }

    if (!menu.path.startsWith('/')) {
      menu.path = `/${menu.path}`;
    }

    const buildMenu: RouteRecordStringComponent = {
      component: menu.component,
      meta: {
        hideInMenu: !menu.visible || !menu.alwaysShow,
        icon: menu.icon,
        i18n: menu.i18n,
        keepAlive: menu.keepAlive,
        openInNewWindow: menu.newWindows,
        orderNo: menu.sort,
        title: menu.name,
      },
      name: menu.name + menu.id, // add by YY：防止 name 重复，加上 id
      path: menu.path,
    };

    // 传递 _noBasicLayout 标记
    if ((menu as any)._noBasicLayout) {
      (buildMenu as any)._noBasicLayout = true;
    }

    if (menu.children && menu.children.length > 0) {
      buildMenu.children = convertServerMenuToRouteRecordStringComponent(
        menu.children,
        menu.path,
      );
    }
    menus.push(buildMenu);
  });
  return menus;
}

export { convertServerMenuToRouteRecordStringComponent, generateMenus };
