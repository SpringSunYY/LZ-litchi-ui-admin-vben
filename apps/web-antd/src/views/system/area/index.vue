<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { AreaApi } from '#/api/system/area';

import { ref } from 'vue';

import { Page, useVbenModelDrawer } from '@vben/common-ui';
import { downloadFileFromBlobPart } from '@vben/utils';

import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import { deleteArea, exportArea, getAreaList } from '#/api/system/area';
import { $t } from '#/locales';

import { useGridColumns, useGridFormSchema } from './data';
import Form from './modules/form.vue';

const [FormModal, formModalApi] = useVbenModelDrawer({
  connectedComponent: Form,
  destroyOnClose: true,
  type: 'drawer',
});

/** 切换树形展开/收缩状态 */
const isExpanded = ref(false);

function toggleExpand() {
  isExpanded.value = !isExpanded.value;
  gridApi.grid?.setAllTreeExpand(isExpanded.value);
}

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

/** 创建地区信息 */
function handleCreate() {
  formModalApi.setData({}).open();
}

/** 编辑地区信息 */
function handleEdit(row: AreaApi.Area) {
  formModalApi.setData(row).open();
}

/** 新增下级地区信息 */
function handleAppend(row: AreaApi.Area) {
  formModalApi.setData({ parentId: row.id }).open();
}

/** 删除地区信息 */
async function handleDelete(row: AreaApi.Area) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting', [row.id]),
    key: 'action_key_msg',
  });
  try {
    await deleteArea(row.id as number);
    message.success({
      content: $t('ui.actionMessage.deleteSuccess', [row.id]),
      key: 'action_key_msg',
    });
    onRefresh();
  } finally {
    hideLoading();
  }
}

/** 导出表格 */
async function handleExport() {
  const data = await exportArea(await gridApi.formApi.getValues());
  downloadFileFromBlobPart({ fileName: '地区信息.xls', source: data });
}

/** 查看 GeoJson 详情 */
function handleViewURL(url: string) {
  if (url) {
    window.open(url, '_blank');
  }
}

const [Grid, gridApi] = useVbenVxeGrid({
  formOptions: {
    schema: useGridFormSchema(),
  },
  gridOptions: {
    columns: useGridColumns(),
    height: 'auto',
    treeConfig: {
      parentField: 'parentId',
      rowField: 'id',
      transform: true,
      expandAll: false,
      reserve: true,
    },
    pagerConfig: {
      enabled: false,
    },
    proxyConfig: {
      ajax: {
        query: async (_, formValues) => {
          return await getAreaList(formValues);
        },
      },
    },
    rowConfig: {
      keyField: 'id',
      isHover: true,
    },
    toolbarConfig: {
      refresh: { code: 'query' },
      search: true,
    },
  } as VxeTableGridOptions<AreaApi.Area>,
  gridEvents: {},
});
</script>

<template>
  <Page auto-content-height>
    <FormModal @success="onRefresh" />

    <Grid table-title="地区信息列表">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: isExpanded ? '收缩' : '展开',
              type: 'primary',
              onClick: toggleExpand,
            },
            {
              label: $t('ui.actionTitle.create', ['地区信息']),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['system:area:create'],
              onClick: handleCreate,
            },
            {
              label: $t('ui.actionTitle.export'),
              type: 'primary',
              icon: ACTION_ICON.DOWNLOAD,
              auth: ['system:area:export'],
              onClick: handleExport,
            },
          ]"
        />
      </template>
      <template #actions="{ row }">
        <TableAction
          :actions="[
            {
              label: '新增下级',
              type: 'link',
              icon: ACTION_ICON.ADD,
              auth: ['system:area:create'],
              onClick: handleAppend.bind(null, row),
            },
            {
              label: $t('common.edit'),
              type: 'link',
              icon: ACTION_ICON.EDIT,
              auth: ['system:area:update'],
              onClick: handleEdit.bind(null, row),
            },
            {
              label: $t('common.delete'),
              type: 'link',
              danger: true,
              icon: ACTION_ICON.DELETE,
              auth: ['system:area:delete'],
              popConfirm: {
                title: $t('ui.actionMessage.deleteConfirm', [row.id]),
                confirm: handleDelete.bind(null, row),
              },
            },
          ]"
        />
      </template>
      <template #source="{ row }">
        <a v-if="row.source" @click="handleViewURL(row.source)">
          {{ row.source }}
        </a>
        <span v-else>-</span>
      </template>
      <template #geoJson="{ row }">
        <a v-if="row.geoJson" @click="handleViewURL(row.geoJson)">
          {{ row.geoJson }}
        </a>
        <span v-else>-</span>
      </template>
    </Grid>
  </Page>
</template>
