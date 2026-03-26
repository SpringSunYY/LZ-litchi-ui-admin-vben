<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { CrmStatisticsCustomerApi } from '#/api/crm/statistics/customer';

import { nextTick, ref } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  getContractSummary,
  getCustomerSummaryByDate,
} from '#/api/crm/statistics/customer';
import { $t } from '#/locales';

import { conversionStatColumns } from '../data';

const props = defineProps<{
  queryParams: {
    deptId?: number;
    interval: number;
    times: string[];
    userId?: number;
  };
}>();

const loading = ref(false);
const chartData = ref<any[]>([]);

const chartRef = ref<EchartsUIType>();
const { renderEcharts } = useEcharts(chartRef);

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns: conversionStatColumns,
    height: 400,
    data: [],
  },
});

function renderChart() {
  const textColor = '#666';
  const splitLineColor = '#f0f0f0';

  const times = chartData.value.map((i) => i.time);
  const rates = chartData.value.map((i) => {
    if (!i.customerCreateCount || i.customerCreateCount === 0) return 0;
    return parseFloat(
      ((i.customerDealCount / i.customerCreateCount) * 100).toFixed(2),
    );
  });
  const dealCounts = chartData.value.map((i) => i.customerDealCount);

  renderEcharts({
    tooltip: { trigger: 'axis' },
    legend: {
      data: [
        $t('crm.customer.dealRate'),
        $t('crm.customer.dealCustomerCount'),
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
    yAxis: [
      {
        type: 'value',
        name: $t('crm.customer.dealRate'),
        axisLabel: { color: textColor, formatter: '{value}%' },
        splitLine: { lineStyle: { color: splitLineColor, type: 'dashed' } },
      },
      {
        type: 'value',
        name: $t('crm.customer.dealCustomerCount'),
        axisLabel: { color: textColor },
        splitLine: { show: false },
      },
    ],
    series: [
      {
        name: $t('crm.customer.dealRate'),
        type: 'line',
        smooth: true,
        yAxisIndex: 0,
        itemStyle: { color: '#5ab1ef' },
        data: rates,
      },
      {
        name: $t('crm.customer.dealCustomerCount'),
        type: 'bar',
        yAxisIndex: 1,
        barMaxWidth: 40,
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

    const [chartRes, tableRes] = await Promise.all([
      getCustomerSummaryByDate(params),
      getContractSummary(params),
    ]);

    chartData.value = chartRes;
    gridApi.grid?.loadData(tableRes);

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
    <Card :bordered="false" class="mb-4">
      <EchartsUI ref="chartRef" style="height: 300px" />
    </Card>
    <Card :bordered="false">
      <Grid />
    </Card>
  </div>
</template>
