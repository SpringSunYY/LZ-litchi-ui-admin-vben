<script lang="ts" setup>
import type {
  VxeGridListeners,
  VxeTableGridOptions,
} from '#/adapter/vxe-table';
import type { SystemDictTypeApi } from '#/api/system/dict/type';

import { ref } from 'vue';
import { useRouter } from 'vue-router';

import { useVbenModal } from '@vben/common-ui';
import { downloadFileFromBlobPart } from '@vben/utils';

import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  deleteDictType,
  exportDictType,
  getDictTypePage,
} from '#/api/system/dict/type';
import { CascadeDeleteSwitch } from '#/components/cascade-delete-switch';
import { $t } from '#/locales';

import { useTypeGridColumns, useTypeGridFormSchema } from '../data';
import TypeForm from './type-form.vue';

const emit = defineEmits<{
  deleted: [];
  select: [dictType: string];
}>();

const [TypeFormModal, typeFormModalApi] = useVbenModal({
  connectedComponent: TypeForm,
  destroyOnClose: true,
});

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

/** 导出表格 */
async function handleExport() {
  const data = await exportDictType(await gridApi.formApi.getValues());
  downloadFileFromBlobPart({
    fileName: `${$t('system.dict.typeList')}.xls`,
    source: data,
  });
}

/** 创建字典类型 */
function handleCreate() {
  typeFormModalApi.setData(null).open();
}

/** 编辑字典类型 */
function handleEdit(row: any) {
  typeFormModalApi.setData(row).open();
}

/** 全局级联删除开关（默认 false） */
const isDeleteChildren = ref(false);

/** 删除字典类型 */
async function handleDelete(row: SystemDictTypeApi.DictType) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting', [row.name]),
    key: 'action_key_msg',
  });
  try {
    await deleteDictType(row.id as number, isDeleteChildren.value);
    message.success({
      content: $t('ui.actionMessage.deleteSuccess', [row.name]),
      key: 'action_key_msg',
    });
    onRefresh();
    emit('deleted');
  } finally {
    hideLoading();
  }
}

/** 表格事件 */
const gridEvents: VxeGridListeners<SystemDictTypeApi.DictType> = {
  cellClick: ({ row }) => {
    emit('select', row.type);
  },
};

const [Grid, gridApi] = useVbenVxeGrid({
  formOptions: {
    schema: useTypeGridFormSchema(),
  },
  gridOptions: {
    columns: useTypeGridColumns(),
    height: 'auto',
    keepSource: true,
    proxyConfig: {
      ajax: {
        query: async ({ page }, formValues) => {
          return await getDictTypePage({
            pageNo: page.currentPage,
            pageSize: page.pageSize,
            ...formValues,
          });
        },
      },
    },
    rowConfig: {
      keyField: 'id',
      isCurrent: true,
    },
    toolbarConfig: {
      refresh: { code: 'query' },
      search: true,
    },
  } as VxeTableGridOptions<SystemDictTypeApi.DictType>,
  gridEvents,
});

/** 跳转到 i18n 页面，message的key是精确匹配，所以跳过去message页面为空 */
const router = useRouter();
const toI18n = (i18n?: string) => {
  if (!i18n) return;
  const routeData = router.resolve({
    name: 'i18nMessage',
    query: {
      messageKey: i18n,
    },
  });
  // 使用新窗口打开
  window.open(routeData?.href, '_blank');
};
</script>

<template>
  <div class="h-full">
    <TypeFormModal @success="onRefresh" />

    <Grid :table-title="$t('system.dict.typeList')">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('ui.actionTitle.create', [$t('system.dict.type')]),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['system:dict:create'],
              onClick: handleCreate,
            },
            {
              label: $t('ui.actionTitle.export'),
              type: 'primary',
              icon: ACTION_ICON.DOWNLOAD,
              auth: ['system:dict:export'],
              onClick: handleExport,
            },
          ]"
        />
        <CascadeDeleteSwitch v-model="isDeleteChildren" />
      </template>
      <template #actions="{ row }">
        <TableAction
          :actions="[
            {
              label: $t('common.edit'),
              type: 'link',
              icon: ACTION_ICON.EDIT,
              auth: ['system:dict:update'],
              onClick: handleEdit.bind(null, row),
            },
            {
              label: $t('common.delete'),
              type: 'link',
              danger: true,
              icon: ACTION_ICON.DELETE,
              auth: ['system:dict:delete'],
              popConfirm: {
                title: $t('ui.actionMessage.deleteConfirm', [
                  row.name,
                  $t('system.dict.type'),
                ]),
                confirm: handleDelete.bind(null, row),
              },
            },
          ]"
        />
      </template>
      <template #type="{ row }">
        <a @click="toI18n(row.type)" v-if="row.type">{{ row.type }}</a>
      </template>
    </Grid>
  </div>
</template>
