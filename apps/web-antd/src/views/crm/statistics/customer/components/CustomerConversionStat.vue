<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmStatisticsCustomerApi } from '#/api/crm/statistics/customer';

import { nextTick, ref } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  getContractSummary,
  getCustomerSummaryByDate,
} from '#/api/crm/statistics/customer';
import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

defineOptions({ name: 'CustomerConversionStat' });

const props = defineProps<{
  queryParams: {
    deptId?: number;
    interval: number;
    times: string[];
    userId?: number;
  };
}>();

const loading = ref(false);
const chartData = ref<any[]>([]);

const chartRef = ref<EchartsUIType>();
const { renderEcharts } = useEcharts(chartRef);

function renderChart() {
  const textColor = '#666';
  const splitLineColor = '#f0f0f0';

  const times = chartData.value.map((i) => i.time);
  const rates = chartData.value.map((i) => {
    if (!i.customerCreateCount || i.customerCreateCount === 0) return 0;
    return parseFloat(
      ((i.customerDealCount / i.customerCreateCount) * 100).toFixed(2),
    );
  });
  const dealCounts = chartData.value.map((i) => i.customerDealCount);

  renderEcharts({
    tooltip: { trigger: 'axis' },
    legend: {
      data: [
        $t('crm.customer.statistics.dealRate'),
        $t('crm.customer.statistics.dealCustomerCount'),
      ],
      bottom: 0,
      textStyle: { color: textColor },
    },
    grid: {
      left: '3%',
      right: '4%',
      bottom: '15%',
      top: '8%',
      containLabel: true,
    },
    xAxis: {
      type: 'category',
      data: times,
      axisLabel: { color: textColor },
      axisLine: { lineStyle: { color: textColor } },
    },
    yAxis: [
      {
        type: 'value',
        name: $t('crm.customer.statistics.dealRate'),
        axisLabel: { color: textColor, formatter: '{value}%' },
        splitLine: { lineStyle: { color: splitLineColor, type: 'dashed' } },
      },
      {
        type: 'value',
        name: $t('crm.customer.statistics.dealCustomerCount'),
        axisLabel: { color: textColor },
        splitLine: { show: false },
      },
    ],
    series: [
      {
        name: $t('crm.customer.statistics.dealRate'),
        type: 'line',
        smooth: true,
        yAxisIndex: 0,
        itemStyle: { color: '#5ab1ef' },
        data: rates,
      },
      {
        name: $t('crm.customer.statistics.dealCustomerCount'),
        type: 'bar',
        yAxisIndex: 1,
        barMaxWidth: 40,
        itemStyle: { color: '#2fc25b', borderRadius: [4, 4, 0, 0] },
        data: dealCounts,
      },
    ],
  });
}

const columns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'customerName', title: $t('crm.common.customerName'), minWidth: 150 },
  { field: 'contractName', title: $t('crm.contract.name'), minWidth: 150 },
  {
    field: 'totalPrice',
    title: $t('crm.contract.totalPrice'),
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'receivablePrice',
    title: $t('crm.contract.receivablePrice'),
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'orderDate',
    title: $t('crm.contract.orderDate'),
    minWidth: 160,
    formatter: 'formatDateTime',
  },
  { field: 'ownerUserName', title: $t('crm.common.ownerUser'), minWidth: 100 },
];

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns,
    height: 400,
    data: [],
  },
});

async function loadData() {
  if (!props.queryParams.deptId) return;
  loading.value = true;
  try {
    const params = {
      interval: props.queryParams.interval,
      deptId: props.queryParams.deptId,
      userId: props.queryParams.userId,
      times: props.queryParams.times,
    };

    const [chartRes, tableRes] = await Promise.all([
      getCustomerSummaryByDate(params),
      getContractSummary(params),
    ]);

    chartData.value = chartRes;
    gridApi.grid?.loadData(tableRes);

    await nextTick();
    renderChart();
  } finally {
    loading.value = false;
  }
}

defineExpose({ loadData });
</script>

<template>
  <div v-loading="loading">
    <Card :bordered="false" class="mb-4">
      <EchartsUI ref="chartRef" style="height: 300px" />
    </Card>
    <Card :bordered="false">
      <Grid />
    </Card>
  </div>
</template>
