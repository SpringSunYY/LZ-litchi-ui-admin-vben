<script lang="ts" setup>
import type { BpmModelApi, ModelCategoryInfo } from '#/api/bpm/model';

import { computed, nextTick, ref, shallowRef, watch } from 'vue';
import { useRouter } from 'vue-router';

import { confirm, EllipsisText, useVbenModal } from '@vben/common-ui';
import { IconifyIcon } from '@vben/icons';
import { useUserStore } from '@vben/stores';
import { cloneDeep, formatDateTime } from '@vben/utils';

import { useSortable } from '@vueuse/integrations/useSortable';
import {
  Button,
  Card,
  Collapse,
  Dropdown,
  Menu,
  message,
  Table,
  Tag,
  Tooltip,
} from 'ant-design-vue';

import { deleteCategory } from '#/api/bpm/category';
import {
  cleanModel,
  deleteModel,
  deployModel,
  updateModelSortBatch,
  updateModelState,
} from '#/api/bpm/model';
import I18nDictTag from '#/components/i18n/i18n-dict-tag/i18n-dict-tag.vue';
import { $t } from '#/locales';
import { setPendingExtraTitle } from '#/router/state';
import { BpmModelFormType, DICT_TYPE } from '#/utils';

// 导入重命名表单
import CategoryRenameForm from '../../category/modules/rename-form.vue';
// 导入 FormCreate 表单详情
import FormCreateDetail from '../../form/modules/detail.vue';

const props = defineProps<{
  categoryInfo: ModelCategoryInfo;
  isCategorySorting: boolean;
}>();

const emit = defineEmits(['success']);

/** 重命名分类对话框 */
const [CategoryRenameModal, categoryRenameModalApi] = useVbenModal({
  connectedComponent: CategoryRenameForm,
  destroyOnClose: true,
});

/** 流程表单详情对话框 */
const [FormCreateDetailModal, formCreateDetailModalApi] = useVbenModal({
  connectedComponent: FormCreateDetail,
  destroyOnClose: true,
});

const router = useRouter();
// 获取当前登录用户Id
const userStore = useUserStore();
const userId = userStore.userInfo?.id;
const isModelSorting = ref(false);
const originalData = ref<BpmModelApi.ModelVO[]>([]);
// 用 shallowRef：避免 Vue 对每个 item 做 Proxy 包装，
// 这能让 Sortable 改写的数组结构和 ant-design-vue Table 的 data 同步更可靠
const modelList = shallowRef<BpmModelApi.ModelVO[]>([]);
const isExpand = ref(false);
const tableRef = ref();

// useSortable 返回的控制器 { start, stop, option }，不是 Sortable 实例本身
const sortableCtl = ref<null | {
  option: (name: string, value?: any) => any;
  start: () => void;
  stop: () => void;
}>(null);
/** 解决 v-model 问题，使用计算属性 */
const expandKeys = computed(() => (isExpand.value ? ['1'] : []));

// 表格列配置
const columns = [
  {
    title: $t('bpm.model.field.name'),
    dataIndex: 'name',
    key: 'name',
    align: 'left' as const,
    width: 250,
  },
  {
    title: $t('bpm.model.field.startUserIds'),
    dataIndex: 'startUserIds',
    key: 'startUserIds',
    align: 'center' as const,
    ellipsis: true,
    width: 150,
  },
  {
    title: $t('bpm.model.field.type'),
    dataIndex: 'type',
    key: 'type',
    align: 'center' as const,
    ellipsis: true,
    width: 150,
  },
  {
    title: $t('bpm.model.field.formType'),
    dataIndex: 'formType',
    key: 'formType',
    align: 'center' as const,
    ellipsis: true,
    width: 150,
  },
  {
    title: $t('bpm.model.field.deploymentTime'),
    dataIndex: 'deploymentTime',
    key: 'deploymentTime',
    align: 'center' as const,
    width: 250,
  },
  {
    title: $t('common.operation'),
    key: 'operation',
    align: 'center' as const,
    fixed: 'right' as const,
    width: 150,
  },
];

