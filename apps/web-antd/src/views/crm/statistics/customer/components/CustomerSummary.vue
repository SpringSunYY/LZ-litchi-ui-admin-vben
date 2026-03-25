<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { CrmStatisticsCustomerApi } from '#/api/crm/statistics/customer';

import { nextTick, reactive, ref, watch } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card, Col, Row, Statistic } from 'ant-design-vue';

import {
  getCustomerSummaryByDate,
  getCustomerSummaryByUser,
} from '#/api/crm/statistics/customer';
import { $t } from '#/locales';

defineOptions({ name: 'CustomerSummary' });

const props = defineProps<{
  queryParams: {
    deptId?: number;
    times: string[];
    userId?: number;
  };
}>();

const loading = ref(false);
const totalStats = reactive({
  customerCreateCount: 0,
  customerDealCount: 0,
  dealRate: '0.00',
});
const dateChartData = ref<CrmStatisticsCustomerApi.CustomerSummaryByDate[]>([]);
const userChartData = ref<CrmStatisticsCustomerApi.CustomerSummaryByUser[]>([]);

const dateChartRef = ref<EchartsUIType>();
const userChartRef = ref<EchartsUIType>();
const { renderEcharts: renderDateChart } = useEcharts(dateChartRef);
const { renderEcharts: renderUserChart } = useEcharts(userChartRef);

/** 渲染日期趋势图 */
function renderDateTrendChart() {
  const times = dateChartData.value.map((i) => i.time);
  const createCounts = dateChartData.value.map((i) => i.customerCreateCount);
  const dealCounts = dateChartData.value.map((i) => i.customerDealCount);

  renderDateChart({
    tooltip: { trigger: 'axis' },
    legend: {
      data: [
        $t('crm.customer.statistics.newCustomer'),
        $t('crm.customer.statistics.dealCustomer'),
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
        name: $t('crm.customer.statistics.newCustomer'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#5ab1ef', borderRadius: [4, 4, 0, 0] },
        data: createCounts,
      },
      {
        name: $t('crm.customer.statistics.dealCustomer'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#2fc25b', borderRadius: [4, 4, 0, 0] },
        data: dealCounts,
      },
    ],
  });
}

/** 渲染员工排行图 */
function renderUserRankChart() {
  const names = userChartData.value.map((i) => i.ownerUserName);
  const createCounts = userChartData.value.map((i) => i.customerCreateCount);
  const dealCounts = userChartData.value.map((i) => i.customerDealCount);

  renderUserChart({
    tooltip: { trigger: 'axis' },
    legend: {
      data: [
        $t('crm.customer.statistics.newCustomer'),
        $t('crm.customer.statistics.dealCustomer'),
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
        name: $t('crm.customer.statistics.newCustomer'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#5ab1ef', borderRadius: [4, 4, 0, 0] },
        data: createCounts,
      },
      {
        name: $t('crm.customer.statistics.dealCustomer'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#2fc25b', borderRadius: [4, 4, 0, 0] },
        data: dealCounts,
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
      getCustomerSummaryByDate(params),
      getCustomerSummaryByUser(params),
    ]);

    totalStats.customerCreateCount = userRes.reduce(
      (sum, item) => sum + item.customerCreateCount,
      0,
    );
    totalStats.customerDealCount = userRes.reduce(
      (sum, item) => sum + item.customerDealCount,
      0,
    );
    totalStats.dealRate =
      totalStats.customerCreateCount > 0
        ? (
            (totalStats.customerDealCount / totalStats.customerCreateCount) *
            100
          ).toFixed(2)
        : '0.00';

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
      <Col :span="6">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.statistics.newCustomerCount')"
            :value="totalStats.customerCreateCount"
          />
        </Card>
      </Col>
      <Col :span="6">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.statistics.dealCustomerCount')"
            :value="totalStats.customerDealCount"
          />
        </Card>
      </Col>
      <Col :span="12">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.statistics.dealRate')"
            :value="totalStats.dealRate"
            suffix="%"
          />
        </Card>
      </Col>
    </Row>

    <Row :gutter="16">
      <Col :span="12">
        <Card
          :title="$t('crm.customer.statistics.customerTotalTrend')"
          :bordered="false"
        >
          <EchartsUI ref="dateChartRef" style="height: 300px" />
        </Card>
      </Col>
      <Col :span="12">
        <Card
          :title="$t('crm.customer.statistics.customerTotalRankByEmployee')"
          :bordered="false"
        >
          <EchartsUI ref="userChartRef" style="height: 300px" />
        </Card>
      </Col>
    </Row>
  </div>
</template>
