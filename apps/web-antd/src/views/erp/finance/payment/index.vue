<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { ErpFinancePaymentApi } from '#/api/erp/finance/payment';

import { ref } from 'vue';

import { DocAlert, Page, useVbenModal } from '@vben/common-ui';
import { downloadFileFromBlobPart, isEmpty } from '@vben/utils';

import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  deleteFinancePayment,
  exportFinancePayment,
  getFinancePaymentPage,
  updateFinancePaymentStatus,
} from '#/api/erp/finance/payment';
import { $t } from '#/locales';

import { useGridColumns, useGridFormSchema } from './data';
import Form from './modules/form.vue';

/** ERP 付款单列表 */
defineOptions({ name: 'ErpFinancePayment' });

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
  const data = await exportFinancePayment(await gridApi.formApi.getValues());
  downloadFileFromBlobPart({ fileName: $t('erp.payment.list') + '.xls', source: data });
}

/** 新增付款单 */
function handleCreate() {
  formModalApi.setData({ type: 'create' }).open();
}

/** 编辑付款单 */
function handleEdit(row: ErpFinancePaymentApi.FinancePayment) {
  formModalApi.setData({ type: 'edit', id: row.id }).open();
}

/** 删除付款单 */
async function handleDelete(ids: number[]) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting'),
    duration: 0,
  });
  try {
    await deleteFinancePayment(ids);
    message.success($t('ui.actionMessage.deleteSuccess'));
    handleRefresh();
  } finally {
    hideLoading();
  }
}

/** 审批/反审批操作 */
async function handleUpdateStatus(
  row: ErpFinancePaymentApi.FinancePayment,
  status: number,
) {
  const auditLabel = status === 20 ? $t('erp.payment.message.audit') : $t('erp.payment.message.antiAudit');
  const hideLoading = message.loading({
    content: $t('erp.payment.message.confirmAudit', [auditLabel]),
    duration: 0,
  });
  try {
    await updateFinancePaymentStatus(row.id!, status);
    message.success($t('erp.payment.message.auditSuccess', [auditLabel]));
    handleRefresh();
  } finally {
    hideLoading();
  }
}

const checkedIds = ref<number[]>([]);
function handleRowCheckboxChange({
  records,
}: {
  records: ErpFinancePaymentApi.FinancePayment[];
}) {
  checkedIds.value = records.map((item) => item.id!);
}

/** 查看详情 */
function handleDetail(row: ErpFinancePaymentApi.FinancePayment) {
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
          return await getFinancePaymentPage({
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
  } as VxeTableGridOptions<ErpFinancePaymentApi.FinancePayment>,
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
        :title="$t('erp.payment.docTitle')"
        url="https://doc.iocoder.cn/sale/finance-payment-receipt/"
      />
    </template>

    <FormModal @success="handleRefresh" />
    <Grid :table-title="$t('erp.payment.list')">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('ui.actionTitle.create', [$t('erp.payment.payment')]),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['erp:finance-payment:create'],
              onClick: handleCreate,
            },
            {
              label: $t('ui.actionTitle.export'),
              type: 'primary',
              icon: ACTION_ICON.DOWNLOAD,
              auth: ['erp:finance-payment:export'],
              onClick: handleExport,
            },
            {
              label: $t('erp.payment.action.batchDelete'),
              type: 'primary',
              danger: true,
              disabled: isEmpty(checkedIds),
              icon: ACTION_ICON.DELETE,
              auth: ['erp:finance-payment:delete'],
              popConfirm: {
                title: $t('ui.actionMessage.deleteCascadeConfirm'),
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
              auth: ['erp:finance-payment:query'],
              onClick: handleDetail.bind(null, row),
            },
            {
              label: $t('common.edit'),
              type: 'link',
              icon: ACTION_ICON.EDIT,
              auth: ['erp:finance-payment:update'],
              ifShow: () => row.status !== 20,
              onClick: handleEdit.bind(null, row),
            },
            {
              label: row.status === 10 ? $t('erp.payment.message.audit') : $t('erp.payment.message.antiAudit'),
              type: 'link',
              icon: ACTION_ICON.AUDIT,
              auth: ['erp:finance-payment:update-status'],
              popConfirm: {
                title: $t('erp.payment.message.confirmAntiAudit', [
                  row.status === 10 ? $t('erp.payment.message.audit') : $t('erp.payment.message.antiAudit'),
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
              auth: ['erp:finance-payment:delete'],
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
