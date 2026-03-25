<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { nextTick, reactive, ref, watch } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  getBusinessPageByDate,
  getBusinessSummaryByDate,
} from '#/api/crm/statistics/funnel';
import { $t } from '#/locales';

defineOptions({ name: 'BusinessSummary' });

const props = defineProps<{
  queryParams: {
    deptId?: number;
    userId?: number;
    interval: number;
    times: string[];
  };
}>();

const loading = ref(false);
const chartData = ref<any[]>([]);

const chartRef = ref<EchartsUIType>();
const { renderEcharts: renderChart } = useEcharts(chartRef);

/** 渲染柱状图 */
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
    legend: {},
    tooltip: {
      trigger: 'axis',
      axisPointer: { type: 'shadow' },
    },
    xAxis: {
      type: 'category',
      name: '日期',
      data: times,
    },
    yAxis: [
      {
        type: 'value',
        name: $t('crm.funnel.newBusinessCount'),
        min: 0,
        minInterval: 1,
      },
      {
        type: 'value',
        name: $t('crm.funnel.newBusinessAmount'),
        min: 0,
        splitLine: { lineStyle: { type: 'dotted', opacity: 0.7 } },
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

watch(
  () => props.queryParams,
  () => loadData(),
  { deep: true },
);

defineExpose({ loadData });
</script>

<template>
  <div v-loading="loading">
    <Card :title="$t('crm.funnel.businessAnalysis')" :bordered="false">
      <EchartsUI ref="chartRef" style="height: 300px" />
    </Card>
    <Card :bordered="false" class="mt-4">
      <Grid />
    </Card>
  </div>
</template>
