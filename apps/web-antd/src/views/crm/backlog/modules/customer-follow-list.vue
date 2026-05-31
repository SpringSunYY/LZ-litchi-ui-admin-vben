<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmCustomerApi } from '#/api/crm/customer';

import { useRouter } from 'vue-router';

import { Button } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import { getCustomerPage } from '#/api/crm/customer';
import { $t } from '#/locales';
import { useGridColumns } from '#/views/crm/customer/data';

import { useFollowUpStatusOptions } from '../data';

const { push } = useRouter();

function handleDetail(row: CrmCustomerApi.Customer) {
  push({ name: 'CrmCustomerDetail', params: { id: row.id } });
}

const [Grid] = useVbenVxeGrid({
  formOptions: {
    schema: [
      {
        fieldName: 'followUpStatus',
        label: $t('crm.backlog.field.status'),
        component: 'I18nSelect',
        componentProps: {
          allowClear: true,
          options: useFollowUpStatusOptions(),
        },
        defaultValue: false,
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
          return await getCustomerPage({
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
  } as VxeTableGridOptions<CrmCustomerApi.Customer>,
});
</script>

<template>
  <Grid>
    <template #name="{ row }">
      <Button type="link" @click="handleDetail(row)">{{ row.name }}</Button>
    </template>
    <template #actions="{ row }">
      <Button type="link" @click="handleDetail(row)">
        {{ $t('crm.backlog.action.viewDetail') }}
      </Button>
    </template>
  </Grid>
</template>
