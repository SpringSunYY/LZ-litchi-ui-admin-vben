<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmReceivablePlanApi } from '#/api/crm/receivable/plan';

import { useRouter } from 'vue-router';

import { useVbenModal } from '@vben/common-ui';

import { Button } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import { getReceivablePlanPage } from '#/api/crm/receivable/plan';
import { $t } from '#/locales';
import { setPendingExtraTitle } from '#/router/state';
import Form from '#/views/crm/receivable/modules/form.vue';
import { useGridColumns } from '#/views/crm/receivable/plan/data';

import { useReceivableRemindTypeOptions } from '../data';

const { push } = useRouter();

const [FormModal, formModalApi] = useVbenModal({
  connectedComponent: Form,
  destroyOnClose: true,
});

function handleDetail(row: CrmReceivablePlanApi.Plan) {
  setPendingExtraTitle(row.customerName ?? row.id);
  push({ name: 'CrmReceivableDetail', params: { id: row.id } });
}

function handleCustomerDetail(row: CrmReceivablePlanApi.Plan) {
  setPendingExtraTitle(row.customerName ?? row.id);
  push({ name: 'CrmCustomerDetail', params: { id: row.customerId } });
}

function handleCreateReceivable(row: CrmReceivablePlanApi.Plan) {
  formModalApi.setData({ plan: row }).open();
}

const [Grid] = useVbenVxeGrid({
  formOptions: {
    schema: [
      {
        fieldName: 'remindType',
        label: $t('crm.backlog.field.expiryStatus'),
        component: 'I18nSelect',
        componentProps: {
          allowClear: true,
          options: useReceivableRemindTypeOptions(),
        },
        defaultValue: 1,
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
          return await getReceivablePlanPage({
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
  } as VxeTableGridOptions<CrmReceivablePlanApi.Plan>,
});
</script>

<template>
  <div>
    <FormModal />
    <Grid>
      <template #customerName="{ row }">
        <Button type="link" @click="handleCustomerDetail(row)">
          {{ row.customerName }}
        </Button>
      </template>
      <template #period="{ row }">
        <Button type="link" @click="handleDetail(row)">{{ row.period }}</Button>
      </template>
      <template #actions="{ row }">
        <Button type="link" @click="handleCreateReceivable(row)">
          {{ $t('crm.backlog.action.createReceivable') }}
        </Button>
      </template>
    </Grid>
  </div>
</template>
