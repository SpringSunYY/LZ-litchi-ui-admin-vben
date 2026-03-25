<script lang="ts" setup>
import type { Dayjs } from 'dayjs';

import { computed, onMounted, reactive, ref, watch } from 'vue';

import { Page } from '@vben/common-ui';
import { handleTree } from '@vben/utils';

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
import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';

import BusinessInversionRateSummary from './components/BusinessInversionRateSummary.vue';
import BusinessSummary from './components/BusinessSummary.vue';
import FunnelBusiness from './components/FunnelBusiness.vue';

defineOptions({ name: 'CrmStatisticsFunnel' });

const loading = ref(false);
const hasDept = computed(() => deptList.value && deptList.value.length > 0);

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

const refFunnelBusiness = ref();
const refBusinessSummary = ref();
const refBusinessInversionRateSummary = ref();

const pickerType = computed(() => {
  switch (formState.interval) {
    case 1: {
      return 'date';
    }
    case 2: {
      return 'week';
    }
    case 3: {
      return 'month';
    }
    case 4: {
      return 'year';
    }
    default: {
      return 'date';
    }
  }
});

function resetTimeRange() {
  switch (formState.interval) {
    case 1: // 天
    case 2: {
      // 周
      formState.times = [
        dayjs().subtract(7, 'day').startOf('day'),
        dayjs().subtract(1, 'day').endOf('day'),
      ];
      break;
    }
    case 3: {
      // 月
      formState.times = [
        dayjs().subtract(1, 'month').startOf('month'),
        dayjs().subtract(3, 'day').endOf('day'),
      ];
      break;
    }
    case 4: {
      // 年
      formState.times = [
        dayjs().subtract(2, 'year').startOf('year'),
        dayjs().subtract(1, 'day').endOf('day'),
      ];
      break;
    }
  }
}

/** 切换部门后清空员工 */
watch(
  () => formState.deptId,
  () => {
    formState.userId = undefined;
  },
);

/** 切换时间类型后同步日期范围和 DatePicker 选择 */
watch(
  () => formState.interval,
  () => {
    resetTimeRange();
  },
);

// 用 computed 确保 $t() 在组件 setup 时执行，此时 locale 已加载
const chartTabs = computed(() => [
  { label: $t('crm.funnel.title'), value: 'funnel' },
  { label: $t('crm.funnel.businessAnalysis'), value: 'business' },
  {
    label: $t('crm.funnel.businessInversionRateAnalysis'),
    value: 'inversionRate',
  },
]);

const activeTab = ref('funnel');

/** 刷新当前 Tab 的数据 */
function loadActiveTab() {
  switch (activeTab.value) {
    case 'business': {
      refBusinessSummary.value?.loadData?.();
      break;
    }
    case 'funnel': {
      refFunnelBusiness.value?.loadData?.();
      break;
    }
    case 'inversionRate': {
      refBusinessInversionRateSummary.value?.loadData?.();
      break;
    }
  }
}

/** 重置表单 */
function handleReset() {
  formState.deptId =
    deptList.value.length > 0 ? deptList.value[0]!.id : undefined;
  formState.userId = undefined;
  formState.interval = 2;
  resetTimeRange();
  loadActiveTab();
}

watch(activeTab, () => {
  loadActiveTab();
});

onMounted(async () => {
  // 将扁平部门列表转成树形
  deptList.value = handleTree(await getSimpleDeptList());
  userList.value = await getSimpleUserList();
  // 自动选中第一个部门
  if (deptList.value.length > 0) {
    formState.deptId = deptList.value[0]!.id;
  }
  resetTimeRange();
  loadActiveTab();
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
            <Select.Option :value="1">
              {{ $t('crm.customer.intervalDay') }}
            </Select.Option>
            <Select.Option :value="2">
              {{ $t('crm.customer.intervalWeek') }}
            </Select.Option>
            <Select.Option :value="3">
              {{ $t('crm.customer.intervalMonth') }}
            </Select.Option>
            <Select.Option :value="4">
              {{ $t('crm.customer.intervalYear') }}
            </Select.Option>
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
            <Button type="primary" :disabled="!hasDept" @click="loadActiveTab">
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
      <Tabs v-model:active-key="activeTab">
        <Tabs.TabPane key="funnel" :tab="chartTabs[0]!.label">
          <FunnelBusiness ref="refFunnelBusiness" :query-params="queryParams" />
        </Tabs.TabPane>

        <Tabs.TabPane key="business" :tab="chartTabs[1]!.label">
          <BusinessSummary
            ref="refBusinessSummary"
            :query-params="queryParams"
          />
        </Tabs.TabPane>

        <Tabs.TabPane key="inversionRate" :tab="chartTabs[2]!.label">
          <BusinessInversionRateSummary
            ref="refBusinessInversionRateSummary"
            :query-params="queryParams"
          />
        </Tabs.TabPane>
      </Tabs>
    </Spin>
  </Page>
</template>
