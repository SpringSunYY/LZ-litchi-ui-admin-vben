<script lang="ts" setup>
import type {
  VxeGridListeners,
  VxeTableGridOptions,
} from '#/adapter/vxe-table';
import type { I18nKeyApi } from '#/api/infra/i18n/i18nKey';

import { ref } from 'vue';

import { useVbenModal } from '@vben/common-ui';
import { downloadFileFromBlobPart } from '@vben/utils';

import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  deleteI18nKey,
  deleteI18nKeyList,
  exportI18nKey,
  getI18nKeyPage,
} from '#/api/infra/i18n/i18nKey';
import { $t } from '#/locales';

import { useKeyGridColumns, useKeyGridFormSchema } from '../data';
import KeyForm from './key-form.vue';

const emit = defineEmits<{
  select: [row: I18nKeyApi.I18nKey];
  deleted: [];
}>();

const [FormModal, formModalApi] = useVbenModal({
  connectedComponent: KeyForm,
  destroyOnClose: true,
});

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

/** 导出表格 */
async function handleExport() {
  const data = await exportI18nKey(await gridApi.formApi.getValues());
  downloadFileFromBlobPart({ fileName: '国际化键名.xls', source: data });
}

/** 创建国际化键名 */
function handleCreate() {
  formModalApi.setData({}).open();
}

/** 编辑国际化键名 */
function handleEdit(row: I18nKeyApi.I18nKey) {
  formModalApi.setData(row).open();
}

/** 删除国际化键名 */
async function handleDelete(row: I18nKeyApi.I18nKey) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting', [row.id]),
    key: 'action_key_msg',
  });
  try {
    await deleteI18nKey(row.id as number);
    message.success({
      content: $t('ui.actionMessage.deleteSuccess', [row.id]),
      key: 'action_key_msg',
    });
    onRefresh();
    emit('deleted');
  } finally {
    hideLoading();
  }
}

/** 批量删除国际化键名 */
async function handleDeleteBatch() {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting'),
    key: 'action_key_msg',
  });
  try {
    await deleteI18nKeyList(checkedIds.value);
    message.success({
      content: $t('ui.actionMessage.deleteSuccess'),
      key: 'action_key_msg',
    });
    onRefresh();
  } finally {
    hideLoading();
  }
}

const checkedIds = ref<number[]>([]);
function handleRowCheckboxChange({
  records,
}: {
  records: I18nKeyApi.I18nKey[];
}) {
  checkedIds.value = records.map((item) => item.id);
}

/** 表格事件 */
const gridEvents: VxeGridListeners<I18nKeyApi.I18nKey> = {
  cellClick: ({ row }) => {
    emit('select', row);
  },
};

const [Grid, gridApi] = useVbenVxeGrid({
  formOptions: {
    schema: useKeyGridFormSchema(),
  },
  gridOptions: {
    columns: useKeyGridColumns(),
    height: 'auto',
    keepSource: true,
    pagerConfig: {
      enabled: true,
    },
    proxyConfig: {
      ajax: {
        query: async ({ page }, formValues) => {
          return await getI18nKeyPage({
            pageNo: page.currentPage,
            pageSize: page.pageSize,
            ...formValues,
          });
        },
      },
    },
    rowConfig: {
      keyField: 'id',
      isCurrent: true,
      isHover: true,
    },
    toolbarConfig: {
      refresh: { code: 'query' },
      search: true,
    },
  } as VxeTableGridOptions<I18nKeyApi.I18nKey>,
  gridEvents: {
    checkboxAll: handleRowCheckboxChange,
    checkboxChange: handleRowCheckboxChange,
    ...gridEvents,
  },
});

defineExpose({ onRefresh });
</script>

<template>
  <div class="h-full">
    <FormModal @success="onRefresh" />

    <Grid table-title="国际化键名列表">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('ui.actionTitle.create', ['国际化键名']),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['infra:message:create'],
              onClick: handleCreate,
            },
            {
              label: $t('ui.actionTitle.export'),
              type: 'primary',
              icon: ACTION_ICON.DOWNLOAD,
              auth: ['infra:message:export'],
              onClick: handleExport,
            },
            {
              label: $t('ui.actionTitle.deleteBatch'),
              type: 'primary',
              danger: true,
              icon: ACTION_ICON.DELETE,
              disabled: checkedIds.length === 0,
              auth: ['infra:message:delete'],
              onClick: handleDeleteBatch,
            },
          ]"
        />
      </template>
      <template #actions="{ row }">
        <TableAction
          :actions="[
            {
              label: $t('common.edit'),
              type: 'link',
              icon: ACTION_ICON.EDIT,
              auth: ['infra:message:update'],
              onClick: handleEdit.bind(null, row),
            },
            {
              label: $t('common.delete'),
              type: 'link',
              danger: true,
              icon: ACTION_ICON.DELETE,
              auth: ['infra:message:delete'],
              popConfirm: {
                title: $t('ui.actionMessage.deleteConfirm', [row.id]),
                confirm: handleDelete.bind(null, row),
              },
            },
          ]"
        />
      </template>
    </Grid>
  </div>
</template>
