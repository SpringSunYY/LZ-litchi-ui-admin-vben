<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { InfraCodegenApi } from '#/api/infra/codegen';
import type { InfraDataSourceConfigApi } from '#/api/infra/data-source-config';

import { computed, ref } from 'vue';
import { useRouter } from 'vue-router';

import { DocAlert, Page, useVbenModal } from '@vben/common-ui';
import { downloadFileFromBlobPart } from '@vben/utils';

import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  batchDownloadCodegen,
  deleteCodegenTable,
  downloadCodegen,
  getCodegenTablePage,
  syncCodegenFromDB,
} from '#/api/infra/codegen';
import { getDataSourceConfigList } from '#/api/infra/data-source-config';
import { $t } from '#/locales';
import { pickSort } from '#/utils';

import { useGridColumns, useGridFormSchema } from './data';
import ImportTable from './modules/import-table.vue';
import PreviewCode from './modules/preview-code.vue';

const router = useRouter();
const dataSourceConfigList = ref<InfraDataSourceConfigApi.DataSourceConfig[]>(
  [],
);
const selectedRows = ref<InfraCodegenApi.CodegenTable[]>([]);
const selectedRowsCount = computed(() => selectedRows.value?.length ?? 0);

/** 获取数据源名称 */
const getDataSourceConfigName = (dataSourceConfigId: number) => {
  return dataSourceConfigList.value.find(
    (item) => item.id === dataSourceConfigId,
  )?.name;
};

const [ImportModal, importModalApi] = useVbenModal({
  connectedComponent: ImportTable,
  destroyOnClose: true,
});

const [PreviewModal, previewModalApi] = useVbenModal({
  connectedComponent: PreviewCode,
  destroyOnClose: true,
});

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

/** 导入表格 */
function handleImport() {
  importModalApi.open();
}

/** 预览代码 */
function handlePreview(row: InfraCodegenApi.CodegenTable) {
  previewModalApi.setData(row).open();
}

/** 编辑表格 */
function handleEdit(row: InfraCodegenApi.CodegenTable) {
  router.push({ name: 'InfraCodegenEdit', query: { id: row.id } });
}

/** 删除代码生成配置 */
async function handleDelete(row: InfraCodegenApi.CodegenTable) {
  const hideLoading = message.loading({
    content: $t('infra.actionMessage.deleting', [row.tableName]),
    duration: 0,
    key: 'action_process_msg',
  });
  try {
    await deleteCodegenTable(row.id);
    message.success($t('infra.actionMessage.deleteSuccess', [row.tableName]));
    onRefresh();
  } finally {
    hideLoading();
  }
}

/** 同步数据库 */
async function handleSync(row: InfraCodegenApi.CodegenTable) {
  const hideLoading = message.loading({
    content: $t('infra.actionMessage.updating', [row.tableName]),
    key: 'action_key_msg',
  });
  try {
    await syncCodegenFromDB(row.id);
    message.success({
      content: $t('infra.actionMessage.updateSuccess', [row.tableName]),
      key: 'action_key_msg',
    });
    onRefresh();
  } finally {
    hideLoading();
  }
}

/** 生成代码 */
async function handleGenerate(row: InfraCodegenApi.CodegenTable) {
  const hideLoading = message.loading({
    content: $t('infra.codegen.generatingCode'),
    key: 'action_key_msg',
  });
  try {
    const res = await downloadCodegen(row.id);
    const blob = new Blob([res], { type: 'application/zip' });
    const url = window.URL.createObjectURL(blob);
    const link = document.createElement('a');
    link.href = url;
    link.download = `codegen-${row.className}.zip`;
    link.click();
    window.URL.revokeObjectURL(url);
    message.success({
      content: $t('infra.codegen.generateSuccess'),
      key: 'action_key_msg',
    });
  } finally {
    hideLoading();
  }
}

