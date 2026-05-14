<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { InfraApiErrorLogApi } from '#/api/infra/api-error-log';

import { confirm, DocAlert, Page, useVbenModal } from '@vben/common-ui';
import { downloadFileFromBlobPart } from '@vben/utils';

import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  exportApiErrorLog,
  getApiErrorLogPage,
  updateApiErrorLogStatus,
} from '#/api/infra/api-error-log';
import { $t } from '#/locales';
import { InfraApiErrorLogProcessStatusEnum } from '#/utils';

import { useGridColumns, useGridFormSchema } from './data';
import Detail from './modules/detail.vue';

const [DetailModal, detailModalApi] = useVbenModal({
  connectedComponent: Detail,
  destroyOnClose: true,
});

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

/** 导出表格 */
async function handleExport() {
  const data = await exportApiErrorLog(await gridApi.formApi.getValues());
  downloadFileFromBlobPart({
    fileName: `${$t('infra.apiErrorLog.list')}.xls`,
    source: data,
  });
}

/** 查看 API 错误日志详情 */
function handleDetail(row: InfraApiErrorLogApi.ApiErrorLog) {
  detailModalApi.setData(row).open();
}

/** 处理已处理 / 已忽略的操作 */
async function handleProcess(id: number, processStatus: number) {
  confirm({
    content:
      processStatus === InfraApiErrorLogProcessStatusEnum.DONE
        ? $t('infra.apiErrorLog.action.confirmMarkAsDone')
        : $t('infra.apiErrorLog.action.confirmMarkAsIgnored'),
  }).then(async () => {
    await updateApiErrorLogStatus(id, processStatus);
    // 关闭并提示
    message.success($t('ui.actionMessage.operationSuccess'));
    onRefresh();
  });
}

const [Grid, gridApi] = useVbenVxeGrid({
  formOptions: {
    schema: useGridFormSchema(),
  },
  gridOptions: {
    columns: useGridColumns(),
    height: 'auto',
    keepSource: true,
    proxyConfig: {
      ajax: {
        query: async ({ page }, formValues) => {
          return await getApiErrorLogPage({
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
  } as VxeTableGridOptions<InfraApiErrorLogApi.ApiErrorLog>,
});
</script>

<template>
  <Page auto-content-height>
    <template #doc>
      <DocAlert title="系统日志" url="https://doc.iocoder.cn/system-log/" />
    </template>

    <DetailModal @success="onRefresh" />
    <Grid :table-title="$t('infra.apiErrorLog.list')">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('infra.apiErrorLog.action.export'),
              type: 'primary',
              icon: ACTION_ICON.DOWNLOAD,
              auth: ['infra:api-error-log:export'],
              onClick: handleExport,
            },
          ]"
        />
      </template>
      <template #actions="{ row }">
        <TableAction
          :actions="[
            {
              label: $t('common.detail'),
              type: 'link',
              icon: ACTION_ICON.VIEW,
              auth: ['infra:api-error-log:query'],
              onClick: handleDetail.bind(null, row),
            },
            {
              label: $t('infra.apiErrorLog.action.markAsDone'),
              type: 'link',
              auth: ['infra:api-error-log:update-status'],
              ifShow:
                row.processStatus === InfraApiErrorLogProcessStatusEnum.INIT,
              onClick: handleProcess.bind(
                null,
                row.id,
                InfraApiErrorLogProcessStatusEnum.DONE,
              ),
            },
            {
              label: $t('infra.apiErrorLog.action.markAsIgnored'),
              type: 'link',
              auth: ['infra:api-error-log:update-status'],
              ifShow:
                row.processStatus === InfraApiErrorLogProcessStatusEnum.INIT,
              onClick: handleProcess.bind(
                null,
                row.id,
                InfraApiErrorLogProcessStatusEnum.IGNORE,
              ),
            },
          ]"
        />
      </template>
    </Grid>
  </Page>
</template>
