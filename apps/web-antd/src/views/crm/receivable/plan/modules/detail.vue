<script setup lang="ts">
import type { CrmReceivablePlanApi } from '#/api/crm/receivable/plan';
import type { SystemOperateLogApi } from '#/api/system/operate-log';

import { computed, onMounted, ref } from 'vue';
import { useRoute, useRouter } from 'vue-router';

import { Page, useVbenModal } from '@vben/common-ui';
import { useTabs } from '@vben/hooks';
import { ArrowLeft } from '@vben/icons';

import { Button, Card, Tabs } from 'ant-design-vue';

import { getOperateLogPage } from '#/api/crm/operateLog';
import { BizTypeEnum } from '#/api/crm/permission';
import { getReceivablePlan } from '#/api/crm/receivable/plan';
import { useDescription } from '#/components/description';
import { AsyncOperateLog } from '#/components/operate-log';
import { $t } from '#/locales';
import { PermissionList } from '#/views/crm/permission';
import { ReceivablePlanDetailsInfo } from '#/views/crm/receivable';

import { useDetailSchema } from './detail-data';
import ReceivablePlanForm from './form.vue';

const loading = ref(false);

const route = useRoute();
const router = useRouter();
const tabs = useTabs();

const receivablePlanId = ref(0);

const receivablePlan = ref<CrmReceivablePlanApi.Plan>(
  {} as CrmReceivablePlanApi.Plan,
);
const receivablePlanLogList = ref<SystemOperateLogApi.OperateLog[]>([]);
const permissionListRef = ref<InstanceType<typeof PermissionList>>();

// 校验编辑权限
const validateWrite = computed(() => permissionListRef.value?.validateWrite);

const [Description] = useDescription({
  componentProps: {
    bordered: false,
    column: 4,
    class: 'mx-4',
  },
  schema: useDetailSchema(),
});

const [FormModal, formModalApi] = useVbenModal({
  connectedComponent: ReceivablePlanForm,
  destroyOnClose: true,
});

/** 加载回款计划详情 */
async function loadReceivablePlanDetail() {
  loading.value = true;
  const data = await getReceivablePlan(receivablePlanId.value);
  receivablePlan.value = data;
  // 操作日志
  const logList = await getOperateLogPage({
    bizType: BizTypeEnum.CRM_RECEIVABLE_PLAN,
    bizId: receivablePlanId.value,
  });
  receivablePlanLogList.value = logList.list;
  loading.value = false;
}

/** 返回列表页 */
function handleBack() {
  tabs.closeCurrentTab();
  router.push('/crm/receivablePlan');
}

/** 编辑回款计划 */
function handleEdit() {
  formModalApi.setData({ id: receivablePlanId.value }).open();
}

// 加载数据
onMounted(() => {
  receivablePlanId.value = Number(route.params.id);
  loadReceivablePlanDetail();
});
</script>

<template>
  <Page
    auto-content-height
    :title="
      $t('crm.receivablePlan.message.periodPhase', [receivablePlan?.period])
    "
    :loading="loading"
  >
    <FormModal @success="loadReceivablePlanDetail" />
    <template #extra>
      <div class="flex items-center gap-2">
        <Button @click="handleBack">
          <ArrowLeft class="size-5" />
          {{ $t('common.back') }}
        </Button>
        <Button
          v-if="validateWrite"
          type="primary"
          @click="handleEdit"
          v-access:code="['crm:receivable-plan:update']"
        >
          {{ $t('ui.actionTitle.edit') }}
        </Button>
      </div>
    </template>
    <Card class="min-h-[10%]">
      <Description :data="receivablePlan" />
    </Card>
    <Card class="mt-4 min-h-[60%]">
      <Tabs>
        <Tabs.TabPane
          :tab="$t('crm.receivablePlan.tab.detail')"
          key="1"
          :force-render="true"
        >
          <ReceivablePlanDetailsInfo :receivable-plan="receivablePlan" />
        </Tabs.TabPane>
        <Tabs.TabPane
          :tab="$t('crm.receivablePlan.tab.teamMember')"
          key="2"
          :force-render="true"
        >
          <PermissionList
            ref="permissionListRef"
            :biz-id="receivablePlanId"
            :biz-type="BizTypeEnum.CRM_RECEIVABLE_PLAN"
            :show-action="true"
            @quit-team="handleBack"
          />
        </Tabs.TabPane>
        <Tabs.TabPane
          :tab="$t('crm.receivablePlan.tab.operateLog')"
          key="3"
          :force-render="true"
        >
          <AsyncOperateLog :log-list="receivablePlanLogList" />
        </Tabs.TabPane>
      </Tabs>
    </Card>
  </Page>
</template>
