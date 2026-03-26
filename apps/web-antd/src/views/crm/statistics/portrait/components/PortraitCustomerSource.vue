<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import type { CrmStatisticsPortraitApi } from '#/api/crm/statistics/portrait';

import { nextTick, ref, watch } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card, Col, Row } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import { getCustomerSource } from '#/api/crm/statistics/portrait';
import { $t } from '#/locales';
import { DICT_TYPE, getDictLabel } from '#/utils';

defineOptions({ name: 'PortraitCustomerSource' });

const props = defineProps<{
  queryParams: {
    deptId?: number;
    userId?: number;
    times: string[];
  };
}>();

const loading = ref(false);
const chartData = ref<CrmStatisticsPortraitApi.CustomerSource[]>([]);

const leftChartRef = ref<EchartsUIType>();
const rightChartRef = ref<EchartsUIType>();
const { renderEcharts: renderLeftChart } = useEcharts(leftChartRef);
const { renderEcharts: renderRightChart } = useEcharts(rightChartRef);

const COLORS = [
  '#5ab1ef',
  '#2fc25b',
  '#ffb980',
  '#d87a80',
  '#b6a2de',
  '#01cdfe',
  '#05ffa1',
  '#b967ff',
  '#fffb96',
];

function renderLeftPie() {
  const data = chartData.value.map((item, index) => ({
    name: getDictLabel(DICT_TYPE.CRM_CUSTOMER_SOURCE, item.source),
    value: item.customerCount,
    itemStyle: { color: COLORS[index % COLORS.length] },
  }));

  renderLeftChart({
    title: { text: $t('crm.portrait.allCustomer'), left: 'center' },
    tooltip: { trigger: 'item', formatter: '{b}: {c} ({d}%)' },
    legend: { orient: 'vertical', right: 10, top: 'center' },
    series: [
      {
        name: $t('crm.portrait.allCustomer'),
        type: 'pie',
        radius: ['40%', '70%'],
        center: ['35%', '50%'],
        avoidLabelOverlap: false,
        label: { show: false },
        emphasis: {
          label: { show: true, fontSize: 14, fontWeight: 'bold' },
        },
        labelLine: { show: false },
        data,
      },
    ],
  });
}

function renderRightPie() {
  const data = chartData.value.map((item, index) => ({
    name: getDictLabel(DICT_TYPE.CRM_CUSTOMER_SOURCE, item.source),
    value: item.dealCount,
    itemStyle: { color: COLORS[index % COLORS.length] },
  }));

  renderRightChart({
    title: { text: $t('crm.portrait.dealCustomer'), left: 'center' },
    tooltip: { trigger: 'item', formatter: '{b}: {c} ({d}%)' },
    legend: { orient: 'vertical', right: 10, top: 'center' },
    series: [
      {
        name: $t('crm.portrait.dealCustomer'),
        type: 'pie',
        radius: ['40%', '70%'],
        center: ['35%', '50%'],
        avoidLabelOverlap: false,
        label: { show: false },
        emphasis: {
          label: { show: true, fontSize: 14, fontWeight: 'bold' },
        },
        labelLine: { show: false },
        data,
      },
    ],
  });
}

const columns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'sourceName', title: $t('crm.portrait.source'), minWidth: 120 },
  {
    field: 'customerCount',
    title: $t('crm.portrait.customerCount'),
    minWidth: 100,
  },
  {
    field: 'sourcePortion',
    title: $t('crm.portrait.sourcePortion'),
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
    const res = await getCustomerSource({
      deptId: props.queryParams.deptId,
      userId: props.queryParams.userId,
      times: props.queryParams.times,
    });

    const totalCustomer = res.reduce((sum, i) => sum + i.customerCount, 0);
    const totalDeal = res.reduce((sum, i) => sum + i.dealCount, 0);

    const tableRows = res.map((item) => ({
      ...item,
      sourceName: getDictLabel(DICT_TYPE.CRM_CUSTOMER_SOURCE, item.source),
      sourcePortion: calcPortion(item.customerCount, totalCustomer),
      dealPortion: calcPortion(item.dealCount, totalDeal),
    }));

    chartData.value = res;
    gridApi.grid?.loadData(tableRows);

    await nextTick();
    renderLeftPie();
    renderRightPie();
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
          <EchartsUI ref="leftChartRef" style="height: 400px" />
        </Card>
      </Col>
      <Col :span="12">
        <Card :bordered="false">
          <EchartsUI ref="rightChartRef" style="height: 400px" />
        </Card>
      </Col>
    </Row>

    <Card :bordered="false" class="mt-4">
      <Grid />
    </Card>
  </div>
</template>
