<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { VectorImageApi } from '#/api/infra/vector/image';

import { ref } from 'vue';

import { Page, useVbenModal } from '@vben/common-ui';

import { useClipboard } from '@vueuse/core';
import { Modal as AModal, message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  deleteVectorImage,
  deleteVectorImageList,
  getVectorCollectionInfo,
  getVectorImagePage,
  resetVectorCollection,
  searchVectorImageById,
} from '#/api/infra/vector/image';
import { $t } from '#/locales';

import { useGridColumns, useGridFormSchema } from './data';
import ImportForm from './modules/import-form.vue';
import SearchModal from './modules/search-modal.vue';
import UploadForm from './modules/upload-form.vue';

const [UploadModal, uploadModalApi] = useVbenModal({
  connectedComponent: UploadForm,
  destroyOnClose: true,
});

const [ImportModal, importModalApi] = useVbenModal({
  connectedComponent: ImportForm,
  destroyOnClose: true,
});

const [SearchModalCmp, searchModalApi] = useVbenModal({
  connectedComponent: SearchModal,
  destroyOnClose: true,
});

const collectionInfo = ref<{
  collectionName: string;
  dimension: number;
  rowCount: number;
}>({
  collectionName: '-',
  dimension: 0,
  rowCount: 0,
});

const { copy } = useClipboard({ legacy: true });

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
  loadCollectionInfo();
}

/** 上传图片（弹窗） */
function handleUpload() {
  uploadModalApi.setData(null).open();
}

/** 批量导入：文件 / URL / 本地目录（新弹窗） */
function handleImport() {
  importModalApi.setData(null).open();
}

/** 以图搜图（弹窗） */
function handleSearch() {
  searchModalApi.setData(null).open();
}

/**
 * 加载集合信息。
 *
 * <p>只发 {@code /info} 一个请求就够了——该接口已带 {@code rowCount}（行数）字段，
 * 不再额外发 {@code /stats}（{@code /stats} 还要拉 sample，浪费带宽；只在用户
 * 主动点"查看样本"时按需调用即可）。
 */
async function loadCollectionInfo() {
  try {
    const info = await getVectorCollectionInfo();
    collectionInfo.value = {
      collectionName: info.collectionName ?? '-',
      dimension: info.dimension ?? 0,
      rowCount: info.rowCount ?? 0,
    };
  } catch {
    // 忽略异常，不阻塞列表
  }
}

/** 复制 id */
async function handleCopyId(row: VectorImageApi.VectorImage) {
  try {
    await copy(row.id);
    message.success($t('ui.actionMessage.copySuccess'));
  } catch {
    message.error($t('infra.file.message.copyFailed'));
  }
}

/** 单条删除 */
async function handleDelete(row: VectorImageApi.VectorImage) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting', [row.id]),
    duration: 0,
    key: 'action_process_msg',
  });
  try {
    await deleteVectorImage(row.id);
    message.success($t('ui.actionMessage.deleteSuccess', [row.id]));
    onRefresh();
  } finally {
    hideLoading();
  }
}

/** 批量删除 */
async function handleBatchDelete() {
  const rows = (gridApi.grid.getCheckboxRecords?.() ??
    []) as VectorImageApi.VectorImage[];
  if (rows.length === 0) {
    message.warning($t('infra.file.message.copyFailed'));
    return;
  }
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting', [rows.length]),
    duration: 0,
    key: 'action_process_msg',
  });
  try {
    const ids = rows.map((r) => r.id);
    await deleteVectorImageList(ids);
    message.success($t('ui.actionMessage.deleteSuccess', [rows.length]));
    onRefresh();
  } finally {
    hideLoading();
  }
}

/**
 * 按行内编号触发"以图搜图"（库内已有图片）。
 *
 * <p>把被搜的那张图（{@code row.imagePath}）作为 {@code queryImageUrl} 透传给 modal，
 * modal 打开时左侧默认就显示这张图（让用户清楚"是用这张图搜的"）。
 * 用户在 modal 里点"清空"后切回上传搜模式，可以选新图重搜。
 */
async function handleSearchByRow(row: VectorImageApi.VectorImage) {
  const hideLoading = message.loading({
    content: $t('infra.vectorImage.search.loading'),
    duration: 0,
    key: 'row_search_msg',
  });
  try {
    const results = await searchVectorImageById(row.id, 100);
    searchModalApi
      .setData({
        byRowId: row.id,
        queryImageUrl: row.imagePath,
        results,
      })
      .open();
  } catch (error: any) {
    console.error(
      $t('infra.vectorImage.message.searchFailed', [
        error?.message ?? String(error),
      ]),
    );
  } finally {
    hideLoading();
  }
}

