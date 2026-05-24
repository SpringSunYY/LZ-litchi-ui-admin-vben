import type { RouteRecordRaw } from 'vue-router';
import { $t } from '#/locales';

// OA请假相关路由配置
const routes: RouteRecordRaw[] = [
  {
    path: '/bpm/oa',
    name: 'OALeave',
    meta: {
      title: 'OA请假',
      i18n: 'bpm.oa.menu',
      hideInMenu: true,
      redirect: '/bpm/oa/leave/index',
    },
    children: [
      {
        path: 'leave',
        name: 'OALeaveIndex',
        component: () => import('#/views/bpm/oa/leave/index.vue'),
        meta: {
          title: '请假列表',
          i18n: 'bpm.oa.leave.menu',
          activePath: '/bpm/oa/leave',
        },
      },
      {
        path: 'leave/create',
        name: 'OALeaveCreate',
        component: () => import('#/views/bpm/oa/leave/create.vue'),
        meta: {
          title: '创建请假',
          i18n: $t('ui.actionTitle.create', [$t('bpm.oa.leave.leave')]),
          activePath: '/bpm/oa/leave',
        },
      },
      {
        path: 'leave/detail',
        name: 'OALeaveDetail',
        component: () => import('#/views/bpm/oa/leave/detail.vue'),
        meta: {
          title: '请假详情',
          i18n: 'bpm.oa.leave.message.detail',
          activePath: '/bpm/oa/leave',
        },
      },
    ],
  },
];

export default routes;
