import type { RouteRecordRaw } from 'vue-router';

const routes: RouteRecordRaw[] = [
  {
    path: '/crm',
    name: 'CrmCenter',
    meta: {
      title: '客户管理',
      i18n: 'crm.customer.menu',
      icon: 'simple-icons:civicrm',
      keepAlive: true,
      hideInMenu: true,
    },
    children: [
      {
        path: 'clue/detail/:id',
        name: 'CrmClueDetail',
        meta: {
          title: '线索详情',
          i18n: 'crm.clue.detail',
          activeMenu: '/crm/clue',
          keepAlive: true,
        },
        component: () => import('#/views/crm/clue/modules/detail.vue'),
      },
      {
        path: 'customer/detail/:id',
        name: 'CrmCustomerDetail',
        meta: {
          title: '客户详情',
          i18n: 'crm.customer.detail',
          activeMenu: '/crm/customer',
          keepAlive: true,
        },
        component: () => import('#/views/crm/customer/modules/detail.vue'),
      },
      {
        path: 'business/detail/:id',
        name: 'CrmBusinessDetail',
        meta: {
          title: '商机详情',
          i18n: 'crm.business.detail',
          activeMenu: '/crm/business',
          keepAlive: true,
        },
        component: () => import('#/views/crm/business/modules/detail.vue'),
      },
      {
        path: 'contract/detail/:id',
        name: 'CrmContractDetail',
        meta: {
          title: '合同详情',
          i18n: 'crm.contract.detail',
          activeMenu: '/crm/contract',
          keepAlive: true,
        },
        component: () => import('#/views/crm/contract/modules/detail.vue'),
      },
      {
        path: 'receivable-plan/detail/:id',
        name: 'CrmReceivablePlanDetail',
        meta: {
          title: '回款计划详情',
          i18n: 'crm.receivablePlan.detail',
          activeMenu: '/crm/receivable-plan',
          keepAlive: true,
        },
        component: () =>
          import('#/views/crm/receivable/plan/modules/detail.vue'),
      },
      {
        path: 'receivable/detail/:id',
        name: 'CrmReceivableDetail',
        meta: {
          title: '回款详情',
          i18n: 'crm.receivable.detail',
          activeMenu: '/crm/receivable',
          keepAlive: true,
        },
        component: () => import('#/views/crm/receivable/modules/detail.vue'),
      },
      {
        path: 'contact/detail/:id',
        name: 'CrmContactDetail',
        meta: {
          title: '联系人详情',
          i18n: 'crm.contact.detail',
          activeMenu: '/crm/contact',
          keepAlive: true,
        },
        component: () => import('#/views/crm/contact/modules/detail.vue'),
      },
      {
        path: 'product/detail/:id',
        name: 'CrmProductDetail',
        meta: {
          title: '产品详情',
          i18n: 'crm.product.detail',
          activeMenu: '/crm/product',
          keepAlive: true,
        },
        component: () => import('#/views/crm/product/modules/detail.vue'),
      },
    ],
  },
];

export default routes;
