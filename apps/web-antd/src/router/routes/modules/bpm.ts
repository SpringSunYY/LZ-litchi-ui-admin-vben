import type { RouteRecordRaw } from 'vue-router';

const routes: RouteRecordRaw[] = [
  {
    path: '/bpm',
    name: 'bpm',
    meta: {
      i18n: 'bpm.bpm.menu',
      title: '工作流',
      hideInMenu: true,
    },
    children: [
      {
        path: 'task',
        name: 'BpmTask',
        meta: {
          title: '审批中心',
          i18n: 'bpm.task.approvalCenter',
          icon: 'ant-design:history-outlined',
        },
        children: [
          {
            path: 'my',
            name: 'BpmTaskMy',
            component: () => import('#/views/bpm/processInstance/index.vue'),
            meta: {
              title: '我的流程',
              i18n: 'bpm.processInstance.myList',
            },
          },
        ],
      },
      {
        path: 'process-instance/detail',
        component: () => import('#/views/bpm/processInstance/detail/index.vue'),
        name: 'BpmProcessInstanceDetail',
        meta: {
          title: '流程详情',
          i18n: 'bpm.processInstance.detail.title',
          activePath: '/bpm/task/my',
          icon: 'ant-design:history-outlined',
          keepAlive: false,
          hideInMenu: true,
        },
        props: (route) => {
          return {
            id: route.query.id,
            taskId: route.query.taskId,
            activityId: route.query.activityId,
          };
        },
      },
      {
        path: '/bpm/manager/form/edit',
        name: 'BpmFormEditor',
        component: () => import('#/views/bpm/form/designer/index.vue'),
        meta: {
          title: '编辑流程表单',
          i18n: 'bpm.form.action.update',
          activePath: '/bpm/manager/form',
        },
        props: (route) => {
          return {
            id: route.query.id,
            type: route.query.type,
            copyId: route.query.copyId,
          };
        },
      },
      {
        path: 'manager/model/create',
        component: () => import('#/views/bpm/model/form/index.vue'),
        name: 'BpmModelCreate',
        meta: {
          title: '创建流程',
          i18n: 'bpm.model.message.create',
          activePath: '/bpm/manager/model',
          icon: 'carbon:flow-connection',
          hideInMenu: true,
          keepAlive: true,
        },
      },
      {
        path: 'manager/model/:type/:id',
        component: () => import('#/views/bpm/model/form/index.vue'),
        name: 'BpmModelUpdate',
        meta: {
          title: '修改流程',
          i18n: 'bpm.model.action.update',
          activePath: '/bpm/manager/model',
          icon: 'carbon:flow-connection',
          hideInMenu: true,
          keepAlive: true,
        },
      },
      {
        path: 'manager/definition',
        component: () => import('#/views/bpm/model/definition/index.vue'),
        name: 'BpmProcessDefinition',
        meta: {
          title: '流程定义',
          i18n: 'bpm.definition.menu',
          activePath: '/bpm/manager/model',
          icon: 'carbon:flow-modeler',
          hideInMenu: true,
          keepAlive: true,
        },
      },
    ],
  },
];

export default routes;
