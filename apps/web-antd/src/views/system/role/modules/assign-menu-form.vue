<script lang="ts" setup>
import type { SystemDeptApi } from '#/api/system/dept';
import type { SystemRoleApi } from '#/api/system/role';

import { nextTick, ref } from 'vue';

import { useVbenDrawer, VbenTree } from '@vben/common-ui';
import { handleTree } from '@vben/utils';

import { Checkbox, message, Spin, Tooltip } from 'ant-design-vue';

import { getMenuList } from '#/api/system/menu';
import { assignRoleMenu, getRoleMenuList } from '#/api/system/permission';
import { $t } from '#/locales';

const emit = defineEmits(['success']);

const [Drawer, drawerApi] = useVbenDrawer({
  onConfirm: handleConfirm,
  onCancel() {
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

    const data = drawerApi.getData<SystemRoleApi.Role>();
    if (data?.id) {
      roleName.value = data.name;
      const menuIds = await getRoleMenuList(data.id as number);
      selectedMenuIds.value = Array.isArray(menuIds) ? menuIds : [];
    }
  },
});

const menuTree = ref<SystemDeptApi.Dept[]>([]);
const menuLoading = ref(false);
const selectedMenuIds = ref<number[]>([]);
const isAllSelected = ref(false);
const isExpanded = ref(false);
const expandedKeys = ref<number[]>([]);
const checkStrictly = ref(true);
const roleName = ref('');

async function loadMenuTree() {
  menuLoading.value = true;
  try {
    const data = await getMenuList();
    menuTree.value = handleTree(data) as SystemDeptApi.Dept[];
  } finally {
    menuLoading.value = false;
  }
}

async function handleConfirm() {
  const data = drawerApi.getData<SystemRoleApi.Role>();
  if (!data?.id) return;
  drawerApi.lock();
  try {
    await assignRoleMenu({
      roleId: data.id as number,
      menuIds: selectedMenuIds.value,
    });
    message.success($t('ui.actionMessage.operationSuccess'));
    await drawerApi.close();
    emit('success');
  } finally {
    drawerApi.unlock();
  }
}

function toggleSelectAll() {
  isAllSelected.value = !isAllSelected.value;
  selectedMenuIds.value = isAllSelected.value
    ? getAllNodeIds(menuTree.value)
    : [];
}

function toggleExpandAll() {
  isExpanded.value = !isExpanded.value;
  expandedKeys.value = isExpanded.value ? getAllNodeIds(menuTree.value) : [];
}

function toggleCheckStrictly() {
  checkStrictly.value = !checkStrictly.value;
}

function getAllNodeIds(nodes: any[], ids: number[] = []): number[] {
  nodes.forEach((node: any) => {
    ids.push(node.id);
    if (node.children && node.children.length > 0) {
      getAllNodeIds(node.children, ids);
    }
  });
  return ids;
}
</script>

<template>
  <Drawer :title="$t('common.grant')" class="min-h-full w-[60%]">
    <div class="mb-4 text-lg">
      <span class="ml-2">{{ roleName }}</span>
    </div>
    <Spin
      :spinning="menuLoading"
      class="flex min-h-[60vh] w-full items-center justify-center"
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
          <Tooltip v-if="value.remark" :title="value.remark">
            <div class="flex min-w-0 flex-1 items-center gap-2">
              <span class="truncate">{{ value.name }}</span>
              <span class="shrink-0 truncate text-gray-400"
                >({{ value.remark }})</span>
            </div>
          </Tooltip>
          <span v-else>{{ value.name }}</span>
        </template>
      </VbenTree>
    </Spin>
    <template #prepend-footer>
      <div class="flex flex-auto items-center gap-4">
        <Checkbox :checked="isAllSelected" @change="toggleSelectAll">
          {{ $t('common.selectAll') }}
        </Checkbox>
        <Checkbox :checked="isExpanded" @change="toggleExpandAll">
          {{ $t('common.expandAll') }}
        </Checkbox>
        <Checkbox :checked="checkStrictly" @change="toggleCheckStrictly">
          {{ $t('common.checkStrictly') }}
        </Checkbox>
      </div>
    </template>
  </Drawer>
</template>
