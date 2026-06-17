<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmContractApi } from '#/api/crm/contract';

import { useRouter } from 'vue-router';

import { Button } from 'ant-design-vue';

import { TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import { getContractPage } from '#/api/crm/contract';
import { $t } from '#/locales';
import { setPendingExtraTitle } from '#/router/state';
import { useGridColumns } from '#/views/crm/contract/data';

import { useContractExpiryTypeOptions } from '../data';

const { push } = useRouter();

function handleProcessDetail(row: CrmContractApi.Contract) {
  setPendingExtraTitle(row.businessName ?? row.businessId);
  push({
    name: 'BpmProcessInstanceDetail',
    query: { id: row.processInstanceId },
  });
}

function handleContractDetail(row: CrmContractApi.Contract) {
  setPendingExtraTitle(row.name ?? row.businessId);
  push({ name: 'CrmContractDetail', params: { id: row.id } });
}
function handleCustomerDetail(row: CrmContractApi.Contract) {
  setPendingExtraTitle(row.customerName ?? row.customerId);
  push({ name: 'CrmCustomerDetail', params: { id: row.id } });
}

function handleContactDetail(row: CrmContractApi.Contract) {
  setPendingExtraTitle(row.contactName ?? row.customerId);
  push({ name: 'CrmContactDetail', params: { id: row.id } });
}

function handleBusinessDetail(row: CrmContractApi.Contract) {
  setPendingExtraTitle(row.businessName ?? row.businessId);
  push({ name: 'CrmBusinessDetail', params: { id: row.id } });
}

const [Grid] = useVbenVxeGrid({
  formOptions: {
    schema: [
      {
        fieldName: 'expiryType',
        label: $t('crm.backlog.field.expiryStatus'),
        component: 'I18nSelect',
        componentProps: {
          allowClear: true,
          options: useContractExpiryTypeOptions(),
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
          return await getContractPage({
            pageNo: page.currentPage,
            pageSize: page.pageSize,
            sceneType: 1,
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
  } as VxeTableGridOptions<CrmContractApi.Contract>,
});
</script>

<template>
  <Grid>
    <template #name="{ row }">
      <Button type="link" @click="handleContractDetail(row)">
        {{ row.name }}
      </Button>
    </template>
    <template #customerName="{ row }">
      <Button type="link" @click="handleCustomerDetail(row)">
        {{ row.customerName }}
      </Button>
    </template>
    <template #businessName="{ row }">
      <Button type="link" @click="handleBusinessDetail(row)">
        {{ row.businessName }}
      </Button>
    </template>
    <template #signContactName="{ row }">
      <Button type="link" @click="handleContactDetail(row)">
        {{ row.signContactName }}
      </Button>
    </template>
    <template #actions="{ row }">
      <TableAction
        :actions="[
          {
            label: $t('crm.backlog.action.viewApproval'),
            type: 'link',
            auth: ['crm:contract:update'],
            onClick: handleProcessDetail.bind(null, row),
          },
        ]"
      />
    </template>
  </Grid>
</template>
