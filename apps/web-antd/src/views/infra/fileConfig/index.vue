<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { InfraFileConfigApi } from '#/api/infra/file-config';

import { confirm, Page, useVbenModelDrawer } from '@vben/common-ui';
import { openWindow } from '@vben/utils';

import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  deleteFileConfig,
  getFileConfigPage,
  testFileConfig,
  updateFileConfigMaster,
} from '#/api/infra/file-config';
import { $t } from '#/locales';

import { useGridColumns, useGridFormSchema } from './data';
import Form from './modules/form.vue';

const [FormModal, formModalApi] = useVbenModelDrawer({
  connectedComponent: Form,
  destroyOnClose: true,
  type: 'drawer',
});

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

/** 创建文件配置 */
function handleCreate() {
  formModalApi.setData(null).open();
}

/** 编辑文件配置 */
function handleEdit(row: InfraFileConfigApi.FileConfig) {
  formModalApi.setData(row).open();
}

/** 设为主配置 */
async function handleMaster(row: InfraFileConfigApi.FileConfig) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.updating', [row.name]),
    duration: 0,
    key: 'action_process_msg',
  });
  try {
    await updateFileConfigMaster(row.id as number);
    message.success($t('ui.actionMessage.operationSuccess'));
    onRefresh();
  } finally {
    hideLoading();
  }
}

/** 测试文件配置 */
async function handleTest(row: InfraFileConfigApi.FileConfig) {
  const hideLoading = message.loading({
    content: $t('infra.fileConfig.message.testingUpload'),
    duration: 0,
    key: 'action_process_msg',
  });
  try {
    const response = await testFileConfig(row.id as number);
    hideLoading();
    // 确认是否访问该文件
    confirm({
      title: $t('infra.fileConfig.message.testSuccessTitle'),
      content: $t('infra.fileConfig.message.testSuccessContent'),
      confirmText: $t('infra.fileConfig.message.visit'),
      cancelText: $t('common.cancel'),
    }).then(() => {
      openWindow(response);
    });
  } finally {
    hideLoading();
  }
}

/** 删除文件配置 */
async function handleDelete(row: InfraFileConfigApi.FileConfig) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting', [row.name]),
    key: 'action_key_msg',
  });
  try {
    await deleteFileConfig(row.id as number);
    message.success({
      content: $t('ui.actionMessage.deleteSuccess', [row.name]),
      key: 'action_key_msg',
    });
    onRefresh();
  } finally {
    hideLoading();
  }
}

const [Grid, gridApi] = useVbenVxeGrid({
  formOptions: {
    schema: useGridFormSchema(),
  },
  gridOptions: {
    columns: useGridColumns(),
    height: 'auto',
    keepSource: true,
    proxyConfig: {
      ajax: {
        query: async ({ page }, formValues) => {
          return await getFileConfigPage({
            pageNo: page.currentPage,
            pageSize: page.pageSize,
            ...formValues,
          });
        },
      },
    },
    rowConfig: {
      keyField: 'id',
    },
    toolbarConfig: {
      refresh: { code: 'query' },
      search: true,
    },
  } as VxeTableGridOptions<InfraFileConfigApi.FileConfig>,
});
</script>

<template>
  <Page auto-content-height>
    <FormModal @success="onRefresh" />
    <Grid :table-title="$t('infra.fileConfig.list')">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('ui.actionTitle.create', [
                $t('infra.fileConfig.fileConfig'),
              ]),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['infra:file-config:create'],
              onClick: handleCreate,
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
              auth: ['infra:file-config:update'],
              onClick: handleEdit.bind(null, row),
            },
            {
              label: $t('infra.fileConfig.action.test'),
              type: 'link',
              icon: 'lucide:test-tube-diagonal',
              auth: ['infra:file-config:update'],
              onClick: handleTest.bind(null, row),
            },
          ]"
          :drop-down-actions="[
            {
              label: $t('infra.fileConfig.message.master'),
              type: 'link',
              auth: ['infra:file-config:update'],
              popConfirm: {
                title: $t('infra.fileConfig.message.confirmSetMaster', [
                  row.name,
                ]),
                confirm: handleMaster.bind(null, row),
              },
            },
            {
              label: $t('common.delete'),
              type: 'link',
              danger: true,
              auth: ['infra:file-config:delete'],
              popConfirm: {
                title: $t('ui.actionMessage.deleteConfirm', [row.name]),
                confirm: handleDelete.bind(null, row),
              },
            },
          ]"
        />
      </template>
    </Grid>
  </Page>
</template>
