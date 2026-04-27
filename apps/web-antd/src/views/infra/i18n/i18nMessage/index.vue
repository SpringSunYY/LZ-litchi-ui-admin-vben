<script lang="ts" setup>
import type {VxeTableGridOptions} from '#/adapter/vxe-table';
import type {I18nMessageApi} from '#/api/infra/i18nMessage';

import {ref} from 'vue';

import {Page, useVbenModal} from '@vben/common-ui';
import {downloadFileFromBlobPart, isEmpty} from '@vben/utils';

import {message} from 'ant-design-vue';

import {ACTION_ICON, TableAction, useVbenVxeGrid} from '#/adapter/vxe-table';
import {
  deleteI18nMessage,
  deleteI18nMessageList,
  exportI18nMessage,
  getI18nMessagePage,
} from '#/api/infra/i18nMessage';
import {$t} from '#/locales';

import {useGridColumns, useGridFormSchema} from './data';
import Form from './modules/form.vue';

const [FormModal, formModalApi] = useVbenModal({
  connectedComponent: Form,
  destroyOnClose: true,
});

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

/** 创建国际化信息 */
function handleCreate() {
  formModalApi.setData({}).open();
}

/** 编辑国际化信息 */
function handleEdit(row: I18nMessageApi.I18nMessage) {
  formModalApi.setData(row).open();
}

/** 删除国际化信息 */
async function handleDelete(row: I18nMessageApi.I18nMessage) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting', [row.id]),
    key: 'action_key_msg',
  });
  try {
    await deleteI18nMessage(row.id as number);
    message.success({
      content: $t('ui.actionMessage.deleteSuccess', [row.id]),
      key: 'action_key_msg',
    });
    onRefresh();
  } finally {
    hideLoading();
  }
}

/** 批量删除国际化信息 */
async function handleDeleteBatch() {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting'),
    key: 'action_key_msg',
  });
  try {
    await deleteI18nMessageList(checkedIds.value);
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
  records: I18nMessageApi.I18nMessage[];
}) {
  checkedIds.value = records.map((item) => item.id);
}

/** 导出表格 */
async function handleExport() {
  const data = await exportI18nMessage(await gridApi.formApi.getValues());
  downloadFileFromBlobPart({fileName: '国际化信息.xls', source: data});
}

const [Grid, gridApi] = useVbenVxeGrid({
  formOptions: {
    schema: useGridFormSchema(),
  },
  gridOptions: {
    columns: useGridColumns(),
    height: 'auto',
    pagerConfig: {
      enabled: true,
    },
    proxyConfig: {
      ajax: {
        query: async ({page}, formValues) => {
          return await getI18nMessagePage({
            pageNo: page.currentPage,
            pageSize: page.pageSize,
            ...formValues,
          });
        },
      },
    },
    rowConfig: {
      keyField: 'id',
      isHover: true,
    },
    toolbarConfig: {
      refresh: {code: 'query'},
      search: true,
    },
  } as VxeTableGridOptions<I18nMessageApi.I18nMessage>,
  gridEvents: {
    checkboxAll: handleRowCheckboxChange,
    checkboxChange: handleRowCheckboxChange,
  },
});
</script>

<template>
  <Page auto-content-height>
    <FormModal @success="onRefresh"/>

    <Grid table-title="国际化信息列表">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('ui.actionTitle.create', ['国际化信息']),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['infra:i18n-key:create'],
              onClick: handleCreate,
            },
            {
              label: $t('ui.actionTitle.export'),
              type: 'primary',
              icon: ACTION_ICON.DOWNLOAD,
              auth: ['infra:i18n-key:export'],
              onClick: handleExport,
            },
            {
              label: $t('ui.actionTitle.deleteBatch'),
              type: 'primary',
              danger: true,
              icon: ACTION_ICON.DELETE,
              disabled: isEmpty(checkedIds),
              auth: ['infra:i18n-key:delete'],
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
              auth: ['infra:i18n-key:update'],
              onClick: handleEdit.bind(null, row),
            },
            {
              label: $t('common.delete'),
              type: 'link',
              danger: true,
              icon: ACTION_ICON.DELETE,
              auth: ['infra:i18n-key:delete'],
              popConfirm: {
                title: $t('ui.actionMessage.deleteConfirm', [row.id]),
                confirm: handleDelete.bind(null, row),
              },
            },
          ]"
        />
      </template>
    </Grid>
  </Page>
</template>
