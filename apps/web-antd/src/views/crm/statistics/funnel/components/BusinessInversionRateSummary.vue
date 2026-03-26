<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmStatisticsFunnelApi } from '#/api/crm/statistics/funnel';

import { nextTick, ref, watch } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  getBusinessInversionRateSummaryByDate,
  getBusinessPageByDate,
} from '#/api/crm/statistics/funnel';
import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

defineOptions({ name: 'BusinessInversionRateSummary' });

const props = defineProps<{
  queryParams: {
    deptId?: number;
    interval: number;
    times: string[];
    userId?: number;
  };
}>();

const loading = ref(false);
const chartData = ref<CrmStatisticsFunnelApi.BusinessInversionRateSummaryByDate[]>([]);

const chartRef = ref<EchartsUIType>();
const { renderEcharts: renderChart } = useEcharts(chartRef);

/** 计算赢单转化率 */
function calcWinRate(win: number, total: number) {
  if (!total || total === 0) return '0.00';
  return ((win / total) * 100).toFixed(2);
}

/** 渲染柱状+折线混合图 */
function renderMixedChart() {
  const times = chartData.value.map((i) => i.time);
  const winRates = chartData.value.map((i) =>
    Number(calcWinRate(i.businessWinCount, i.businessCount)),
  );
  const businessCounts = chartData.value.map((i) => i.businessCount);
  const winBusinessCounts = chartData.value.map((i) => i.businessWinCount);

  renderChart({
    color: ['#6ca2ff', '#6ac9d7', '#ff7474'],
    tooltip: {
      trigger: 'axis',
      axisPointer: { type: 'shadow' },
    },
    legend: {
      data: [
        $t('crm.funnel.winRate'),
        $t('crm.funnel.totalBusinessCount'),
        $t('crm.funnel.winBusinessCount'),
      ],
      bottom: '0px',
      itemWidth: 14,
      textStyle: { color: '#666' },
    },
    grid: {
      top: '40px',
      left: '40px',
      right: '40px',
      bottom: '40px',
      containLabel: true,
    },
    xAxis: [
      {
        type: 'category',
        data: times,
        axisTick: { alignWithLabel: true, lineStyle: { width: 0 } },
        axisLabel: { color: '#666' },
        axisLine: { lineStyle: { color: '#666' } },
        splitLine: { show: false },
      },
    ],
    yAxis: [
      {
        type: 'value',
        name: $t('crm.funnel.winRate'),
        nameTextStyle: { color: '#666' },
        axisLabel: { color: '#666', formatter: '{value}%' },
        axisLine: { lineStyle: { color: '#666' } },
        splitLine: { show: false },
      },
      {
        type: 'value',
        name: $t('crm.common.businessCount'),
        nameTextStyle: { color: '#666' },
        axisLabel: { color: '#666' },
        axisLine: { lineStyle: { color: '#666' } },
        splitLine: { show: false },
      },
    ],
    series: [
      {
        name: $t('crm.funnel.winRate'),
        type: 'line',
        yAxisIndex: 0,
        data: winRates,
      },
      {
        name: $t('crm.funnel.totalBusinessCount'),
        type: 'bar',
        yAxisIndex: 1,
        barWidth: 15,
        data: businessCounts,
      },
      {
        name: $t('crm.funnel.winBusinessCount'),
        type: 'bar',
        yAxisIndex: 1,
        barWidth: 15,
        data: winBusinessCounts,
      },
    ],
  });
}

const columns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  {
    field: 'name',
    title: $t('crm.funnel.businessName'),
    minWidth: 180,
  },
  {
    field: 'customerName',
    title: $t('crm.common.customerName'),
    minWidth: 180,
  },
  {
    field: 'statusTypeName',
    title: $t('crm.common.businessStage'),
    minWidth: 120,
  },
  {
    field: 'ownerUserName',
    title: $t('crm.customer.employee'),
    minWidth: 120,
  },
  {
    field: 'totalProductPrice',
    title: $t('crm.funnel.totalProductPrice'),
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'discountPercent',
    title: $t('crm.funnel.discountPercent'),
    minWidth: 120,
    formatter: ({ cellValue }) => (cellValue ? `${cellValue}%` : '-'),
  },
  {
    field: 'totalPrice',
    title: $t('crm.common.businessAmount'),
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'dealTime',
    title: $t('crm.contract.orderDate'),
    minWidth: 160,
    formatter: 'formatDate',
  },
  {
    field: 'creatorName',
    title: $t('crm.funnel.creator'),
    minWidth: 120,
  },
];

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns,
    height: 300,
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

    const [chartRes, listRes] = await Promise.all([
      getBusinessInversionRateSummaryByDate(params as any),
      getBusinessPageByDate(params as any),
    ]);

    chartData.value = chartRes;
    gridApi.grid?.loadData(listRes.list ?? []);

    await nextTick();
    renderMixedChart();
  } finally {
    loading.value = false;
  }
}

watch(
  () => props.queryParams,
  () => loadData(),
  { deep: true },
);

defineExpose({ loadData });
</script>

<template>
  <div v-loading="loading">
    <Card
      :title="$t('crm.funnel.businessInversionRateAnalysis')"
      :bordered="false"
      class="mb-4"
    >
      <EchartsUI ref="chartRef" style="height: 300px" />
    </Card>
    <Card :bordered="false">
      <Grid />
    </Card>
  </div>
</template>
