<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { SystemNotifyMessageApi } from '#/api/system/notify/message';

import { DocAlert, Page, useVbenModal } from '@vben/common-ui';

import { message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  getMyNotifyMessagePage,
  updateAllNotifyMessageRead,
  updateNotifyMessageRead,
} from '#/api/system/notify/message';
import { $t } from '#/locales';

import { useGridColumns, useGridFormSchema } from './data';
import Detail from './modules/detail.vue';

const [DetailModal, detailModalApi] = useVbenModal({
  connectedComponent: Detail,
  destroyOnClose: true,
});

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

/** 查看站内信详情 */
function handleDetail(row: SystemNotifyMessageApi.NotifyMessage) {
  detailModalApi.setData(row).open();
}

/** 标记一条站内信已读 */
async function handleRead(row: SystemNotifyMessageApi.NotifyMessage) {
  message.loading({
    content: $t('ui.actionMessage.processing', [
      $t('system.notify.my.message.markRead'),
    ]),
    duration: 0,
    key: 'action_process_msg',
  });
  // 执行标记已读操作
  await updateNotifyMessageRead([row.id]);
  // 提示成功
  message.success({
    content: $t('ui.actionMessage.operationSuccess'),
    key: 'action_process_msg',
  });
  onRefresh();

  // 打开详情
  handleDetail(row);
}

/** 标记选中的站内信为已读 */
async function handleMarkRead() {
  const rows = gridApi.grid.getCheckboxRecords();
  if (!rows || rows.length === 0) {
    message.warning(
      $t('ui.actionMessage.selectRequired', [$t('system.notify.my.my')]),
    );
    return;
  }

  const ids = rows.map((row: SystemNotifyMessageApi.NotifyMessage) => row.id);
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.processing', [
      $t('system.notify.my.message.markRead'),
    ]),
    key: 'action_key_msg',
  });
  try {
    // 执行标记已读操作
    await updateNotifyMessageRead(ids);
    // 提示成功
    message.success({
      content: $t('ui.actionMessage.operationSuccess'),
      key: 'action_key_msg',
    });
    await gridApi.grid.setAllCheckboxRow(false);
    onRefresh();
  } finally {
    hideLoading();
  }
}

/** 标记所有站内信为已读 */
async function handleMarkAllRead() {
  const hideLoading = message.loading({
    content: $t('ui.actionMessage.processing', [
      $t('system.notify.my.message.markAllRead'),
    ]),
    key: 'action_key_msg',
  });
  try {
    // 执行标记已读操作
    await updateAllNotifyMessageRead();
    // 提示成功
    message.success({
      content: $t('ui.actionMessage.operationSuccess'),
      key: 'action_key_msg',
    });
    await gridApi.grid.setAllCheckboxRow(false);
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
    height: 'auto',
    keepSource: true,
    proxyConfig: {
      ajax: {
        query: async ({ page }, formValues) => {
          return await getMyNotifyMessagePage({
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
    checkboxConfig: {
      highlight: true,
    },
  } as VxeTableGridOptions<SystemNotifyMessageApi.NotifyMessage>,
});
</script>
<template>
  <Page auto-content-height>
    <template #doc>
      <DocAlert
        :title="$t('system.notify.my.menu')"
        url="https://doc.iocoder.cn/notify/"
      />
    </template>

    <DetailModal @success="onRefresh" />
    <Grid :table-title="$t('system.notify.my.my')">
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('system.notify.my.message.markRead'),
              type: 'primary',
              icon: 'mdi:checkbox-marked-circle-outline',
              onClick: handleMarkRead,
            },
            {
              label: $t('system.notify.my.message.markAllRead'),
              type: 'primary',
              icon: 'mdi:checkbox-marked-circle-outline',
              onClick: handleMarkAllRead,
            },
          ]"
        />
      </template>
      <template #actions="{ row }">
        <TableAction
          :actions="[
            {
              label: $t('system.notify.my.message.view'),
              type: 'link',
              ifShow: row.readStatus,
              icon: ACTION_ICON.VIEW,
              onClick: handleDetail.bind(null, row),
            },
            {
              label: $t('system.notify.my.message.markRead'),
              type: 'link',
              ifShow: !row.readStatus,
              icon: ACTION_ICON.DELETE,
              onClick: handleRead.bind(null, row),
            },
          ]"
        />
      </template>
    </Grid>
  </Page>
</template>
