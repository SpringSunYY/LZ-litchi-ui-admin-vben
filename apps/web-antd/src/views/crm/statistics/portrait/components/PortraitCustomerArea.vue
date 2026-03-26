<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { CrmStatisticsPortraitApi } from '#/api/crm/statistics/portrait';

import { nextTick, ref, watch } from 'vue';

import { EchartsUI, registerMap, useEcharts } from '@vben/plugins/echarts';

import { Card, Col, Row } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import { getCustomerArea } from '#/api/crm/statistics/portrait';
import { $t } from '#/locales';
import { areaReplace } from '#/utils';

import { areaColumns } from '../data';

const props = defineProps<{
  queryParams: {
    deptId?: number;
    userId?: number;
    times: string[];
  };
}>();

const loading = ref(false);
const chartData = ref<CrmStatisticsPortraitApi.CustomerArea[]>([]);

const leftChartRef = ref<EchartsUIType>();
const rightChartRef = ref<EchartsUIType>();
const { renderEcharts: renderLeftChart } = useEcharts(leftChartRef);
const { renderEcharts: renderRightChart } = useEcharts(rightChartRef);

const MAP_NAME = 'china';

async function fetchChinaMap() {
  const res = await fetch('/map/china.json');
  return res.json();
}

async function renderLeftMap(mapJson: any) {
  registerMap(MAP_NAME, mapJson);

  const min = 0;
  const max = Math.max(...chartData.value.map((i) => i.customerCount || 0), 1);

  renderLeftChart({
    title: { text: $t('crm.portrait.allCustomer'), left: 'center' },
    tooltip: {
      trigger: 'item',
      showDelay: 0,
      transitionDuration: 0.2,
      formatter: '{b}: {c}',
    },
    visualMap: {
      text: ['高', '低'],
      realtime: false,
      calculable: true,
      top: 'middle',
      inRange: { color: ['#e8f4ff', '#3b82f6'] },
      min,
      max,
    },
    series: [
      {
        name: '客户地域分布',
        type: 'map',
        map: MAP_NAME,
        roam: false,
        selectedMode: false,
        itemStyle: {
          areaColor: '#e8f4ff',
          borderColor: '#a0c4ff',
        },
        data: chartData.value.map((item) => ({
          name: areaReplace(item.areaName),
          value: item.customerCount || 0,
        })),
      },
    ],
  });
}

async function renderRightMap(mapJson: any) {
  registerMap(MAP_NAME, mapJson);

  const min = 0;
  const max = Math.max(...chartData.value.map((i) => i.dealCount || 0), 1);

  renderRightChart({
    title: { text: $t('crm.portrait.dealCustomer'), left: 'center' },
    tooltip: {
      trigger: 'item',
      showDelay: 0,
      transitionDuration: 0.2,
      formatter: '{b}: {c}',
    },
    visualMap: {
      text: ['高', '低'],
      realtime: false,
      calculable: true,
      top: 'middle',
      inRange: { color: ['#e8fff0', '#2fc25b'] },
      min,
      max,
    },
    series: [
      {
        name: '客户地域分布',
        type: 'map',
        map: MAP_NAME,
        roam: false,
        selectedMode: false,
        itemStyle: {
          areaColor: '#e8fff0',
          borderColor: '#a0e0a0',
        },
        data: chartData.value.map((item) => ({
          name: areaReplace(item.areaName),
          value: item.dealCount || 0,
        })),
      },
    ],
  });
}

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns: areaColumns,
    height: 400,
    data: [],
  },
});

/** 计算占比 */
function calcPortion(value: number, total: number) {
  if (!total) return '0.00%';
  return `${((value / total) * 100).toFixed(2)}%`;
}

async function loadData() {
  if (!props.queryParams.deptId) return;
  loading.value = true;
  try {
    const res = await getCustomerArea({
      deptId: props.queryParams.deptId,
      userId: props.queryParams.userId,
      times: props.queryParams.times,
    });

    const totalCustomer = res.reduce((sum, i) => sum + i.customerCount, 0);
    const totalDeal = res.reduce((sum, i) => sum + i.dealCount, 0);

    const tableRows = res.map((item) => ({
      ...item,
      customerPortion: calcPortion(item.customerCount, totalCustomer),
      dealPortion: calcPortion(item.dealCount, totalDeal),
    }));

    chartData.value = res;
    gridApi.grid?.loadData(tableRows);

    await nextTick();
    const mapJson = await fetchChinaMap();
    await renderLeftMap(mapJson);
    await renderRightMap(mapJson);
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
    <Row :gutter="16">
      <Col :span="12">
        <Card :bordered="false">
          <EchartsUI ref="leftChartRef" style="height: 500px" />
        </Card>
      </Col>
      <Col :span="12">
        <Card :bordered="false">
          <EchartsUI ref="rightChartRef" style="height: 500px" />
        </Card>
      </Col>
    </Row>

    <Card :bordered="false" class="mt-4">
      <Grid />
    </Card>
  </div>
</template>
