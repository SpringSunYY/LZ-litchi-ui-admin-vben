<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { CrmStatisticsCustomerApi } from '#/api/crm/statistics/customer';

import { nextTick, reactive, ref } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card, Col, Row, Statistic } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  getFollowUpSummaryByDate,
  getFollowUpSummaryByUser,
} from '#/api/crm/statistics/customer';

import { followUpSummaryColumns } from '../data';

defineOptions({ name: 'CustomerFollowUpSummary' });

const props = defineProps<{
  queryParams: {
    deptId?: number;
    interval: number;
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
const chartData = ref<CrmStatisticsCustomerApi.FollowUpSummaryByDate[]>([]);
const tableData = ref<CrmStatisticsCustomerApi.FollowUpSummaryByUser[]>([]);

const chartRef = ref<EchartsUIType>();
const { renderEcharts } = useEcharts(chartRef);

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns: followUpSummaryColumns,
    height: 300,
    data: [],
  },
});

function renderChart() {
  const textColor = '#666';
  const splitLineColor = '#f0f0f0';

  const times = chartData.value.map((i) => i.time);
  const recordCounts = chartData.value.map((i) => i.followUpRecordCount);
  const customerCounts = chartData.value.map((i) => i.followUpCustomerCount);

  renderEcharts({
    tooltip: { trigger: 'axis' },
    legend: {
      data: [
        $t('crm.customer.followUpCount'),
        $t('crm.customer.followUpCustomerCount'),
      ],
      bottom: 0,
      textStyle: { color: textColor },
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
      axisLabel: { color: textColor },
      axisLine: { lineStyle: { color: textColor } },
    },
    yAxis: {
      type: 'value',
      axisLabel: { color: textColor },
      splitLine: { lineStyle: { color: splitLineColor, type: 'dashed' } },
    },
    series: [
      {
        name: $t('crm.customer.followUpCount'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#5ab1ef', borderRadius: [4, 4, 0, 0] },
        data: recordCounts,
      },
      {
        name: $t('crm.customer.followUpCustomerCount'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#2fc25b', borderRadius: [4, 4, 0, 0] },
        data: customerCounts,
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

    const [dateRes, userRes] = await Promise.all([
      getFollowUpSummaryByDate(params),
      getFollowUpSummaryByUser(params),
    ]);

    totalStats.followUpRecordCount = userRes.reduce(
      (sum, item) => sum + item.followUpRecordCount,
      0,
    );
    totalStats.followUpCustomerCount = userRes.reduce(
      (sum, item) => sum + item.followUpCustomerCount,
      0,
    );
    totalStats.avgPerCustomer =
      totalStats.followUpCustomerCount > 0
        ? (totalStats.followUpRecordCount / totalStats.followUpCustomerCount).toFixed(2)
        : '0.00';

    chartData.value = dateRes;
    tableData.value = userRes;
    gridApi.grid?.loadData(tableData.value);

    await nextTick();
    renderChart();
  } finally {
    loading.value = false;
  }
}

defineExpose({ loadData });
</script>

<template>
  <div v-loading="loading">
    <Row :gutter="16" class="mb-4">
      <Col :span="8">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.totalFollowUpCount')"
            :value="totalStats.followUpRecordCount"
          />
        </Card>
      </Col>
      <Col :span="8">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.followUpCustomerCount')"
            :value="totalStats.followUpCustomerCount"
          />
        </Card>
      </Col>
      <Col :span="8">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.avgFollowUpPerCustomer')"
            :value="totalStats.avgPerCustomer"
          />
        </Card>
      </Col>
    </Row>

    <Card
      :title="$t('crm.customer.followUpCountTrend')"
      :bordered="false"
      class="mb-4"
    >
      <EchartsUI ref="chartRef" style="height: 300px" />
    </Card>

    <Card
      :title="$t('crm.customer.followUpCountRankByEmployee')"
      :bordered="false"
    >
      <Grid />
    </Card>
  </div>
</template>
