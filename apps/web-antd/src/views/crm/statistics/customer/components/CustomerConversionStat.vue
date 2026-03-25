<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import { getContractSummary } from '#/api/crm/statistics/customer';
import { DICT_TYPE } from '#/utils';

defineOptions({ name: 'CustomerConversionStat' });

const props = defineProps<{
  queryParams: {
    deptId?: number;
    times: string[];
    userId?: number;
  };
}>();

/** 表格列配置 */
const columns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '序号' },
  { field: 'customerName', title: '客户名称', minWidth: 150 },
  { field: 'contractName', title: '合同名称', minWidth: 150 },
  {
    field: 'totalPrice',
    title: '合同金额',
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'receivablePrice',
    title: '已收款金额',
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'customerType',
    title: '客户类型',
    minWidth: 100,
    cellRender: {
      name: 'CellDict',
      props: { type: DICT_TYPE.CRM_CUSTOMER_LEVEL },
    },
  },
  {
    field: 'customerSource',
    title: '客户来源',
    minWidth: 100,
    cellRender: {
      name: 'CellDict',
      props: { type: DICT_TYPE.CRM_CUSTOMER_SOURCE },
    },
  },
  { field: 'ownerUserName', title: '负责人', minWidth: 100 },
  { field: 'creatorUserName', title: '创建人', minWidth: 100 },
  {
    field: 'orderDate',
    title: '成交日期',
    minWidth: 160,
    formatter: 'formatDateTime',
  },
];

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns,
    height: 500,
    data: [],
  },
});

async function loadData() {
  const res = await getContractSummary({
    interval: props.queryParams.interval,
    deptId: props.queryParams.deptId,
    userId: props.queryParams.userId,
    times: props.queryParams.times,
  });
  gridApi.grid?.loadData(res);
}

defineExpose({ loadData });
</script>

<template>
  <div>
    <Grid />
  </div>
</template>
