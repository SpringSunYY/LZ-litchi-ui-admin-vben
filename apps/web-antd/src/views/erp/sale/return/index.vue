<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { ErpSaleReturnApi } from '#/api/erp/sale/return';

import { ref } from 'vue';

import { DocAlert, Page, useVbenModal } from '@vben/common-ui';
import { downloadFileFromBlobPart, isEmpty } from '@vben/utils';

import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  deleteSaleReturn,
  exportSaleReturn,
  getSaleReturnPage,
  updateSaleReturnStatus,
} from '#/api/erp/sale/return';
import { $t } from '#/locales';

import { useGridColumns, useGridFormSchema } from './data';
import Form from './modules/form.vue';

/** ERP 销售退货列表 */
defineOptions({ name: 'ErpSaleReturn' });

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
  const data = await exportSaleReturn(await gridApi.formApi.getValues());
  downloadFileFromBlobPart({
    fileName: `${$t('erp.saleReturn.saleReturn')}.xls`,
    source: data,
  });
}

/** 新增销售退货 */
function handleCreate() {
  formModalApi.setData({ type: 'create' }).open();
}

/** 编辑销售退货 */
function handleEdit(row: ErpSaleReturnApi.SaleReturn) {
  formModalApi.setData({ type: 'edit', id: row.id }).open();
}

/** 删除销售退货 */
async function handleDelete(ids: number[]) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting'),
    duration: 0,
  });
  try {
    await deleteSaleReturn(ids);
    message.success($t('ui.actionMessage.deleteSuccess'));
    handleRefresh();
  } finally {
    hideLoading();
  }
}

/** 审批/反审批操作 */
async function handleUpdateStatus(
  row: ErpSaleReturnApi.SaleReturn,
  status: number,
) {
  const hideLoading = message.loading({
    content:
      row.status === 10
        ? $t('erp.saleReturn.message.confirmAudit', [
            $t('erp.saleReturn.message.audit'),
          ])
        : $t('erp.saleReturn.message.confirmAntiAudit', [
            $t('erp.saleReturn.message.antiAudit'),
            row.no,
          ]),
    duration: 0,
  });
  try {
    await updateSaleReturnStatus(row.id!, status);
    message.success(
      $t('erp.saleReturn.message.auditSuccess', [
        row.status === 10
          ? $t('erp.saleReturn.message.audit')
          : $t('erp.saleReturn.message.antiAudit'),
      ]),
    );
    handleRefresh();
  } finally {
    hideLoading();
  }
}

const checkedIds = ref<number[]>([]);
function handleRowCheckboxChange({
  records,
}: {
  records: ErpSaleReturnApi.SaleReturn[];
}) {
  checkedIds.value = records.map((item) => item.id!);
}

/** 查看详情 */
function handleDetail(row: ErpSaleReturnApi.SaleReturn) {
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
          return await getSaleReturnPage({
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
  } as VxeTableGridOptions<ErpSaleReturnApi.SaleReturn>,
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
        :title="$t('erp.saleReturn.docTitle')"
        url="https://doc.iocoder.cn/erp/sale/"
      />
    </template>

    <FormModal @success="handleRefresh" />
    <Grid :table-title="$t('erp.saleReturn.list')">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('ui.actionTitle.create', [
                $t('erp.saleReturn.saleReturn'),
              ]),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['erp:sale-return:create'],
              onClick: handleCreate,
            },
            {
              label: $t('ui.actionTitle.export'),
              type: 'primary',
              icon: ACTION_ICON.DOWNLOAD,
              auth: ['erp:sale-return:export'],
              onClick: handleExport,
            },
            {
              label: $t('erp.saleReturn.action.batchDelete'),
              type: 'primary',
              danger: true,
              disabled: isEmpty(checkedIds),
              icon: ACTION_ICON.DELETE,
              auth: ['erp:sale-return:delete'],
              popConfirm: {
                title: $t('erp.saleReturn.message.deleteSelectedData'),
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
              auth: ['erp:sale-return:query'],
              onClick: handleDetail.bind(null, row),
            },
            {
              label: $t('common.edit'),
              type: 'link',
              icon: ACTION_ICON.EDIT,
              auth: ['erp:sale-return:update'],
              ifShow: () => row.status !== 20,
              onClick: handleEdit.bind(null, row),
            },
            {
              label:
                row.status === 10
                  ? $t('erp.saleReturn.message.audit')
                  : $t('erp.saleReturn.message.antiAudit'),
              type: 'link',
              icon: ACTION_ICON.AUDIT,
              auth: ['erp:sale-return:update-status'],
              popConfirm: {
                title:
                  row.status === 10
                    ? $t('erp.saleReturn.message.confirmAudit', [row.no])
                    : $t('erp.saleReturn.message.confirmAntiAudit', [
                        $t('erp.saleReturn.message.antiAudit'),
                        row.no,
                      ]),
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
              auth: ['erp:sale-return:delete'],
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
