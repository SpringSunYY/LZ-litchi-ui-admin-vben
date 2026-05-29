<script setup lang="ts">
import { onMounted, reactive, ref } from 'vue';
import { useRoute, useRouter } from 'vue-router';

import { Page } from '@vben/common-ui';
import { IconifyIcon } from '@vben/icons';

import {
  Button,
  Card,
  Empty,
  InputNumber,
  message,
  Textarea,
} from 'ant-design-vue';

import { getKnowledge } from '#/api/ai/knowledge/knowledge';
import { searchKnowledgeSegment } from '#/api/ai/knowledge/segment';
import { $t } from '#/locales';

/** 知识库文档召回测试 */
defineOptions({ name: 'KnowledgeDocumentRetrieval' });

const route = useRoute();
const router = useRouter();

const loading = ref(false); // 加载状态
const segments = ref<any[]>([]); // 召回结果
const queryParams = reactive({
  id: undefined,
  content: '',
  topK: 10,
  similarityThreshold: 0.5,
});

/** 执行召回测试 */
async function getRetrievalResult() {
  if (!queryParams.content) {
    message.warning($t('ai.knowledge.message.queryPlaceholder'));
    return;
  }

  loading.value = true;
  segments.value = [];

  try {
    const data = await searchKnowledgeSegment({
      knowledgeId: queryParams.id,
      content: queryParams.content,
      topK: queryParams.topK,
      similarityThreshold: queryParams.similarityThreshold,
    });
    segments.value = data || [];
  } finally {
    loading.value = false;
  }
}

/** 切换段落展开状态 */
function toggleExpand(segment: any) {
  segment.expanded = !segment.expanded;
}

/** 获取知识库配置信息 */
async function getKnowledgeInfo(id: number) {
  try {
    const knowledge = await getKnowledge(id);
    if (knowledge) {
      queryParams.topK = knowledge.topK || queryParams.topK;
      queryParams.similarityThreshold =
        knowledge.similarityThreshold || queryParams.similarityThreshold;
    }
  } catch {}
}

/** 初始化 */
onMounted(() => {
  // 如果知识库 ID 不存在，显示错误提示并关闭页面
  if (!route.query.id) {
    message.error($t('ai.knowledge.message.idNotFound'));
    router.back();
    return;
  }
  queryParams.id = route.query.id as any;

  // 获取知识库信息并设置默认值
  getKnowledgeInfo(queryParams.id as any);
});
</script>
<template>
  <Page auto-content-height>
    <div class="flex w-full gap-4">
      <Card class="w-3/4 flex-1">
        <div class="mb-15">
          <h3 class="m-2 text-lg font-semibold leading-none tracking-tight">
            {{ $t('ai.knowledge.message.retrievalTest') }}
          </h3>
          <div class="m-2 text-sm text-gray-500">
            {{ $t('ai.knowledge.message.queryPlaceholder') }}
          </div>
        </div>
        <div>
          <div class="relative m-2">
            <Textarea
              v-model:value="queryParams.content"
              :rows="8"
              :placeholder="$t('ai.knowledge.message.queryPlaceholder')"
            />
            <div class="absolute bottom-2 right-2 text-sm text-gray-400">
              {{ queryParams.content?.length }} / 200
            </div>
          </div>
          <div class="m-2 flex items-center">
            <span class="w-16 text-gray-500"
              >{{ $t('ai.knowledge.field.topK') }}:</span
            >
            <InputNumber
              v-model:value="queryParams.topK"
              :min="1"
              :max="20"
              class="w-full"
            />
          </div>
          <div class="m-2 flex items-center">
            <span class="w-16 text-gray-500"
              >{{ $t('ai.knowledge.field.similarityThreshold') }}:</span
            >
            <InputNumber
              v-model:value="queryParams.similarityThreshold"
              class="w-full"
              :min="0"
              :max="1"
              :precision="2"
              :step="0.01"
            />
          </div>
          <div class="flex justify-end">
            <Button
              type="primary"
              @click="getRetrievalResult"
              :loading="loading"
            >
              {{ $t('ai.knowledge.message.retrievalTest') }}
            </Button>
          </div>
        </div>
      </Card>
      <Card class="min-w-300 flex-1">
        <!-- 加载中状态 -->
        <template v-if="loading">
          <div class="flex h-72 items-center justify-center">
            <Empty :description="$t('ai.knowledge.message.retrieving')" />
          </div>
        </template>

        <!-- 有段落 -->
        <template v-else-if="segments.length > 0">
          <div class="mb-15 font-bold">
            {{
              $t('ai.knowledge.message.retrievedSegments', [segments.length])
            }}
          </div>
          <div>
            <div
              v-for="(segment, index) in segments"
              :key="index"
              class="mt-2 rounded border border-solid border-gray-200 px-2 py-2"
            >
              <div
                class="mb-2 flex items-center justify-between gap-8 text-sm text-gray-500"
              >
                <span>
                  {{
                    $t('ai.knowledge.message.segmentInfo', [
                      segment.id,
                      segment.contentLength,
                      segment.tokens,
                    ])
                  }}
                </span>
                <span
                  class="whitespace-nowrap rounded-full bg-blue-50 px-2 py-1 text-sm text-blue-500"
                >
                  score: {{ segment.score }}
                </span>
              </div>
              <div
                class="mb-2 overflow-hidden whitespace-pre-wrap rounded bg-gray-50 text-sm transition-all duration-100"
                :class="{
                  'line-clamp-2 max-h-40': !segment.expanded,
                  'max-h-[1500px]': segment.expanded,
                }"
              >
                {{ segment.content }}
              </div>
              <div class="flex items-center justify-between gap-8">
                <div class="flex items-center gap-1 text-sm text-gray-500">
                  <IconifyIcon icon="lucide:file-text" />
                  <span>{{
                    segment.documentName ||
                    $t('ai.knowledge.message.unknownDocument')
                  }}</span>
                </div>
                <Button size="small" @click="toggleExpand(segment)">
                  {{
                    segment.expanded
                      ? $t('ai.knowledge.message.collapse')
                      : $t('ai.knowledge.message.expand')
                  }}
                  <IconifyIcon
                    :icon="
                      segment.expanded
                        ? 'lucide:chevron-up'
                        : 'lucide:chevron-down'
                    "
                  />
                </Button>
              </div>
            </div>
          </div>
        </template>

        <!-- 无召回结果 -->
        <template v-else>
          <div class="flex h-72 items-center justify-center">
            <Empty
              :description="$t('ai.knowledge.message.noRetrievalResult')"
            />
          </div>
        </template>
      </Card>
    </div>
  </Page>
</template>
