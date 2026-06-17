<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmBusinessApi } from '#/api/crm/business';
import type { CrmContactApi } from '#/api/crm/contact';

import { ref } from 'vue';
import { useRouter } from 'vue-router';

import { confirm, useVbenModal } from '@vben/common-ui';

import { Button, message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  getBusinessPageByContact,
  getBusinessPageByCustomer,
} from '#/api/crm/business';
import { createContactBusinessList } from '#/api/crm/contact';
import { BizTypeEnum } from '#/api/crm/permission';
import { $t } from '#/locales';
import { setPendingExtraTitle } from '#/router/state';

import { useDetailListColumns } from './detail-data';
import ListModal from './detail-list-modal.vue';
import Form from './form.vue';

const props = defineProps<{
  bizId: number;
  bizType: number;
  contactId?: number;
  customerId?: number;
}>();

const { push } = useRouter();

const [FormModal, formModalApi] = useVbenModal({
  connectedComponent: Form,
  destroyOnClose: true,
});

const [DetailListModal, detailListModalApi] = useVbenModal({
  connectedComponent: ListModal,
  destroyOnClose: true,
});

const checkedRows = ref<CrmBusinessApi.Business[]>([]);
function setCheckedRows({ records }: { records: CrmBusinessApi.Business[] }) {
  checkedRows.value = records;
}

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

/** 创建商机 */
function handleCreate() {
  formModalApi
    .setData({ customerId: props.customerId, contactId: props.contactId })
    .open();
}

function handleCreateBusiness() {
  detailListModalApi.setData({ customerId: props.customerId }).open();
}

async function handleDeleteContactBusinessList() {
  if (checkedRows.value.length === 0) {
    message.error($t('crm.business.message.selectFirst'));
    return;
  }
  return new Promise((resolve, reject) => {
    confirm({
      content: $t('crm.business.message.disassociateConfirm', [
        checkedRows.value.map((item) => item.name).join(','),
      ]),
    })
      .then(async () => {
        const res = await createContactBusinessList({
          contactId: props.bizId,
          businessIds: checkedRows.value.map((item) => item.id),
        });
        if (res) {
          message.success($t('ui.actionMessage.operationSuccess'));
          onRefresh();
          resolve(true);
        } else {
          reject(new Error($t('ui.actionMessage.operationFailed')));
        }
      })
      .catch(() => {
        reject(new Error($t('common.cancel')));
      });
  });
}

/** 查看商机详情 */
function handleDetail(row: CrmBusinessApi.Business) {
  setPendingExtraTitle(row.name);
  push({ name: 'CrmBusinessDetail', params: { id: row.id } });
}

/** 查看客户详情 */
function handleCustomerDetail(row: CrmBusinessApi.Business) {
  setPendingExtraTitle(row.customerName);
  push({ name: 'CrmCustomerDetail', params: { id: row.customerId } });
}

async function handleCreateContactBusinessList(businessIds: number[]) {
  const data = {
    contactId: props.bizId,
    businessIds,
  } as CrmContactApi.ContactBusinessReq;
  await createContactBusinessList(data);
  onRefresh();
}

const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns: useDetailListColumns(),
    height: 600,
    keepSource: true,
    proxyConfig: {
      ajax: {
        query: async ({ page }, formValues) => {
          if (props.bizType === BizTypeEnum.CRM_CUSTOMER) {
            return await getBusinessPageByCustomer({
              page: page.currentPage,
              pageSize: page.pageSize,
              customerId: props.customerId,
              ...formValues,
            });
          } else if (props.bizType === BizTypeEnum.CRM_CONTACT) {
            return await getBusinessPageByContact({
              page: page.currentPage,
              pageSize: page.pageSize,
              contactId: props.contactId,
              ...formValues,
            });
          } else {
            return [];
          }
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
  } as VxeTableGridOptions<CrmBusinessApi.Business>,
  gridEvents: {
    checkboxAll: setCheckedRows,
    checkboxChange: setCheckedRows,
  },
});
</script>

<template>
  <div>
    <FormModal @success="onRefresh" />
    <DetailListModal
      :customer-id="customerId"
      @success="handleCreateContactBusinessList"
    />
    <Grid>
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('ui.actionTitle.create', [$t('crm.business.business')]),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              auth: ['crm:business:create'],
              onClick: handleCreate,
            },
            {
              label: $t('crm.business.message.associate'),
              icon: ACTION_ICON.ADD,
              type: 'default',
              auth: ['crm:contact:create-business'],
              ifShow: () => !!contactId,
              onClick: handleCreateBusiness,
            },
            {
              label: $t('crm.business.message.disassociate'),
              icon: ACTION_ICON.ADD,
              type: 'default',
              auth: ['crm:contact:create-business'],
              ifShow: () => !!contactId,
              onClick: handleDeleteContactBusinessList,
            },
          ]"
        />
      </template>
      <template #name="{ row }">
        <Button type="link" @click="handleDetail(row)">
          {{ row.name }}
        </Button>
      </template>
      <template #customerName="{ row }">
        <Button type="link" @click="handleCustomerDetail(row)">
          {{ row.customerName }}
        </Button>
      </template>
    </Grid>
  </div>
</template>
