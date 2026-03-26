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
  Tabs,
  TreeSelect,
} from 'ant-design-vue';
import dayjs from 'dayjs';

import { getSimpleDeptList } from '#/api/system/dept';
import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import { getRangePickerDefaultProps } from '#/utils';

import PortraitCustomerArea from './components/PortraitCustomerArea.vue';
import PortraitCustomerIndustry from './components/PortraitCustomerIndustry.vue';
import PortraitCustomerLevel from './components/PortraitCustomerLevel.vue';
import PortraitCustomerSource from './components/PortraitCustomerSource.vue';

defineOptions({ name: 'CrmStatisticsPortrait' });

const hasDept = computed(() => deptList.value && deptList.value.length > 0);

// 部门树形数据
const deptList = ref<any[]>([]);
// 全量用户清单
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

const refArea = ref();
const refLevel = ref();
const refSource = ref();
const refIndustry = ref();

// Tab 配置
const chartTabs = computed(() => [
  { label: $t('crm.portrait.areaAnalysis'), value: 'area' },
  { label: $t('crm.portrait.levelAnalysis'), value: 'level' },
  { label: $t('crm.portrait.sourceAnalysis'), value: 'source' },
  { label: $t('crm.portrait.industryAnalysis'), value: 'industry' },
]);

const activeTab = ref('area');

/** 刷新当前 Tab 的数据 */
function loadActiveTab() {
  switch (activeTab.value) {
    case 'area': {
      refArea.value?.loadData?.();
      break;
    }
    case 'industry': {
      refIndustry.value?.loadData?.();
      break;
    }
    case 'level': {
      refLevel.value?.loadData?.();
      break;
    }
    case 'source': {
      refSource.value?.loadData?.();
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
  console.log(formState.times);
  loadActiveTab();
}

/** 切换部门后清空员工 */
watch(
  () => formState.deptId,
  () => {
    formState.userId = undefined;
  },
);

/** 日期变化时刷新数据 */
watch(
  () => formState.times,
  () => {
    loadActiveTab();
  },
  { deep: true },
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
    dayjs().subtract(7, 'day').startOf('day'),
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
            v-bind="getRangePickerDefaultProps()"
            :format="'YYYY-MM-DD'"
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

    <Tabs v-model:active-key="activeTab">
      <Tabs.TabPane key="area" :tab="chartTabs[0]!.label">
        <PortraitCustomerArea ref="refArea" :query-params="queryParams" />
      </Tabs.TabPane>

      <Tabs.TabPane key="level" :tab="chartTabs[1]!.label">
        <PortraitCustomerLevel ref="refLevel" :query-params="queryParams" />
      </Tabs.TabPane>

      <Tabs.TabPane key="source" :tab="chartTabs[2]!.label">
        <PortraitCustomerSource ref="refSource" :query-params="queryParams" />
      </Tabs.TabPane>

      <Tabs.TabPane key="industry" :tab="chartTabs[3]!.label">
        <PortraitCustomerIndustry
          ref="refIndustry"
          :query-params="queryParams"
        />
      </Tabs.TabPane>
    </Tabs>
  </Page>
</template>