/** 批量生成代码 */
async function handleBatchGenerate() {
  if (selectedRows.value.length === 0) {
    message.warning($t('infra.codegen.selectTablesTip'));
    return;
  }
  const hideLoading = message.loading({
    content: $t('infra.codegen.batchGeneratingCode', [
      selectedRows.value.length,
    ]),
    duration: 0,
    key: 'action_key_msg',
  });
  try {
    const tableIds = selectedRows.value.map((row) => row.id);
    const res = await batchDownloadCodegen(tableIds);
    downloadFileFromBlobPart({
      source: res,
      fileName: `codegen-batch-${Date.now()}.zip`,
    });
    message.success({
      content: $t('infra.codegen.batchGenerateSuccess', [
        selectedRows.value.length,
      ]),
      key: 'action_key_msg',
    });
  } finally {
    hideLoading();
  }
}

const [Grid, gridApi] = useVbenVxeGrid({
  formOptions: {
    schema: useGridFormSchema(),
  },
  gridOptions: {
    columns: useGridColumns(getDataSourceConfigName),
    checkboxConfig: {
      highlight: true,
    },
    height: 'auto',
    keepSource: true,
    sortConfig: {
      remote: true,
      multiple: true,
    },
    proxyConfig: {
      ajax: {
        query: async (ctx, formValues) => {
          const { page } = ctx || {};
          const { sortBy, sort } = pickSort(ctx);
          return await getCodegenTablePage({
            pageNo: page.currentPage,
            pageSize: page.pageSize,
            ...formValues,
            ...(sortBy?.length ? { sortBy, sort } : {}),
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
  } as VxeTableGridOptions<InfraCodegenApi.CodegenTable>,
  gridEvents: {
    checkboxChange: ({ records }) => {
      selectedRows.value = records;
    },
    checkboxAll: ({ records }) => {
      selectedRows.value = records;
    },
    sortChange: () => gridApi.query(),
  },
});

/** 获取数据源配置列表 */
async function initDataSourceConfig() {
  try {
    dataSourceConfigList.value = await getDataSourceConfigList();
  } catch (error) {
    console.error($t('infra.codegen.getDataSourceConfigFailed'), error);
  }
}

/** 初始化 */
initDataSourceConfig();
</script>
<template>
  <Page auto-content-height>
    <template #doc>
      <DocAlert
        title="代码生成（单表）"
        url="https://doc.iocoder.cn/new-feature/"
      />
      <DocAlert
        title="代码生成（树表）"
        url="https://doc.iocoder.cn/new-feature/tree/"
      />
      <DocAlert
        title="代码生成（主子表）"
        url="https://doc.iocoder.cn/new-feature/master-sub/"
      />
      <DocAlert title="单元测试" url="https://doc.iocoder.cn/unit-test/" />
    </template>

    <ImportModal @success="onRefresh" />
    <PreviewModal />
    <Grid :table-title="$t('infra.codegen.listTitle')">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('common.import', [$t('infra.common.table')]),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['infra:codegen:create'],
              onClick: handleImport,
            },
            {
              label: $t('infra.codegen.batchGenerateCode'),
              type: 'primary',
              icon: ACTION_ICON.DOWNLOAD,
              auth: ['infra:codegen:download'],
              onClick: handleBatchGenerate,
              disabled: selectedRowsCount === 0,
            },
          ]"
        />
      </template>
      <template #actions="{ row }">
        <TableAction
          :actions="[
            {
              label: $t('infra.codegen.preview'),
              type: 'link',
              icon: ACTION_ICON.VIEW,
              auth: ['infra:codegen:preview'],
              onClick: handlePreview.bind(null, row),
            },
            {
              label: $t('infra.codegen.generateCode'),
              type: 'link',
              icon: ACTION_ICON.DOWNLOAD,
              auth: ['infra:codegen:download'],
              onClick: handleGenerate.bind(null, row),
            },
          ]"
          :drop-down-actions="[
            {
              label: $t('common.edit'),
              type: 'link',
              auth: ['infra:codegen:update'],
              onClick: handleEdit.bind(null, row),
            },
            {
              label: $t('infra.codegen.sync'),
              type: 'link',
              auth: ['infra:codegen:update'],
              onClick: handleSync.bind(null, row),
            },
            {
              label: $t('common.delete'),
              type: 'link',
              danger: true,
              auth: ['infra:codegen:delete'],
              popConfirm: {
                title: $t('ui.actionMessage.deleteConfirm', [row.tableName]),
                confirm: handleDelete.bind(null, row),
              },
            },
          ]"
        />
      </template>
    </Grid>
  </Page>
</template>
