<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmStatisticsFunnelApi } from '#/api/crm/statistics/funnel';

import { nextTick, reactive, ref, watch } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Button, Card } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  getBusinessSummaryByEndStatus,
  getFunnelSummary,
} from '#/api/crm/statistics/funnel';
import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

defineOptions({ name: 'FunnelBusiness' });

const props = defineProps<{
  queryParams: {
    deptId?: number;
    interval: number;
    times: string[];
    userId?: number;
  };
}>();

const loading = ref(false);
const active = ref(true);
const funnelData = ref<CrmStatisticsFunnelApi.FunnelSummary | null>(null);

const funnelChartRef = ref<EchartsUIType>();
const { renderEcharts: renderFunnelChart } = useEcharts(funnelChartRef);

const totalStats = reactive({
  customerCount: 0,
  businessCount: 0,
  businessWinCount: 0,
});

const columns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  {
    field: 'endStatus',
    title: $t('crm.business.endStatus'),
    width: 200,
    cellRender: {
      name: 'CellDict',
      props: { type: DICT_TYPE.CRM_BUSINESS_END_STATUS_TYPE },
    },
  },
  {
    field: 'businessCount',
    title: $t('crm.common.businessCount'),
    minWidth: 200,
  },
  {
    field: 'totalPrice',
    title: $t('crm.common.businessAmount'),
    minWidth: 200,
    formatter: 'formatAmount2',
  },
];

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns,
    height: 300,
    data: [],
  },
});

function buildOptions() {
  const data = funnelData.value;
  const customerCount = data?.customerCount ?? 0;
  const businessCount = data?.businessCount ?? 0;
  const winCount = data?.businessWinCount ?? 0;

  return {
    title: {
      text: $t('crm.funnel.title'),
      left: 'center',
      textStyle: { color: '#666' },
    },
    tooltip: { trigger: 'item', formatter: '{a} <br/>{b}: {c}' },
    series: [
      {
        name: $t('crm.funnel.title'),
        type: 'funnel',
        left: '10%',
        top: 60,
        bottom: 60,
        width: '80%',
        min: 0,
        max: active.value
          ? 100
          : Math.max(customerCount, businessCount, winCount),
        minSize: '0%',
        maxSize: '100%',
        sort: 'descending',
        gap: 2,
        label: { show: true, position: 'inside', color: '#666' },
        labelLine: {
          length: 10,
          lineStyle: { width: 1, type: 'solid' },
        },
        itemStyle: { borderColor: '#fff', borderWidth: 1 },
        emphasis: { label: { fontSize: 20 } },
        data: active.value
          ? [
              {
                value: 60,
                name: `${$t('crm.common.customerCount')}：${customerCount}`,
              },
              {
                value: 40,
                name: `${$t('crm.common.businessCount')}：${businessCount}`,
              },
              {
                value: 20,
                name: `${$t('crm.common.businessWinCount')}：${winCount}`,
              },
            ]
          : [
              {
                value: customerCount,
                name: `${$t('crm.common.customerCount')}：${customerCount}`,
              },
              {
                value: businessCount,
                name: `${$t('crm.common.businessCount')}：${businessCount}`,
              },
              {
                value: winCount,
                name: `${$t('crm.common.businessWinCount')}：${winCount}`,
              },
            ],
      },
    ],
  };
}

async function fetchData() {
  if (!props.queryParams.deptId) return;
  loading.value = true;
  try {
    const params = {
      interval: props.queryParams.interval,
      deptId: props.queryParams.deptId,
      userId: props.queryParams.userId,
      times: props.queryParams.times,
    };
    const [funnelRes, endStatusRes] = await Promise.all([
      getFunnelSummary(params as any),
      getBusinessSummaryByEndStatus(params as any),
    ]);
    funnelData.value = funnelRes;
    totalStats.customerCount = funnelRes.customerCount ?? 0;
    totalStats.businessCount = funnelRes.businessCount ?? 0;
    totalStats.businessWinCount = funnelRes.businessWinCount ?? 0;
    gridApi.grid?.loadData(endStatusRes);

    await nextTick();
    await renderFunnelChart(buildOptions());
  } finally {
    loading.value = false;
  }
}

watch(
  () => props.queryParams,
  () => fetchData(),
  { deep: true },
);

watch(active, () => {
  nextTick(() => renderFunnelChart(buildOptions()));
});

defineExpose({ loadData: fetchData });
</script>

<template>
  <div v-loading="loading">
    <Card :bordered="false" class="mb-4">
      <div class="flex gap-4">
        <div class="flex-1">
          <span class="text-gray-400">{{
            $t('crm.common.customerCount')
          }}</span>
          <div class="text-2xl font-bold">{{ totalStats.customerCount }}</div>
        </div>
        <div class="flex-1">
          <span class="text-gray-400">{{
            $t('crm.common.businessCount')
          }}</span>
          <div class="text-2xl font-bold">{{ totalStats.businessCount }}</div>
        </div>
        <div class="flex-1">
          <span class="text-gray-400">{{
            $t('crm.common.businessWinCount')
          }}</span>
          <div class="text-2xl font-bold">
            {{ totalStats.businessWinCount }}
          </div>
        </div>
      </div>
    </Card>

    <Card :bordered="false" class="mb-4">
      <Button :type="active ? 'primary' : 'default'" @click="active = true">
        {{ $t('crm.funnel.customerView') }}
      </Button>
      <Button
        :type="!active ? 'primary' : 'default'"
        class="ml-2"
        @click="active = false"
      >
        {{ $t('crm.funnel.dynamicView') }}
      </Button>
    </Card>

    <Card :bordered="false" class="mb-4">
      <EchartsUI ref="funnelChartRef" style="height: 400px" />
    </Card>

    <Card :bordered="false">
      <Grid />
    </Card>
  </div>
</template>