/** 重置集合 */
function handleReset() {
  AModal.confirm({
    title: $t('infra.vectorImage.action.reset'),
    content: $t('infra.vectorImage.message.confirmReset'),
    okText: $t('common.confirm'),
    cancelText: $t('common.cancel'),
    okButtonProps: { danger: true },
    onOk: async () => {
      const hideLoading = message.loading({
        content: `${$t('infra.vectorImage.action.reset')}...`,
        duration: 0,
        key: 'reset_msg',
      });
      try {
        await resetVectorCollection();
        message.success($t('infra.vectorImage.message.resetSuccess'));
        onRefresh();
      } catch (error: any) {
        message.error(
          `${$t('infra.vectorImage.message.resetFailed')}: ${error?.message ?? String(error)}`,
        );
      } finally {
        hideLoading();
      }
    },
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
          return await getVectorImagePage({
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
  } as VxeTableGridOptions<VectorImageApi.VectorImage>,
});

// 加载集合信息
loadCollectionInfo();
</script>

<template>
  <Page auto-content-height>
    <UploadModal @success="onRefresh" />
    <ImportModal @success="onRefresh" />
    <SearchModalCmp />

    <Grid>
      <template #table-title>
        <!-- 集合信息条 -->
        <div
          class="mb-3 flex flex-wrap items-center gap-x-6 gap-y-1 rounded-md px-4 py-2 text-sm"
        >
          <span>
            {{ $t('infra.vectorImage.stats.collectionName') }}:
            <b class="ml-1">{{ collectionInfo.collectionName }}</b>
          </span>
          <span>
            {{ $t('infra.vectorImage.stats.dimension') }}:
            <b class="ml-1">{{ collectionInfo.dimension }}</b>
          </span>
          <span>
            {{ $t('infra.vectorImage.stats.rowCount') }}:
            <b class="ml-1">{{ collectionInfo.rowCount }}</b>
          </span>
          <!--          <a-button size="small" type="link" @click="loadCollectionInfo">
            {{ $t('infra.vectorImage.action.refresh') }}
          </a-button>-->
        </div>
      </template>
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('infra.vectorImage.action.create'),
              type: 'primary',
              icon: ACTION_ICON.UPLOAD,
              auth: ['infra:vectorImage:add'],
              onClick: handleUpload,
            },
            {
              label: $t('infra.vectorImage.import.modalTitle'),
              type: 'primary',
              icon: ACTION_ICON.UPLOAD,
              auth: ['infra:vectorImage:add'],
              onClick: handleImport,
            },
            {
              label: $t('infra.vectorImage.action.search'),
              type: 'primary',
              icon: ACTION_ICON.SEARCH,
              auth: ['infra:vectorImage:search'],
              onClick: handleSearch,
            },
            {
              label: $t('infra.vectorImage.action.deleteBatch'),
              type: 'primary',
              danger: true,
              icon: ACTION_ICON.DELETE,
              auth: ['infra:vectorImage:delete'],
              onClick: handleBatchDelete,
            },
            {
              label: $t('infra.vectorImage.action.reset'),
              type: 'primary',
              danger: true,
              icon: ACTION_ICON.REFRESH,
              auth: ['infra:vectorImage:delete'],
              onClick: handleReset,
            },
          ]"
        />
      </template>
      <template #actions="{ row }">
        <TableAction
          :actions="[
            {
              label: $t('infra.vectorImage.action.searchById'),
              type: 'link',
              icon: ACTION_ICON.SEARCH,
              auth: ['infra:vectorImage:search'],
              onClick: handleSearchByRow.bind(null, row),
            },
            {
              label: $t('common.copy'),
              type: 'link',
              icon: ACTION_ICON.COPY,
              onClick: handleCopyId.bind(null, row),
            },
            {
              label: $t('common.delete'),
              type: 'link',
              danger: true,
              auth: ['infra:vectorImage:delete'],
              icon: ACTION_ICON.DELETE,
              popConfirm: {
                title: $t('infra.vectorImage.message.confirmDelete', [row.id]),
                confirm: handleDelete.bind(null, row),
              },
            },
          ]"
        />
      </template>
    </Grid>
  </Page>
</template>
