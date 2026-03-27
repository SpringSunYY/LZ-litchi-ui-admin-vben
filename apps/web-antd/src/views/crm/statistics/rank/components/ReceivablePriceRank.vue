<script lang="ts" setup>
import type { CrmStatisticsRankApi } from '#/api/crm/statistics/rank';

import { nextTick, ref, watch } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import { getReceivablePriceRank } from '#/api/crm/statistics/rank';
import { $t } from '#/locales';

import { receivablePriceRankColumns } from '../data';

const props = defineProps<{
  queryParams: {
    deptId?: number;
    times: string[];
    userId?: number;
  };
}>();

const loading = ref(false);
const chartData = ref<CrmStatisticsRankApi.Rank[]>([]);

const chartRef = ref();
const { renderEcharts } = useEcharts(chartRef);

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns: receivablePriceRankColumns,
    height: 400,
    data: [],
  },
});

async function renderChart() {
  const sortedData = [...chartData.value].sort((a, b) => b.count - a.count);
  const top10 = sortedData.slice(0, 10);

  renderEcharts({
    tooltip: { trigger: 'axis' },
    grid: {
      left: '3%',
      right: '4%',
      bottom: '3%',
      top: '8%',
      containLabel: true,
    },
    xAxis: {
      type: 'value',
      axisLabel: { color: '#666' },
      splitLine: { lineStyle: { color: '#f0f0f0', type: 'dashed' } },
    },
    yAxis: {
      type: 'category',
      data: top10.map((item) => item.nickname).reverse(),
      axisLabel: { color: '#666' },
    },
    series: [
      {
        name: $t('crm.rank.receivablePrice'),
        type: 'bar',
        itemStyle: { color: '#2fc25b' },
        data: top10.map((item) => item.count).reverse(),
        barWidth: '60%',
        label: {
          show: true,
          position: 'right',
          formatter: (params: any) => {
            return params.value >= 10_000
              ? `${(params.value / 10_000).toFixed(2)}万`
              : params.value;
          },
        },
      },
    ],
  });
}

async function loadData() {
  if (!props.queryParams.deptId) return;
  loading.value = true;
  try {
    const res = await getReceivablePriceRank({
      deptId: props.queryParams.deptId,
      userId: props.queryParams.userId,
      times: props.queryParams.times,
    });

    chartData.value = res;
    gridApi.grid?.loadData(res);

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
      <EchartsUI ref="chartRef" style="height: 400px" />
    </Card>

    <Card :bordered="false">
      <Grid />
    </Card>
  </div>
</template>
