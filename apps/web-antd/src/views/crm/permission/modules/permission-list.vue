<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmPermissionApi } from '#/api/crm/permission';

import { ref, watch } from 'vue';

import { confirm, useVbenModal } from '@vben/common-ui';
import { useUserStore } from '@vben/stores';

import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  deletePermissionBatch,
  deleteSelfPermission,
  getPermissionList,
  PermissionLevelEnum,
} from '#/api/crm/permission';
import { $t } from '#/locales';

import { useGridColumns } from './data';
import Form from './permission-form.vue';

const props = defineProps<{
  bizId: number;
  bizType: number;
  showAction: boolean;
}>();

const emits = defineEmits<{
  (e: 'quitTeam'): void;
}>();

const gridData = ref<CrmPermissionApi.Permission[]>([]);

const [FormModal, formModalApi] = useVbenModal({
  connectedComponent: Form,
  destroyOnClose: true,
});

const validateOwnerUser = ref(false);
const validateWrite = ref(false);
const isPool = ref(false);

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

const checkedRows = ref<CrmPermissionApi.Permission[]>([]);
function setCheckedRows({
  records,
}: {
  records: CrmPermissionApi.Permission[];
}) {
  if (records.some((item) => item.level === PermissionLevelEnum.OWNER)) {
    message.warning($t('crm.permission.message.cannotSelectOwner'));
    gridApi.grid.setAllCheckboxRow(false);
    return;
  }
  checkedRows.value = records;
}

function handleCreate() {
  formModalApi
    .setData({
      bizType: props.bizType,
      bizId: props.bizId,
    })
    .open();
}

function handleEdit() {
  if (checkedRows.value.length === 0) {
    message.error($t('crm.permission.message.selectMemberFirst'));
    return;
  }
  if (checkedRows.value.length > 1) {
    message.error($t('crm.permission.message.onlySelectOne'));
    return;
  }
  formModalApi
    .setData({
      bizType: props.bizType,
      bizId: props.bizId,
      id: checkedRows.value[0]?.id,
      level: checkedRows.value[0]?.level,
    })
    .open();
}

function handleDelete() {
  if (checkedRows.value.length === 0) {
    message.error($t('crm.permission.message.selectMemberFirst'));
    return;
  }
  return new Promise((resolve, reject) => {
    confirm({
      content: $t('crm.permission.message.quitConfirm', [
        checkedRows.value.map((item) => item.nickname).join(','),
      ]),
    })
      .then(async () => {
        const res = await deletePermissionBatch(
          checkedRows.value.map((item) => item.id as number),
        );
        if (res) {
          message.success($t('ui.actionMessage.operationSuccess'));
          onRefresh();
          resolve(true);
        } else {
          reject(new Error($t('crm.permission.message.quitSuccess')));
        }
      })
      .catch(() => {
        reject(new Error($t('common.cancel')));
      });
  });
}

const userStore = useUserStore();

async function handleQuit() {
  const permission = gridApi.grid
    .getData()
    .find(
      (item) =>
        item.id === userStore.userInfo?.id &&
        item.level === PermissionLevelEnum.OWNER,
    );
  if (permission) {
    message.warning($t('crm.permission.message.ownerCannotQuit'));
    return;
  }

  const userPermission = gridApi.grid
    .getData()
    .find((item) => item.id === userStore.userInfo?.id);
  if (!userPermission) {
    message.warning($t('crm.permission.message.notTeamMember'));
    return;
  }
  await deleteSelfPermission(userPermission.id as number);
  message.success($t('crm.permission.message.quitTeamSuccess'));
  emits('quitTeam');
}

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns: useGridColumns(),
    height: 'auto',
    pagerConfig: {
      enabled: false,
    },
    proxyConfig: {
      ajax: {
        query: async (_params) => {
          const res = await getPermissionList({
            bizId: props.bizId,
            bizType: props.bizType,
          });
          gridData.value = res;
          return res;
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
  } as VxeTableGridOptions<CrmPermissionApi.Permission>,
  gridEvents: {
    checkboxAll: setCheckedRows,
    checkboxChange: setCheckedRows,
  },
});

defineExpose({
  openForm: handleCreate,
  validateOwnerUser,
  validateWrite,
  isPool,
});

watch(
  () => gridData.value,
  (data) => {
    isPool.value = false;
    if (data.length > 0) {
      isPool.value = data.some(
        (item) => item.level === PermissionLevelEnum.OWNER,
      );
      validateOwnerUser.value = false;
      validateWrite.value = false;
      const userId = userStore.userInfo?.id;
      gridData.value
        .filter((item) => item.userId === userId)
        .forEach((item) => {
          if (item.level === PermissionLevelEnum.OWNER) {
            validateOwnerUser.value = true;
            validateWrite.value = true;
          } else if (item.level === PermissionLevelEnum.WRITE) {
            validateWrite.value = true;
          }
        });
    } else {
      isPool.value = true;
    }
  },
  {
    immediate: true,
  },
);
</script>

<template>
  <div>
    <FormModal @success="onRefresh" />
    <Grid>
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('common.create'),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              ifShow: validateOwnerUser,
              onClick: handleCreate,
            },
            {
              label: $t('common.edit'),
              type: 'primary',
              icon: ACTION_ICON.EDIT,
              ifShow: validateOwnerUser,
              onClick: handleEdit,
            },
            {
              label: $t('common.delete'),
              type: 'primary',
              danger: true,
              icon: ACTION_ICON.DELETE,
              ifShow: validateOwnerUser,
              onClick: handleDelete,
            },
            {
              label: $t('crm.permission.action.quit'),
              type: 'primary',
              danger: true,
              ifShow: !validateOwnerUser,
              onClick: handleQuit,
            },
          ]"
        />
      </template>
    </Grid>
  </div>
</template>
