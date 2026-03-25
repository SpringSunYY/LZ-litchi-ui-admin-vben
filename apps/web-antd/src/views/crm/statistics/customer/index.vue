<script lang="ts" setup>
import type { Dayjs } from 'dayjs';

import { computed, onMounted, reactive, ref, watch } from 'vue';

import { Page } from '@vben/common-ui';

import {
  Button,
  Card,
  DatePicker,
  Form,
  Select,
  Space,
  Spin,
  Tabs,
  TreeSelect,
} from 'ant-design-vue';
import dayjs from 'dayjs';

import { getSimpleDeptList } from '#/api/system/dept';
import {
  getCustomerSummaryByDate,
  getCustomerSummaryByUser,
} from '#/api/crm/statistics/customer';
import { $t } from '#/locales';
import { getSimpleUserList } from '#/api/system/user';
import { handleTree } from '@vben/utils';

import CustomerConversionStat from './components/CustomerConversionStat.vue';
import CustomerDealCycleByArea from './components/CustomerDealCycleByArea.vue';
import CustomerDealCycleByProduct from './components/CustomerDealCycleByProduct.vue';
import CustomerDealCycleByUser from './components/CustomerDealCycleByUser.vue';
import CustomerFollowUpSummary from './components/CustomerFollowUpSummary.vue';
import CustomerFollowUpType from './components/CustomerFollowUpType.vue';
import CustomerPoolSummary from './components/CustomerPoolSummary.vue';
import CustomerSummary from './components/CustomerSummary.vue';

defineOptions({ name: 'CrmCustomerStatistics' });

const loading = ref(false);
const hasDept = computed(() => deptList.value && deptList.value.length > 0);
const totalStats = reactive({
  customerCreateCount: 0,
  customerDealCount: 0,
});

// 部门树形数据
const deptList = ref<any[]>([]);
// 全量用户清单
const userList = ref<any[]>([]);

const formState = reactive({
  deptId: undefined as number | undefined,
  userId: undefined as number | undefined,
  interval: 2, // WEEK, 周
  times: [
    dayjs().subtract(7, 'day').startOf('day'),
    dayjs().subtract(1, 'day').endOf('day'),
  ] as [Dayjs, Dayjs],
});

const queryParams = computed(() => ({
  deptId: formState.deptId,
  userId: formState.userId,
  interval: formState.interval,
  times: formState.times.map(
    (d: Dayjs) => d?.format('YYYY-MM-DD HH:mm:ss') ?? '',
  ),
}));

// 根据选择的部门筛选员工
const userOptions = computed(() => {
  if (!formState.deptId) return [];
  return userList.value
    .filter((u) => u.deptId === formState.deptId)
    .map((item) => ({
      label: item.nickname,
      value: item.id,
    }));
});

const refSummary = ref();
const refFollowUpSummary = ref();
const refFollowUpType = ref();
const refPoolSummary = ref();
const refDealCycleByUser = ref();
const refDealCycleByArea = ref();
const refDealCycleByProduct = ref();
const refConversionStat = ref();

/** 刷新所有组件数据 */
async function loadAllData() {
  loading.value = true;
  try {
    const params: Record<string, any> = {
      interval: formState.interval,
      times: formState.times.map(
        (d: Dayjs) => d?.format('YYYY-MM-DD HH:mm:ss') ?? '',
      ),
    };
    if (formState.deptId != null) {
      params.deptId = formState.deptId;
    }
    if (formState.userId != null) {
      params.userId = formState.userId;
    }

    const [, userRes] = await Promise.all([
      getCustomerSummaryByDate(params as any),
      getCustomerSummaryByUser(params as any),
    ]);

    totalStats.customerCreateCount = userRes.reduce(
      (sum, item) => sum + item.customerCreateCount,
      0,
    );
    totalStats.customerDealCount = userRes.reduce(
      (sum, item) => sum + item.customerDealCount,
      0,
    );

    refSummary.value?.loadData?.();
    refFollowUpSummary.value?.loadData?.();
    refFollowUpType.value?.loadData?.();
    refPoolSummary.value?.loadData?.();
    refDealCycleByUser.value?.loadData?.();
    refDealCycleByArea.value?.loadData?.();
    refDealCycleByProduct.value?.loadData?.();
    refConversionStat.value?.loadData?.();
  } finally {
    loading.value = false;
  }
}

