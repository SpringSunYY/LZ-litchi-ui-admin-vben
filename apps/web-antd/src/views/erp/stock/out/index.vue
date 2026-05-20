<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { ErpStockOutApi } from '#/api/erp/stock/out';

import { ref } from 'vue';

import { DocAlert, Page, useVbenModal } from '@vben/common-ui';
import { downloadFileFromBlobPart, isEmpty } from '@vben/utils';

import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  deleteStockOut,
  exportStockOut,
  getStockOutPage,
  updateStockOutStatus,
} from '#/api/erp/stock/out';
import { $t } from '#/locales';

import { useGridColumns, useGridFormSchema } from './data';
import Form from './modules/form.vue';

/** ERP 其它出库单列表 */
defineOptions({ name: 'ErpStockOut' });

const [FormModal, formModalApi] = useVbenModal({
  connectedComponent: Form,
  destroyOnClose: true,
});

/** 刷新表格 */
function handleRefresh() {
  gridApi.query();
}

/** 导出表格 */
async function handleExport() {
  const data = await exportStockOut(await gridApi.formApi.getValues());
  downloadFileFromBlobPart({
    fileName: $t('erp.stockOut.stockOut') + '.xls',
    source: data,
  });
}

/** 新增其它出库单 */
function handleCreate() {
  formModalApi.setData({ type: 'create' }).open();
}

/** 编辑其它出库单 */
function handleEdit(row: ErpStockOutApi.StockOut) {
  formModalApi.setData({ type: 'edit', id: row.id }).open();
}

/** 删除其它出库单 */
async function handleDelete(ids: number[]) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting'),
    duration: 0,
  });
  try {
    await deleteStockOut(ids);
    message.success($t('ui.actionMessage.deleteSuccess'));
    handleRefresh();
  } finally {
    hideLoading();
  }
}

/** 审批/反审批操作 */
async function handleUpdateStatus(
  row: ErpStockOutApi.StockOut,
  status: number,
) {
  const statusText =
    status === 20
      ? $t('erp.stockOut.message.audit')
      : $t('erp.stockOut.message.antiAudit');
  const hideLoading = message.loading({
    content: $t('erp.stockOut.message.confirmAudit', [statusText]),
    duration: 0,
  });
  try {
    await updateStockOutStatus(row.id!, status);
    message.success($t('erp.stockOut.message.auditSuccess', [statusText]));
    handleRefresh();
  } finally {
    hideLoading();
  }
}

const checkedIds = ref<number[]>([]);
function handleRowCheckboxChange({
  records,
}: {
  records: ErpStockOutApi.StockOut[];
}) {
  checkedIds.value = records.map((item) => item.id!);
}

/** 查看详情 */
function handleDetail(row: ErpStockOutApi.StockOut) {
  formModalApi.setData({ type: 'detail', id: row.id }).open();
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
          return await getStockOutPage({
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
      refresh: true,
      search: true,
    },
  } as VxeTableGridOptions<ErpStockOutApi.StockOut>,
  gridEvents: {
    checkboxAll: handleRowCheckboxChange,
    checkboxChange: handleRowCheckboxChange,
  },
});
</script>

<template>
  <Page auto-content-height>
    <template #doc>
      <DocAlert
        :title="$t('erp.stockOut.docTitle')"
        url="https://doc.iocoder.cn/erp/stock-in-out/"
      />
    </template>

    <FormModal @success="handleRefresh" />
    <Grid :table-title="$t('erp.stockOut.list')">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('ui.actionTitle.create', [$t('erp.stockOut.stockOut')]),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['erp:stock-out:create'],
              onClick: handleCreate,
            },
            {
              label: $t('ui.actionTitle.export'),
              type: 'primary',
              icon: ACTION_ICON.DOWNLOAD,
              auth: ['erp:stock-out:export'],
              onClick: handleExport,
            },
            {
              label: $t('ui.actionTitle.deleteBatch', [
                $t('erp.stockOut.stockOut'),
              ]),
              type: 'primary',
              danger: true,
              disabled: isEmpty(checkedIds),
              icon: ACTION_ICON.DELETE,
              auth: ['erp:stock-out:delete'],
              popConfirm: {
                title: $t('erp.stockOut.message.deleteSelectedData'),
                confirm: handleDelete.bind(null, checkedIds),
              },
            },
          ]"
        />
      </template>
      <template #actions="{ row }">
        <TableAction
          :actions="[
            {
              label: $t('common.detail'),
              type: 'link',
              icon: ACTION_ICON.VIEW,
              auth: ['erp:stock-out:query'],
              onClick: handleDetail.bind(null, row),
            },
            {
              label: $t('common.edit'),
              type: 'link',
              icon: ACTION_ICON.EDIT,
              auth: ['erp:stock-out:update'],
              ifShow: () => row.status !== 20,
              onClick: handleEdit.bind(null, row),
            },
            {
              label:
                row.status === 10
                  ? $t('erp.stockOut.message.audit')
                  : $t('erp.stockOut.message.antiAudit'),
              type: 'link',
              icon: ACTION_ICON.AUDIT,
              auth: ['erp:stock-out:update-status'],
              popConfirm: {
                title:
                  $t('erp.stockOut.message.confirmAudit', [
                    row.status === 10
                      ? $t('erp.stockOut.message.audit')
                      : $t('erp.stockOut.message.antiAudit'),
                  ]) + row.no,
                confirm: handleUpdateStatus.bind(
                  null,
                  row,
                  row.status === 10 ? 20 : 10,
                ),
              },
            },
            {
              label: $t('common.delete'),
              type: 'link',
              danger: true,
              icon: ACTION_ICON.DELETE,
              auth: ['erp:stock-out:delete'],
              popConfirm: {
                title: $t('ui.actionMessage.deleteConfirm', [row.no]),
                confirm: handleDelete.bind(null, [row.id!]),
              },
            },
          ]"
        />
      </template>
    </Grid>
  </Page>
</template>
