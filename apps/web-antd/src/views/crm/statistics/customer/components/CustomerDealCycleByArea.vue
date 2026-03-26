<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmStatisticsCustomerApi } from '#/api/crm/statistics/customer';

import { nextTick, reactive, ref, watch } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card, Col, Row, Statistic } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import { getCustomerDealCycleByArea } from '#/api/crm/statistics/customer';
import { $t } from '#/locales';

defineOptions({ name: 'CustomerDealCycleByArea' });

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
  avgDealCycle: '0.00',
  totalDealCount: 0,
});
const chartData = ref<CrmStatisticsCustomerApi.CustomerDealCycleByArea[]>([]);
const tableData = ref<CrmStatisticsCustomerApi.CustomerDealCycleByArea[]>([]);

const chartRef = ref<EchartsUIType>();
const { renderEcharts } = useEcharts(chartRef);

const columns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'areaName', title: $t('crm.portrait.areaName'), minWidth: 120 },
  {
    field: 'customerDealCount',
    title: $t('crm.customer.statistics.dealCustomerCount'),
    minWidth: 100,
  },
  {
    field: 'customerDealCycle',
    title: $t('crm.customer.statistics.dealCycleDays'),
    minWidth: 100,
  },
];

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns,
    height: 400,
    data: [],
  },
});

function renderChart() {
  const textColor = '#666';
  const splitLineColor = '#f0f0f0';

  const areas = chartData.value.map((i) => i.areaName);
  const cycles = chartData.value.map((i) => i.customerDealCycle);
  const dealCounts = chartData.value.map((i) => i.customerDealCount);

  renderEcharts({
    tooltip: { trigger: 'axis' },
    legend: {
      data: [
        $t('crm.customer.statistics.dealCycleDays'),
        $t('crm.customer.statistics.dealCustomerCount'),
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
      name: $t('crm.portrait.areaName'),
      data: areas,
      axisLabel: { color: textColor },
      axisLine: { lineStyle: { color: textColor } },
    },
    yAxis: [
      {
        type: 'value',
        name: $t('crm.customer.statistics.dealCycleDays'),
        axisLabel: { color: textColor },
        splitLine: { lineStyle: { color: splitLineColor, type: 'dashed' } },
      },
      {
        type: 'value',
        name: $t('crm.customer.statistics.dealCustomerCount'),
        axisLabel: { color: textColor },
        splitLine: { show: false },
      },
    ],
    series: [
      {
        name: $t('crm.customer.statistics.dealCycleDays'),
        type: 'bar',
        barMaxWidth: 40,
        yAxisIndex: 0,
        itemStyle: { color: '#5ab1ef', borderRadius: [4, 4, 0, 0] },
        data: cycles,
      },
      {
        name: $t('crm.customer.statistics.dealCustomerCount'),
        type: 'bar',
        barMaxWidth: 40,
        yAxisIndex: 1,
        itemStyle: { color: '#2fc25b', borderRadius: [4, 4, 0, 0] },
        data: dealCounts,
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

    const res = await getCustomerDealCycleByArea(params);
    chartData.value = res;
    tableData.value = res;

    const totalCycle = res.reduce(
      (sum, item) => sum + item.customerDealCycle * item.customerDealCount,
      0,
    );
    totalStats.totalDealCount = res.reduce(
      (sum, item) => sum + item.customerDealCount,
      0,
    );
    totalStats.avgDealCycle =
      totalStats.totalDealCount > 0
        ? (totalCycle / totalStats.totalDealCount).toFixed(2)
        : '0.00';

    gridApi.grid?.loadData(tableData.value);

    await nextTick();
    renderChart();
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
          <Statistic
            :title="$t('crm.customer.statistics.avgDealCycle')"
            :value="totalStats.avgDealCycle"
            :suffix="$t('crm.customer.statistics.days')"
          />
        </Card>
      </Col>
      <Col :span="12">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.statistics.dealCustomerCount')"
            :value="totalStats.totalDealCount"
          />
        </Card>
      </Col>
    </Row>

    <Card
      :title="$t('crm.customer.statistics.dealCycleRankByArea')"
      :bordered="false"
      class="mb-4"
    >
      <EchartsUI ref="chartRef" style="height: 400px" />
    </Card>

    <Card :bordered="false">
      <Grid />
    </Card>
  </div>
</template>
