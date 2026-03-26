<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { CrmStatisticsPerformanceApi } from '#/api/crm/statistics/performance';

import { nextTick, reactive, ref, watch } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card, Col, Row, Statistic } from 'ant-design-vue';

import { getContractCountPerformance } from '#/api/crm/statistics/performance';
import { $t } from '#/locales';

defineOptions({ name: 'ContractCountPerformance' });

const props = defineProps<{
  queryParams: {
    deptId?: number;
    userId?: number;
    times: string[];
  };
}>();

const loading = ref(false);
const totalStats = reactive({
  currentMonthCount: 0,
  lastMonthCount: 0,
  lastYearCount: 0,
});
const chartData = ref<CrmStatisticsPerformanceApi.Performance[]>([]);

const chartRef = ref<EchartsUIType>();
const { renderEcharts: renderChart } = useEcharts(chartRef);

function renderLineChart() {
  const times = chartData.value.map((i) => i.time);
  const currentMonthCounts = chartData.value.map((i) => i.currentMonthCount);
  const lastMonthCounts = chartData.value.map((i) => i.lastMonthCount);
  const lastYearCounts = chartData.value.map((i) => i.lastYearCount);

  renderChart({
    tooltip: { trigger: 'axis' },
    legend: {
      data: [
        $t('crm.performance.currentMonthCount'),
        $t('crm.performance.lastMonthCount'),
        $t('crm.performance.lastYearCount'),
      ],
      bottom: 0,
    },
    grid: { left: '3%', right: '4%', bottom: '15%', top: '8%', containLabel: true },
    xAxis: {
      type: 'category',
      data: times,
      axisLabel: { color: '#666' },
      axisLine: { lineStyle: { color: '#ddd' } },
    },
    yAxis: {
      type: 'value',
      axisLabel: { color: '#666' },
      splitLine: { lineStyle: { color: '#f0f0f0', type: 'dashed' } },
    },
    series: [
      {
        name: $t('crm.performance.currentMonthCount'),
        type: 'line',
        smooth: true,
        itemStyle: { color: '#5ab1ef' },
        data: currentMonthCounts,
      },
      {
        name: $t('crm.performance.lastMonthCount'),
        type: 'line',
        smooth: true,
        itemStyle: { color: '#2fc25b' },
        data: lastMonthCounts,
      },
      {
        name: $t('crm.performance.lastYearCount'),
        type: 'line',
        smooth: true,
        itemStyle: { color: '#ffa32b' },
        data: lastYearCounts,
      },
    ],
  });
}

async function loadData() {
  if (!props.queryParams.deptId) return;
  loading.value = true;
  try {
    const params = {
      deptId: props.queryParams.deptId,
      userId: props.queryParams.userId,
      times: props.queryParams.times,
    };
    const res = await getContractCountPerformance(params as any);

    totalStats.currentMonthCount = res.reduce((sum, item) => sum + item.currentMonthCount, 0);
    totalStats.lastMonthCount = res.reduce((sum, item) => sum + item.lastMonthCount, 0);
    totalStats.lastYearCount = res.reduce((sum, item) => sum + item.lastYearCount, 0);

    chartData.value = res;

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
      <Col :span="8">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.performance.currentMonthCount')"
            :value="totalStats.currentMonthCount"
          />
        </Card>
      </Col>
      <Col :span="8">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.performance.lastMonthCount')"
            :value="totalStats.lastMonthCount"
          />
        </Card>
      </Col>
      <Col :span="8">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.performance.lastYearCount')"
            :value="totalStats.lastYearCount"
          />
        </Card>
      </Col>
    </Row>

    <Card :bordered="false">
      <EchartsUI ref="chartRef" style="height: 300px" />
    </Card>
  </div>
</template>