/** 重置表单 */
function handleReset() {
  formState.deptId = deptList.value.length > 0 ? deptList.value[0]!.id : undefined;
  formState.userId = undefined;
  formState.interval = 2;
  resetTimeRange();
  loadAllData();
}

/** 切换部门后清空员工 */
watch(
  () => formState.deptId,
  () => {
    formState.userId = undefined;
  },
);

const pickerType = computed(() => {
  switch (formState.interval) {
    case 1:
      return 'date';
    case 2:
      return 'week';
    case 3:
      return 'month';
    case 4:
      return 'year';
    default:
      return 'date';
  }
});

/**
 * 根据时间类型自动计算日期范围：
 *   1=天/2=周：本周一 00:00:00 ~ 昨天 23:59:59
 *   3=月：本月1日 00:00:00 ~ 上月末日 23:59:59
 *   4=年：本年1月1日 00:00:00 ~ 去年12月31日 23:59:59
 */
function resetTimeRange() {
  switch (formState.interval) {
    case 1: // 天
    case 2: // 周
      formState.times = [
        dayjs().subtract(7, 'day').startOf('day'),
        dayjs().subtract(1, 'day').endOf('day'),
      ];
      break;
    case 3: // 月
      formState.times = [
        dayjs().subtract(1, 'month').startOf('month'),
        dayjs().subtract(1, 'day').endOf('day'),
      ];
      break;
    case 4: // 年
      formState.times = [
        dayjs().subtract(1, 'year').startOf('year'),
        dayjs().subtract(1, 'day').endOf('day'),
      ];
      break;
  }
}

/** 切换时间类型后同步日期范围和 DatePicker 选择 */
watch(
  () => formState.interval,
  () => {
    resetTimeRange();
  },
);

// 用 computed 确保 $t() 在组件 setup 时执行，此时 locale 已加载
const chartTabs = computed(() => [
  { label: $t('crm.customer.statistics.customerTotal'), value: 'summary' },
  { label: $t('crm.customer.statistics.followUpAnalysis'), value: 'followUp' },
  { label: $t('crm.customer.statistics.poolAnalysis'), value: 'pool' },
  { label: $t('crm.customer.statistics.dealCycleAnalysis'), value: 'dealCycle' },
  { label: $t('crm.customer.statistics.customerConversion'), value: 'conversion' },
]);

const dealCycleTabs = computed(() => [
  { label: $t('crm.customer.statistics.byEmployee'), value: 'byUser' },
  { label: $t('crm.customer.statistics.byArea'), value: 'byArea' },
  { label: $t('crm.customer.statistics.byProduct'), value: 'byProduct' },
]);

const followUpTabs = computed(() => [
  { label: $t('crm.customer.statistics.followUpSummary'), value: 'summary' },
  { label: $t('crm.customer.statistics.followUpType'), value: 'type' },
]);

const dealCycleActiveTab = ref('byUser');
const followUpActiveTab = ref('summary');

onMounted(async () => {
  // 将扁平部门列表转成树形
  deptList.value = handleTree(await getSimpleDeptList());
  userList.value = await getSimpleUserList();
  // 自动选中第一个部门
  if (deptList.value.length > 0) {
    formState.deptId = deptList.value[0]!.id;
  }
  resetTimeRange();
  loadAllData();
});
</script>

