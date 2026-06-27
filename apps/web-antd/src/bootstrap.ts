import { createApp, watchEffect } from 'vue';
import VueDOMPurifyHTML from 'vue-dompurify-html';
// @ts-expect-error - vue3-print-nb 没有官方类型声明
import print from 'vue3-print-nb';

import { registerAccessDirective } from '@vben/access';
import { registerLoadingDirective } from '@vben/common-ui/es/loading';
import { preferences } from '@vben/preferences';
import { initStores } from '@vben/stores';
import '@vben/styles';
import '@vben/styles/antd';

import { useTitle } from '@vueuse/core';

import { $t, getDefaultLocaleFromBackend, setupI18n } from '#/locales';
import { setupFormCreate } from '#/plugins/form-create';

import { initComponentAdapter } from './adapter/component';
import { initSetupVbenForm } from './adapter/form';
import App from './app.vue';
import { router } from './router';

async function bootstrap(namespace: string) {
  // 初始化组件适配器
  await initComponentAdapter();

  // 初始化表单组件
  await initSetupVbenForm();

  // // 设置弹窗的默认配置
  // setDefaultModalProps({
  //   fullscreenButton: false,
  // });
  // // 设置抽屉的默认配置
  // setDefaultDrawerProps({
  //   zIndex: 1020,
  // });

  const app = createApp(App);

  // 注册v-loading指令
  registerLoadingDirective(app, {
    loading: 'loading', // 在这里可以自定义指令名称，也可以明确提供false表示不注册这个指令
    spinning: 'spinning',
  });

  // 配置 pinia-store (必须在 setupI18n 之前，因为 i18n 会调用 API)
  await initStores(app, { namespace });

  // 国际化 i18n 配置
  const backendDefault = await getDefaultLocaleFromBackend();
  const savedLocale = preferences.app.locale;
  const currentLocale = savedLocale || backendDefault;
  // fallback 永远用后端默认语言，LOCALE_FALLBACK 只是后端不可用时的最后兜底
  await setupI18n(app, {
    defaultLocale: currentLocale,
    fallbackLocale: backendDefault,
  });

  // 安装权限指令
  registerAccessDirective(app);

  // 初始化 tippy
  const { initTippy } = await import('@vben/common-ui/es/tippy');
  initTippy(app);

  // 配置路由及路由守卫
  app.use(router);

  // formCreate
  setupFormCreate(app);

  // vue-dompurify-html
  // TODO @dhb52：VueDOMPurifyHTML 是不是不用引入哈？
  app.use(VueDOMPurifyHTML);

  // 注册 v-print 指令（vue3-print-nb），供 BPM 流程详情打印使用
  app.use(print);

  // 配置Motion插件
  const { MotionPlugin } = await import('@vben/plugins/motion');
  app.use(MotionPlugin);

  // 动态更新标题
  watchEffect(() => {
    if (preferences.app.dynamicTitle) {
      const routeTitle = router.currentRoute.value.meta?.title;
      const pageTitle =
        (routeTitle ? `${$t(routeTitle)} - ` : '') + preferences.app.name;
      useTitle(pageTitle);
    }
  });

  app.mount('#app');
}

export { bootstrap };
