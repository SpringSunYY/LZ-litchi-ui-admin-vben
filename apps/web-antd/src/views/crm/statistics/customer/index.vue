<script lang="ts" setup>
import type { Dayjs } from 'dayjs';

import { computed, nextTick, onMounted, reactive, ref, watch } from 'vue';

import { Page } from '@vben/common-ui';
import { handleTree } from '@vben/utils';

import {
  Button,
  Card,
  DatePicker,
  Form,
  message,
  Select,
  Space,
  Tabs,
  TreeSelect,
} from 'ant-design-vue';
import dayjs from 'dayjs';

import { getSimpleDeptList } from '#/api/system/dept';
import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import { getRangePickerDefaultProps } from '#/utils';

import CustomerConversionStat from './components/CustomerConversionStat.vue';
import CustomerDealCycleByArea from './components/CustomerDealCycleByArea.vue';
import CustomerDealCycleByProduct from './components/CustomerDealCycleByProduct.vue';
import CustomerDealCycleByUser from './components/CustomerDealCycleByUser.vue';
import CustomerFollowUpSummary from './components/CustomerFollowUpSummary.vue';
import CustomerFollowUpType from './components/CustomerFollowUpType.vue';
import CustomerPoolSummary from './components/CustomerPoolSummary.vue';
import CustomerSummary from './components/CustomerSummary.vue';

defineOptions({ name: 'CrmCustomerStatistics' });

const hasDept = computed(() => deptList.value && deptList.value.length > 0);

const deptList = ref<any[]>([]);
const userList = ref<any[]>([]);

const formState = reactive({
  deptId: undefined as number | undefined,
  userId: undefined as number | undefined,
  interval: 2,
  times: [
    dayjs().subtract(14, 'day').startOf('day'),
    dayjs().subtract(1, 'day').endOf('day'),
  ] as [Dayjs, Dayjs],
});

const queryParams = computed(() => ({
  deptId: formState.deptId,
  userId: formState.userId,
  interval: formState.interval,
  times: (formState.times as [Dayjs, Dayjs]).map((d: Dayjs) =>
    d ? dayjs(d).format('YYYY-MM-DD HH:mm:ss') : '',
  ),
}));

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

/** 刷新当前 Tab 的数据 */
async function loadActiveTab() {
  await nextTick();
  if (!queryParams.value.deptId || !queryParams.value.times) {
    message.warn({
      content: $t('crm.common.noDeptAndTime'),
      key: 'action_key_msg',
    });
    return;
  }
  switch (activeTab.value) {
    case 'conversion': {
      refConversionStat.value?.loadData?.();
      break;
    }
    case 'dealCycleByArea': {
      refDealCycleByArea.value?.loadData?.();
      break;
    }
    case 'dealCycleByProduct': {
      refDealCycleByProduct.value?.loadData?.();
      break;
    }
    case 'dealCycleByUser': {
      refDealCycleByUser.value?.loadData?.();
      break;
    }
    case 'followUpSummary': {
      refFollowUpSummary.value?.loadData?.();
      break;
    }
    case 'followUpType': {
      refFollowUpType.value?.loadData?.();
      break;
    }
    case 'pool': {
      refPoolSummary.value?.loadData?.();
      break;
    }
    case 'summary': {
      refSummary.value?.loadData?.();
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

/** 切换部门后清空员工 */
watch(
  () => formState.deptId,
  () => {
    formState.userId = undefined;
  },
);

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
      return 'quarter';
    }
    case 5: {
      return 'year';
    }
    default: {
      return 'date';
    }
  }
});

/**
 * 根据时间类型自动计算日期范围：
 *   1=天/2=周：近7天
 *   3=月：近30天
 *   4=季度：近1个季度
 *   5=年：近1年
 */
function resetTimeRange() {
  switch (formState.interval) {
    case 1: // 天
    case 2: {
      // 周
      formState.times = [
        dayjs().subtract(14, 'day').startOf('day'),
        dayjs().subtract(1, 'day').endOf('day'),
      ];
      break;
    }
    case 3: {
      // 月
      formState.times = [
        dayjs().subtract(3, 'month').startOf('month'),
        dayjs().subtract(1, 'day').endOf('day'),
      ];
      break;
    }
    case 4: {
      // 季度
      formState.times = [
        dayjs().subtract(3, 'quarter').startOf('quarter'),
        dayjs().subtract(1, 'day').endOf('day'),
      ];
      break;
    }
    case 5: {
      // 年
      formState.times = [
        dayjs().subtract(3, 'year').startOf('year'),
        dayjs().subtract(1, 'day').endOf('day'),
      ];
      break;
    }
  }
}

