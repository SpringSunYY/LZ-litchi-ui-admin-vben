<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { CrmStatisticsFunnelApi } from '#/api/crm/statistics/funnel';

import { nextTick, ref } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  getBusinessPageByDate,
  getBusinessSummaryByDate,
} from '#/api/crm/statistics/funnel';
import { $t } from '#/locales';

import { businessColumns } from '../data';

defineOptions({ name: 'BusinessSummary' });

const props = defineProps<{
  queryParams: {
    deptId?: number;
    interval: number;
    times: string[];
    userId?: number;
  };
}>();

const loading = ref(false);
const chartData = ref<CrmStatisticsFunnelApi.BusinessSummaryByDate[]>([]);

const chartRef = ref<EchartsUIType>();
const { renderEcharts: renderChart } = useEcharts(chartRef);

function renderBarChart() {
  const times = chartData.value.map((i) => i.time);
  const businessCounts = chartData.value.map((i) => i.businessCreateCount);
  const totalPrices = chartData.value.map((i) => Number(i.totalPrice) || 0);

  renderChart({
    grid: {
      left: 30,
      right: 30,
      bottom: 20,
      containLabel: true,
    },
    legend: { textStyle: { color: '#666' } },
    tooltip: {
      trigger: 'axis',
      axisPointer: { type: 'shadow' },
    },
    xAxis: {
      type: 'category',
      name: '日期',
      data: times,
      axisLabel: { color: '#666' },
      axisLine: { lineStyle: { color: '#666' } },
    },
    yAxis: [
      {
        type: 'value',
        name: $t('crm.funnel.newBusinessCount'),
        nameTextStyle: { color: '#666' },
        min: 0,
        minInterval: 1,
        axisLabel: { color: '#666' },
        axisLine: { lineStyle: { color: '#666' } },
        splitLine: { lineStyle: { color: '#f0f0f0' } },
      },
      {
        type: 'value',
        name: $t('crm.funnel.newBusinessAmount'),
        nameTextStyle: { color: '#666' },
        min: 0,
        axisLabel: { color: '#666' },
        axisLine: { lineStyle: { color: '#666' } },
        splitLine: { lineStyle: { color: '#f0f0f0' } },
      },
    ],
    series: [
      {
        name: $t('crm.funnel.newBusinessCount'),
        type: 'bar',
        yAxisIndex: 0,
        data: businessCounts,
      },
      {
        name: $t('crm.funnel.newBusinessAmount'),
        type: 'bar',
        yAxisIndex: 1,
        data: totalPrices,
      },
    ],
  });
}

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns: businessColumns,
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
      getBusinessSummaryByDate(params as any),
      getBusinessPageByDate(params as any),
    ]);

    chartData.value = chartRes;
    gridApi.grid?.loadData(listRes.list ?? []);

    await nextTick();
    renderBarChart();
  } finally {
    loading.value = false;
  }
}

defineExpose({ loadData });
</script>

<template>
  <div v-loading="loading">
    <Card
      :title="$t('crm.funnel.businessAnalysis')"
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
