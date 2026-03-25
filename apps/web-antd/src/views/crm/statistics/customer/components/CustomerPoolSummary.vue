<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { CrmStatisticsCustomerApi } from '#/api/crm/statistics/customer';

import { nextTick, reactive, ref, watch } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card, Col, Row, Statistic } from 'ant-design-vue';

import {
  getPoolSummaryByDate,
  getPoolSummaryByUser,
} from '#/api/crm/statistics/customer';
import { $t } from '#/locales';

defineOptions({ name: 'CustomerPoolSummary' });

const props = defineProps<{
  queryParams: {
    deptId?: number;
    times: string[];
    userId?: number;
  };
}>();

const loading = ref(false);
const totalStats = reactive({
  customerPutCount: 0,
  customerTakeCount: 0,
  netGrowth: 0,
});
const dateChartData = ref<CrmStatisticsCustomerApi.PoolSummaryByDate[]>([]);
const userChartData = ref<CrmStatisticsCustomerApi.PoolSummaryByUser[]>([]);

const dateChartRef = ref<EchartsUIType>();
const userChartRef = ref<EchartsUIType>();
const { renderEcharts: renderDateChart } = useEcharts(dateChartRef);
const { renderEcharts: renderUserChart } = useEcharts(userChartRef);

/** 渲染日期趋势图 */
function renderDateTrendChart() {
  const times = dateChartData.value.map((i) => i.time);
  const putCounts = dateChartData.value.map((i) => i.customerPutCount);
  const takeCounts = dateChartData.value.map((i) => i.customerTakeCount);

  renderDateChart({
    tooltip: { trigger: 'axis' },
    legend: {
      data: [
        $t('crm.customer.statistics.putIntoPool'),
        $t('crm.customer.statistics.takeFromPool'),
      ],
      bottom: 0,
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
        name: $t('crm.customer.statistics.putIntoPool'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#ff7875', borderRadius: [4, 4, 0, 0] },
        data: putCounts,
      },
      {
        name: $t('crm.customer.statistics.takeFromPool'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#5ab1ef', borderRadius: [4, 4, 0, 0] },
        data: takeCounts,
      },
    ],
  });
}

/** 渲染员工排行图 */
function renderUserRankChart() {
  const names = userChartData.value.map((i) => i.ownerUserName);
  const putCounts = userChartData.value.map((i) => i.customerPutCount);
  const takeCounts = userChartData.value.map((i) => i.customerTakeCount);

  renderUserChart({
    tooltip: { trigger: 'axis' },
    legend: {
      data: [
        $t('crm.customer.statistics.putIntoPool'),
        $t('crm.customer.statistics.takeFromPool'),
      ],
      bottom: 0,
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
        name: $t('crm.customer.statistics.putIntoPool'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#ff7875', borderRadius: [4, 4, 0, 0] },
        data: putCounts,
      },
      {
        name: $t('crm.customer.statistics.takeFromPool'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#5ab1ef', borderRadius: [4, 4, 0, 0] },
        data: takeCounts,
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
      getPoolSummaryByDate(params),
      getPoolSummaryByUser(params),
    ]);

    totalStats.customerPutCount = userRes.reduce(
      (sum, item) => sum + item.customerPutCount,
      0,
    );
    totalStats.customerTakeCount = userRes.reduce(
      (sum, item) => sum + item.customerTakeCount,
      0,
    );
    totalStats.netGrowth =
      totalStats.customerTakeCount - totalStats.customerPutCount;

    dateChartData.value = dateRes;
    userChartData.value = userRes;

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
      <Col :span="8">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.statistics.putIntoPoolCount')"
            :value="totalStats.customerPutCount"
          />
        </Card>
      </Col>
      <Col :span="8">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.statistics.takeFromPoolCount')"
            :value="totalStats.customerTakeCount"
          />
        </Card>
      </Col>
      <Col :span="8">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.statistics.netGrowthCustomerCount')"
            :value="totalStats.netGrowth"
          />
        </Card>
      </Col>
    </Row>

    <Row :gutter="16">
      <Col :span="12">
        <Card
          :title="$t('crm.customer.statistics.poolCustomerTrend')"
          :bordered="false"
        >
          <EchartsUI ref="dateChartRef" style="height: 300px" />
        </Card>
      </Col>
      <Col :span="12">
        <Card
          :title="$t('crm.customer.statistics.poolCustomerRankByEmployee')"
          :bordered="false"
        >
          <EchartsUI ref="userChartRef" style="height: 300px" />
        </Card>
      </Col>
    </Row>
  </div>
</template>
