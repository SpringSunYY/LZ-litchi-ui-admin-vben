<script lang="ts" setup>
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

import ContactCountRank from './components/ContactsCountRank.vue';
import ContractCountRank from './components/ContractCountRank.vue';
import ContractPriceRank from './components/ContractPriceRank.vue';
import CustomerCountRank from './components/CustomerCountRank.vue';
import FollowCountRank from './components/FollowCountRank.vue';
import FollowCustomerCountRank from './components/FollowCustomerCountRank.vue';
import ProductSalesRank from './components/ProductSalesRank.vue';
import ReceivablePriceRank from './components/ReceivablePriceRank.vue';

defineOptions({ name: 'CrmStatisticsRank' });

const hasDept = computed(() => deptList.value && deptList.value.length > 0);

const deptList = ref<any[]>([]);
const userList = ref<any[]>([]);

const formState = reactive({
  deptId: undefined as number | undefined,
  userId: undefined as number | undefined,
  times: [
    dayjs().subtract(7, 'day').startOf('day'),
    dayjs().subtract(1, 'day').endOf('day'),
  ] as [ReturnType<typeof dayjs>, ReturnType<typeof dayjs>],
});

const queryParams = computed(() => ({
  deptId: formState.deptId,
  userId: formState.userId,
  times: formState.times.map((d) =>
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

const refContractPrice = ref();
const refReceivablePrice = ref();
const refContractCount = ref();
const refProductSales = ref();
const refCustomerCount = ref();
const refContactCount = ref();
const refFollowCount = ref();
const refFollowCustomerCount = ref();

const chartTabs = computed(() => [
  { label: $t('crm.rank.contractPriceAnalysis'), value: 'contractPrice' },
  { label: $t('crm.rank.receivablePriceAnalysis'), value: 'receivablePrice' },
  { label: $t('crm.rank.contractCountAnalysis'), value: 'contractCount' },
  { label: $t('crm.rank.productSalesAnalysis'), value: 'productSales' },
  { label: $t('crm.rank.customerCountAnalysis'), value: 'customerCount' },
  { label: $t('crm.rank.contactCountAnalysis'), value: 'contactCount' },
  { label: $t('crm.rank.followCountAnalysis'), value: 'followCount' },
  {
    label: $t('crm.rank.followCustomerCountAnalysis'),
    value: 'followCustomerCount',
  },
]);

const activeTab = ref('contractPrice');

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
    case 'contactCount': {
      refContactCount.value?.loadData?.();
      break;
    }
    case 'contractCount': {
      refContractCount.value?.loadData?.();
      break;
    }
    case 'contractPrice': {
      refContractPrice.value?.loadData?.();
      break;
    }
    case 'customerCount': {
      refCustomerCount.value?.loadData?.();
      break;
    }
    case 'followCount': {
      refFollowCount.value?.loadData?.();
      break;
    }
    case 'followCustomerCount': {
      refFollowCustomerCount.value?.loadData?.();
      break;
    }
    case 'productSales': {
      refProductSales.value?.loadData?.();
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
    dayjs().subtract(7, 'day').startOf('day'),
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

onMounted(async () => {
  deptList.value = handleTree(await getSimpleDeptList());
  userList.value = await getSimpleUserList();
  if (deptList.value.length > 0) {
    formState.deptId = deptList.value[0]!.id;
  }
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
            style="width: 320px"
          />
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
      <Tabs.TabPane key="contractPrice" :tab="chartTabs[0]!.label">
        <ContractPriceRank ref="refContractPrice" :query-params="queryParams" />
      </Tabs.TabPane>

      <Tabs.TabPane key="receivablePrice" :tab="chartTabs[1]!.label">
        <ReceivablePriceRank
          ref="refReceivablePrice"
          :query-params="queryParams"
        />
      </Tabs.TabPane>

      <Tabs.TabPane key="contractCount" :tab="chartTabs[2]!.label">
        <ContractCountRank ref="refContractCount" :query-params="queryParams" />
      </Tabs.TabPane>

      <Tabs.TabPane key="productSales" :tab="chartTabs[3]!.label">
        <ProductSalesRank ref="refProductSales" :query-params="queryParams" />
      </Tabs.TabPane>

      <Tabs.TabPane key="customerCount" :tab="chartTabs[4]!.label">
        <CustomerCountRank ref="refCustomerCount" :query-params="queryParams" />
      </Tabs.TabPane>

      <Tabs.TabPane key="contactCount" :tab="chartTabs[5]!.label">
        <ContactCountRank ref="refContactCount" :query-params="queryParams" />
      </Tabs.TabPane>

      <Tabs.TabPane key="followCount" :tab="chartTabs[6]!.label">
        <FollowCountRank ref="refFollowCount" :query-params="queryParams" />
      </Tabs.TabPane>

      <Tabs.TabPane key="followCustomerCount" :tab="chartTabs[7]!.label">
        <FollowCustomerCountRank
          ref="refFollowCustomerCount"
          :query-params="queryParams"
        />
      </Tabs.TabPane>
    </Tabs>
  </Page>
</template>
