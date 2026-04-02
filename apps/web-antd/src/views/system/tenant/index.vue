<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { SystemAreaApi } from '#/api/system/area';
import type { SystemTenantApi } from '#/api/system/tenant';

import { onMounted, ref } from 'vue';

import { DocAlert, Page, useVbenDrawer, useVbenModal } from '@vben/common-ui';
import { downloadFileFromBlobPart } from '@vben/utils';

import { message, TreeSelect } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import { getAreaTree } from '#/api/system/area';
import { deleteTenant, exportTenant, getTenantPage } from '#/api/system/tenant';
import { $t } from '#/locales';
import MenuDrawer from '#/views/system/tenant/modules/MenuDrawer.vue';

import { useGridColumns, useGridFormSchema } from './data';
import Form from './modules/form.vue';

const [FormModal, formModalApi] = useVbenModal({
  connectedComponent: Form,
  destroyOnClose: true,
});

const [DrawerModal, formDrawerApi] = useVbenDrawer({
  connectedComponent: MenuDrawer,
  destroyOnClose: true,
  externalCloseConfirm: false,
});

/** 菜单授权 */
function handleGrant(row: SystemTenantApi.Tenant) {
  formDrawerApi.setData(row).open();
}

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

/** 导出表格 */
async function handleExport() {
  const data = await exportTenant(await gridApi.formApi.getValues());
  downloadFileFromBlobPart({ fileName: '租户.xls', source: data });
}

/** 创建租户 */
function handleCreate() {
  formModalApi.setData(null).open();
}

/** 编辑租户 */
function handleEdit(row: SystemTenantApi.Tenant) {
  formModalApi.setData(row).open();
}

/** 删除租户 */
async function handleDelete(row: SystemTenantApi.Tenant) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting', [row.name]),
    key: 'action_key_msg',
  });
  try {
    await deleteTenant(row.id as number);
    message.success({
      content: $t('ui.actionMessage.deleteSuccess', [row.name]),
      key: 'action_key_msg',
    });
    onRefresh();
  } finally {
    hideLoading();
  }
}

const [Grid, gridApi] = useVbenVxeGrid({
  formOptions: {
    schema: useGridFormSchema(),
  },
  gridOptions: {
    columns: useGridColumns(),
    proxyConfig: {
      ajax: {
        query: async ({ page }, formValues) => {
          return await getTenantPage({
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
  } as VxeTableGridOptions<SystemTenantApi.Tenant>,
});

const addressList = ref<SystemAreaApi.Area[]>([]);
const addressMap = ref<Map<number, SystemAreaApi.Area>>(new Map());


function getAddressList() {
  getAreaTree().then((res) => {
    addressList.value = res;
    getAddressMap();
  });
}

function getAddressMap() {
  const map = new Map<number, SystemAreaApi.Area & { children?: any[] }>();
  function traverse(nodes: any[], parentId?: number) {
    for (const node of nodes) {
      // 显式设置 parentId
      if (parentId !== undefined) {
        node.parentId = parentId;
      }
      if (node.id) {
        map.set(node.id, node);
      }
      // 递归处理子节点，传入当前节点的 id 作为父级 id
      if (node.children?.length) {
        traverse(node.children, node.id);
      }
    }
  }
  traverse(addressList.value);
  addressMap.value = map as any;
}

function getAreaFullName(addressCode: string): string {
  if (!addressCode || addressList.value.length === 0) return '';
  const flatMap = addressMap.value;
  const target = [...flatMap.values()].find(
    (n) => n.id === Number(addressCode),
  );
  if (!target || !target.id) {
    return '';
  }
  const names: string[] = [];
  let current: SystemAreaApi.Area | undefined = target;
  let count = 0;
  while (current && count < 10) {
    // 添加循环保护
    names.unshift(current.name);
    if (current.parentId === null || current.parentId === undefined) break;
    current = flatMap.get(current.parentId);
    count++;
  }
  return names.join('/');
}
onMounted(() => {
  getAddressList();
});
</script>
<template>
  <Page auto-content-height>
    <template #doc>
      <DocAlert title="SaaS 多租户" url="https://doc.iocoder.cn/saas-tenant/" />
    </template>
    <DrawerModal />
    <FormModal @success="onRefresh" />
    <Grid table-title="租户列表">
      <template #form-addressCode="slotProps">
        <TreeSelect
          v-bind="slotProps"
          :tree-data="addressList"
          :dropdown-style="{ maxHeight: '400px', overflow: 'auto' }"
          :field-names="{ label: 'name', value: 'id', children: 'children' }"
          :placeholder="$t('ui.placeholder.select')"
          allow-clear
        />
      </template>
      <template #addressCode="{ row }">
        {{ getAreaFullName(row.addressCode) }}
      </template>
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('ui.actionTitle.create', ['租户']),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['system:tenant:create'],
              onClick: handleCreate,
            },
            {
              label: $t('ui.actionTitle.export'),
              type: 'primary',
              icon: ACTION_ICON.DOWNLOAD,
              auth: ['system:tenant:export'],
              onClick: handleExport,
            },
          ]"
        />
      </template>
      <template #actions="{ row }">
        <TableAction
          :actions="[
            {
              label: $t('common.viewMenu'),
              type: 'link',
              icon: ACTION_ICON.VIEW as string,
              auth: ['system:tenant-package:update'],
              onClick: handleGrant.bind(null, row),
            },
            {
              label: $t('common.edit'),
              type: 'link',
              icon: ACTION_ICON.EDIT,
              auth: ['system:tenant:update'],
              onClick: handleEdit.bind(null, row),
            },
            {
              label: $t('common.delete'),
              type: 'link',
              danger: true,
              icon: ACTION_ICON.DELETE,
              auth: ['system:tenant:delete'],
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
