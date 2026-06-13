<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { AreaApi } from '#/api/infra/area';

import { ref } from 'vue';

import { Page, useVbenModal, useVbenModelDrawer } from '@vben/common-ui';
import { downloadFileFromBlobPart } from '@vben/utils';

import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  clearAreaCache,
  deleteArea,
  exportArea,
  getAreaIp,
  getAreaList,
} from '#/api/infra/area';
import { $t } from '#/locales';
import ImportForm from '#/views/infra/area/modules/import-form.vue';

import { useGridColumns, useGridFormSchema } from './data';
import Form from './modules/form.vue';
import IpQueryForm from './modules/ip-query-form.vue';

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

const [IpQueryFormModal, formIpQueryModalApi] = useVbenModelDrawer({
  connectedComponent: IpQueryForm,
  destroyOnClose: true,
  type: 'modal',
});

/** 查询 IP */
function handleQueryIp() {
  formIpQueryModalApi.setData(null).open();
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

/** 导出地区信息 */
const exportLoading = ref(false);

async function handleExport() {
  try {
    exportLoading.value = true;
    message.loading({
      content: $t('ui.actionMessage.exporting'),
      key: 'action_key_msg',
    });
    const data = await exportArea(await gridApi.formApi.getValues());
    downloadFileFromBlobPart({
      fileName: `${$t('infra.area.area')}.xls`,
      source: data,
    });
  } finally {
    exportLoading.value = false;
  }
}

const [ImportModal, importModalApi] = useVbenModal({
  connectedComponent: ImportForm,
  destroyOnClose: true,
});

/** 导入地区信息 */
function handleImport() {
  importModalApi.open();
}

const [Grid, gridApi] = useVbenVxeGrid({
  formOptions: {
    schema: useGridFormSchema(),
  },
  gridOptions: {
    columns: useGridColumns(),
    height: 'auto',
    treeConfig: {
      parentField: 'parentCode',
      rowField: 'code',
      transform: true,
      expandAll: false,
      reserve: true,
    },
    scrollY: {
      enabled: true,
      gt: 201,
      cacheSize: 201,
      oSize: 201,
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

/**
 * 清除地区缓存
 */
const clearCacheLoading = ref(false);

async function handleClearCache() {
  try {
    clearCacheLoading.value = true;
    await clearAreaCache();
    message.success($t('ui.actionMessage.operationSuccess'));
  } finally {
    clearCacheLoading.value = false;
  }
}

const currentIpAddr = ref('');

function getCurrentIpAddr() {
  getAreaIp().then((res) => {
    currentIpAddr.value = res || '';
  });
}
getCurrentIpAddr();
</script>

<template>
  <Page auto-content-height>
    <FormModal @success="onRefresh" />
    <IpQueryFormModal />
    <ImportModal @success="onRefresh" />
    <Grid :table-title="`${$t('infra.area.list')} - ${currentIpAddr}`">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: isExpanded ? $t('common.collapse') : $t('common.expand'),
              type: 'primary',
              onClick: toggleExpand,
            },
            {
              label: $t('ui.actionTitle.create', [$t('infra.area.area')]),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['infra:area:create'],
              onClick: handleCreate,
            },
            {
              label: $t('ui.actionTitle.export'),
              type: 'primary',
              icon: ACTION_ICON.DOWNLOAD,
              auth: ['infra:area:export'],
              loading: exportLoading,
              onClick: handleExport,
            },
            {
              label: $t('ui.actionTitle.clearCache'),
              type: 'primary',
              icon: ACTION_ICON.REFRESH,
              auth: ['infra:locale:create'],
              onClick: handleClearCache,
              loading: clearCacheLoading,
            },
            {
              label: $t('ui.actionTitle.import', [$t('infra.area.area')]),
              type: 'primary',
              icon: ACTION_ICON.UPLOAD,
              auth: ['infra:area:import'],
              onClick: handleImport,
            },
            {
              label: `IP ${$t('common.query')}`,
              type: 'primary',
              icon: ACTION_ICON.IP,
              onClick: handleQueryIp,
            },
          ]"
        />
      </template>
      <template #actions="{ row }">
        <TableAction
          :actions="[
            {
              label: $t('common.append'),
              type: 'link',
              icon: ACTION_ICON.ADD,
              auth: ['infra:area:create'],
              onClick: handleAppend.bind(null, row),
            },
            {
              label: $t('common.edit'),
              type: 'link',
              icon: ACTION_ICON.EDIT,
              auth: ['infra:area:update'],
              onClick: handleEdit.bind(null, row),
            },
            {
              label: $t('common.delete'),
              type: 'link',
              danger: true,
              icon: ACTION_ICON.DELETE,
              auth: ['infra:area:delete'],
              popConfirm: {
                title: $t('ui.actionMessage.deleteConfirm', [row.id]),
                confirm: handleDelete.bind(null, row),
              },
            },
          ]"
        />
      </template>
    </Grid>
  </Page>
</template>
