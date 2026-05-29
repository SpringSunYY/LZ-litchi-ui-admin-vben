<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { AiMusicApi } from '#/api/ai/music';

import { confirm, DocAlert, Page } from '@vben/common-ui';

import { Button, message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import { deleteMusic, getMusicPage, updateMusic } from '#/api/ai/music';
import { $t } from '#/locales';

import { useGridColumns, useGridFormSchema } from './data';

/** 刷新表格 */
function handleRefresh() {
  gridApi.query();
}

/** 删除音乐记录 */
async function handleDelete(row: AiMusicApi.Music) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting', [$t('ai.music.field.id')]),
    duration: 0,
  });
  try {
    await deleteMusic(row.id!);
    message.success(
      $t('ui.actionMessage.deleteSuccess', [$t('ai.music.field.id')]),
    );
    handleRefresh();
  } finally {
    hideLoading();
  }
}

/** 修改是否发布 */
async function handleUpdatePublicStatusChange(
  newStatus: boolean,
  row: AiMusicApi.Music,
): Promise<boolean | undefined> {
  return new Promise((resolve, reject) => {
    confirm({
      content: newStatus
        ? $t('ai.music.message.confirmPublic')
        : $t('ai.music.message.confirmPrivate'),
    })
      .then(async () => {
        await updateMusic({
          id: row.id,
          publicStatus: newStatus,
        });
        message.success($t('ui.actionMessage.operationSuccess'));
        resolve(true);
      })
      .catch(() => {
        reject(new Error($t('common.cancel')));
      });
  });
}

const [Grid, gridApi] = useVbenVxeGrid({
  formOptions: {
    schema: useGridFormSchema(),
  },
  gridOptions: {
    columns: useGridColumns(handleUpdatePublicStatusChange),
    height: 'auto',
    keepSource: true,
    proxyConfig: {
      ajax: {
        query: async ({ page }, formValues) => {
          return await getMusicPage({
            pageNo: page.currentPage,
            pageSize: page.pageSize,
            ...formValues,
          });
        },
      },
    },
    rowConfig: {
      keyField: 'id',
      isHover: true,
    },
    toolbarConfig: {
      refresh: true,
      search: true,
    },
  } as VxeTableGridOptions<AiMusicApi.Music>,
});
</script>

<template>
  <Page auto-content-height>
    <template #doc>
      <DocAlert
        :title="$t('ai.music.music')"
        url="https://doc.iocoder.cn/ai/music/"
      />
    </template>
    <Grid :table-title="$t('ai.music.list')">
      <template #toolbar-tools>
        <TableAction :actions="[]" />
      </template>

      <template #content="{ row }">
        <Button
          type="link"
          v-if="row.audioUrl?.length > 0"
          :href="row.audioUrl"
          target="_blank"
          class="p-0"
        >
          {{ $t('ai.music.message.music') }}
        </Button>
        <Button
          type="link"
          v-if="row.videoUrl?.length > 0"
          :href="row.videoUrl"
          target="_blank"
          class="p-0 !pl-1"
        >
          {{ $t('ai.music.message.video') }}
        </Button>
        <Button
          type="link"
          v-if="row.imageUrl?.length > 0"
          :href="row.imageUrl"
          target="_blank"
          class="p-0 !pl-1"
        >
          {{ $t('ai.music.message.cover') }}
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
              auth: ['ai:music:delete'],
              popConfirm: {
                title: $t('ui.actionMessage.deleteConfirm', [
                  $t('ai.music.field.id'),
                  row.id,
                ]),
                confirm: handleDelete.bind(null, row),
              },
            },
          ]"
        />
      </template>
    </Grid>
  </Page>
</template>
