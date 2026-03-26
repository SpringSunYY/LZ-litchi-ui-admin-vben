<script lang="ts" setup>
import type { EchartsUIType } from '@vben/plugins/echarts';

import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmStatisticsCustomerApi } from '#/api/crm/statistics/customer';

import { nextTick, reactive, ref, watch } from 'vue';

import { EchartsUI, useEcharts } from '@vben/plugins/echarts';

import { Card, Statistic } from 'ant-design-vue';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import { getFollowUpSummaryByType } from '#/api/crm/statistics/customer';
import { $t } from '#/locales';
import { DICT_TYPE, getDictLabel } from '#/utils';

defineOptions({ name: 'CustomerFollowUpType' });

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
  totalCount: 0,
});
const chartData = ref<CrmStatisticsCustomerApi.FollowUpSummaryByType[]>([]);

const chartRef = ref<EchartsUIType>();
const { renderEcharts } = useEcharts(chartRef);

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

const columns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  {
    field: 'followUpType',
    title: $t('crm.customer.statistics.followUpType'),
    minWidth: 120,
    cellRender: {
      name: 'CellDict',
      props: { type: DICT_TYPE.CRM_FOLLOW_UP_TYPE },
    },
  },
  {
    field: 'followUpRecordCount',
    title: $t('crm.customer.statistics.followUpCount'),
    minWidth: 100,
  },
  {
    field: 'portion',
    title: $t('crm.customer.statistics.followUpTypeDistribution'),
    minWidth: 100,
    formatter: ({ cellValue }) => `${cellValue}%`,
  },
];

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns,
    height: 400,
    data: [],
  },
});

function renderPieChart() {
  const textColor = '#666';

  const data = chartData.value.map((item, index) => ({
    name: getDictLabel(DICT_TYPE.CRM_FOLLOW_UP_TYPE, item.followUpType),
    value: item.followUpRecordCount,
    itemStyle: { color: COLORS[index % COLORS.length] },
  }));

  renderEcharts({
    tooltip: {
      trigger: 'item',
      formatter: '{b}: {c} ({d}%)',
    },
    legend: {
      orient: 'vertical',
      right: 10,
      top: 'center',
      textStyle: { color: textColor },
    },
    series: [
      {
        type: 'pie',
        radius: ['40%', '70%'],
        center: ['35%', '50%'],
        avoidLabelOverlap: false,
        label: {
          show: false,
        },
        emphasis: {
          label: {
            show: true,
            fontSize: 14,
            fontWeight: 'bold',
          },
        },
        labelLine: {
          show: false,
        },
        data,
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

    const res = await getFollowUpSummaryByType(params);
    chartData.value = res;
    totalStats.totalCount = res.reduce(
      (sum, item) => sum + item.followUpRecordCount,
      0,
    );

    const tableRows = res.map((item) => {
      const portion =
        totalStats.totalCount > 0
          ? ((item.followUpRecordCount / totalStats.totalCount) * 100).toFixed(2)
          : '0.00';
      return { ...item, portion };
    });

    gridApi.grid?.loadData(tableRows);

    await nextTick();
    renderPieChart();
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
    <Card
      :title="$t('crm.customer.statistics.followUpTypeDistribution')"
      :bordered="false"
      class="mb-4"
    >
      <div class="flex items-center">
        <div style="width: 35%">
          <EchartsUI ref="chartRef" style="height: 400px" />
        </div>
        <div style="width: 65%" class="pl-8">
          <div class="mb-4">
            <Statistic
              :title="$t('common.total')"
              :value="totalStats.totalCount"
            />
          </div>
          <div
            v-for="(item, index) in chartData"
            :key="item.followUpType"
            class="mb-3 flex items-center justify-between border-b pb-2"
          >
            <div class="flex items-center">
              <span
                class="mr-2 inline-block h-3 w-3 rounded-full"
                :style="{
                  backgroundColor: COLORS[index % COLORS.length],
                }"
              ></span>
              <span>{{ getDictLabel(DICT_TYPE.CRM_FOLLOW_UP_TYPE, item.followUpType) }}</span>
            </div>
            <span class="font-semibold">{{ item.followUpRecordCount }}</span>
          </div>
        </div>
      </div>
    </Card>

    <Card :bordered="false">
      <Grid />
    </Card>
  </div>
</template>
