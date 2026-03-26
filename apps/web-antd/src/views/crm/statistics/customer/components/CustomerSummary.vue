<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmStatisticsCustomerApi } from '#/api/crm/statistics/customer';

import { nextTick, reactive, ref } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card, Col, Row, Statistic } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  getCustomerSummaryByDate,
  getCustomerSummaryByUser,
} from '#/api/crm/statistics/customer';
import { $t } from '#/locales';

defineOptions({ name: 'CustomerSummary' });

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
  customerCreateCount: 0,
  customerDealCount: 0,
  dealRate: '0.00',
});
const chartData = ref<CrmStatisticsCustomerApi.CustomerSummaryByDate[]>([]);
const tableData = ref<CrmStatisticsCustomerApi.CustomerSummaryByUser[]>([]);

const chartRef = ref<EchartsUIType>();
const { renderEcharts } = useEcharts(chartRef);

const columns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'ownerUserName', title: $t('crm.customer.employee'), minWidth: 120 },
  {
    field: 'customerCreateCount',
    title: $t('crm.customer.newCustomerCount'),
    minWidth: 100,
  },
  {
    field: 'customerDealCount',
    title: $t('crm.customer.dealCustomerCount'),
    minWidth: 100,
  },
  {
    field: 'dealRate',
    title: $t('crm.customer.dealRate'),
    minWidth: 100,
    formatter: ({ cellValue }) => `${cellValue}%`,
  },
  {
    field: 'contractPrice',
    title: $t('crm.portrait.totalPrice'),
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'receivablePrice',
    title: $t('crm.portrait.receivablePrice'),
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'receivableNotPrice',
    title: $t('crm.portrait.receivableNotPrice'),
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'receivableRate',
    title: $t('crm.customer.receivableRate'),
    minWidth: 100,
    formatter: ({ cellValue }) => `${cellValue}%`,
  },
];

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns,
    height: 300,
    data: [],
  },
});

function drawChart() {
  const times = chartData.value.map((i) => i.time);
  const createCounts = chartData.value.map((i) => i.customerCreateCount);
  const dealCounts = chartData.value.map((i) => i.customerDealCount);

  renderEcharts({
    tooltip: { trigger: 'axis' },
    legend: {
      data: [
        $t('crm.customer.newCustomer'),
        $t('crm.customer.dealCustomer'),
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
    },
    yAxis: {
      type: 'value',
    },
    series: [
      {
        name: $t('crm.customer.newCustomer'),
        type: 'bar',
        barMaxWidth: 40,
        itemStyle: { color: '#5ab1ef', borderRadius: [4, 4, 0, 0] },
        data: createCounts,
      },
      {
        name: $t('crm.customer.dealCustomer'),
        type: 'bar',
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

    const [dateRes, userRes] = await Promise.all([
      getCustomerSummaryByDate(params),
      getCustomerSummaryByUser(params),
    ]);

    totalStats.customerCreateCount = userRes.reduce(
      (sum, item) => sum + item.customerCreateCount,
      0,
    );
    totalStats.customerDealCount = userRes.reduce(
      (sum, item) => sum + item.customerDealCount,
      0,
    );
    totalStats.dealRate =
      totalStats.customerCreateCount > 0
        ? (
            (totalStats.customerDealCount / totalStats.customerCreateCount) *
            100
          ).toFixed(2)
        : '0.00';

    const tableRows = userRes.map((item) => ({
      ...item,
      dealRate:
        item.customerCreateCount > 0
          ? ((item.customerDealCount / item.customerCreateCount) * 100).toFixed(2)
          : '0.00',
      receivableRate:
        item.contractPrice > 0
          ? ((item.receivablePrice / item.contractPrice) * 100).toFixed(2)
          : '0.00',
      receivableNotPrice: item.contractPrice - item.receivablePrice,
    }));

    chartData.value = dateRes;
    tableData.value = userRes;
    gridApi.grid?.loadData(tableRows);

    await nextTick();
    drawChart();
  } finally {
    loading.value = false;
  }
}

defineExpose({ loadData });
</script>

<template>
  <div v-loading="loading">
    <Row :gutter="16" class="mb-4">
      <Col :span="6">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.newCustomerCount')"
            :value="totalStats.customerCreateCount"
          />
        </Card>
      </Col>
      <Col :span="6">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.dealCustomerCount')"
            :value="totalStats.customerDealCount"
          />
        </Card>
      </Col>
      <Col :span="12">
        <Card :bordered="false">
          <Statistic
            :title="$t('crm.customer.dealRate')"
            :value="totalStats.dealRate"
            suffix="%"
          />
        </Card>
      </Col>
    </Row>

    <Card
      :title="$t('crm.customer.customerTotalTrend')"
      :bordered="false"
      class="mb-4"
    >
      <EchartsUI ref="chartRef" style="height: 300px" />
    </Card>

    <Card
      :title="$t('crm.customer.customerTotalRankByEmployee')"
      :bordered="false"
    >
      <Grid />
    </Card>
  </div>
</template>
