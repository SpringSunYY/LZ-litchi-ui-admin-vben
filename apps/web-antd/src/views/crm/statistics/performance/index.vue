<script lang="ts" setup>
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

import ContractCountPerformance from './components/ContractCountPerformance.vue';
import ContractPricePerformance from './components/ContractPricePerformance.vue';
import ReceivablePricePerformance from './components/ReceivablePricePerformance.vue';

defineOptions({ name: 'CrmStatisticsPerformance' });

const loading = ref(false);
const hasDept = computed(() => deptList.value && deptList.value.length > 0);

// 部门树形数据
const deptList = ref<any[]>([]);
// 全量用户清单
const userList = ref<any[]>([]);

const formState = reactive({
  deptId: undefined as number | undefined,
  userId: undefined as number | undefined,
  times: [dayjs().subtract(1, 'year').startOf('year'), dayjs().subtract(1, 'day').endOf('day')] as [
    ReturnType<typeof dayjs>,
    ReturnType<typeof dayjs>,
  ],
});

const queryParams = computed(() => ({
  deptId: formState.deptId,
  userId: formState.userId,
  times: formState.times.map((d) => d?.format('YYYY-MM-DD HH:mm:ss') ?? ''),
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

const refContractCount = ref();
const refContractPrice = ref();
const refReceivablePrice = ref();

// Tab 配置
const chartTabs = computed(() => [
  { label: $t('crm.performance.contractCountAnalysis'), value: 'contractCount' },
  { label: $t('crm.performance.contractPriceAnalysis'), value: 'contractPrice' },
  { label: $t('crm.performance.receivablePriceAnalysis'), value: 'receivablePrice' },
]);

const activeTab = ref('contractCount');

/** 刷新当前 Tab 的数据 */
function loadActiveTab() {
  switch (activeTab.value) {
    case 'contractCount': {
      refContractCount.value?.loadData?.();
      break;
    }
    case 'contractPrice': {
      refContractPrice.value?.loadData?.();
      break;
    }
    case 'receivablePrice': {
      refReceivablePrice.value?.loadData?.();
      break;
    }
  }
}

/** 重置表单 */
function handleReset() {
  formState.deptId =
    deptList.value.length > 0 ? deptList.value[0]!.id : undefined;
  formState.userId = undefined;
  formState.times = [
    dayjs().subtract(1, 'year').startOf('year'),
    dayjs().subtract(1, 'day').endOf('day'),
  ];
  loadActiveTab();
}

/** 切换部门后清空员工 */
watch(
  () => formState.deptId,
  () => {
    formState.userId = undefined;
  },
);

/** 切换 Tab 时刷新当前 Tab */
watch(activeTab, () => {
  loadActiveTab();
});

onMounted(async () => {
  deptList.value = handleTree(await getSimpleDeptList());
  userList.value = await getSimpleUserList();
  if (deptList.value.length > 0) {
    formState.deptId = deptList.value[0]!.id;
  }
  formState.times = [
    dayjs().subtract(1, 'year').startOf('year'),
    dayjs().subtract(1, 'day').endOf('day'),
  ];
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
            picker="year"
            format="YYYY"
            style="width: 260px"
          />
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
        <Tabs.TabPane key="contractCount" :tab="chartTabs[0]!.label">
          <ContractCountPerformance
            ref="refContractCount"
            :query-params="queryParams"
          />
        </Tabs.TabPane>

        <Tabs.TabPane key="contractPrice" :tab="chartTabs[1]!.label">
          <ContractPricePerformance
            ref="refContractPrice"
            :query-params="queryParams"
          />
        </Tabs.TabPane>

        <Tabs.TabPane key="receivablePrice" :tab="chartTabs[2]!.label">
          <ReceivablePricePerformance
            ref="refReceivablePrice"
            :query-params="queryParams"
          />
        </Tabs.TabPane>
      </Tabs>
    </Spin>
  </Page>
</template>
