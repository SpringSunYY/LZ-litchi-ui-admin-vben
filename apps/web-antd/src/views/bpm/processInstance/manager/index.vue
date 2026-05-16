<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { BpmProcessInstanceApi } from '#/api/bpm/processInstance';

import { h } from 'vue';

import { Page, prompt } from '@vben/common-ui';

import { message, Textarea } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  cancelProcessInstanceByAdmin,
  getProcessInstanceManagerPage,
} from '#/api/bpm/processInstance';
import { $t } from '#/locales';
import { router } from '#/router';
import { BpmProcessInstanceStatus } from '#/utils';

import { useGridColumns, useGridFormSchema } from './data';

defineOptions({ name: 'BpmProcessInstanceManager' });

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

/** 点击任务 */
function onTaskClick(task: BpmProcessInstanceApi.Task) {
  // TODO 待实现
  console.warn(task);
}

/** 查看流程实例 */
function handleDetail(row: BpmProcessInstanceApi.ProcessInstanceVO) {
  console.warn(row);
  router.push({
    name: 'BpmProcessInstanceDetail',
    query: { id: row.id },
  });
}

/** 取消流程实例 */
function handleCancel(row: BpmProcessInstanceApi.ProcessInstanceVO) {
  prompt({
    async beforeClose(scope) {
      if (scope.isConfirm) {
        if (scope.value) {
          try {
            await cancelProcessInstanceByAdmin(row.id, scope.value);
            message.success($t('bpm.processInstance.message.cancelSuccess'));
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
  })
    .then(() => {})
    .catch(() => {});
}

const [Grid, gridApi] = useVbenVxeGrid({
  formOptions: {
    schema: useGridFormSchema(),
  },
  gridOptions: {
    columns: useGridColumns(onTaskClick),
    height: 'auto',
    keepSource: true,
    proxyConfig: {
      ajax: {
        query: async ({ page }, formValues) => {
          return await getProcessInstanceManagerPage({
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
  } as VxeTableGridOptions<BpmProcessInstanceApi.ProcessInstanceVO>,
});
</script>

<template>
  <Page auto-content-height>
    <Grid :table-title="$t('bpm.processInstance.list')">
      <template #actions="{ row }">
        <TableAction
          :actions="[
            {
              label: $t('common.detail'),
              type: 'link',
              icon: ACTION_ICON.VIEW,
              auth: ['bpm:process-instance:query'],
              onClick: handleDetail.bind(null, row),
            },
            {
              label: $t('bpm.processInstance.action.cancel'),
              type: 'link',
              danger: true,
              icon: ACTION_ICON.DELETE,
              ifShow: row.status === BpmProcessInstanceStatus.RUNNING,
              auth: ['bpm:process-instance:cancel'],
              onClick: handleCancel.bind(null, row),
            },
          ]"
        />
      </template>
    </Grid>
  </Page>
</template>
