<script lang="ts" setup>
import type { CrmStatisticsCustomerApi } from '#/api/crm/statistics/customer';
import type { EchartsUIType } from '@vben/plugins/echarts';

import { nextTick, reactive, ref, watch } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card, Col, Row, Statistic } from 'ant-design-vue';

import {
  getCustomerDealCycleByDate,
  getCustomerDealCycleByUser,
} from '#/api/crm/statistics/customer';
import { $t } from '#/locales';

defineOptions({ name: 'CustomerDealCycleByUser' });

const props = defineProps<{
  queryParams: {
    deptId?: number;
    userId?: number;
    times: string[];
  };
}>();

const loading = ref(false);
const totalStats = reactive({
  avgDealCycle: '0.00',
  totalDealCount: 0,
});
const dateChartData = ref<CrmStatisticsCustomerApi.CustomerDealCycleByDate[]>([]);
const userChartData = ref<CrmStatisticsCustomerApi.CustomerDealCycleByUser[]>([]);

const dateChartRef = ref<EchartsUIType>();
const userChartRef = ref<EchartsUIType>();
const { renderEcharts: renderDateChart } = useEcharts(dateChartRef);
const { renderEcharts: renderUserChart } = useEcharts(userChartRef);

/** 渲染日期趋势图 */
function renderDateTrendChart() {
  const times = dateChartData.value.map((i) => i.time);
  const cycles = dateChartData.value.map((i) => i.customerDealCycle);

  renderDateChart({
    tooltip: { trigger: 'axis' },
    legend: { data: [$t('crm.customer.statistics.dealCycleDays')], bottom: 0 },
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
        name: $t('crm.customer.statistics.dealCycleDays'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#5ab1ef', borderRadius: [4, 4, 0, 0] },
        data: cycles,
      },
    ],
  });
}

/** 渲染员工排行图 */
function renderUserRankChart() {
  const names = userChartData.value.map((i) => i.ownerUserName);
  const cycles = userChartData.value.map((i) => i.customerDealCycle);

  renderUserChart({
    tooltip: { trigger: 'axis' },
    legend: { data: [$t('crm.customer.statistics.dealCycleDays')], bottom: 0 },
    grid: { left: '3%', right: '4%', bottom: '15%', top: '8%', containLabel: true },
    xAxis: {
      type: 'category',
      data: names,
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
        name: $t('crm.customer.statistics.dealCycleDays'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#5ab1ef', borderRadius: [4, 4, 0, 0] },
        data: cycles,
      },
    ],
  });
}

/** 加载数据 */
async function loadData() {
  loading.value = true;
  try {
    const params = {
      interval: props.queryParams.interval,
      deptId: props.queryParams.deptId,
      userId: props.queryParams.userId,
      times: props.queryParams.times,
    };

    const [dateRes, userRes] = await Promise.all([
      getCustomerDealCycleByDate(params),
      getCustomerDealCycleByUser(params),
    ]);

    dateChartData.value = dateRes;
    userChartData.value = userRes;

    const totalCycle = userRes.reduce(
      (sum, item) => sum + item.customerDealCycle * item.customerDealCount,
      0,
    );
    totalStats.totalDealCount = userRes.reduce(
      (sum, item) => sum + item.customerDealCount,
      0,
    );
    totalStats.avgDealCycle =
      totalStats.totalDealCount > 0
        ? (totalCycle / totalStats.totalDealCount).toFixed(2)
        : '0.00';

    await nextTick();
    renderDateTrendChart();
    renderUserRankChart();
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
      <Col :span="12">
        <Card :bordered="false">
          <Statistic :title="$t('crm.customer.statistics.avgDealCycle')" :value="totalStats.avgDealCycle" :suffix="$t('crm.customer.statistics.days')" />
        </Card>
      </Col>
      <Col :span="12">
        <Card :bordered="false">
          <Statistic :title="$t('crm.customer.statistics.dealCustomerCount')" :value="totalStats.totalDealCount" />
        </Card>
      </Col>
    </Row>

    <Row :gutter="16">
      <Col :span="12">
        <Card :title="$t('crm.customer.statistics.dealCycleTrend')" :bordered="false">
          <EchartsUI ref="dateChartRef" style="height: 300px" />
        </Card>
      </Col>
      <Col :span="12">
        <Card :title="$t('crm.customer.statistics.dealCycleRankByEmployee')" :bordered="false">
          <EchartsUI ref="userChartRef" style="height: 300px" />
        </Card>
      </Col>
    </Row>
  </div>
</template>
