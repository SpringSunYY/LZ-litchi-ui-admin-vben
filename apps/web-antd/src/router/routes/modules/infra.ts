import type { RouteRecordRaw } from 'vue-router';

const routes: RouteRecordRaw[] = [
  {
    path: '/infra/job/job-log',
    component: () => import('#/views/infra/job/logger/index.vue'),
    name: 'InfraJobLog',
    meta: {
      title: '调度日志',
      i18n: 'infra.job.log.menu',
      icon: 'ant-design:history-outlined',
      activePath: '/infra/job',
      keepAlive: false,
      hideInMenu: true,
    },
  },
  {
    path: '/codegen',
    name: 'CodegenEdit',
    meta: {
      title: '代码生成',
      i18n: 'infra.codegen.menu',
      icon: 'ic:baseline-view-in-ar',
      keepAlive: true,
      hideInMenu: true,
    },
    children: [
      {
        path: '/codegen/edit',
        name: 'InfraCodegenEdit',
        component: () => import('#/views/infra/codegen/edit/index.vue'),
        meta: {
          title: '修改生成配置',
          i18n: 'infra.codegen.action.update.menu',
          activeMenu: '/infra/codegen',
        },
      },
    ],
  },
];

export default routes;
