<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { SystemDictDataApi } from '#/api/system/dict/data';

import { ref, watch } from 'vue';
import { useRouter } from 'vue-router';

import { useVbenModelDrawer } from '@vben/common-ui';
import { downloadFileFromBlobPart } from '@vben/utils';

import { message, Tag } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  deleteDictData,
  exportDictData,
  generateDictDataI18n,
  getDictDataPage,
} from '#/api/system/dict/data';
import { $t } from '#/locales';

import { useDataGridColumns, useDataGridFormSchema } from '../data';
import DataForm from './data-form.vue';

const props = defineProps({
  dictType: {
    type: String,
    default: undefined,
  },
});

const [DataFormModal, dataFormModalApi] = useVbenModelDrawer({
  connectedComponent: DataForm,
  destroyOnClose: true,
  placement: 'left',
});

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

/** 导出表格 */
async function handleExport() {
  const data = await exportDictData(await gridApi.formApi.getValues());
  downloadFileFromBlobPart({
    fileName: `${$t('system.dict.dataList')}.xls`,
    source: data,
  });
}

/** 创建字典数据 */
function handleCreate() {
  dataFormModalApi.setData({ dictType: props.dictType }).open();
}

/** 编辑字典数据 */
function handleEdit(row: SystemDictDataApi.DictData) {
  dataFormModalApi.setData(row).open();
}

/** 删除字典数据 */
async function handleDelete(row: SystemDictDataApi.DictData) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting', [row.label]),
    key: 'action_key_msg',
  });
  try {
    await deleteDictData(row.id as number);
    message.success({
      content: $t('ui.actionMessage.deleteSuccess', [row.label]),
      key: 'action_key_msg',
    });
    onRefresh();
  } finally {
    hideLoading();
  }
}

const [Grid, gridApi] = useVbenVxeGrid({
  formOptions: {
    schema: useDataGridFormSchema(),
  },
  gridOptions: {
    columns: useDataGridColumns(),
    height: 'auto',
    keepSource: true,
    proxyConfig: {
      ajax: {
        query: async ({ page }, formValues) => {
          return await getDictDataPage({
            pageNo: page.currentPage,
            pageSize: page.pageSize,
            dictType: props.dictType,
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
  } as VxeTableGridOptions<SystemDictDataApi.DictData>,
});

/** 生成国际化*/
const generateI18nLoading = ref(false);
const handleGenerateI18n = function () {
  generateI18nLoading.value = true;
  generateDictDataI18n().then(() => {
    message.success($t('ui.actionMessage.operationSuccess'));
    generateI18nLoading.value = false;
    gridApi.query();
  });
};

function isHexColor(color: string) {
  const reg = /^#(?:[0-9a-f]{3}|[0-9a-f]{6})$/i;
  return reg.test(color);
}

function formatColorType(colorType?: string) {
  if (!colorType) return 'default';
  switch (colorType) {
    case 'danger': {
      return 'error';
    }
    case 'info': {
      return 'default';
    }
    case 'primary': {
      return 'processing';
    }
    default: {
      return colorType;
    }
  }
}

function getTagColor(colorType?: string) {
  const color = formatColorType(colorType);
  return isHexColor(color) ? color : colorType;
}

/** 跳转国际化 */
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

/** 监听 dictType 变化，重新查询 */
watch(
  () => props.dictType,
  () => {
    if (props.dictType) {
      onRefresh();
    }
  },
);

defineExpose({ onRefresh });
</script>

<template>
  <div class="flex h-full flex-col">
    <DataFormModal @success="onRefresh" />

    <Grid :table-title="$t('system.dict.dataList')">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('ui.actionTitle.create', [$t('system.dict.data')]),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['system:dict:create'],
              onClick: handleCreate,
            },
            {
              label: $t('system.dict.action.createI18n'),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['infra:message:create'],
              onClick: handleGenerateI18n,
              loading: generateI18nLoading,
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
                  row.label,
                  $t('system.dict.data'),
                ]),
                confirm: handleDelete.bind(null, row),
              },
            },
          ]"
        />
      </template>
      <template #label="{ row }">
        <Tag :color="getTagColor(row.colorType)">
          {{ row.label }}
        </Tag>
      </template>
      <template #i18n="{ row }">
        <Tag
          v-if="row.i18n"
          @click="toI18n(row.i18n)"
          :color="getTagColor(row.colorType)"
        >
          {{ $t(row.i18n) }}
        </Tag>
      </template>
    </Grid>
  </div>
</template>
