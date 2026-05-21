<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmFollowUpApi } from '#/api/crm/followup';

import { watch } from 'vue';
import { useRouter } from 'vue-router';

import { useVbenModal } from '@vben/common-ui';

import { Button, message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  deleteFollowUpRecord,
  getFollowUpRecordPage,
} from '#/api/crm/followup';
import { BizTypeEnum } from '#/api/crm/permission';
import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

import FollowUpRecordForm from './modules/form.vue';

/** 跟进记录列表 */
defineOptions({ name: 'FollowUpRecord' });

const props = defineProps<{
  bizId: number;
  bizType: number;
}>();

const { push } = useRouter();

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

/** 添加跟进记录 */
function handleCreate() {
  formModalApi.setData({ bizId: props.bizId, bizType: props.bizType }).open();
}

/** 删除跟进记录 */
async function handleDelete(row: CrmFollowUpApi.FollowUpRecord) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting', [row.id]),
    key: 'action_key_msg',
  });
  try {
    await deleteFollowUpRecord(row.id);
    message.success({
      content: $t('ui.actionMessage.deleteSuccess', [row.id]),
      key: 'action_key_msg',
    });
    onRefresh();
  } catch {
    hideLoading();
  }
}

/** 打开联系人详情 */
function openContactDetail(id: number) {
  push({ name: 'CrmContactDetail', params: { id } });
}

/** 打开商机详情 */
function openBusinessDetail(id: number) {
  push({ name: 'CrmBusinessDetail', params: { id } });
}

const [FormModal, formModalApi] = useVbenModal({
  connectedComponent: FollowUpRecordForm,
  destroyOnClose: true,
});

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns: [
      {
        field: 'createTime',
        title: $t('crm.followup.field.createTime'),
        formatter: 'formatDateTime',
      },
      { field: 'creatorName', title: $t('crm.followup.field.creatorName') },
      {
        field: 'type',
        title: $t('crm.followup.field.type'),
        cellRender: {
          name: 'CellDict',
          props: { type: DICT_TYPE.CRM_FOLLOW_UP_TYPE },
        },
      },
      { field: 'content', title: $t('crm.followup.field.content') },
      {
        field: 'nextTime',
        title: $t('crm.followup.field.nextTime'),
        formatter: 'formatDateTime',
      },
      {
        field: 'contacts',
        title: $t('crm.followup.field.contacts'),
        visible: props.bizType === BizTypeEnum.CRM_CUSTOMER,
        slots: { default: 'contacts' },
      },
      {
        field: 'businesses',
        title: $t('crm.followup.field.businesses'),
        visible: props.bizType === BizTypeEnum.CRM_CUSTOMER,
        slots: { default: 'businesses' },
      },
      {
        field: 'actions',
        title: $t('common.operation'),
        slots: { default: 'actions' },
      },
    ],
    height: 600,
    keepSource: true,
    proxyConfig: {
      ajax: {
        query: async ({ page }) => {
          return await getFollowUpRecordPage({
            pageNo: page.currentPage,
            pageSize: page.pageSize,
            bizType: props.bizType,
            bizId: props.bizId,
          });
        },
      },
    },
    rowConfig: {
      keyField: 'id',
    },
    toolbarConfig: {
      refresh: { code: 'query' },
    },
  } as VxeTableGridOptions<CrmFollowUpApi.FollowUpRecord>,
});

watch(
  () => props.bizId,
  () => {
    gridApi.query();
  },
);
</script>

<template>
  <div>
    <FormModal @success="onRefresh" />
    <Grid>
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('crm.followup.action.write'),
              type: 'primary',
              icon: ACTION_ICON.EDIT,
              onClick: handleCreate,
            },
          ]"
        />
      </template>
      <template #contacts="{ row }">
        <Button type="link" @click="openContactDetail(row.id)">
          {{ row.name }}
        </Button>
      </template>
      <template #businesses="{ row }">
        <Button type="link" @click="openBusinessDetail(row.id)">
          {{ row.name }}
        </Button>
      </template>
      <template #actions="{ row }">
        <TableAction
          :actions="[
            {
              label: $t('common.delete'),
              type: 'link',
              danger: true,
              icon: ACTION_ICON.DELETE,
              popConfirm: {
                title: $t('ui.actionMessage.deleteConfirm', [row.name]),
                confirm: handleDelete.bind(null, row),
              },
            },
          ]"
        />
      </template>
    </Grid>
  </div>
</template>