/** 切换时间类型后同步日期范围和 DatePicker 选择 */
watch(
  () => formState.interval,
  () => {
    resetTimeRange();
  },
);

const chartTabs = computed(() => [
  { label: $t('crm.customer.customerTotal'), value: 'summary' },
  {
    label: $t('crm.customer.followUpSummary'),
    value: 'followUpSummary',
  },
  { label: $t('crm.customer.followUpType'), value: 'followUpType' },
  { label: $t('crm.customer.poolAnalysis'), value: 'pool' },
  {
    label: $t('crm.customer.dealCycleByEmployee'),
    value: 'dealCycleByUser',
  },
  {
    label: $t('crm.customer.dealCycleByArea'),
    value: 'dealCycleByArea',
  },
  {
    label: $t('crm.customer.dealCycleByProduct'),
    value: 'dealCycleByProduct',
  },
  {
    label: $t('crm.customer.customerConversion'),
    value: 'conversion',
  },
]);

const activeTab = ref('summary');

onMounted(async () => {
  deptList.value = handleTree(await getSimpleDeptList());
  userList.value = await getSimpleUserList();
  if (deptList.value.length > 0) {
    formState.deptId = deptList.value[0]!.id;
  }
  resetTimeRange();
  await loadActiveTab();
});
</script>

<template>
  <Page>
    <Card :bordered="false" class="mb-4">
      <Form layout="inline">
        <Form.Item :label="$t('common.date')">
          <DatePicker.RangePicker
            v-model:value="formState.times"
            v-bind="getRangePickerDefaultProps()"
            format="YYYY-MM-DD"
            :picker="pickerType"
            style="width: 320px"
          />
        </Form.Item>

        <Form.Item :label="$t('crm.common.interval')">
          <Select v-model:value="formState.interval" style="width: 140px">
            <Select.Option :value="1">
              {{ $t('crm.common.intervalDay') }}
            </Select.Option>
            <Select.Option :value="2">
              {{ $t('crm.common.intervalWeek') }}
            </Select.Option>
            <Select.Option :value="3">
              {{ $t('crm.common.intervalMonth') }}
            </Select.Option>
            <Select.Option :value="4">
              {{ $t('crm.common.intervalQuarter') }}
            </Select.Option>
            <Select.Option :value="5">
              {{ $t('crm.common.intervalYear') }}
            </Select.Option>
          </Select>
        </Form.Item>

        <Form.Item :label="$t('crm.common.department')">
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

        <Form.Item :label="$t('crm.common.employee')">
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

    <Tabs v-model:active-key="activeTab" @change="loadActiveTab">
      <Tabs.TabPane key="summary" :tab="chartTabs[0]!.label">
        <CustomerSummary ref="refSummary" :query-params="queryParams" />
      </Tabs.TabPane>

      <Tabs.TabPane key="followUpSummary" :tab="chartTabs[1]!.label">
        <CustomerFollowUpSummary
          ref="refFollowUpSummary"
          :query-params="queryParams"
        />
      </Tabs.TabPane>

      <Tabs.TabPane key="followUpType" :tab="chartTabs[2]!.label">
        <CustomerFollowUpType
          ref="refFollowUpType"
          :query-params="queryParams"
        />
      </Tabs.TabPane>

      <Tabs.TabPane key="pool" :tab="chartTabs[3]!.label">
        <CustomerPoolSummary ref="refPoolSummary" :query-params="queryParams" />
      </Tabs.TabPane>

      <Tabs.TabPane key="dealCycleByUser" :tab="chartTabs[4]!.label">
        <CustomerDealCycleByUser
          ref="refDealCycleByUser"
          :query-params="queryParams"
        />
      </Tabs.TabPane>

      <Tabs.TabPane key="dealCycleByArea" :tab="chartTabs[5]!.label">
        <CustomerDealCycleByArea
          ref="refDealCycleByArea"
          :query-params="queryParams"
        />
      </Tabs.TabPane>

      <Tabs.TabPane key="dealCycleByProduct" :tab="chartTabs[6]!.label">
        <CustomerDealCycleByProduct
          ref="refDealCycleByProduct"
          :query-params="queryParams"
        />
      </Tabs.TabPane>

      <Tabs.TabPane key="conversion" :tab="chartTabs[7]!.label">
        <CustomerConversionStat
          ref="refConversionStat"
          :query-params="queryParams"
        />
      </Tabs.TabPane>
    </Tabs>
  </Page>
</template>
