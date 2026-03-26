<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { CrmStatisticsCustomerApi } from '#/api/crm/statistics/customer';

import { nextTick, reactive, ref, watch } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card, Col, Row, Statistic } from 'ant-design-vue';

import { getCustomerDealCycleByProduct } from '#/api/crm/statistics/customer';
import { $t } from '#/locales';

defineOptions({ name: 'CustomerDealCycleByProduct' });

const props = defineProps<{
  queryParams: {
    deptId?: number;
    times: string[];
    userId?: number;
  };
}>();

const loading = ref(false);
const totalStats = reactive({
  avgDealCycle: '0.00',
  totalDealCount: 0,
});
const chartData = ref<CrmStatisticsCustomerApi.CustomerDealCycleByProduct[]>(
  [],
);

const chartRef = ref<EchartsUIType>();
const { renderEcharts } = useEcharts(chartRef);

function renderChart() {
  const products = chartData.value.map((i) => i.productName);
  const cycles = chartData.value.map((i) => i.customerDealCycle);

  renderEcharts({
    tooltip: { trigger: 'axis' },
    legend: { data: [$t('crm.customer.statistics.dealCycleDays')], bottom: 0 },
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
  if (!props.queryParams.deptId) return;
  loading.value = true;
  try {
    const params = {
      interval: props.queryParams.interval,
      deptId: props.queryParams.deptId,
      userId: props.queryParams.userId,
      times: props.queryParams.times,
    };

    const res = await getCustomerDealCycleByProduct(params);
    chartData.value = res;

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
      :title="$t('crm.customer.statistics.dealCycleRankByProduct')"
      :bordered="false"
    >
      <EchartsUI ref="chartRef" style="height: 400px" />
    </Card>
  </div>
</template>
