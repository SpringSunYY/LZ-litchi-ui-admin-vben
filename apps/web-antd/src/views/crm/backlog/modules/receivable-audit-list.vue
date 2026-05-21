<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmReceivableApi } from '#/api/crm/receivable';

import { useRouter } from 'vue-router';

import { Button } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import { getReceivablePage } from '#/api/crm/receivable';
import { $t } from '#/locales';
import { useGridColumns } from '#/views/crm/receivable/data';

import { useAuditStatusOptions } from '../data';

const { push } = useRouter();

function handleProcessDetail(row: CrmReceivableApi.Receivable) {
  push({
    name: 'BpmProcessInstanceDetail',
    query: { id: row.processInstanceId },
  });
}

function handleDetail(row: CrmReceivableApi.Receivable) {
  push({ name: 'CrmReceivableDetail', params: { id: row.id } });
}

function handleCustomerDetail(row: CrmReceivableApi.Receivable) {
  push({ name: 'CrmCustomerDetail', params: { id: row.customerId } });
}

function handleContractDetail(row: CrmReceivableApi.Receivable) {
  push({ name: 'CrmContractDetail', params: { id: row.contractId } });
}

const [Grid] = useVbenVxeGrid({
  formOptions: {
    schema: [
      {
        fieldName: 'auditStatus',
        label: $t('crm.backlog.field.contractStatus'),
        component: 'Select',
        componentProps: {
          allowClear: true,
          options: useAuditStatusOptions(),
        },
        defaultValue: 10,
      },
    ],
  },
  gridOptions: {
    columns: useGridColumns(),
    height: 'auto',
    keepSource: true,
    proxyConfig: {
      ajax: {
        query: async ({ page }, formValues) => {
          return await getReceivablePage({
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
  } as VxeTableGridOptions<CrmReceivableApi.Receivable>,
});
</script>

<template>
  <Grid>
    <template #no="{ row }">
      <Button type="link" @click="handleDetail(row)">
        {{ row.no }}
      </Button>
    </template>
    <template #customerName="{ row }">
      <Button type="link" @click="handleCustomerDetail(row)">
        {{ row.customerName }}
      </Button>
    </template>
    <template #contractNo="{ row }">
      <Button type="link" @click="handleContractDetail(row)">
        {{ row.contractNo }}
      </Button>
    </template>
    <template #actions="{ row }">
      <Button type="link" @click="handleProcessDetail(row)">
        {{ $t('crm.backlog.action.viewApproval') }}
      </Button>
    </template>
  </Grid>
</template>
