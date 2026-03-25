<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { nextTick, ref, watch } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  getBusinessInversionRateSummaryByDate,
  getBusinessPageByDate,
} from '#/api/crm/statistics/funnel';
import { $t } from '#/locales';

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
const chartData = ref<any[]>([]);

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
        axisLabel: { color: '#BDBDBD' },
        axisLine: { lineStyle: { color: '#BDBDBD' } },
        splitLine: { show: false },
      },
    ],
    yAxis: [
      {
        type: 'value',
        name: $t('crm.funnel.winRate'),
        axisLabel: { color: '#BDBDBD', formatter: '{value}%' },
        axisLine: { lineStyle: { color: '#BDBDBD' } },
        splitLine: { show: false },
      },
      {
        type: 'value',
        name: $t('crm.common.businessCount'),
        axisLabel: { color: '#BDBDBD' },
        axisLine: { lineStyle: { color: '#BDBDBD' } },
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
  { type: 'seq', width: 60, title: '序号' },
  { field: 'name', title: '商机名称', minWidth: 150 },
  { field: 'customerName', title: '客户名称', minWidth: 150 },
];

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns,
    height: 300,
    data: [],
  },
});

async function loadData() {
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
    >
      <EchartsUI ref="chartRef" style="height: 300px" />
    </Card>
    <Card :bordered="false" class="mt-4">
      <Grid />
    </Card>
  </div>
</template>
