<script lang="ts" setup>
import type { PageParam, PageResult } from '@vben/request';

import type { BpmProcessInstanceApi } from '#/api/bpm/processInstance';

import { computed, nextTick, onMounted, ref, watch } from 'vue';

import { Page } from '@vben/common-ui';
import { IconifyIcon } from '@vben/icons';
import { formatDateTime } from '@vben/utils';

import {
  Button,
  Card,
  DatePicker,
  Empty,
  Input,
  Popover,
  Skeleton,
  Tag,
} from 'ant-design-vue';

import { getProcessInstanceCopyPage } from '#/api/bpm/processInstance';
import { EllipsisContent } from '#/components/ellipsis-content';
import { $t } from '#/locales';
import { router } from '#/router';
import { getRangePickerDefaultProps } from '#/utils';

import ProcessInstanceDetail from '../../processInstance/detail/index.vue';

defineOptions({ name: 'BpmCopyTask' });

type CopyVO = BpmProcessInstanceApi.CopyVO;

type SummaryItem = {
  key: string;
  value: string;
};

type TaskCopyQuery = PageParam & {
  createTime?: [string, string];
  name?: string;
};

const DEFAULT_PAGE_SIZE = 12;

const taskList = ref<CopyVO[]>([]);
const selectedTask = ref<CopyVO>();
const listLoading = ref(false);
const loadingMore = ref(false);
const listContainerRef = ref<HTMLElement>();
const filterPopoverOpen = ref(false);
const queryForm = ref<TaskCopyQuery>({
  pageNo: 1,
  pageSize: DEFAULT_PAGE_SIZE,
  name: undefined,
  createTime: undefined,
});
const total = ref(0);
const currentPage = ref(1);
const hasMore = ref(true);

const detailRenderKey = ref('');

const detailProps = computed(() => {
  if (!selectedTask.value?.processInstanceId) {
    return null;
  }
  return {
    id: String(selectedTask.value.processInstanceId),
    activityId: selectedTask.value.activityId
      ? String(selectedTask.value.activityId)
      : undefined,
  };
});

const hasAdvancedFilters = computed(
  () => !!queryForm.value.createTime && queryForm.value.createTime.length === 2,
);

watch(
  detailProps,
  (value) => {
    detailRenderKey.value = value
      ? `${value.id}-${value.activityId || ''}`
      : '';
  },
  { immediate: true },
);

function getTaskTitle(row: CopyVO) {
  return row.processInstanceName || '-';
}

function getTaskSummary(row: CopyVO): SummaryItem[] {
  if (!Array.isArray(row.summary)) {
    return [];
  }
  return row.summary.slice(0, 3);
}

function handleSelect(row: CopyVO) {
  selectedTask.value = row;
}

function handleDetail(row: CopyVO) {
  const query: Record<string, string> = {
    id: String(row.processInstanceId),
  };
  if (row.activityId) {
    query.activityId = String(row.activityId);
  }
  router.push({
    name: 'BpmProcessInstanceDetail',
    query,
  });
}

function buildParams(): PageParam {
  return {
    pageNo: queryForm.value.pageNo,
    pageSize: queryForm.value.pageSize,
    ...(queryForm.value.name ? { name: queryForm.value.name } : {}),
    ...(queryForm.value.createTime
      ? { createTime: queryForm.value.createTime }
      : {}),
  };
}

async function loadTaskList(append = false) {
  if (append) {
    loadingMore.value = true;
  } else {
    listLoading.value = true;
  }
  try {
    const data = (await getProcessInstanceCopyPage(
      buildParams(),
    )) as unknown as PageResult<CopyVO>;
    const items = data?.list || [];
    taskList.value = append ? [...taskList.value, ...items] : items;
    total.value = data?.total || 0;
    currentPage.value = queryForm.value.pageNo;
    hasMore.value =
      items.length > 0 &&
      currentPage.value * queryForm.value.pageSize < total.value;
    if (
      taskList.value.length > 0 &&
      (!selectedTask.value ||
        !taskList.value.some(
          (item) => String(item.id) === String(selectedTask.value?.id),
        ))
    ) {
      selectedTask.value = taskList.value[0];
    }
    if (taskList.value.length === 0) {
      selectedTask.value = undefined;
    }
    await nextTick();
    maybeLoadMoreWhenNotFull();
  } finally {
    listLoading.value = false;
    loadingMore.value = false;
  }
}

function handleSearch() {
  queryForm.value.pageNo = 1;
  hasMore.value = true;
  loadTaskList();
}

function handleReset() {
  queryForm.value = {
    pageNo: 1,
    pageSize: DEFAULT_PAGE_SIZE,
    name: undefined,
    createTime: undefined,
  };
  filterPopoverOpen.value = false;
  hasMore.value = true;
  loadTaskList();
}

function handleAdvancedSearch() {
  filterPopoverOpen.value = false;
  handleSearch();
}