/** 处理模型的排序 */
async function handleModelSort() {
  // 保存初始数据，以便取消时回滚
  originalData.value = cloneDeep(props.categoryInfo.modelList);
  modelList.value = cloneDeep(props.categoryInfo.modelList);
  // 展开数据
  isExpand.value = true;
  isModelSorting.value = true;

  // 关键修复：必须等 Table 渲染完成，再去查 tbody 节点。
  await nextTick();
  await nextTick();

  // 先销毁旧实例（vueuse 对同一元素只会初始化一次，必须先 stop 才能重建）
  sortableCtl.value?.stop();
  sortableCtl.value = null;

  const sortableSelector = `.category-${props.categoryInfo.id} tbody`;
  const target = document.querySelector(sortableSelector);
  if (!target) {
    console.warn('[model-sort] 未找到可排序的 tbody 节点:', sortableSelector);
    return;
  }

  sortableCtl.value = useSortable(sortableSelector, modelList, {
    disabled: false,
    animation: 150,
    // 整个 tr 都可以作为拖动源
    handle: '.bpm-drag-handle',
    // 禁用 vueuse 默认 onUpdate：它会基于 tbody 子节点索引（含 measure row）splice，
    // 与我们 modelList 数组索引错位，导致乱序。我们自己接管 onEnd。
    onUpdate: () => {},
    onEnd: (evt) => {
      // 不依赖 Sortable 给的 oldIndex/newIndex（它们含 measure row 干扰），
      // 直接按 tbody 里真实可见的 data-row-key 顺序重排 modelList。
      const tbody = evt.to as HTMLElement | undefined;
      if (!tbody) return;

      // 按 DOM 当前顺序收集所有数据行的 key
      const rowEls = [
        ...tbody.querySelectorAll<HTMLElement>('tr[data-row-key]'),
      ];
      const domKeyOrder: string[] = rowEls
        .map((el) => el.dataset.rowKey)
        .filter((k): k is string => !!k);

      const currentIds = modelList.value.map((item) => String(item.id));
      // 如果 DOM 顺序与当前数组顺序完全一致，说明只是拖了一下又放回原位
      if (
        domKeyOrder.length === currentIds.length &&
        domKeyOrder.every((k, i) => k === currentIds[i])
      ) {
        return;
      }

      // 按 DOM 顺序重排 modelList
      const map = new Map(
        modelList.value.map((item) => [String(item.id), item]),
      );
      const newList: BpmModelApi.ModelVO[] = [];
      for (const key of domKeyOrder) {
        const item = map.get(key);
        if (item) newList.push(item);
      }
      // 兜底：把没出现在 DOM 里的 item 也补上（理论上不会发生）
      if (newList.length < modelList.value.length) {
        for (const item of modelList.value) {
          if (!domKeyOrder.includes(String(item.id))) {
            newList.push(item);
          }
        }
      }

      modelList.value = newList;
    },
  }) as any;
}

/** 处理模型的排序提交 */
async function handleModelSortSubmit() {
  try {
    const ids = modelList.value.map((item) => item.id);
    await updateModelSortBatch(ids);
    message.success($t('bpm.model.message.sortModelSuccess'));
    isModelSorting.value = false;
    // 销毁排序实例，让父组件 getList 刷新 props 时自然恢复
    sortableCtl.value?.stop();
    sortableCtl.value = null;
    emit('success');
  } catch (error) {
    console.error('排序保存失败', error);
  }
}

/** 处理模型的排序取消 */
function handleModelSortCancel() {
  modelList.value = cloneDeep(originalData.value);
  isModelSorting.value = false;
  sortableCtl.value?.stop();
  sortableCtl.value = null;
}

/** 处理下拉菜单命令 */
function handleCommand(command: string) {
  if (command === 'renameCategory') {
    // 打开重命名分类对话框
    categoryRenameModalApi.setData(props.categoryInfo).open();
  } else if (command === 'deleteCategory') {
    handleDeleteCategory();
  }
}

/** 删除流程分类 */
async function handleDeleteCategory() {
  if (props.categoryInfo.modelList.length > 0) {
    message.warning($t('bpm.model.message.deleteCategoryWarn'));
    return;
  }

  confirm({
    content: $t('bpm.model.message.confirmDeleteCategory', [
      props.categoryInfo.name,
    ]),
  }).then(async () => {
    // 发起删除
    await deleteCategory(props.categoryInfo.id);
    message.success(
      $t('ui.actionMessage.deleteSuccess', [props.categoryInfo.name]),
    );
    // 刷新列表
    emit('success');
  });
}

