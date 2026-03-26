<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmStatisticsPerformanceApi } from '#/api/crm/statistics/performance';

import { nextTick, reactive, ref, watch } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card, Col, Row, Statistic } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import { getContractPricePerformance } from '#/api/crm/statistics/performance';
import { $t } from '#/locales';

defineOptions({ name: 'ContractPricePerformance' });

const props = defineProps<{
  queryParams: {
    deptId?: number;
    interval?: number;
    userId?: number;
    times: string[];
  };
}>();

const loading = ref(false);
const totalStats = reactive({
  currentMonthAmount: 0,
  lastMonthAmount: 0,
  lastYearAmount: 0,
  totalContractAmount: 0,
});
const chartData = ref<CrmStatisticsPerformanceApi.Performance[]>([]);

const chartRef = ref<EchartsUIType>();
const { renderEcharts: renderChart } = useEcharts(chartRef);

const columns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'time', title: $t('common.date'), minWidth: 100 },
  {
    field: 'currentMonthCount',
    title: $t('crm.performance.currentMonthAmount'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
  {
    field: 'lastMonthCount',
    title: $t('crm.performance.lastMonthAmount'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
  {
    field: 'lastYearCount',
    title: $t('crm.performance.lastYearAmount'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
  {
    field: 'monthChainRate',
    title: $t('crm.performance.monthChainRate'),
    minWidth: 120,
    formatter: ({ cellValue }) => (cellValue !== 'NULL' ? `${cellValue}%` : '-'),
  },
  {
    field: 'yearChainRate',
    title: $t('crm.performance.yearChainRate'),
    minWidth: 120,
    formatter: ({ cellValue }) => (cellValue !== 'NULL' ? `${cellValue}%` : '-'),
  },
];

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns,
    height: 400,
    data: [],
  },
});

function renderLineChart() {
  const times = chartData.value.map((i) => i.time);
  const currentMonthAmounts = chartData.value.map((i) => i.currentMonthCount);
  const lastMonthAmounts = chartData.value.map((i) => i.lastMonthCount);
  const lastYearAmounts = chartData.value.map((i) => i.lastYearCount);

  renderChart({
    tooltip: { trigger: 'axis' },
    legend: {
      data: [
        $t('crm.performance.currentMonthAmount'),
        $t('crm.performance.lastMonthAmount'),
        $t('crm.performance.lastYearAmount'),
      ],
      bottom: 0,
      textStyle: { color: '#666' },
    },
    grid: { left: '3%', right: '4%', bottom: '15%', top: '8%', containLabel: true },
    xAxis: {
      type: 'category',
      data: times,
      axisLabel: { color: '#666' },
      axisLine: { lineStyle: { color: '#666' } },
    },
    yAxis: {
      type: 'value',
      axisLabel: { color: '#666', formatter: '{value}' },
      splitLine: { lineStyle: { color: '#f0f0f0', type: 'dashed' } },
    },
    series: [
      {
        name: $t('crm.performance.currentMonthAmount'),
        type: 'line',
        smooth: true,
        itemStyle: { color: '#5ab1ef' },
        data: currentMonthAmounts,
      },
      {
        name: $t('crm.performance.lastMonthAmount'),
        type: 'line',
        smooth: true,
        itemStyle: { color: '#2fc25b' },
        data: lastMonthAmounts,
      },
      {
        name: $t('crm.performance.lastYearAmount'),
        type: 'line',
        smooth: true,
        itemStyle: { color: '#ffa32b' },
        data: lastYearAmounts,
      },
    ],
  });
}

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
    const res = await getContractPricePerformance(params as any);

    const tableRows = res.map((item) => {
      const monthChainRate =
        item.lastMonthCount !== 0
          ? (((item.currentMonthCount - item.lastMonthCount) / item.lastMonthCount) * 100).toFixed(2)
          : 'NULL';
      const yearChainRate =
        item.lastYearCount !== 0
          ? (((item.currentMonthCount - item.lastYearCount) / item.lastYearCount) * 100).toFixed(2)
          : 'NULL';
      return { ...item, monthChainRate, yearChainRate };
    });

    totalStats.currentMonthAmount = res.reduce((sum, item) => sum + item.currentMonthCount, 0);
    totalStats.lastMonthAmount = res.reduce((sum, item) => sum + item.lastMonthCount, 0);
    totalStats.lastYearAmount = res.reduce((sum, item) => sum + item.lastYearCount, 0);
    totalStats.totalContractAmount = res.reduce((sum, item) => sum + item.currentMonthCount, 0);

    chartData.value = res;
    gridApi.grid?.loadData(tableRows);

    await nextTick();
    renderLineChart();
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
    <Row :gutter="16" class="mb-4">
      <Col :span="6">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.performance.currentMonthAmount')"
            :value="totalStats.currentMonthAmount"
          />
        </Card>
      </Col>
      <Col :span="6">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.performance.lastMonthAmount')"
            :value="totalStats.lastMonthAmount"
          />
        </Card>
      </Col>
      <Col :span="6">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.performance.lastYearAmount')"
            :value="totalStats.lastYearAmount"
          />
        </Card>
      </Col>
      <Col :span="6">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.performance.contractAmount')"
            :value="totalStats.totalContractAmount"
          />
        </Card>
      </Col>
    </Row>

    <Card :bordered="false" class="mb-4">
      <EchartsUI ref="chartRef" style="height: 300px" />
    </Card>

    <Card :bordered="false">
      <Grid />
    </Card>
  </div>
</template>
