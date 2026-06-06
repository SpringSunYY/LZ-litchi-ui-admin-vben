<script lang="ts" setup>
import type { PageParam, PageResult } from '@vben/request';

import type { BpmTaskApi } from '#/api/bpm/task';

import { computed, nextTick, onMounted, ref, watch } from 'vue';

import { IconifyIcon } from '@vben/icons';
import { formatDateTime } from '@vben/utils';

import {
  Button,
  Card,
  DatePicker,
  Empty,
  Input,
  Popover,
  Select,
  Skeleton,
  Tag,
} from 'ant-design-vue';

import { getCategorySimpleList } from '#/api/bpm/category';
import { getTaskDonePage } from '#/api/bpm/task';
import { EllipsisContent } from '#/components/ellipsis-content';
import I18nSelect from '#/components/i18n/i18n-select/i18n-select.vue';
import { $t } from '#/locales';
import { router } from '#/router';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

import ProcessInstanceDetail from '../../processInstance/detail/index.vue';
import { Page } from '@vben/common-ui';

defineOptions({ name: 'BpmDoneTask' });

type TaskDoneQuery = PageParam & {
  category?: string;
  createTime?: [string, string];
  name?: string;
  processDefinitionId?: string;
  status?: number | string;
};

type SummaryItem = {
  key: string;
  value: string;
};

const DEFAULT_PAGE_SIZE = 12;

const taskList = ref<BpmTaskApi.TaskManagerVO[]>([]);
const selectedTask = ref<BpmTaskApi.TaskManagerVO>();
const listLoading = ref(false);
const loadingMore = ref(false);
const categoryOptions = ref<any[]>([]);
const listContainerRef = ref<HTMLElement>();
const filterPopoverOpen = ref(false);
const queryForm = ref<TaskDoneQuery>({
  pageNo: 1,
  pageSize: DEFAULT_PAGE_SIZE,
  name: undefined,
  processDefinitionId: undefined,
  category: undefined,
  status: undefined,
  createTime: undefined,
});
const total = ref(0);
const currentPage = ref(1);
const hasMore = ref(true);

const statusOptions = computed(() =>
  getDictOptions(DICT_TYPE.BPM_PROCESS_INSTANCE_STATUS, 'number')
    .filter(
      (item) =>
        typeof item.value === 'string' || typeof item.value === 'number',
    )
    .map((item) => ({
      label: item.i18n ? $t(item.i18n) : item.label,
      value: item.value as number | string,
    })),
);

const detailRenderKey = ref('');

const detailProps = computed(() => {
  if (!selectedTask.value?.processInstance?.id) {
    return null;
  }
  return {
    id: String(selectedTask.value.processInstance.id),
    taskId: selectedTask.value.id,
  };
});

const hasAdvancedFilters = computed(
  () =>
    !!queryForm.value.processDefinitionId ||
    !!queryForm.value.category ||
    (queryForm.value.status !== undefined && queryForm.value.status !== '') ||
    !!(queryForm.value.createTime && queryForm.value.createTime.length === 2),
);

watch(
  detailProps,
  (value) => {
    detailRenderKey.value = value ? `${value.id}-${value.taskId || ''}` : '';
  },
  { immediate: true },
);

function getTaskTitle(row: BpmTaskApi.TaskManagerVO) {
  return row.processInstance?.name || row.name || '-';
}

function getTaskStatusText(row: BpmTaskApi.TaskManagerVO) {
  const option = statusOptions.value.find(
    (item) => String(item.value) === String(row.status),
  );
  return option?.label || String(row.status || '');
}

function getTaskSummary(row: BpmTaskApi.TaskManagerVO): SummaryItem[] {
  const summary = (row.processInstance as any)?.summary;
  if (!Array.isArray(summary)) {
    return [];
  }
  return summary.slice(0, 3);
}

function handleSelect(row: BpmTaskApi.TaskManagerVO) {
  selectedTask.value = row;
}

function handleHistory(row: BpmTaskApi.TaskManagerVO) {
  if (!row.processInstance?.id) {
    return;
  }

  router.push({
    name: 'BpmProcessInstanceDetail',
    query: {
      id: row.processInstance.id,
      taskId: row.id,
    },
  });
}

