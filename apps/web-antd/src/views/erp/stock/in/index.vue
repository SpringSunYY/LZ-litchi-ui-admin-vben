<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { ErpStockInApi } from '#/api/erp/stock/in';

import { ref } from 'vue';

import { DocAlert, Page, useVbenModal } from '@vben/common-ui';
import { downloadFileFromBlobPart, isEmpty } from '@vben/utils';

import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  deleteStockIn,
  exportStockIn,
  getStockInPage,
  updateStockInStatus,
} from '#/api/erp/stock/in';
import { $t } from '#/locales';

import { useGridColumns, useGridFormSchema } from './data';
import Form from './modules/form.vue';

/** ERP 其它入库单列表 */
defineOptions({ name: 'ErpStockIn' });

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
  const data = await exportStockIn(await gridApi.formApi.getValues());
  downloadFileFromBlobPart({
    fileName: `${$t('erp.stockIn.stockIn')}.xls`,
    source: data,
  });
}

/** 新增其它入库单 */
function handleCreate() {
  formModalApi.setData({ type: 'create' }).open();
}

/** 编辑其它入库单 */
function handleEdit(row: ErpStockInApi.StockIn) {
  formModalApi.setData({ type: 'edit', id: row.id }).open();
}

/** 删除其它入库单 */
async function handleDelete(ids: number[]) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting'),
    duration: 0,
  });
  try {
    await deleteStockIn(ids);
    message.success($t('ui.actionMessage.deleteSuccess'));
    handleRefresh();
  } finally {
    hideLoading();
  }
}

/** 审批/反审批操作 */
async function handleUpdateStatus(row: ErpStockInApi.StockIn, status: number) {
  const statusText =
    status === 20
      ? $t('erp.stockIn.message.audit')
      : $t('erp.stockIn.message.antiAudit');
  const hideLoading = message.loading({
    content: $t('erp.stockIn.message.confirmAudit', [statusText]),
    duration: 0,
  });
  try {
    await updateStockInStatus(row.id!, status);
    message.success($t('erp.stockIn.message.auditSuccess', [statusText]));
    handleRefresh();
  } finally {
    hideLoading();
  }
}

const checkedIds = ref<number[]>([]);
function handleRowCheckboxChange({
  records,
}: {
  records: ErpStockInApi.StockIn[];
}) {
  checkedIds.value = records.map((item) => item.id!);
}

/** 查看详情 */
function handleDetail(row: ErpStockInApi.StockIn) {
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
          return await getStockInPage({
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
  } as VxeTableGridOptions<ErpStockInApi.StockIn>,
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
        :title="$t('erp.stockIn.docTitle')"
        url="https://doc.iocoder.cn/erp/stock-in-out/"
      />
    </template>

    <FormModal @success="handleRefresh" />
    <Grid :table-title="$t('erp.stockIn.list')">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('ui.actionTitle.create', [$t('erp.stockIn.stockIn')]),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['erp:stock-in:create'],
              onClick: handleCreate,
            },
            {
              label: $t('ui.actionTitle.export'),
              type: 'primary',
              icon: ACTION_ICON.DOWNLOAD,
              auth: ['erp:stock-in:export'],
              onClick: handleExport,
            },
            {
              label: $t('ui.actionTitle.deleteBatch', [
                $t('erp.stockIn.stockIn'),
              ]),
              type: 'primary',
              danger: true,
              disabled: isEmpty(checkedIds),
              icon: ACTION_ICON.DELETE,
              auth: ['erp:stock-in:delete'],
              popConfirm: {
                title: $t('erp.stockIn.message.deleteSelectedData'),
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
              auth: ['erp:stock-in:query'],
              onClick: handleDetail.bind(null, row),
            },
            {
              label: $t('common.edit'),
              type: 'link',
              icon: ACTION_ICON.EDIT,
              auth: ['erp:stock-in:update'],
              ifShow: () => row.status !== 20,
              onClick: handleEdit.bind(null, row),
            },
            {
              label:
                row.status === 10
                  ? $t('erp.stockIn.message.audit')
                  : $t('erp.stockIn.message.antiAudit'),
              type: 'link',
              icon: ACTION_ICON.AUDIT,
              auth: ['erp:stock-in:update-status'],
              popConfirm: {
                title:
                  $t('erp.stockIn.message.confirmAudit', [
                    row.status === 10
                      ? $t('erp.stockIn.message.audit')
                      : $t('erp.stockIn.message.antiAudit'),
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
              auth: ['erp:stock-in:delete'],
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
