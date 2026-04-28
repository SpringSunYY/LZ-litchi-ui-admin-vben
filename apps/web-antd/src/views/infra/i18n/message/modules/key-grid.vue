<script lang="ts" setup>
import type {
  VxeGridListeners,
  VxeTableGridOptions,
} from '#/adapter/vxe-table';
import type { I18nKeyApi } from '#/api/infra/i18n/i18nKey';

import { ref } from 'vue';

import { useVbenModelDrawer } from '@vben/common-ui';
import { downloadFileFromBlobPart } from '@vben/utils';

import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  deleteI18nKey,
  exportI18nKey,
  getI18nKeyPage,
} from '#/api/infra/i18n/i18nKey';
import { CascadeDeleteSwitch } from '#/components/cascade-delete-switch';
import { $t } from '#/locales';

import { useKeyGridColumns, useKeyGridFormSchema } from '../data';
import KeyForm from './key-form.vue';

const emit = defineEmits<{
  deleted: [];
  select: [row: I18nKeyApi.I18nKey];
}>();

const [FormModal, formModalApi] = useVbenModelDrawer({
  connectedComponent: KeyForm,
  destroyOnClose: true,
  type: 'drawer',
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

/** 全局级联删除开关（默认 false） */
const isDeleteChildren = ref(false);

/** 删除国际化键名 */
async function handleDelete(row: I18nKeyApi.I18nKey) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting', [row.id]),
    key: 'action_key_msg',
  });
  try {
    await deleteI18nKey(row.id as number, isDeleteChildren.value);
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
  gridEvents,
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
          ]"
        />
        <CascadeDeleteSwitch v-model="isDeleteChildren" />
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
