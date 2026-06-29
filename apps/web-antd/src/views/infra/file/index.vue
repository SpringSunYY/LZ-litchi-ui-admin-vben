<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { InfraFileApi } from '#/api/infra/file';

import { ref } from 'vue';

import { Page, useVbenModal } from '@vben/common-ui';
import { formatFileSize } from '@vben/utils';

import { useClipboard } from '@vueuse/core';
import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import { deleteFile, getFileCount, getFilePage } from '#/api/infra/file';
import { $t } from '#/locales';

import { useGridColumns, useGridFormSchema } from './data';
import Form from './modules/form.vue';

const [FormModal, formModalApi] = useVbenModal({
  connectedComponent: Form,
  destroyOnClose: true,
});

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

/** 上传文件 */
function handleUpload() {
  formModalApi.setData(null).open();
}

/** 复制链接到剪贴板，直接复制绝对路径 */
const { copy } = useClipboard({ legacy: true });

async function handleCopyUrl(row: InfraFileApi.File) {
  if (!row.absolutePath) {
    message.error($t('infra.file.message.urlEmpty'));
    return;
  }

  try {
    await copy(row.absolutePath);
    message.success($t('ui.actionMessage.copySuccess'));
  } catch {
    message.error($t('infra.file.message.copyFailed'));
  }
}

/** 删除文件 */
async function handleDelete(row: InfraFileApi.File) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting', [row.name || row.path]),
    duration: 0,
    key: 'action_process_msg',
  });
  try {
    await deleteFile(row.id as number);
    message.success(
      $t('ui.actionMessage.deleteSuccess', [row.name || row.path]),
    );
    onRefresh();
  } finally {
    hideLoading();
  }
}

const fileCount = ref<InfraFileApi.FileCountRespVO>({
  fileCount: 0,
  fileSize: 0,
});

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
          getFileCount(formValues).then((res) => {
            fileCount.value = res;
          });
          return await getFilePage({
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
  } as VxeTableGridOptions<InfraFileApi.File>,
});
</script>

<template>
  <Page auto-content-height>
    <FormModal @success="onRefresh" />
    <Grid>
      <template #table-title>
        <div class="flex items-center">
          <span>{{ $t('infra.file.list') }}</span>
          -
          <span>{{
            $t('infra.file.fileCount', [
              fileCount.fileCount,
              formatFileSize(fileCount.fileSize),
            ])
          }}</span>
        </div>
      </template>
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('infra.file.action.create'),
              type: 'primary',
              icon: ACTION_ICON.UPLOAD,
              auth: ['infra:file:create'],
              onClick: handleUpload,
            },
          ]"
        />
      </template>
      <template #actions="{ row }">
        <TableAction
          :actions="[
            {
              label: $t('infra.file.copyUrl'),
              type: 'link',
              icon: ACTION_ICON.COPY,
              onClick: handleCopyUrl.bind(null, row),
            },
            {
              label: $t('common.delete'),
              type: 'link',
              danger: true,
              auth: ['infra:file:delete'],
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
  </Page>
</template>
