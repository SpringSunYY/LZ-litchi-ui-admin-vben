import type { Component, DefineComponent } from 'vue';

import type { LayoutConfig } from '@vben/constants';
import type {
  AccessModeType,
  GenerateMenuAndRoutesOptions,
  RouteRecordRaw,
} from '@vben/types';

import { defineComponent, h } from 'vue';

import { DEFAULT_LAYOUT_CONFIG } from '@vben/constants';
import {
  cloneDeep,
  generateMenus,
  generateRoutesByBackend,
  generateRoutesByFrontend,
  isFunction,
  isString,
  mapTree,
} from '@vben/utils';

async function generateAccessible(
  mode: AccessModeType,
  options: GenerateMenuAndRoutesOptions,
) {
  const { router } = options;

  options.routes = cloneDeep(options.routes);
  // 生成路由
  const accessibleRoutes = await generateRoutes(mode, options);

  // cloneDeep 一份用于路由注册处理，不影响 generateMenus 用的 accessibleRoutes
  const routesForRouter = cloneDeep(accessibleRoutes);

  // 构建布局查找 Map
  const layoutMap = new Map<string, LayoutConfig>(
    DEFAULT_LAYOUT_CONFIG.map((c) => [c.layout, c]),
  );

  // 获取所有根路由
  const layoutRoots: Record<string, RouteRecordRaw> = {};
  for (const config of DEFAULT_LAYOUT_CONFIG) {
    const found = router.getRoutes().find((item) => item.name === config.name);
    if (found) {
      layoutRoots[config.name] = found;
    }
  }

  // 递归处理路由，根据 meta.layout 注册到不同的 layout 下
  function processRoutes(
    routes: RouteRecordRaw[],
    parentLayout?: string,
  ): RouteRecordRaw[] {
    const result: RouteRecordRaw[] = [];
    for (const route of routes) {
      const layout = route.meta?.layout || parentLayout;

      // 查找匹配的布局配置
      const layoutConfig = layoutMap.get(<string>layout || '');
      // 不匹配默认
      const isNoDefaultLayout = layoutConfig && !layoutConfig.isDefault;
      if (isNoDefaultLayout) {
        // 注册到对应布局
        const layoutRoot = layoutRoots[layoutConfig.name];
        if (layoutRoot) {
          if (!layoutRoot.children) {
            layoutRoot.children = [];
          }
          layoutRoot.children.push(route);
        }
        // 不加入 result，即从父级剥离
      } else {
        // 递归处理子路由
        if (route.children && route.children.length > 0) {
          // @ts-ignore 递归处理子路由
          route.children = processRoutes(route.children, layout);
          delete route.component;
        }
        result.push(route);
      }
    }
    return result;
  }

  const processedRoutes = processRoutes(routesForRouter);

  // 获取默认布局配置
  const defaultLayout = DEFAULT_LAYOUT_CONFIG.find(
    (c: LayoutConfig) => c.isDefault,
  );
  const defaultRoot = defaultLayout
    ? layoutRoots[defaultLayout.name]
    : undefined;

  // 将处理后的路由添加到默认布局的 children
  for (const route of processedRoutes) {
    if (!defaultRoot?.children) continue;
    const index = defaultRoot.children.findIndex(
      (item: RouteRecordRaw) => item.name === route.name,
    );
    if (index !== undefined && index !== -1) {
      defaultRoot.children[index] = route;
    } else {
      defaultRoot.children.push(route);
    }
  }

  // 重新注册所有布局根路由
  for (const config of DEFAULT_LAYOUT_CONFIG) {
    const root = layoutRoots[config.name];
    if (root) {
      if (root.name) {
        router.removeRoute(root.name);
      }
      router.addRoute(root);
    }
  }

  // 生成菜单用原始 accessibleRoutes，不受路由处理影响
  const accessibleMenus = generateMenus(accessibleRoutes, options.router);

  return { accessibleMenus, accessibleRoutes };
}

/**
 * Generate routes
 * @param mode
 * @param options
 */
async function generateRoutes(
  mode: AccessModeType,
  options: GenerateMenuAndRoutesOptions,
) {
  const { forbiddenComponent, roles, routes } = options;

  let resultRoutes: RouteRecordRaw[] = routes;
  switch (mode) {
    case 'backend': {
      resultRoutes = await generateRoutesByBackend(options);
      break;
    }
    case 'frontend': {
      resultRoutes = await generateRoutesByFrontend(
        routes,
        roles || [],
        forbiddenComponent,
      );
      break;
    }
    case 'mixed': {
      const [frontend_resultRoutes, backend_resultRoutes] = await Promise.all([
        generateRoutesByFrontend(routes, roles || [], forbiddenComponent),
        generateRoutesByBackend(options),
      ]);

      resultRoutes = [...frontend_resultRoutes, ...backend_resultRoutes];
      break;
    }
  }

  /**
   * 调整路由树，做以下处理：
   * 1. 对未添加redirect的路由添加redirect
   * 2. 将懒加载的组件名称修改为当前路由的名称（如果启用了keep-alive的话）
   */
  // 构建布局查找 Map（只调用一次，开销可忽略）
  const redirectLayoutMap = new Map<string, LayoutConfig>(
    DEFAULT_LAYOUT_CONFIG.map((c) => [c.layout, c]),
  );

  resultRoutes = mapTree(resultRoutes, (route) => {
    // 重新包装component，使用与路由名称相同的name以支持keep-alive的条件缓存。
    if (
      route.meta?.keepAlive &&
      isFunction(route.component) &&
      route.name &&
      isString(route.name)
    ) {
      const originalComponent = route.component as () => Promise<{
        default: Component | DefineComponent;
      }>;
      route.component = async () => {
        const component = await originalComponent();
        if (!component.default) return component;
        return defineComponent({
          name: route.name as string,
          setup(props, { attrs, slots }) {
            return () => h(component.default, { ...props, ...attrs }, slots);
          },
        });
      };
    }

    // 根据布局配置决定是否设 redirect
    const compName = route.component
      ? isFunction(route.component)
        ? String((route.component as any).name)
        : 'unknown'
      : 'unknown';
    // O(1) 查找该组件名对应的布局配置
    const layoutConfigForRedirect = redirectLayoutMap.get(compName);
    // 如果有 redirect 或者没有子路由，则直接返回
    if (route.redirect || !route.children || route.children.length === 0) {
      return route;
    }
    const firstChild = route.children[0];

    // 如果是布局路由，不设 redirect，让它的 <RouterView /> 直接渲染 children
    if (layoutConfigForRedirect) {
      return route;
    }

    // 如果子路由不是以/开头，则直接返回,这种情况需要计算全部父级的path才能得出正确的path，这里不做处理
    if (!firstChild?.path || !firstChild.path.startsWith('/')) {
      return route;
    }

    route.redirect = firstChild.path;
    return route;
  });

  return resultRoutes;
}

export { generateAccessible };
