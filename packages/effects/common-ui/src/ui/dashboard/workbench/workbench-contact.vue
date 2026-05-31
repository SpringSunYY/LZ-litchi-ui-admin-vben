<script setup lang="ts">
import { Card, CardContent, CardHeader, CardTitle } from '@vben-core/shadcn-ui';

interface Props {
  title?: string;
  imageUrl?: string;
}

withDefaults(defineProps<Props>(), {
  title: '联系我们',
  imageUrl: '/wx-xingyu.png',
});
</script>

<template>
  <Card>
    <CardHeader class="py-4">
      <CardTitle class="text-lg">{{ title }}</CardTitle>
    </CardHeader>
    <CardContent class="p-5 pt-0">
      <div class="flex justify-center">
        <img
          :src="imageUrl"
          alt="联系我们"
          class="h-auto max-w-full rounded-lg"
        />
      </div>
    </CardContent>
  </Card>
</template>
