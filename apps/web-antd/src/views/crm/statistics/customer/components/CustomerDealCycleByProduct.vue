<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { CrmStatisticsCustomerApi } from '#/api/crm/statistics/customer';

import { nextTick, reactive, ref, watch } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card, Col, Row, Statistic } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import { getCustomerDealCycleByProduct } from '#/api/crm/statistics/customer';
import { $t } from '#/locales';

import { dealCycleByProductColumns } from '../data';

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
const chartData = ref<CrmStatisticsCustomerApi.CustomerDealCycleByProduct[]>([]);
const tableData = ref<CrmStatisticsCustomerApi.CustomerDealCycleByProduct[]>([]);

const chartRef = ref<EchartsUIType>();
const { renderEcharts } = useEcharts(chartRef);

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns: dealCycleByProductColumns,
    height: 400,
    data: [],
  },
});

function renderChart() {
  const textColor = '#666';
  const splitLineColor = '#f0f0f0';

  const products = chartData.value.map((i) => i.productName);
  const cycles = chartData.value.map((i) => i.customerDealCycle);

  renderEcharts({
    tooltip: { trigger: 'axis' },
    legend: { data: [$t('crm.customer.dealCycleDays')], bottom: 0, textStyle: { color: textColor } },
    grid: {
      left: '3%',
      right: '4%',
      bottom: '15%',
      top: '8%',
      containLabel: true,
    },
    xAxis: {
      type: 'category',
      data: products,
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
        name: $t('crm.customer.dealCycleDays'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#5ab1ef', borderRadius: [4, 4, 0, 0] },
        data: cycles,
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

    const res = await getCustomerDealCycleByProduct(params as any);
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
            :title="$t('crm.customer.avgDealCycle')"
            :value="totalStats.avgDealCycle"
            :suffix="$t('crm.customer.days')"
          />
        </Card>
      </Col>
      <Col :span="12">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.dealCustomerCount')"
            :value="totalStats.totalDealCount"
          />
        </Card>
      </Col>
    </Row>

    <Card
      :title="$t('crm.customer.dealCycleRankByProduct')"
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
