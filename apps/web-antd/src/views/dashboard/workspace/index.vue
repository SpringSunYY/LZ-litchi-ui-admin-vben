<script lang="ts" setup>
import type {
  WorkbenchProjectItem,
  WorkbenchQuickNavItem,
  WorkbenchTodoItem,
  WorkbenchTrendItem,
} from '@vben/common-ui';

import { computed, onMounted, ref } from 'vue';
import { useRouter } from 'vue-router';

import {
  AnalysisChartCard,
  WorkbenchHeader,
  WorkbenchPoem,
  WorkbenchProject,
  WorkbenchQuickNav,
  WorkbenchTodo,
  WorkbenchTrends,
} from '@vben/common-ui';
import { preferences } from '@vben/preferences';
import { useUserStore } from '@vben/stores';
import { openWindow } from '@vben/utils';

import { getGithubCommits } from '#/api/core/github';

import AnalyticsVisitsSource from '../analytics/analytics-visits-source.vue';
import { poems, quotes } from './verse';

const userStore = useUserStore();

const greeting = computed(() => {
  const hour = new Date().getHours();
  if (hour < 12) return '早安';
  if (hour < 18) return '下午好';
  return '晚上好';
});

const todayDate = computed(() => {
  const now = new Date();
  const year = now.getFullYear();
  const month = String(now.getMonth() + 1).padStart(2, '0');
  const day = String(now.getDate()).padStart(2, '0');
  const weekDays = [
    '星期日',
    '星期一',
    '星期二',
    '星期三',
    '星期四',
    '星期五',
    '星期六',
  ];
  const week = weekDays[now.getDay()];
  return `${year}-${month}-${day} ${week}`;
});

const quoteIndex = ref(Math.floor(Math.random() * quotes.length));

function refreshQuote() {
  quoteIndex.value = Math.floor(Math.random() * quotes.length);
}

const todayQuote = computed(() => quotes[quoteIndex.value]?.content || '');

const poemIndex = ref(Math.floor(Math.random() * poems.length));

function refreshPoem() {
  poemIndex.value = Math.floor(Math.random() * poems.length);
}

const poemItem = computed(() => poems[poemIndex.value]);

// 这是一个示例数据，实际项目中需要根据实际情况进行调整
// url 也可以是内部路由，在 navTo 方法中识别处理，进行内部跳转
// 例如：url: /dashboard/workspace
const projectItems: WorkbenchProjectItem[] = [
  {
    color: '#6DB33F',
    group: 'jdk21、vue3、若依框架',
    date: '2025-02-28',
    content: '在线云图库，团队管理图片、AI生图、退片推荐等',
    icon: 'simple-icons:imagetoolbox',
    title: 'LZ-Picture',
    url: 'https://github.com/SpringSunYY/litchi',
  },
  {
    color: '#409EFF',
    group: 'jdk21、springBoot3、芋道框架',
    date: '2026-03-23',
    content: '开发国际化、租户管理、代码生成及项目优化等',
    icon: 'ep:element-plus',
    title: 'LZ-litchi',
    url: 'https://github.com/SpringSunYY/LZ-litchi',
  },
  {
    color: '#ff4d4f',
    group: 'vue3、vben Admin、芋道框架',
    date: '2026-03-23',
    content: '开发国际化、租户管理、代码生成及项目优化等',
    icon: 'icon-park-outline:mall-bag',
    title: 'LZ-litchi-ui-admin-vben',
    url: 'https://github.com/SpringSunYY/LZ-litchi-ui-admin-vben',
  },
  {
    color: '#1890ff',
    content: '基于若依优化代码生成、MP、导入导出等',
    date: '2024-02-24',
    group: 'jdk21、springBoot3、vue3、vue2',
    icon: 'simple-icons:github',
    title: 'LZ-RuoYi',
    url: 'https://github.com/SpringSunYY/LZ-RuoYi',
  },
  {
    color: '#e18525',
    content: 'github.com/litchicode/litchi-ui-admin-vben',
    date: '2025-11-09',
    group: 'python、falsk、vue2',
    icon: 'simple-icons:python',
    title: 'RuoYi_vue_flask',
    url: 'https://github.com/SpringSunYY/RuoYi_vue_flask',
  },
  {
    color: '#2979ff',
    content: '生成uniapp代码，若依框架手机端',
    date: '2024-09-07',
    group: 'Vue3 + uniapp 管理手机端',
    icon: 'ant-design:mobile',
    title: 'LZ-RuoYi-App',
    url: 'https://github.com/SpringSunYY/LZ-RuoYi-App',
  },
];

