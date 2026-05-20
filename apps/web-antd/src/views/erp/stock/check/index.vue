<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { ErpStockCheckApi } from '#/api/erp/stock/check';

import { ref } from 'vue';

import { DocAlert, Page, useVbenModal } from '@vben/common-ui';
import { downloadFileFromBlobPart, isEmpty } from '@vben/utils';

import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  deleteStockCheck,
  exportStockCheck,
  getStockCheckPage,
  updateStockCheckStatus,
} from '#/api/erp/stock/check';
import { $t } from '#/locales';

import { useGridColumns, useGridFormSchema } from './data';
import Form from './modules/form.vue';

/** ERP 库存盘点单列表 */
defineOptions({ name: 'ErpStockCheck' });

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
  const data = await exportStockCheck(await gridApi.formApi.getValues());
  downloadFileFromBlobPart({
    fileName: `${$t('erp.stockCheck.stockCheck')}.xls`,
    source: data,
  });
}

/** 新增库存盘点单 */
function handleCreate() {
  formModalApi.setData({ type: 'create' }).open();
}

/** 编辑库存盘点单 */
function handleEdit(row: ErpStockCheckApi.StockCheck) {
  formModalApi.setData({ type: 'edit', id: row.id }).open();
}

/** 删除库存盘点单 */
async function handleDelete(ids: number[]) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting'),
    duration: 0,
  });
  try {
    await deleteStockCheck(ids);
    message.success($t('ui.actionMessage.deleteSuccess'));
    handleRefresh();
  } finally {
    hideLoading();
  }
}

/** 审批/反审批操作 */
async function handleUpdateStatus(
  row: ErpStockCheckApi.StockCheck,
  status: number,
) {
  const statusText =
    status === 20
      ? $t('erp.stockCheck.message.audit')
      : $t('erp.stockCheck.message.antiAudit');
  const hideLoading = message.loading({
    content: $t('erp.stockCheck.message.confirmAudit', [statusText]),
    duration: 0,
  });
  try {
    await updateStockCheckStatus(row.id!, status);
    message.success($t('erp.stockCheck.message.auditSuccess', [statusText]));
    handleRefresh();
  } finally {
    hideLoading();
  }
}

const checkedIds = ref<number[]>([]);
function handleRowCheckboxChange({
  records,
}: {
  records: ErpStockCheckApi.StockCheck[];
}) {
  checkedIds.value = records.map((item) => item.id!);
}

/** 查看详情 */
function handleDetail(row: ErpStockCheckApi.StockCheck) {
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
          return await getStockCheckPage({
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
  } as VxeTableGridOptions<ErpStockCheckApi.StockCheck>,
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
        :title="$t('erp.stockCheck.docTitle')"
        url="https://doc.iocoder.cn/erp/stock-move-check/"
      />
    </template>

    <FormModal @success="handleRefresh" />
    <Grid :table-title="$t('erp.stockCheck.list')">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('ui.actionTitle.create', [
                $t('erp.stockCheck.stockCheck'),
              ]),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['erp:stock-check:create'],
              onClick: handleCreate,
            },
            {
              label: $t('ui.actionTitle.export'),
              type: 'primary',
              icon: ACTION_ICON.DOWNLOAD,
              auth: ['erp:stock-check:export'],
              onClick: handleExport,
            },
            {
              label: $t('ui.actionTitle.deleteBatch', [
                $t('erp.stockCheck.stockCheck'),
              ]),
              type: 'primary',
              danger: true,
              disabled: isEmpty(checkedIds),
              icon: ACTION_ICON.DELETE,
              auth: ['erp:stock-check:delete'],
              popConfirm: {
                title: $t('erp.stockCheck.message.deleteSelectedData'),
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
              auth: ['erp:stock-check:query'],
              onClick: handleDetail.bind(null, row),
            },
            {
              label: $t('common.edit'),
              type: 'link',
              icon: ACTION_ICON.EDIT,
              auth: ['erp:stock-check:update'],
              ifShow: () => row.status !== 20,
              onClick: handleEdit.bind(null, row),
            },
            {
              label:
                row.status === 10
                  ? $t('erp.stockCheck.message.audit')
                  : $t('erp.stockCheck.message.antiAudit'),
              type: 'link',
              icon: ACTION_ICON.AUDIT,
              auth: ['erp:stock-check:update-status'],
              popConfirm: {
                title:
                  $t('erp.stockCheck.message.confirmAudit', [
                    row.status === 10
                      ? $t('erp.stockCheck.message.audit')
                      : $t('erp.stockCheck.message.antiAudit'),
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
              auth: ['erp:stock-check:delete'],
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
