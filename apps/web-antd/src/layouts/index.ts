const BasicLayout = () => import('./basic.vue');
const AuthPageLayout = () => import('./auth.vue');
const StandaloneLayout = () => import('./standalone.vue');

const IFrameView = () => import('@vben/layouts').then((m) => m.IFrameView);

export { AuthPageLayout, BasicLayout, IFrameView, StandaloneLayout };