// 同样，这里的 url 也可以使用以 http 开头的外部链接
const quickNavItems: WorkbenchQuickNavItem[] = [
  {
    color: '#1fdaca',
    icon: 'ion:home-outline',
    title: '首页',
    url: '/',
  },
  {
    color: '#ff6b6b',
    icon: 'ep:shop',
    title: '商城中心',
    url: '/mall',
  },
  {
    color: '#7c3aed',
    icon: 'tabler:ai',
    title: 'AI 大模型',
    url: '/ai/chat',
  },
  {
    color: '#3fb27f',
    icon: 'simple-icons:erpnext',
    title: 'ERP 系统',
    url: '/erp/backlog',
  },
  {
    color: '#4daf1bc9',
    icon: 'simple-icons:civicrm',
    title: 'CRM 系统',
    url: '/crm',
  },
  {
    color: '#1a73e8',
    icon: 'fa-solid:fa-list-check',
    title: 'BPM 工作流',
    url: '/bpm/task/my',
  },
];

const todoItems = ref<WorkbenchTodoItem[]>([
  {
    completed: false,
    content: `系统支持 JDK 8/17/21，Vue 2/3`,
    date: '2024-07-15 09:30:00',
    title: '技术兼容性',
  },
  {
    completed: false,
    content: `后端提供 Spring Boot 2.7/3.2 + Cloud 双架构`,
    date: '2024-08-30 14:20:00',
    title: '架构灵活性',
  },
  {
    completed: false,
    content: `全部开源，个人与企业可 100% 直接使用，无需授权`,
    date: '2024-07-25 16:45:00',
    title: '开源免授权',
  },
  {
    completed: false,
    content: `国内使用最广泛的快速开发平台，远超 10w+ 企业使用`,
    date: '2024-07-10 11:15:00',
    title: '广泛企业认可',
  },
]);

const trendItems = ref<WorkbenchTrendItem[]>([]);

onMounted(async () => {
  trendItems.value = await getGithubCommits();
});

const router = useRouter();

// 这是一个示例方法，实际项目中需要根据实际情况进行调整
// This is a sample method, adjust according to the actual project requirements
function navTo(nav: WorkbenchProjectItem | WorkbenchQuickNavItem) {
  if (nav.url?.startsWith('http')) {
    openWindow(nav.url);
    return;
  }
  if (nav.url?.startsWith('/')) {
    router.push(nav.url).catch((error) => {
      console.error('Navigation failed:', error);
    });
  } else {
    console.warn(`Unknown URL for navigation item: ${nav.title} -> ${nav.url}`);
  }
}
</script>

<template>
  <div class="p-5">
    <WorkbenchHeader
      :avatar="userStore.userInfo?.avatar || preferences.app.defaultAvatar"
    >
      <template #title>
        {{ greeting }}, {{ userStore.userInfo?.nickname }}, 开始您一天的工作吧！
      </template>
      <template #description>
        今天是{{ todayDate }}！
        <br />
        <span class="cursor-pointer" @click="refreshQuote">{{
          todayQuote
        }}</span>
      </template>
    </WorkbenchHeader>
    <div class="mt-5 flex flex-col lg:flex-row">
      <div class="mr-4 w-full lg:w-3/5">
        <WorkbenchProject :items="projectItems" title="项目" @click="navTo" />
        <WorkbenchTrends :items="trendItems" class="mt-5" title="最新动态" />
      </div>
      <div class="w-full lg:w-2/5">
        <WorkbenchQuickNav
          :items="quickNavItems"
          class="mt-5 lg:mt-0"
          title="快捷导航"
          @click="navTo"
        />
        <WorkbenchPoem :item="poemItem" class="mt-5" @refresh="refreshPoem" />
        <WorkbenchTodo :items="todoItems" class="mt-5" title="待办事项" />
        <AnalysisChartCard class="mt-5" title="访问来源">
          <AnalyticsVisitsSource />
        </AnalysisChartCard>
      </div>
    </div>
  </div>
</template>
