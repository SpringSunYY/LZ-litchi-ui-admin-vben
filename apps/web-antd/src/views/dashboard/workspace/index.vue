<script lang="ts" setup>
import type { WorkbenchTrendItem } from '@vben/common-ui';

import type { ProjectItem, QuickNavItem } from './index';

import { computed, onMounted, ref } from 'vue';
import { useRouter } from 'vue-router';

import {
  WorkbenchContact,
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

import { poems, projectItems, quickNavItems, quotes, todoItems } from './index';

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

const trendItems = ref<WorkbenchTrendItem[]>([]);

onMounted(async () => {
  trendItems.value = await getGithubCommits();
});

const router = useRouter();

// 这是一个示例方法，实际项目中需要根据实际情况进行调整
// This is a sample method, adjust according to the actual project requirements
function navTo(nav: ProjectItem | QuickNavItem) {
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
        <WorkbenchProject
          :items="projectItems"
          title="开源项目"
          @click="navTo"
        />
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
        <WorkbenchContact class="mt-5" title="联系我们" />
        <WorkbenchTodo :items="todoItems" class="mt-5" title="待办事项" />
      </div>
    </div>
  </div>
</template>