function handleLoadMore() {
  if (!hasMore.value || loadingMore.value || listLoading.value) {
    return;
  }
  queryForm.value.pageNo += 1;
  loadTaskList(true);
}

function maybeLoadMoreWhenNotFull() {
  const container = listContainerRef.value;
  if (!container || !hasMore.value || loadingMore.value || listLoading.value) {
    return;
  }
  if (container.scrollHeight <= container.clientHeight + 24) {
    handleLoadMore();
  }
}

function handleListScroll(event: Event) {
  const target = event.target as HTMLElement;
  const reachedBottom =
    target.scrollTop + target.clientHeight >= target.scrollHeight - 32;
  if (reachedBottom) {
    handleLoadMore();
  }
}

onMounted(async () => {
  await loadTaskList();
});
</script>

<template>
  <Page auto-content-height>
    <div class="bpm-task-layout done-task-layout">
      <section class="bpm-task-sidebar done-task-sidebar order-1 xl:order-1">
        <Card
          class="bpm-task-sidebar done-task-sidebar"
          :body-style="{ padding: '0' }"
        >
          <div class="p-4">
            <div
              class="bpm-task-toolbar done-task-toolbar mb-4 flex items-center gap-2"
            >
              <div class="min-w-0 flex-1">
                <Input
                  v-model:value="queryForm.name"
                  allow-clear
                  size="large"
                  :placeholder="
                    $t('ui.placeholder.input', [
                      $t('bpm.task.copy.field.processName'),
                    ])
                  "
                  @press-enter="handleSearch"
                >
                  <template #prefix>
                    <IconifyIcon
                      icon="lucide:search"
                      class="bpm-task-prefix-icon done-task-prefix-icon"
                    />
                  </template>
                </Input>
              </div>

              <Button
                type="primary"
                size="large"
                class="bpm-task-icon-button done-task-icon-button"
                :title="$t('common.search')"
                @click="handleSearch"
              >
                <IconifyIcon
                  icon="lucide:search"
                  class="bpm-task-action-icon done-task-action-icon"
                />
              </Button>

              <Popover
                v-model:open="filterPopoverOpen"
                trigger="click"
                placement="bottomRight"
                overlay-class-name="bpm-task-filter-popover done-task-filter-popover"
              >
                <template #content>
                  <div
                    class="bpm-task-popover-panel done-task-popover-panel space-y-3"
                  >
                    <DatePicker.RangePicker
                      v-model:value="queryForm.createTime"
                      v-bind="getRangePickerDefaultProps()"
                      class="bpm-task-filter-field done-task-filter-field"
                    />
                    <div class="flex gap-2 pt-1">
                      <Button
                        type="primary"
                        block
                        size="large"
                        @click="handleAdvancedSearch"
                      >
                        {{ $t('common.search') }}
                      </Button>
                      <Button block size="large" @click="handleReset">
                        {{ $t('common.reset') }}
                      </Button>
                    </div>
                  </div>
                </template>

                <Button
                  size="large"
                  class="bpm-task-icon-button done-task-icon-button"
                  :type="hasAdvancedFilters ? 'primary' : 'default'"
                  :title="$t('common.filter')"
                >
                  <IconifyIcon
                    icon="lucide:funnel"
                    class="bpm-task-action-icon done-task-action-icon"
                  />
                </Button>
              </Popover>

              <Button
                size="large"
                class="bpm-task-icon-button done-task-icon-button"
                :title="$t('common.refresh')"
                @click="handleReset"
              >
                <IconifyIcon
                  icon="lucide:refresh-cw"
                  class="bpm-task-action-icon done-task-action-icon"
                />
              </Button>
            </div>

            <div
              class="done-task-header mb-4 flex items-center justify-between gap-3 px-1"
            >
              <div>
                <div
                  class="text-base font-semibold text-[var(--ant-color-text)]"
                >
                  {{ $t('bpm.task.copy.list') }}
                </div>
                <div
                  class="mt-1 text-xs text-[var(--ant-color-text-secondary)]"
                >
                  {{ $t('bpm.task.copy.message.clickCardTip') }}
                </div>
              </div>
              <div class="bpm-task-total-badge done-task-total-badge">
                {{ taskList.length }}/{{ total }}
              </div>
            </div>

            <div
              ref="listContainerRef"
              class="bpm-task-list done-task-list pr-1"
              @scroll="handleListScroll"
            >
              <div v-if="listLoading" class="space-y-3">
                <div
                  v-for="item in 4"
                  :key="item"
                  class="bpm-task-skeleton done-task-skeleton rounded-2xl p-4"
                >
                  <Skeleton
                    active
                    :title="{ width: '60%' }"
                    :paragraph="{ rows: 3 }"
                  />
                </div>
              </div>

              <div v-else-if="taskList.length > 0" class="space-y-3 pb-1">
                <article
                  v-for="item in taskList"
                  :key="item.id"
                  class="bpm-task-card done-task-card cursor-pointer p-4"
                  :class="{
                    'bpm-task-card--active done-task-card--active':
                      selectedTask?.id === item.id,
                  }"
                  @click="handleSelect(item)"
                >
                  <div class="mb-3 flex items-start justify-between gap-3">
                    <div class="min-w-0 flex-1">
                      <div
                        class="truncate text-[15px] font-semibold text-[var(--ant-color-text)]"
                      >
                        {{ getTaskTitle(item) }}
                      </div>
                    </div>
                    <Tag color="processing" class="mr-0 rounded-full px-2">
                      {{ $t('bpm.task.copy.action.detail') }}
                    </Tag>
                  </div>
                  <div class="bpm-task-meta-item done-task-meta-item">
                    <span class="bpm-task-meta-label done-task-meta-label">
                      {{ $t('bpm.task.copy.field.processStarter') }}
                    </span>
                    <span class="bpm-task-meta-value done-task-meta-value">
                      {{ item.startUser?.nickname || '-' }}
                    </span>
                  </div>
                  <div class="bpm-task-meta-item done-task-meta-item">
                    <span class="bpm-task-meta-label done-task-meta-label">
                      {{ $t('bpm.task.copy.field.copier') }}
                    </span>
                    <span class="bpm-task-meta-value done-task-meta-value">
                      {{ item.createUser?.nickname || '-' }}
                    </span>
                  </div>
                  <div class="bpm-task-meta-item done-task-meta-item">
                    <span class="bpm-task-meta-label done-task-meta-label">
                      {{ $t('bpm.task.copy.field.copyTime') }}
                    </span>
                    <span class="bpm-task-meta-value done-task-meta-value">
                      {{ formatDateTime(item.createTime) }}
                    </span>
                  </div>

                  <div class="bpm-task-meta-item done-task-meta-item">
                    <span class="bpm-task-meta-item done-task-meta-label">
                      <EllipsisContent
                        :title="$t('bpm.task.copy.field.copyReason')"
                      >
                        {{ item.reason || '-' }}
                      </EllipsisContent>
                    </span>
                    <span class="bpm-task-meta-label done-task-meta-value">
                      <EllipsisContent
                        :title="$t('bpm.task.copy.field.summary')"
                      >
                        <div
                          v-if="getTaskSummary(item).length > 0"
                          class="mt-3 flex flex-col gap-2"
                        >
                          <div
                            v-for="summary in getTaskSummary(item)"
                            :key="summary.key"
                            class="bpm-task-chip done-task-chip"
                          >
                            <span class="bpm-task-chip-key done-task-chip-key">
                              {{ summary.key }}
                            </span>
                            <span
                              class="bpm-task-chip-value done-task-chip-value"
                            >
                              {{ summary.value || '-' }}
                            </span>
                          </div>
                        </div>
                      </EllipsisContent>
                    </span>
                  </div>

                  <div class="bpm-task-card-action done-task-card-action mt-3">
                    <Button
                      type="link"
                      size="small"
                      class="bpm-task-action-button done-task-history-button"
                      @click.stop="handleDetail(item)"
                    >
                      <span
                        class="bpm-task-action-content done-task-history-content"
                      >
                        <IconifyIcon
                          icon="lucide:eye"
                          class="bpm-task-action-icon done-task-history-icon"
                        />
                        <span>{{ $t('bpm.task.copy.action.detail') }}</span>
                      </span>
                    </Button>
                  </div>
                </article>

                <div v-if="loadingMore" class="space-y-3 pb-2">
                  <div
                    v-for="item in 2"
                    :key="`loading-more-${item}`"
                    class="bpm-task-skeleton done-task-skeleton rounded-2xl p-4"
                  >
                    <Skeleton
                      active
                      :title="{ width: '60%' }"
                      :paragraph="{ rows: 2 }"
                    />
                  </div>
                </div>
              </div>

              <Empty v-else class="mt-24" :description="$t('common.noData')" />
            </div>
          </div>
        </Card>
      </section>

      <section class="bpm-task-content done-task-content">
        <div class="bpm-task-content-process h-full">
          <ProcessInstanceDetail
            v-if="detailProps"
            :key="detailRenderKey"
            :id="detailProps.id"
            :activity-id="detailProps.activityId"
          />
          <div
            v-else
            class="bpm-task-content-empty flex h-[90%] items-center justify-center rounded-3xl border border-dashed border-[var(--ant-color-border)]"
          >
            <Empty :description="$t('bpm.task.copy.message.clickCardTip')" />
          </div>
        </div>
      </section>
    </div>
  </Page>
</template>

<style lang="scss" scoped>
@use '../_bpm-task.scss' as *;

@include bpm-task-layout;
@include bpm-task-content;
@include bpm-task-card;
@include bpm-task-skeleton;
@include bpm-task-chip;
@include bpm-task-meta;
@include bpm-task-action-button;
@include bpm-task-icon-button;
@include bpm-task-toolbar;
@include bpm-task-filter;
@include bpm-task-total-badge;
</style>
