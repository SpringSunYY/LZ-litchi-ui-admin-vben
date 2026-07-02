import type { RouteRecordRaw } from 'vue-router';

const routes: RouteRecordRaw[] = [
  {
    path: '/ai',
    name: 'Ai',
    meta: {
      title: 'Ai',
      hideInMenu: true,
    },
    children: [
      {
        path: 'image/square',
        component: () => import('#/views/ai/image/square/index.vue'),
        name: 'AiImageSquare',
        meta: {
          noCache: true,
          hidden: true,
          canTo: true,
          title: '绘图作品',
          i18n: 'ai.image.square.menu',
          activePath: '/ai/image',
        },
      },
      {
        path: 'knowledge/document',
        component: () => import('#/views/ai/knowledge/document/index.vue'),
        name: 'AiKnowledgeDocument',
        meta: {
          noCache: true,
          hidden: true,
          canTo: true,
          title: '知识库文档',
          i18n: 'ai.knowledge.document.menu',
          activePath: '/ai/knowledge',
        },
      },
      {
        path: 'knowledge/document/create',
        component: () => import('#/views/ai/knowledge/document/form/index.vue'),
        name: 'AiKnowledgeDocumentCreate',
        meta: {
          noCache: true,
          hidden: true,
          canTo: true,
          title: '创建文档',
          i18n: 'ai.knowledge.document.create.menu',
          activePath: '/ai/knowledge',
        },
      },
      {
        path: 'knowledge/document/update',
        component: () => import('#/views/ai/knowledge/document/form/index.vue'),
        name: 'AiKnowledgeDocumentUpdate',
        meta: {
          noCache: true,
          hidden: true,
          canTo: true,
          title: '修改文档',
          i18n: 'ai.knowledge.document.update.menu',
          activePath: '/ai/knowledge',
        },
      },
      {
        path: 'knowledge/retrieval',
        component: () =>
          import('#/views/ai/knowledge/knowledge/retrieval/index.vue'),
        name: 'AiKnowledgeRetrieval',
        meta: {
          noCache: true,
          hidden: true,
          canTo: true,
          title: '文档召回测试',
          i18n: 'ai.knowledge.retrieval.menu',
          activePath: '/ai/knowledge',
        },
      },
      {
        path: 'knowledge/segment',
        component: () => import('#/views/ai/knowledge/segment/index.vue'),
        name: 'AiKnowledgeSegment',
        meta: {
          noCache: true,
          hidden: true,
          canTo: true,
          title: '知识库分段',
          i18n: 'ai.knowledge.segment.menu',
          activePath: '/ai/knowledge',
        },
      },
      {
        path: String.raw`workflow/create/:id(\d+)/:type(update|create)`,
        component: () => import('#/views/ai/workflow/form/index.vue'),
        name: 'AiWorkflowCreate',
        meta: {
          noCache: true,
          hidden: true,
          canTo: true,
          title: '设计 AI 工作流',
          i18n: 'ai.workflow.design.menu',
          activePath: '/ai/workflow',
        },
      },
      {
        path: 'console/workflow/:type/:id',
        component: () => import('#/views/ai/workflow/form/index.vue'),
        name: 'AiWorkflowUpdate',
        meta: {
          noCache: true,
          hidden: true,
          canTo: true,
          title: '设计 AI 工作流',
          i18n: 'ai.workflow.design.menu',
          activePath: '/ai/workflow',
        },
      },
    ],
  },
];

export default routes;
