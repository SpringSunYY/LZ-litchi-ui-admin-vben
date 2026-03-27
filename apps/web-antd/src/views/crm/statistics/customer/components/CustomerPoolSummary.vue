<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { CrmStatisticsCustomerApi } from '#/api/crm/statistics/customer';

import { nextTick, reactive, ref } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card, Col, Row, Statistic } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  getPoolSummaryByDate,
  getPoolSummaryByUser,
} from '#/api/crm/statistics/customer';
import { $t } from '#/locales';

import { poolSummaryColumns } from '../data';

defineOptions({ name: 'CustomerPoolSummary' });

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
  customerPutCount: 0,
  customerTakeCount: 0,
  netGrowth: 0,
});
const chartData = ref<CrmStatisticsCustomerApi.PoolSummaryByDate[]>([]);
const tableData = ref<CrmStatisticsCustomerApi.PoolSummaryByUser[]>([]);

const chartRef = ref<EchartsUIType>();
const { renderEcharts } = useEcharts(chartRef);

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns: poolSummaryColumns,
    height: 300,
    data: [],
  },
});

function renderChart() {
  const textColor = '#666';
  const splitLineColor = '#f0f0f0';

  const times = chartData.value.map((i) => i.time);
  const putCounts = chartData.value.map((i) => i.customerPutCount);
  const takeCounts = chartData.value.map((i) => i.customerTakeCount);

  renderEcharts({
    tooltip: { trigger: 'axis' },
    legend: {
      data: [$t('crm.customer.putIntoPool'), $t('crm.customer.takeFromPool')],
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
        name: $t('crm.customer.putIntoPool'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#ff7875', borderRadius: [4, 4, 0, 0] },
        data: putCounts,
      },
      {
        name: $t('crm.customer.takeFromPool'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#5ab1ef', borderRadius: [4, 4, 0, 0] },
        data: takeCounts,
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
            :title="$t('crm.customer.putIntoPoolCount')"
            :value="totalStats.customerPutCount"
          />
        </Card>
      </Col>
      <Col :span="8">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.takeFromPoolCount')"
            :value="totalStats.customerTakeCount"
          />
        </Card>
      </Col>
      <Col :span="8">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.netGrowthCustomerCount')"
            :value="totalStats.netGrowth"
          />
        </Card>
      </Col>
    </Row>

    <Card
      :title="$t('crm.customer.poolCustomerTrend')"
      :bordered="false"
      class="mb-4"
    >
      <EchartsUI ref="chartRef" style="height: 300px" />
    </Card>

    <Card
      :title="$t('crm.customer.poolCustomerRankByEmployee')"
      :bordered="false"
    >
      <Grid />
    </Card>
  </div>
</template>