/** 处理表单详情点击 */
function handleFormDetail(row: any) {
  if (row.formType === BpmModelFormType.NORMAL) {
    const data = {
      id: row.formId,
    };
    formCreateDetailModalApi.setData(data).open();
  } else {
    // TODO 待实现
    console.warn('业务表单待实现', row);
  }
}

/** 判断是否是流程管理员 */
function isManagerUser(row: any) {
  return row.managerUserIds && row.managerUserIds.includes(userId);
}

async function modelOperation(type: string, recorde: any) {
  setPendingExtraTitle(recorde.name ?? recorde.id);
  await router.push({
    name: 'BpmModelUpdate',
    params: { id: recorde.id, type },
  });
}

/** 发布流程 */
async function handleDeploy(row: any) {
  confirm({
    beforeClose: async ({ isConfirm }) => {
      if (!isConfirm) return;
      // 发起部署
      await deployModel(row.id);
      return true;
    },
    content: $t('bpm.model.message.confirmDeploy', [row.name]),
    icon: 'question',
  }).then(async () => {
    message.success($t('bpm.model.message.deploySuccess', [row.name]));
    // 刷新列表
    emit('success');
  });
}

/** '更多'操作按钮 */
function handleModelCommand(command: string, row: any) {
  switch (command) {
    case 'handleChangeState': {
      handleChangeState(row);
      break;
    }
    case 'handleClean': {
      handleClean(row);
      break;
    }
    case 'handleCopy': {
      modelOperation('copy', row);
      break;
    }
    case 'handleDefinitionList': {
      handleDefinitionList(row);
      break;
    }
    case 'handleDelete': {
      handleDelete(row);
      break;
    }
    case 'handleReport': {
      console.warn('报表待实现', row);
      break;
    }
    default: {
      break;
    }
  }
}

/** 更新状态操作 */
function handleChangeState(row: any) {
  const state = row.processDefinition.suspensionState;
  const newState = state === 1 ? 2 : 1;
  const statusState =
    state === 1
      ? $t('bpm.model.message.disable')
      : $t('bpm.model.message.enable');
  confirm({
    beforeClose: async ({ isConfirm }) => {
      if (!isConfirm) return;
      // 发起更新状态
      await updateModelState(row.id, newState);
      return true;
    },
    content: $t('bpm.model.message.confirmEnable', [statusState, row.name]),
    icon: 'question',
  }).then(async () => {
    message.success(
      $t('bpm.model.message.enableSuccess', [statusState, row.name]),
    );
    // 刷新列表
    emit('success');
  });
}

/** 清理流程操作 */
function handleClean(row: any) {
  confirm({
    beforeClose: async ({ isConfirm }) => {
      if (!isConfirm) return;
      // 发起清理操作
      await cleanModel(row.id);
      return true;
    },
    content: $t('bpm.model.message.confirmClean', [row.name]),
    icon: 'question',
  }).then(async () => {
    message.success($t('bpm.model.message.cleanSuccess', [row.name]));
    // 刷新列表
    emit('success');
  });
}

/** 删除流程操作 */
function handleDelete(row: any) {
  confirm({
    beforeClose: async ({ isConfirm }) => {
      if (!isConfirm) return;
      // 发起删除操作
      await deleteModel(row.id);
      return true;
    },
    content: $t('bpm.model.message.confirmDelete', [row.name]),
    icon: 'question',
  }).then(async () => {
    message.success($t('bpm.model.message.deleteSuccess', [row.name]));
    // 刷新列表
    emit('success');
  });
}

/** 跳转到指定流程定义列表 */
function handleDefinitionList(row: any) {
  setPendingExtraTitle(row.name ?? row.id);
  router.push({
    name: 'BpmProcessDefinition',
    query: {
      key: row.key,
    },
  });
}

/**
 * 同步外部 props.modelList 到本地 modelList。
 * 必须用 watch（不是 watchEffect），并在排序模式下跳过覆盖，
 * 否则 Sortable 拖动改写数组后会被 props 同步反向回滚，导致"拖了但顺序没变"。
 */
