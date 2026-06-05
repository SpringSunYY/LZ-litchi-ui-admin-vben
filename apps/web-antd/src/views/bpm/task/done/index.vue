<script lang="ts" setup>
import type { PageParam, PageResult } from '@vben/request';

import type { BpmTaskApi } from '#/api/bpm/task';

import { computed, nextTick, onMounted, ref, watch } from 'vue';

import { Page } from '@vben/common-ui';
import { IconifyIcon } from '@vben/icons';
import { formatDateTime } from '@vben/utils';

import {
  Button,
  Card,
  Empty,
  Input,
  Popover,
  Select,
  Skeleton,
  Tag,
} from 'ant-design-vue';

import { getCategorySimpleList } from '#/api/bpm/category';
import { getTaskDonePage } from '#/api/bpm/task';
import I18nSelect from '#/components/i18n/i18n-select/i18n-select.vue';
import { $t } from '#/locales';
import { router } from '#/router';
import { DICT_TYPE, getDictOptions } from '#/utils';

import ProcessInstanceDetail from '../../processInstance/detail/index.vue';

defineOptions({ name: 'BpmDoneTask' });

type TaskDoneQuery = PageParam & {
  category?: string;
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
    (queryForm.value.status !== undefined && queryForm.value.status !== ''),
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
    <div class="done-task-layout">
      <section class="done-task-sidebar order-1 xl:order-1">
        <Card class="done-task-sidebar" :body-style="{ padding: '0' }">
          <div class="p-4">
            <div class="done-task-toolbar mb-4 flex items-center gap-2">
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
                      class="done-task-prefix-icon"
                    />
                  </template>
                </Input>
              </div>

              <Button
                type="primary"
                size="large"
                class="done-task-icon-button"
                :title="$t('common.search')"
                @click="handleSearch"
              >
                <IconifyIcon
                  icon="lucide:search"
                  class="done-task-action-icon"
                />
              </Button>

              <Popover
                v-model:open="filterPopoverOpen"
                trigger="click"
                placement="bottomRight"
                overlay-class-name="done-task-filter-popover"
              >
                <template #content>
                  <div class="done-task-popover-panel space-y-3">
                    <Input
                      v-model:value="queryForm.processDefinitionId"
                      allow-clear
                      size="large"
                      class="done-task-filter-field"
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
                      class="done-task-filter-field"
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
                      class="done-task-filter-field"
                      :options="statusOptions"
                      :placeholder="
                        $t('ui.placeholder.select', [
                          $t('bpm.task.field.status'),
                        ])
                      "
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
                  class="done-task-icon-button"
                  :type="hasAdvancedFilters ? 'primary' : 'default'"
                  :title="$t('common.filter')"
                >
                  <IconifyIcon
                    icon="lucide:funnel"
                    class="done-task-action-icon"
                  />
                </Button>
              </Popover>

              <Button
                size="large"
                class="done-task-icon-button"
                :title="$t('common.refresh')"
                @click="handleReset"
              >
                <IconifyIcon
                  icon="lucide:refresh-cw"
                  class="done-task-action-icon"
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
              <div class="done-task-total-badge">
                {{ taskList.length }}/{{ total }}
              </div>
            </div>

            <div
              ref="listContainerRef"
              class="done-task-list pr-1"
              @scroll="handleListScroll"
            >
              <div v-if="listLoading" class="space-y-3">
                <div
                  v-for="item in 4"
                  :key="item"
                  class="done-task-skeleton rounded-2xl p-4"
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
                  class="done-task-card cursor-pointer p-4"
                  :class="{
                    'done-task-card--active': selectedTask?.id === item.id,
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
                  <div class="done-task-meta-item">
                    <span class="done-task-meta-label">
                      {{ $t('bpm.task.done.field.startUser') }}
                    </span>
                    <span class="done-task-meta-value">
                      {{ item.processInstance?.startUser?.nickname || '-' }}
                    </span>
                  </div>
                  <div class="done-task-meta-item">
                    <span class="done-task-meta-label">
                      {{ $t('bpm.task.done.field.taskStartTime') }}
                    </span>
                    <span class="done-task-meta-value">
                      {{ formatDateTime(item.createTime) }}
                    </span>
                  </div>
                  <div class="done-task-meta-item">
                    <span class="done-task-meta-label">
                      {{ $t('bpm.task.done.field.taskEndTime') }}
                    </span>
                    <span class="done-task-meta-value">
                      {{ formatDateTime(item.endTime || item.createTime) }}
                    </span>
                  </div>

                  <div
                    v-if="getTaskSummary(item).length > 0"
                    class="mt-3 flex flex-wrap gap-2"
                  >
                    <div
                      v-for="summary in getTaskSummary(item)"
                      :key="summary.key"
                      class="done-task-chip"
                    >
                      <span class="done-task-chip-key">{{ summary.key }}</span>
                      <span class="done-task-chip-value">{{
                        summary.value || '-'
                      }}</span>
                    </div>
                  </div>

                  <div class="done-task-card-action mt-3">
                    <Button
                      type="link"
                      size="small"
                      class="done-task-history-button"
                      @click.stop="handleHistory(item)"
                    >
                      <span class="done-task-history-content">
                        <IconifyIcon
                          icon="lucide:eye"
                          class="done-task-history-icon"
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
                    class="done-task-skeleton rounded-2xl p-4"
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

      <section class="done-task-content">
        <div class="h-full">
          <ProcessInstanceDetail
            v-if="detailProps"
            :key="detailRenderKey"
            :id="detailProps.id"
            :task-id="detailProps.taskId"
          />
          <div
            v-else
            class="flex min-h-[520px] items-center justify-center rounded-3xl border border-dashed border-[var(--ant-color-border)]"
          >
            <Empty :description="$t('bpm.task.done.message.clickCardTip')" />
          </div>
        </div>
      </section>
    </div>
  </Page>
</template>

<style lang="scss" scoped>
.done-task-layout {
  display: flex;
  height: 100%;
}

.done-task-sidebar {
  flex-shrink: 0;
  flex-direction: column;
  width: 400px;
}

.done-task-content {
  flex: 1;
  min-width: 0;
  margin-top: -18px;
}

.done-task-sidebar > :deep(.ant-card) {
  display: flex;
  flex-direction: column;
  height: 100%;
}

.done-task-sidebar > :deep(.ant-card-body) {
  display: flex;
  flex: 1;
  flex-direction: column;
  min-height: 0;
}

.done-task-sidebar > :deep(.ant-card-body > .p-4) {
  display: flex;
  flex: 1;
  flex-direction: column;
  min-height: 0;
}

.done-task-list {
  flex: 1;
  min-height: 0;
  padding-right: 8px;
  overflow-y: auto;
}

.done-task-card {
  display: flex;
  flex-direction: column;
  background: var(--ant-color-bg-container) !important;
  border: 1px solid color-mix(in srgb, hsl(var(--primary)) 50%, transparent) !important;
  border-radius: 16px !important;
  box-shadow: 0 1px 3px
    color-mix(in srgb, var(--ant-color-text) 6%, transparent) !important;
  transition:
    border-color 0.2s ease,
    border-width 0.15s ease,
    box-shadow 0.2s ease,
    transform 0.2s ease;
}

.done-task-skeleton {
  background: var(--ant-color-bg-container);
  border: 1px solid color-mix(in srgb, var(--ant-color-border) 72%, transparent);
  box-shadow: 0 1px 3px
    color-mix(in srgb, var(--ant-color-text) 4%, transparent);
}

.done-task-card:hover {
  border-color: color-mix(
    in srgb,
    hsl(var(--primary)) 55%,
    transparent
  ) !important;
  border-width: 2px !important;
  box-shadow: 0 10px 24px
    color-mix(in srgb, hsl(var(--primary)) 12%, transparent) !important;
  transform: translateY(-2px);
}

.done-task-card--active {
  border-color: hsl(var(--primary)) !important;
  border-width: 3px !important;
  box-shadow:
    0 0 0 2px color-mix(in srgb, hsl(var(--primary)) 20%, transparent),
    0 12px 28px color-mix(in srgb, hsl(var(--primary)) 16%, transparent) !important;
}

.done-task-divider {
  height: 1px;
  background: linear-gradient(
    90deg,
    transparent 0%,
    color-mix(in srgb, var(--ant-color-border) 88%, transparent) 50%,
    transparent 100%
  );
}

.done-task-meta-item,
.done-task-instance {
  display: flex;
  gap: 10px;
  align-items: center;
  justify-content: space-between;
}

.done-task-meta-label {
  color: var(--ant-color-text-secondary);
}

.done-task-meta-value {
  min-width: 0;
  font-weight: 500;
  color: var(--ant-color-text);
}

.done-task-history-button {
  display: inline-flex;
  align-items: center;
  padding-inline: 0;
  font-weight: 500;
}

.done-task-history-button :deep(.ant-btn-icon-only),
.done-task-history-button :deep(.ant-btn-loading-icon),
.done-task-history-button :deep(.ant-btn-icon) {
  display: inline-flex;
  align-items: center;
  align-self: center;
  justify-content: center;
  line-height: 1;
}

.done-task-history-content {
  display: inline-flex;
  gap: 4px;
  align-items: center;
  justify-content: center;
  white-space: nowrap;
}

.done-task-history-icon {
  display: inline-flex;
  align-items: center;
  align-self: center;
  justify-content: center;
  font-size: 14px;
  line-height: 1;
  transform: translateY(1px);
}

.done-task-history-icon :deep(svg) {
  display: block;
}

.done-task-card-action {
  display: flex;
  justify-content: flex-end;
  margin-top: auto;
}

.done-task-chip {
  display: inline-flex;
  gap: 6px;
  align-items: center;
  max-width: 100%;
  padding: 4px 10px;
  color: var(--ant-color-text-secondary);
  background: color-mix(
    in srgb,
    var(--ant-color-fill-quaternary) 82%,
    transparent
  );
  border: 1px solid color-mix(in srgb, var(--ant-color-border) 72%, transparent);
  border-radius: 9999px;
}

.done-task-chip-key {
  font-weight: 600;
}

.done-task-chip-value {
  max-width: 160px;
  overflow: hidden;
  text-overflow: ellipsis;
  color: var(--ant-color-text);
  white-space: nowrap;
}

.done-task-filter-popover :deep(.ant-popover-inner) {
  padding: 12px;
  background: var(--ant-color-bg-elevated);
  border-radius: 16px;
}

.done-task-popover-panel {
  width: 320px;
  min-width: 320px;
  max-width: 320px;
}

.done-task-icon-button {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 40px;
  min-width: 40px;
  padding: 0;
  border-radius: 12px;
}

.done-task-icon-button :deep(.ant-btn-icon) {
  display: inline-flex;
  align-items: center;
  justify-content: center;
}

.done-task-prefix-icon,
.done-task-action-icon {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  font-size: 16px;
  color: var(--ant-color-text-secondary);
}

.done-task-total-badge {
  padding: 4px 8px;
  font-size: 12px;
  font-weight: 600;
  color: hsl(var(--primary));
  background: color-mix(in srgb, hsl(var(--primary)) 12%, transparent);
  border: 1px solid color-mix(in srgb, hsl(var(--primary)) 24%, transparent);
  border-radius: 9999px;
}

.done-task-toolbar {
  position: sticky;
  top: 0;
  z-index: 2;
  padding: 1px;
  background: color-mix(
    in srgb,
    var(--ant-color-bg-container) 92%,
    transparent
  );
  backdrop-filter: blur(8px);
}

.done-task-filter-field {
  width: 100%;
}

.done-task-filter-field :deep(.ant-select-selector),
.done-task-filter-field :deep(.ant-input-affix-wrapper),
.done-task-filter-field :deep(.ant-input),
.done-task-filter-field :deep(.ant-select) {
  width: 100%;
}
</style>