<template>
  <Page>
    <Card :bordered="false" class="mb-4">
      <Form layout="inline">
        <Form.Item :label="$t('common.date')">
          <DatePicker.RangePicker
            v-model:value="formState.times"
            :picker="pickerType"
            format="YYYY-MM-DD HH:mm:ss"
            style="width: 320px"
          />
        </Form.Item>

        <Form.Item :label="$t('crm.customer.interval')">
          <Select v-model:value="formState.interval" style="width: 140px">
            <Select.Option :value="1">{{ $t('crm.customer.intervalDay') }}</Select.Option>
            <Select.Option :value="2">{{ $t('crm.customer.intervalWeek') }}</Select.Option>
            <Select.Option :value="3">{{ $t('crm.customer.intervalMonth') }}</Select.Option>
            <Select.Option :value="4">{{ $t('crm.customer.intervalYear') }}</Select.Option>
          </Select>
        </Form.Item>

        <Form.Item :label="$t('crm.customer.department')">
          <TreeSelect
            v-model:value="formState.deptId"
            :dropdown-style="{ maxHeight: '400px', overflow: 'auto' }"
            :field-names="{ label: 'name', value: 'id', children: 'children' }"
            :tree-data="deptList"
            :placeholder="$t('common.select')"
            allow-clear
            style="width: 200px"
          />
        </Form.Item>

        <Form.Item :label="$t('crm.customer.employee')">
          <Select
            v-model:value="formState.userId"
            :disabled="!formState.deptId"
            :options="userOptions"
            :placeholder="$t('common.select')"
            allow-clear
            style="width: 200px"
          />
        </Form.Item>

        <Form.Item>
          <Space>
            <Button type="primary" :disabled="!hasDept" @click="loadAllData">
              {{ $t('common.query') }}
            </Button>
            <Button @click="handleReset">
              {{ $t('common.reset') }}
            </Button>
          </Space>
        </Form.Item>
      </Form>
    </Card>

    <Spin :spinning="loading">
      <Tabs>
        <Tabs.TabPane key="summary" :tab="chartTabs[0]!.label">
          <CustomerSummary ref="refSummary" :query-params="queryParams" />
        </Tabs.TabPane>

        <Tabs.TabPane key="followUp" :tab="chartTabs[1]!.label">
          <Tabs v-model:active-key="followUpActiveTab">
            <Tabs.TabPane key="summary" :tab="followUpTabs[0]!.label">
              <CustomerFollowUpSummary
                ref="refFollowUpSummary"
                :query-params="queryParams"
              />
            </Tabs.TabPane>
            <Tabs.TabPane key="type" :tab="followUpTabs[1]!.label">
              <CustomerFollowUpType
                ref="refFollowUpType"
                :query-params="queryParams"
              />
            </Tabs.TabPane>
          </Tabs>
        </Tabs.TabPane>

        <Tabs.TabPane key="pool" :tab="chartTabs[2]!.label">
          <CustomerPoolSummary
            ref="refPoolSummary"
            :query-params="queryParams"
          />
        </Tabs.TabPane>

        <Tabs.TabPane key="dealCycle" :tab="chartTabs[3]!.label">
          <Tabs v-model:active-key="dealCycleActiveTab">
            <Tabs.TabPane key="byUser" :tab="dealCycleTabs[0]!.label">
              <CustomerDealCycleByUser
                ref="refDealCycleByUser"
                :query-params="queryParams"
              />
            </Tabs.TabPane>
            <Tabs.TabPane key="byArea" :tab="dealCycleTabs[1]!.label">
              <CustomerDealCycleByArea
                ref="refDealCycleByArea"
                :query-params="queryParams"
              />
            </Tabs.TabPane>
            <Tabs.TabPane key="byProduct" :tab="dealCycleTabs[2]!.label">
              <CustomerDealCycleByProduct
                ref="refDealCycleByProduct"
                :query-params="queryParams"
              />
            </Tabs.TabPane>
          </Tabs>
        </Tabs.TabPane>

        <Tabs.TabPane key="conversion" :tab="chartTabs[4]!.label">
          <CustomerConversionStat
            ref="refConversionStat"
            :query-params="queryParams"
          />
        </Tabs.TabPane>
      </Tabs>
    </Spin>
  </Page>
</template>
