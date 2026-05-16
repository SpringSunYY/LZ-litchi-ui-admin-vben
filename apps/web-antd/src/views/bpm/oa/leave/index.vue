<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { BpmOALeaveApi } from '#/api/bpm/oa/leave';

import { h } from 'vue';

import { Page, prompt } from '@vben/common-ui';

import { message, Textarea } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import { getLeavePage } from '#/api/bpm/oa/leave';
import { cancelProcessInstanceByStartUser } from '#/api/bpm/processInstance';
import { $t } from '#/locales';
import { router } from '#/router';

import { GridFormSchema, useGridColumns } from './data';

const [Grid, gridApi] = useVbenVxeGrid({
  formOptions: {
    schema: GridFormSchema(),
  },
  gridOptions: {
    columns: useGridColumns(),
    height: 'auto',
    keepSource: true,
    proxyConfig: {
      ajax: {
        query: async ({ page }, formValues) => {
          return await getLeavePage({
            pageNo: page.currentPage,
            pageSize: page.pageSize,
            ...formValues,
          });
        },
      },
    },
    rowConfig: {
      keyField: 'id',
    },
    toolbarConfig: {
      refresh: { code: 'query' },
      search: true,
    },
  } as VxeTableGridOptions<BpmOALeaveApi.LeaveVO>,
});

/** 创建请假 */
function handleCreate() {
  router.push({
    name: 'OALeaveCreate',
    query: {
      formType: 'create',
    },
  });
}

/** 查看请假详情 */
function handleDetail(row: BpmOALeaveApi.LeaveVO) {
  router.push({
    name: 'OALeaveDetail',
    query: { id: row.id },
  });
}

/** 取消请假 */
function handleCancel(row: BpmOALeaveApi.LeaveVO) {
  prompt({
    async beforeClose(scope) {
      if (scope.isConfirm) {
        if (scope.value) {
          try {
            await cancelProcessInstanceByStartUser(row.id, scope.value);
            message.success($t('bpm.oa.leave.message.cancelSuccess'));
            onRefresh();
          } catch {
            return false;
          }
        } else {
          message.error($t('bpm.oa.leave.message.cancelReasonEmpty'));
          return false;
        }
      }
    },
    component: () => {
      return h(Textarea, {
        placeholder: $t('bpm.processInstance.message.cancelReasonPlaceholder'),
        allowClear: true,
        rows: 2,
        rules: [
          {
            required: true,
            message: $t('bpm.oa.leave.message.cancelReasonEmpty'),
          },
        ],
      });
    },
    content: $t('bpm.oa.leave.message.cancelReasonEmpty'),
    title: $t('bpm.processInstance.message.cancelProcess'),
    modelPropName: 'value',
  });
}

/** 审批进度 */
function handleProgress(row: BpmOALeaveApi.LeaveVO) {
  router.push({
    name: 'BpmProcessInstanceDetail',
    query: { id: row.processInstanceId },
  });
}

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}
</script>

<template>
  <Page auto-content-height>
    <Grid :table-title="$t('bpm.oa.leave.list')">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('bpm.oa.leave.action.create'),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['bpm:oa-leave:create'],
              onClick: handleCreate,
            },
          ]"
        />
      </template>
      <template #actions="{ row }">
        <TableAction
          :actions="[
            {
              label: $t('bpm.oa.leave.action.detail'),
              type: 'link',
              icon: ACTION_ICON.VIEW,
              auth: ['bpm:oa-leave:query'],
              onClick: handleDetail.bind(null, row),
            },
            {
              label: $t('bpm.oa.leave.action.progress'),
              type: 'link',
              icon: ACTION_ICON.VIEW,
              auth: ['bpm:oa-leave:query'],
              onClick: handleProgress.bind(null, row),
            },
            {
              label: $t('bpm.oa.leave.action.cancel'),
              type: 'link',
              danger: true,
              icon: ACTION_ICON.DELETE,
              auth: ['bpm:user-group:query'],
              popConfirm: {
                title: $t('bpm.processInstance.message.cancelProcess'),
                confirm: handleCancel.bind(null, row),
              },
            },
          ]"
        />
      </template>
    </Grid>
  </Page>
</template>
