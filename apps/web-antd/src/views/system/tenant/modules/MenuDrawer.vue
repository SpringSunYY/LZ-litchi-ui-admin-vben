<script lang="ts" setup>
import type { SystemDeptApi } from '#/api/system/dept';
import type { SystemTenantApi } from '#/api/system/tenant';

import { nextTick, ref } from 'vue';

import { useVbenDrawer, VbenTree } from '@vben/common-ui';
import { handleTree } from '@vben/utils';

import { Spin, Tooltip } from 'ant-design-vue';

import { getMenuList } from '#/api/system/menu';
import { getTenantMenuList } from '#/api/system/tenant';
import { $t } from '#/locales';

const [Drawer, drawerApi] = useVbenDrawer({
  onCancel() {
    drawerApi.close();
  },
  onConfirm() {
    drawerApi.close();
  },
  async onOpenChange(isOpen: boolean) {
    if (!isOpen) return;
    selectedMenuIds.value = [];
    isAllSelected.value = false;
    isExpanded.value = false;
    expandedKeys.value = [];

    await loadMenuTree();
    await nextTick();

    tenantInfo.value = drawerApi.getData<SystemTenantApi.Tenant>();
    if (tenantInfo.value?.code) {
      const res = await getTenantMenuList(tenantInfo.value.code);
      selectedMenuIds.value = Array.isArray(res) ? res : [];
    }
    if (tenantInfo.value?.name) {
      tenantName.value = tenantInfo.value.name;
    }
  },
});
const tenantInfo = ref<SystemTenantApi.Tenant>();
const tenantName = ref('');
const menuTree = ref<SystemDeptApi.Dept[]>([]);
const menuLoading = ref(false);
const selectedMenuIds = ref<number[]>([]);
const isAllSelected = ref(false);
const isExpanded = ref(false);
const expandedKeys = ref<number[]>([]);
const checkStrictly = ref(true); // 默认勾选，父子联动

async function loadMenuTree() {
  menuLoading.value = true;
  try {
    const data = await getMenuList();
    menuTree.value = handleTree(data) as SystemDeptApi.Dept[];
  } finally {
    menuLoading.value = false;
  }
}
</script>

<template>
  <Drawer
    :title="$t('common.viewMenu', [tenantName])"
    class="min-h-full w-[60%]"
  >
    <Spin
      :spinning="menuLoading"
      class="flex min-h-[80vh] w-full items-center justify-center"
    >
      <VbenTree
        class="max-h-[100%] overflow-y-auto"
        :tree-data="menuTree"
        multiple
        bordered
        v-model:expanded="expandedKeys"
        :check-strictly="!checkStrictly"
        v-model="selectedMenuIds"
        value-field="id"
        label-field="name"
      >
        <template #node="{ value }">
          <span>{{ value.name }}</span>
          <Tooltip v-if="value.remark" :title="value.remark">
            <span class="ml-20 max-w-[600px] truncate text-gray-400">{{
              value.remark
            }}</span>
          </Tooltip>
        </template>
      </VbenTree>
    </Spin>
  </Drawer>
</template>
