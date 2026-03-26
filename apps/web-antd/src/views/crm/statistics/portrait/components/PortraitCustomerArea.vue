<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmStatisticsPortraitApi } from '#/api/crm/statistics/portrait';

import { nextTick, ref } from 'vue';

import { EchartsUI, registerMap, useEcharts } from '@vben/plugins/echarts';
import { usePreferences } from '@vben/preferences';

import { Card, Col, Row } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import { getCustomerArea } from '#/api/crm/statistics/portrait';
import { $t } from '#/locales';
import { areaReplace } from '#/utils';

defineOptions({ name: 'PortraitCustomerArea' });

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
const { isDark } = usePreferences();

const MAP_NAME = 'china';

async function fetchChinaMap() {
  const res = await fetch('/map/china.json');
  return res.json();
}

async function renderLeftMap(mapJson: any) {
  registerMap(MAP_NAME, mapJson);

  const min = 0;
  const max = Math.max(...chartData.value.map((i) => i.customerCount || 0), 1);
  const dark = isDark.value;

  renderLeftChart({
    title: { text: $t('crm.portrait.allCustomer'), left: 'center', textStyle: { color: dark ? '#e5eaf3' : '#666' } },
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
      inRange: { color: dark ? ['#1e3a5f', '#3b82f6'] : ['#fff', '#3b82f6'] },
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
          areaColor: dark ? '#1f3a5f' : '#f0f5ff',
          borderColor: dark ? '#3a5a7a' : '#a0c4ff',
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
  const dark = isDark.value;

  renderRightChart({
    title: { text: $t('crm.portrait.dealCustomer'), left: 'center', textStyle: { color: dark ? '#e5eaf3' : '#666' } },
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
      inRange: { color: dark ? ['#1a3d2b', '#2fc25b'] : ['#fff', '#2fc25b'] },
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
          areaColor: dark ? '#1f3a2b' : '#f0fff0',
          borderColor: dark ? '#3a5a4a' : '#a0e0a0',
        },
        data: chartData.value.map((item) => ({
          name: areaReplace(item.areaName),
          value: item.dealCount || 0,
        })),
      },
    ],
  });
}

const columns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'areaName', title: $t('crm.portrait.areaName'), minWidth: 120 },
  {
    field: 'customerCount',
    title: $t('crm.portrait.customerCount'),
    minWidth: 100,
  },
  {
    field: 'customerPortion',
    title: $t('crm.portrait.areaPortion'),
    minWidth: 120,
  },
  {
    field: 'dealCount',
    title: $t('crm.portrait.dealCount'),
    minWidth: 100,
  },
  {
    field: 'dealPortion',
    title: $t('crm.portrait.dealPortion'),
    minWidth: 120,
  },
];

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns,
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
