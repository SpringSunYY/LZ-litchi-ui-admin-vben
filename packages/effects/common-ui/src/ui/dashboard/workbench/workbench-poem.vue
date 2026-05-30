<script setup lang="ts">
import type { WorkbenchPoemItem } from '../typing';

import { computed } from 'vue';

import { IconifyIcon } from '@vben/icons';

import { Card, CardContent, CardHeader, CardTitle } from '@vben-core/shadcn-ui';

interface Props {
  item?: WorkbenchPoemItem;
}

const props = withDefaults(defineProps<Props>(), {
  item: () => ({}),
});

const emit = defineEmits<{
  refresh: [];
}>();

const cardTitle = computed(() => {
  if (props.item?.content) return props.item.title ?? '每日一诗';
  return '每日一诗';
});

const contentClass = (isSentence: boolean) => {
  return isSentence
    ? 'text-foreground/80 text-left text-xxl leading-relaxed indent-4'
    : 'text-foreground/80 text-center text-xxl leading-relaxed';
};
</script>

<template>
  <Card>
    <CardHeader class="py-4">
      <CardTitle class="text-center text-xl">{{ cardTitle }}</CardTitle>
    </CardHeader>
    <CardContent class="relative p-5 pt-0">
      <div class="flex h-full flex-col px-2">
        <p
          v-if="item?.author"
          class="text-foreground/70 mb-3 text-center text-lg"
        >
          {{ item.author }}
        </p>
        <div v-if="item?.content" class="flex-1">
          <p
            v-for="(line, index) in (item.content ?? '').split('\n')"
            :key="index"
            :class="contentClass(item.type === 'sentence')"
          >
            {{ line }}
          </p>
        </div>
        <div v-else class="flex-1">
          <p class="text-foreground/30 text-center text-xs leading-relaxed">
            点击右下角按钮，品味诗词
          </p>
        </div>
        <div class="mt-3 flex items-end justify-between">
          <span class="text-foreground/30 text-xs">{{
            item?.dynasty || ''
          }}</span>
          <div class="flex items-center gap-2">
            <span class="text-foreground/30 text-xs">{{
              item?.date || ''
            }}</span>
            <IconifyIcon
              icon="lucide:refresh-cw"
              class="text-foreground/40 hover:text-foreground/70 size-4 cursor-pointer transition-colors"
              @click="emit('refresh')"
            />
          </div>
        </div>
      </div>
    </CardContent>
  </Card>
</template>
