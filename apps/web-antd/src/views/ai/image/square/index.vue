<script setup lang="ts">
import type { AiImageApi } from '#/api/ai/image';

import { onMounted, reactive, ref } from 'vue';

import { Page } from '@vben/common-ui';

import { useDebounceFn } from '@vueuse/core';
import { Image, Input, Pagination } from 'ant-design-vue';

import { getImagePageMy } from '#/api/ai/image';
import { $t } from '#/locales';

const loading = ref(true);
const list = ref<AiImageApi.Image[]>([]);
const total = ref(0);
const queryParams = reactive({
  pageNo: 1,
  pageSize: 10,
  publicStatus: true,
  prompt: undefined,
});

async function getList() {
  loading.value = true;
  try {
    const data = await getImagePageMy(queryParams);
    list.value = data.list;
    total.value = data.total;
  } finally {
    loading.value = false;
  }
}

const debounceGetList = useDebounceFn(getList, 80);

function handleQuery() {
  queryParams.pageNo = 1;
  getList();
}

onMounted(async () => {
  await getList();
});
</script>
<template>
  <Page auto-content-height>
    <div class="bg-card p-5">
      <Input.Search
        v-model="queryParams.prompt"
        class="mb-5 w-full"
        size="large"
        :placeholder="$t('ai.image.square.searchPlaceholder')"
        @keyup.enter="handleQuery"
      />
      <div
        class="bg-card grid grid-cols-[repeat(auto-fill,minmax(200px,1fr))] gap-2.5 shadow-sm"
      >
        <div
          v-for="item in list"
          :key="item.id"
          class="bg-card relative cursor-pointer overflow-hidden transition-transform duration-300 hover:scale-105"
        >
          <Image
            :src="item.picUrl"
            class="block h-auto w-full transition-transform duration-300 hover:scale-110"
          />
        </div>
      </div>
      <Pagination
        :total="total"
        :show-total="(total) => $t('ai.image.message.totalItems', [total])"
        show-quick-jumper
        show-size-changer
        v-model:current="queryParams.pageNo"
        v-model:page-size="queryParams.pageSize"
        @change="debounceGetList"
        @show-size-change="debounceGetList"
        class="mt-5"
      />
    </div>
  </Page>
</template>