watch(
  () => props.categoryInfo.modelList,
  (newList) => {
    if (!newList) return;
    // 排序模式下不要用 props 覆盖，否则拖动结果会被擦掉
    if (isModelSorting.value) return;
    // 防御性：过滤掉 undefined / null，避免 ant-design-vue Table 渲染时报 "record is undefined"
    const safeList = newList.filter((item) => item !== null);
    modelList.value = safeList as BpmModelApi.ModelVO[];
    if (safeList.length > 0) {
      isExpand.value = true;
    }
  },
  { immediate: true, deep: false },
);

/** 分类整体进入排序模式时收起子表，避免子表自身拖拽与外层冲突 */
watch(
  () => props.isCategorySorting,
  (val) => {
    if (val) {
      isExpand.value = false;
      sortableCtl.value?.stop();
      sortableCtl.value = null;
    }
  },
);

/** 自定义表格行渲染 */
function customRow(_record: any) {
  return {
    class: isModelSorting.value ? 'cursor-move' : '',
  };
}

// 处理重命名成功
const handleRenameSuccess = () => {
  emit('success');
};
</script>

<template>
  <div>
    <Card
      :body-style="{ padding: 0 }"
      class="category-draggable-model mb-5 rounded-lg transition-all duration-300 ease-in-out hover:shadow-xl"
    >
      <div class="flex h-12 items-center">
        <!-- 头部：分类名 -->
        <div class="flex items-center">
          <Tooltip
            v-if="isCategorySorting"
            :title="$t('bpm.model.message.dragSortTip')"
          >
            <span
              class="icon-[ic--round-drag-indicator] ml-2.5 cursor-move text-2xl text-gray-500"
            ></span>
          </Tooltip>
          <div class="ml-4 mr-2 text-lg font-medium">
            {{ categoryInfo.name }}
          </div>
          <div class="text-gray-500">
            ({{ categoryInfo.modelList?.length || 0 }})
          </div>
        </div>

        <!-- 头部：操作 -->
        <div class="flex flex-1 items-center" v-show="!isCategorySorting">
          <div
            v-if="categoryInfo.modelList.length > 0"
            class="ml-3 flex cursor-pointer items-center transition-transform duration-300"
            :class="isExpand ? 'rotate-180' : 'rotate-0'"
            @click="isExpand = !isExpand"
          >
            <span
              class="icon-[ic--round-expand-more] text-3xl text-gray-400"
            ></span>
          </div>

          <div
            class="ml-auto flex items-center"
            :class="isModelSorting ? 'mr-4' : 'mr-8'"
          >
            <template v-if="!isModelSorting">
              <Button
                v-if="categoryInfo.modelList.length > 0"
                type="link"
                size="small"
                class="flex items-center text-[14px]"
                @click.stop="handleModelSort"
              >
                <template #icon>
                  <IconifyIcon icon="lucide:align-start-vertical" />
                </template>
                {{ $t('bpm.model.message.sort') }}
              </Button>
              <Dropdown placement="bottom" arrow>
                <Button
                  type="link"
                  size="small"
                  class="flex items-center text-[14px]"
                >
                  <template #icon>
                    <IconifyIcon icon="lucide:settings" />
                  </template>
                  {{ $t('bpm.model.message.categoryOp') }}
                </Button>
                <template #overlay>
                  <Menu @click="(e) => handleCommand(e.key as string)">
                    <Menu.Item key="renameCategory">
                      {{ $t('bpm.model.message.rename') }}
                    </Menu.Item>
                    <Menu.Item key="deleteCategory">
                      {{ $t('bpm.model.message.deleteCategory') }}
                    </Menu.Item>
                  </Menu>
                </template>
              </Dropdown>
            </template>

            <template v-else>
              <Button @click.stop="handleModelSortCancel" class="mr-2">
                {{ $t('common.cancel') }}
              </Button>
              <Button type="primary" @click.stop="handleModelSortSubmit">
                {{ $t('bpm.model.message.saveSort') }}
              </Button>
            </template>
          </div>
        </div>
      </div>

      <!-- 模型列表 -->
      <Collapse
        :active-key="expandKeys"
        :bordered="false"
        class="bg-transparent"
      >
        <Collapse.Panel
          key="1"
          :show-arrow="false"
          class="border-0 bg-transparent p-0"
          v-show="isExpand"
        >
          <Table
            v-if="modelList && modelList.length > 0"
            :class="`category-${categoryInfo.id}`"
            ref="tableRef"
            :data-source="modelList"
            :columns="columns"
            :pagination="false"
            :custom-row="customRow"
            :scroll="{ x: '100%' }"
            row-key="id"
          >
            <template #bodyCell="{ column, record }">
              <!-- 防御：ant-design-vue 在 measure row / 切换 data 时可能传 undefined -->
              <template v-if="!record"></template>
              <!-- 流程名 -->
              <template v-if="record && column.key === 'name'">
                <div class="flex items-center">
                  <Tooltip
                    v-if="isModelSorting"
                    :title="$t('bpm.model.message.dragSortTip')"
                  >
                    <span
                      class="bpm-drag-handle icon-[ic--round-drag-indicator] mr-2.5 cursor-move text-2xl text-gray-500"
                    ></span>
                  </Tooltip>
                  <div
                    v-if="!record.icon"
                    class="mr-2.5 flex h-9 w-9 items-center justify-center rounded bg-blue-500 text-white"
                  >
                    <span style="font-size: 12px">
                      {{ record.name.substring(0, 2) }}
                    </span>
                  </div>
                  <img
                    v-else
                    :src="record.icon"
                    class="mr-2.5 h-9 w-9 rounded"
                    :alt="$t('bpm.model.message.noIcon')"
                  />
                  <EllipsisText :max-width="160" :tooltip-when-ellipsis="true">
                    {{ record.name }}
                  </EllipsisText>
                </div>
              </template>

              <!-- 可见范围列-->
              <template v-else-if="record && column.key === 'startUserIds'">
                <span
                  v-if="
                    !record.startUsers?.length && !record.startDepts?.length
                  "
                >
                  {{ $t('bpm.model.message.allVisible') }}
                </span>
                <span v-else-if="record.startUsers?.length === 1">
                  {{ record.startUsers[0].nickname }}
                </span>
                <span v-else-if="record.startDepts?.length === 1">
                  {{ record.startDepts[0].name }}
                </span>
                <span v-else-if="record.startDepts?.length > 1">
                  <Tooltip
                    placement="top"
                    :title="
                      record.startDepts.map((dept: any) => dept.name).join('、')
                    "
                  >
                    {{ record.startDepts[0].name }}{{ $t('common.etc') }}
                    {{
                      $t('bpm.model.message.deptVisible', [
                        record.startDepts.length,
                      ])
                    }}
                  </Tooltip>
                </span>
                <span v-else-if="record.startUsers?.length > 1">
                  <Tooltip
                    placement="top"
                    :title="
                      record.startUsers
                        .map((user: any) => user.nickname)
                        .join('、')
                    "
                  >
                    {{ record.startUsers[0].nickname }}{{ $t('common.etc') }}
                    {{
                      $t('bpm.model.message.userVisible', [
                        record.startUsers.length,
                      ])
                    }}
                  </Tooltip>
                </span>
              </template>
              <!-- 流程类型列 -->
              <template v-else-if="record && column.key === 'type'">
                <!-- <I18nDictTag  :value="record.type" :type="DICT_TYPE.BPM_MODEL_TYPE" /> -->
                <!-- <Tag>{{ record.type }}</Tag> -->
                <I18nDictTag
                  :type="DICT_TYPE.BPM_MODEL_TYPE"
                  :value="record.type"
                />
              </template>
              <!-- 表单信息列 -->
              <template v-else-if="record && column.key === 'formType'">
                <!-- TODO BpmModelFormType.NORMAL -->
                <Button
                  v-if="record.formType === BpmModelFormType.NORMAL"
                  type="link"
                  @click="handleFormDetail(record)"
                >
                  {{ record.formName }}
                </Button>
                <!-- TODO BpmModelFormType.CUSTOM -->
                <Button
                  v-else-if="record.formType === BpmModelFormType.CUSTOM"
                  type="link"
                  @click="handleFormDetail(record)"
                >
                  {{ record.formCustomCreatePath }}
                </Button>
                <span v-else>{{ $t('bpm.model.message.noForm') }}</span>
              </template>
              <!-- 最后发布列 -->
              <template v-else-if="record && column.key === 'deploymentTime'">
                <div class="flex items-center justify-center">
                  <span v-if="record.processDefinition" class="w-[150px]">
                    {{
                      formatDateTime(record.processDefinition.deploymentTime)
                    }}
                  </span>
                  <Tag v-if="record.processDefinition">
                    v{{ record.processDefinition.version }}
                  </Tag>
                  <Tag v-else color="warning">
                    {{ $t('bpm.model.message.undeployed') }}
                  </Tag>
                  <Tag
                    v-if="record.processDefinition?.suspensionState === 2"
                    color="warning"
                    class="ml-[10px]"
                  >
                    {{ $t('bpm.model.message.suspended') }}
                  </Tag>
                </div>
              </template>
              <!-- 操作列 -->
              <template v-else-if="record && column.key === 'operation'">
                <div class="flex items-center space-x-0">
                  <!-- TODO 权限校验-->
                  <Button
                    type="link"
                    size="small"
                    class="px-1"
                    @click="modelOperation('update', record)"
                    :disabled="!isManagerUser(record)"
                  >
                    {{ $t('bpm.model.message.edit') }}
                  </Button>
                  <Button
                    type="link"
                    size="small"
                    class="px-1"
                    @click="handleDeploy(record)"
                    :disabled="!isManagerUser(record)"
                  >
                    {{ $t('bpm.model.message.publish') }}
                  </Button>
                  <Dropdown placement="bottomRight" arrow>
                    <Button type="link" size="small" class="px-1">
                      {{ $t('bpm.model.message.more') }}
                    </Button>
                    <template #overlay>
                      <Menu
                        @click="
                          (e) => handleModelCommand(e.key as string, record)
                        "
                      >
                        <Menu.Item key="handleCopy">
                          {{ $t('bpm.model.message.copy') }}
                        </Menu.Item>
                        <Menu.Item key="handleDefinitionList">
                          {{ $t('bpm.model.message.history') }}
                        </Menu.Item>

                        <!-- TODO 待实现报表
                        <Menu.Item
                          key="handleReport"
                          :disabled="!isManagerUser(record)"
                        >
                          {{ $t('bpm.model.message.report') }}
                        </Menu.Item> -->
                        <Menu.Item
                          key="handleChangeState"
                          v-if="record.processDefinition"
                          :disabled="!isManagerUser(record)"
                        >
                          {{
                            record.processDefinition.suspensionState === 1
                              ? $t('bpm.model.message.disable')
                              : $t('bpm.model.message.enable')
                          }}
                        </Menu.Item>
                        <Menu.Item
                          danger
                          key="handleClean"
                          :disabled="!isManagerUser(record)"
                        >
                          {{ $t('bpm.model.message.clean') }}
                        </Menu.Item>
                        <Menu.Item
                          danger
                          key="handleDelete"
                          :disabled="!isManagerUser(record)"
                        >
                          {{ $t('common.delete') }}
                        </Menu.Item>
                      </Menu>
                    </template>
                  </Dropdown>
                </div>
              </template>
            </template>
          </Table>
        </Collapse.Panel>
      </Collapse>
    </Card>

    <!-- 重命名分类弹窗 -->
    <CategoryRenameModal @success="handleRenameSuccess" />
    <!-- 流程表单详情对话框 -->
    <FormCreateDetailModal />
  </div>
</template>

<style lang="scss" scoped>
.category-draggable-model {
  // ant-table-tbody 自定义样式
  :deep(.ant-table-tbody > tr > td) {
    overflow: hidden;
    border-bottom: none;
  }
  // ant-collapse-header 自定义样式
  :deep(.ant-collapse-header) {
    padding: 0;
  }

  // 优化表格渲染性能
  :deep(.ant-table-tbody) {
    transform: translateZ(0);
    will-change: transform;
  }

  // 折叠面板样式
  :deep(.ant-collapse-content-box) {
    padding: 0;
  }
}
</style>
