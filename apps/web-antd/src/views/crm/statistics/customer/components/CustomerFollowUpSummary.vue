<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { CrmStatisticsCustomerApi } from '#/api/crm/statistics/customer';

import { nextTick, reactive, ref, watch } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card, Col, Row, Statistic } from 'ant-design-vue';

import {
  getFollowUpSummaryByDate,
  getFollowUpSummaryByUser,
} from '#/api/crm/statistics/customer';
import { $t } from '#/locales';

defineOptions({ name: 'CustomerFollowUpSummary' });

const props = defineProps<{
  queryParams: {
    deptId?: number;
    times: string[];
    userId?: number;
  };
}>();

const loading = ref(false);
const totalStats = reactive({
  followUpRecordCount: 0,
  followUpCustomerCount: 0,
  avgPerCustomer: '0.00',
});
const dateChartData = ref<CrmStatisticsCustomerApi.FollowUpSummaryByDate[]>([]);
const userChartData = ref<CrmStatisticsCustomerApi.FollowUpSummaryByUser[]>([]);

const dateChartRef = ref<EchartsUIType>();
const userChartRef = ref<EchartsUIType>();
const { renderEcharts: renderDateChart } = useEcharts(dateChartRef);
const { renderEcharts: renderUserChart } = useEcharts(userChartRef);

/** 渲染日期趋势图 */
function renderDateTrendChart() {
  const times = dateChartData.value.map((i) => i.time);
  const recordCounts = dateChartData.value.map((i) => i.followUpRecordCount);
  const customerCounts = dateChartData.value.map(
    (i) => i.followUpCustomerCount,
  );

  renderDateChart({
    tooltip: { trigger: 'axis' },
    legend: {
      data: [
        $t('crm.customer.statistics.followUpCount'),
        $t('crm.customer.statistics.followUpCustomerCount'),
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
        name: $t('crm.customer.statistics.followUpCount'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#5ab1ef', borderRadius: [4, 4, 0, 0] },
        data: recordCounts,
      },
      {
        name: $t('crm.customer.statistics.followUpCustomerCount'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#2fc25b', borderRadius: [4, 4, 0, 0] },
        data: customerCounts,
      },
    ],
  });
}

/** 渲染员工排行图 */
function renderUserRankChart() {
  const names = userChartData.value.map((i) => i.ownerUserName);
  const recordCounts = userChartData.value.map((i) => i.followupRecordCount);
  const customerCounts = userChartData.value.map(
    (i) => i.followupCustomerCount,
  );

  renderUserChart({
    tooltip: { trigger: 'axis' },
    legend: {
      data: [
        $t('crm.customer.statistics.followUpCount'),
        $t('crm.customer.statistics.followUpCustomerCount'),
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
        name: $t('crm.customer.statistics.followUpCount'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#5ab1ef', borderRadius: [4, 4, 0, 0] },
        data: recordCounts,
      },
      {
        name: $t('crm.customer.statistics.followUpCustomerCount'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#2fc25b', borderRadius: [4, 4, 0, 0] },
        data: customerCounts,
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
      getFollowUpSummaryByDate(params),
      getFollowUpSummaryByUser(params),
    ]);

    totalStats.followUpRecordCount = userRes.reduce(
      (sum, item) => sum + item.followupRecordCount,
      0,
    );
    totalStats.followUpCustomerCount = userRes.reduce(
      (sum, item) => sum + item.followupCustomerCount,
      0,
    );
    totalStats.avgPerCustomer =
      totalStats.followUpCustomerCount > 0
        ? (
            totalStats.followUpRecordCount / totalStats.followUpCustomerCount
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
      <Col :span="8">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.statistics.totalFollowUpCount')"
            :value="totalStats.followUpRecordCount"
          />
        </Card>
      </Col>
      <Col :span="8">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.statistics.followUpCustomerCount')"
            :value="totalStats.followUpCustomerCount"
          />
        </Card>
      </Col>
      <Col :span="8">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.statistics.avgFollowUpPerCustomer')"
            :value="totalStats.avgPerCustomer"
          />
        </Card>
      </Col>
    </Row>

    <Row :gutter="16">
      <Col :span="12">
        <Card
          :title="$t('crm.customer.statistics.followUpCountTrend')"
          :bordered="false"
        >
          <EchartsUI ref="dateChartRef" style="height: 300px" />
        </Card>
      </Col>
      <Col :span="12">
        <Card
          :title="$t('crm.customer.statistics.followUpCountRankByEmployee')"
          :bordered="false"
        >
          <EchartsUI ref="userChartRef" style="height: 300px" />
        </Card>
      </Col>
    </Row>
  </div>
</template>
