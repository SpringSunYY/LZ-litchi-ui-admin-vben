import type { Component, DefineComponent } from 'vue';

import type {
  AccessModeType,
  GenerateMenuAndRoutesOptions,
  RouteRecordRaw,
} from '@vben/types';

import { defineComponent, h } from 'vue';

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

  // 获取根路由
  const root = router.getRoutes().find((item) => item.name === 'Root');

  // 获取 StandaloneRoot 路由
  const standaloneRoot = router
    .getRoutes()
    .find((item) => item.name === 'StandaloneRoot');

  // 递归处理路由，根据 meta.layout 注册到不同的 layout 下
  function processRoutes(
    routes: RouteRecordRaw[],
    parentLayout?: string,
  ): RouteRecordRaw[] {
    const result: RouteRecordRaw[] = [];
    for (const route of routes) {
      const layout = route.meta?.layout || parentLayout;
      const isStandalone =
        (route as any)._isStandalone || layout === 'StandaloneLayout';

      if (isStandalone) {
        // 注册到 StandaloneLayout
        if (standaloneRoot) {
          if (!standaloneRoot.children) {
            standaloneRoot.children = [];
          }
          standaloneRoot.children.push(route);
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

  // 将处理后的路由添加到 root.children
  for (const route of processedRoutes) {
    const index = root?.children?.findIndex((item) => item.name === route.name);
    if (index !== undefined && index !== -1 && root?.children) {
      root.children[index] = route;
    } else {
      root?.children?.push(route);
    }
  }

  if (root) {
    if (root.name) {
      router.removeRoute(root.name);
    }
    router.addRoute(root);
  }
  if (standaloneRoot) {
    if (standaloneRoot.name) {
      router.removeRoute(standaloneRoot.name);
    }
    router.addRoute(standaloneRoot);
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

    // 如果有redirect或者没有子路由，则直接返回
    if (route.redirect || !route.children || route.children.length === 0) {
      return route;
    }
    const firstChild = route.children[0];

    // StandaloneLayout 不设 redirect，让它的 <RouterView /> 直接渲染 children
    const compName = route.component
      ? isFunction(route.component)
        ? String((route.component as any).name)
        : 'unknown'
      : 'unknown';
    if (compName === 'StandaloneLayout') {
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