function buildParams(): PageParam {
  return {
    pageNo: queryForm.value.pageNo,
    pageSize: queryForm.value.pageSize,
    ...(queryForm.value.name ? { name: queryForm.value.name } : {}),
    ...(queryForm.value.processDefinitionId
      ? { processDefinitionId: queryForm.value.processDefinitionId }
      : {}),
    ...(queryForm.value.category ? { category: queryForm.value.category } : {}),
    ...(queryForm.value.status !== undefined && queryForm.value.status !== ''
      ? { status: queryForm.value.status }
      : {}),
    ...(queryForm.value.createTime && queryForm.value.createTime.length === 2
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
    const data = (await getTaskDonePage(
      buildParams(),
    )) as unknown as PageResult<BpmTaskApi.TaskManagerVO>;
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
    processDefinitionId: undefined,
    category: undefined,
    status: undefined,
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
  categoryOptions.value = await getCategorySimpleList();
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
                    $t('ui.placeholder.input', [$t('bpm.task.field.name')])
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
                    <Input
                      v-model:value="queryForm.processDefinitionId"
                      allow-clear
                      size="large"
                      class="bpm-task-filter-field done-task-filter-field"
                      :placeholder="
                        $t('ui.placeholder.input', [
                          $t('bpm.task.field.processDefinitionId'),
                        ])
                      "
                      @press-enter="handleAdvancedSearch"
                    />
                    <Select
                      v-model:value="queryForm.category"
                      allow-clear
                      size="large"
                      class="bpm-task-filter-field done-task-filter-field"
                      show-search
                      option-filter-prop="label"
                      :options="categoryOptions"
                      :field-names="{ label: 'name', value: 'code' }"
                      :placeholder="
                        $t('ui.placeholder.select', [
                          $t('bpm.task.field.category'),
                        ])
                      "
                    />
                    <I18nSelect
                      v-model:model-value="queryForm.status"
                      allow-clear
                      size="large"
                      class="bpm-task-filter-field done-task-filter-field"
                      :options="statusOptions"
                      :placeholder="
                        $t('ui.placeholder.select', [
                          $t('bpm.task.field.status'),
                        ])
                      "
                    />
                    <DatePicker.RangePicker
                      v-model:value="queryForm.createTime"
                      size="large"
                      class="bpm-task-filter-field done-task-filter-field"
                      v-bind="getRangePickerDefaultProps()"
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
                  {{ $t('bpm.task.done.list') }}
                </div>
                <div
                  class="mt-1 text-xs text-[var(--ant-color-text-secondary)]"
                >
                  {{ $t('bpm.task.done.message.clickCardTip') }}
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
                      <!-- <div
                        class="mt-1 truncate text-sm text-[var(--ant-color-text-secondary)]"
                      >
                        {{ getTaskSubtitle(item) }}
                      </div> -->
                    </div>
                    <Tag color="processing" class="mr-0 rounded-full px-2">
                      {{ getTaskStatusText(item) }}
                    </Tag>
                  </div>
                  <div class="bpm-task-meta-item done-task-meta-item">
                    <span class="bpm-task-meta-label done-task-meta-label">
                      {{ $t('bpm.task.done.field.startUser') }}
                    </span>
                    <span class="bpm-task-meta-value done-task-meta-value">
                      {{ item.processInstance?.startUser?.nickname || '-' }}
                    </span>
                  </div>
                  <div class="bpm-task-meta-item done-task-meta-item">
                    <span class="bpm-task-meta-label done-task-meta-label">
                      {{ $t('bpm.task.done.field.taskStartTime') }}
                    </span>
                    <span class="bpm-task-meta-value done-task-meta-value">
                      {{ formatDateTime(item.createTime) }}
                    </span>
                  </div>
                  <div class="bpm-task-meta-item done-task-meta-item">
                    <span class="bpm-task-meta-label done-task-meta-label">
                      {{ $t('bpm.task.done.field.taskEndTime') }}
                    </span>
                    <span class="bpm-task-meta-value done-task-meta-value">
                      {{ formatDateTime(item.endTime || item.createTime) }}
                    </span>
                  </div>
                  <div class="bpm-task-meta-item done-task-meta-item">
                    <EllipsisContent
                      :title="$t('bpm.task.done.field.summary')"
                      class="bpm-task-meta-label done-task-meta-label"
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
                          <span class="bpm-task-chip-key done-task-chip-key">{{
                            summary.key
                          }}</span>
                          <span
                            class="bpm-task-chip-value done-task-chip-value"
                            >{{ summary.value || '-' }}</span
                          >
                        </div>
                      </div>
                    </EllipsisContent>
                  </div>

                  <div class="bpm-task-card-action done-task-card-action mt-3">
                    <Button
                      type="link"
                      size="small"
                      class="bpm-task-action-button done-task-history-button"
                      @click.stop="handleHistory(item)"
                    >
                      <span
                        class="bpm-task-action-content done-task-history-content"
                      >
                        <IconifyIcon
                          icon="lucide:eye"
                          class="bpm-task-action-icon done-task-history-icon"
                        />
                        <span>{{ $t('bpm.task.done.action.history') }}</span>
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
            :task-id="detailProps.taskId"
          />
          <div
            v-else
            class="bpm-task-content-empty flex h-[90%] items-center justify-center rounded-3xl border border-dashed border-[var(--ant-color-border)]"
          >
            <Empty :description="$t('bpm.task.done.message.clickCardTip')" />
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
