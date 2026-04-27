<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { I18nKeyApi } from '#/api/infra/i18n/i18nKey';
import type { I18nMessageApi } from '#/api/infra/i18n/i18nMessage';

import { ref, watch } from 'vue';

import { useVbenModal } from '@vben/common-ui';
import { downloadFileFromBlobPart } from '@vben/utils';

import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  deleteI18nMessage,
  deleteI18nMessageList,
  exportI18nMessage,
  getI18nMessagePage,
} from '#/api/infra/i18n/i18nMessage';
import { $t } from '#/locales';

import { useMessageGridColumns, useMessageGridFormSchema } from '../data';
import MessageForm from './message-form.vue';

const props = defineProps({
  row: {
    type: Object as () => I18nKeyApi.I18nKey | null,
    default: null,
  },
});

const emit = defineEmits<{
  deleted: [];
  select: [row: I18nMessageApi.I18nMessage];
}>();

const [FormModal, formModalApi] = useVbenModal({
  connectedComponent: MessageForm,
  destroyOnClose: true,
});

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

/** 导出表格 */
async function handleExport() {
  const data = await exportI18nMessage({
    ...(await gridApi.formApi.getValues()),
    messageKey: props.row?.messageKey,
  });
  downloadFileFromBlobPart({ fileName: '国际化信息.xls', source: data });
}

/** 创建国际化信息 */
function handleCreate() {
  const keyRow = props.row;
  formModalApi
    .setData({
      messageName: keyRow?.messageName,
      messageKey: keyRow?.messageKey,
      localeTarget: keyRow?.localeTarget,
      isSystem: keyRow?.isSystem,
      moduleType: keyRow?.moduleType,
      useType: keyRow?.useType,
      remark: keyRow?.remark,
    })
    .open();
}

/** 编辑国际化信息 */
function handleEdit(row: I18nMessageApi.I18nMessage) {
  formModalApi.setData(row).open();
}

/** 删除国际化信息 */
async function handleDelete(row: I18nMessageApi.I18nMessage) {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting', [row.id]),
    key: 'action_key_msg',
  });
  try {
    await deleteI18nMessage(row.id as number);
    message.success({
      content: $t('ui.actionMessage.deleteSuccess', [row.id]),
      key: 'action_key_msg',
    });
    onRefresh();
    emit('deleted');
  } finally {
    hideLoading();
  }
}

/** 批量删除国际化信息 */
async function handleDeleteBatch() {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.deleting'),
    key: 'action_key_msg',
  });
  try {
    await deleteI18nMessageList(checkedIds.value);
    message.success({
      content: $t('ui.actionMessage.deleteSuccess'),
      key: 'action_key_msg',
    });
    checkedIds.value = [];
    onRefresh();
    emit('deleted');
  } finally {
    hideLoading();
  }
}

const checkedIds = ref<number[]>([]);

function handleRowCheckboxChange({
  records,
}: {
  records: I18nMessageApi.I18nMessage[];
}) {
  checkedIds.value = records.map((item) => item.id);
}

const [Grid, gridApi] = useVbenVxeGrid({
  formOptions: {
    schema: useMessageGridFormSchema(),
  },
  gridOptions: {
    columns: useMessageGridColumns(),
    height: 'auto',
    keepSource: true,
    pagerConfig: {
      enabled: true,
    },
    proxyConfig: {
      ajax: {
        query: async ({ page }, formValues) => {
          // 拆分 locale_localeTarget 为两个字段
          const { locale, ...rest } = formValues;
          if (locale && locale.includes('_')) {
            const [localeVal, localeTarget] = locale.split('_');
            return await getI18nMessagePage({
              pageNo: page.currentPage,
              pageSize: page.pageSize,
              messageKey: props.row?.messageKey,
              locale: localeVal,
              localeTarget: Number(localeTarget),
              ...rest,
            });
          }
          return await getI18nMessagePage({
            pageNo: page.currentPage,
            pageSize: page.pageSize,
            messageKey: props.row?.messageKey,
            ...formValues,
          });
        },
      },
    },
    rowConfig: {
      keyField: 'id',
      isCurrent: true,
      isHover: true,
    },
    toolbarConfig: {
      refresh: { code: 'query' },
      search: true,
    },
  } as VxeTableGridOptions<I18nMessageApi.I18nMessage>,
  gridEvents: {
    checkboxAll: handleRowCheckboxChange,
    checkboxChange: handleRowCheckboxChange,
    cellClick: ({ row }) => {
      emit('select', row);
    },
  },
});

/** 监听 row 变化，重新查询 */
watch(
  () => props.row?.messageKey,
  () => {
    if (props.row?.messageKey) {
      onRefresh();
    }
  },
);

defineExpose({ onRefresh });
</script>

<template>
  <div class="flex h-full flex-col">
    <FormModal @success="onRefresh" />

    <Grid table-title="国际化信息列表">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('ui.actionTitle.create', ['国际化信息']),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['infra:message:create'],
              disabled: !row,
              onClick: handleCreate,
            },
            {
              label: $t('ui.actionTitle.export'),
              type: 'primary',
              icon: ACTION_ICON.DOWNLOAD,
              auth: ['infra:message:export'],
              onClick: handleExport,
            },
            {
              label: $t('ui.actionTitle.deleteBatch'),
              type: 'primary',
              danger: true,
              icon: ACTION_ICON.DELETE,
              disabled: checkedIds.length === 0,
              auth: ['infra:message:delete'],
              onClick: handleDeleteBatch,
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
              auth: ['infra:message:update'],
              onClick: handleEdit.bind(null, row),
            },
            {
              label: $t('common.delete'),
              type: 'link',
              danger: true,
              icon: ACTION_ICON.DELETE,
              auth: ['infra:message:delete'],
              popConfirm: {
                title: $t('ui.actionMessage.deleteConfirm', [row.id]),
                confirm: handleDelete.bind(null, row),
              },
            },
          ]"
        />
      </template>
    </Grid>
  </div>
</template>
