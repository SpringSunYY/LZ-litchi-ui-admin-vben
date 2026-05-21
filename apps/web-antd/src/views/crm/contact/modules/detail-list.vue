<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmContactApi } from '#/api/crm/contact';

import { ref } from 'vue';
import { useRouter } from 'vue-router';

import { confirm, useVbenModal } from '@vben/common-ui';

import { Button, message } from 'ant-design-vue';

import { ACTION_ICON, TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import {
  createBusinessContactList,
  deleteBusinessContactList,
  getContactPageByBusiness,
  getContactPageByCustomer,
} from '#/api/crm/contact';
import { BizTypeEnum } from '#/api/crm/permission';
import { $t } from '#/locales';

import { useDetailListColumns } from './detail-data';
import ListModal from './detail-list-modal.vue';
import Form from './form.vue';

const props = defineProps<{
  bizId: number; // 业务编号
  bizType: number; // 业务类型
  businessId?: number; // 特殊：商机编号；在【商机】详情中，可以传递商机编号，默认新建的联系人关联到该商机
  customerId?: number; // 特殊：客户编号；在【商机】详情中，可以传递客户编号，默认新建的联系人关联到该客户
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

const checkedRows = ref<CrmContactApi.Contact[]>([]);
function setCheckedRows({ records }: { records: CrmContactApi.Contact[] }) {
  checkedRows.value = records;
}

/** 刷新表格 */
function onRefresh() {
  gridApi.query();
}

/** 创建联系人 */
function handleCreate() {
  formModalApi
    .setData({ customerId: props.customerId, businessId: props.businessId })
    .open();
}

function handleCreateContact() {
  detailListModalApi.setData({ customerId: props.customerId }).open();
}

async function handleDeleteContactBusinessList() {
  if (checkedRows.value.length === 0) {
    message.error($t('crm.contact.message.selectFirst'));
    return;
  }
  return new Promise((resolve, reject) => {
    confirm({
      content: $t('crm.contact.message.disassociateConfirm', [
        checkedRows.value.map((item) => item.name).join(','),
      ]),
    })
      .then(async () => {
        const res = await deleteBusinessContactList({
          businessId: props.bizId,
          contactIds: checkedRows.value.map((item) => item.id),
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
        reject(new Error('cancel'));
      });
  });
}

/** 查看联系人详情 */
function handleDetail(row: CrmContactApi.Contact) {
  push({ name: 'CrmContactDetail', params: { id: row.id } });
}

/** 查看客户详情 */
function handleCustomerDetail(row: CrmContactApi.Contact) {
  push({ name: 'CrmCustomerDetail', params: { id: row.customerId } });
}

async function handleCreateBusinessContactList(contactIds: number[]) {
  const data = {
    businessId: props.bizId,
    contactIds,
  } as CrmContactApi.BusinessContactReq;
  await createBusinessContactList(data);
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
            return await getContactPageByCustomer({
              page: page.currentPage,
              pageSize: page.pageSize,
              customerId: props.bizId,
              ...formValues,
            });
          } else if (props.bizType === BizTypeEnum.CRM_BUSINESS) {
            return await getContactPageByBusiness({
              page: page.currentPage,
              pageSize: page.pageSize,
              businessId: props.bizId,
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
  } as VxeTableGridOptions<CrmContactApi.Contact>,
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
      @success="handleCreateBusinessContactList"
    />
    <Grid>
      <template #toolbar-tools>
        <TableAction
          :actions="[
            {
              label: $t('ui.actionTitle.create', [$t('crm.contact.contact')]),
              type: 'primary',
              icon: ACTION_ICON.ADD,
              onClick: handleCreate,
            },
            {
              label: $t('crm.business.message.disassociate'),
              icon: ACTION_ICON.ADD,
              type: 'default',
              auth: ['crm:contact:create-business'],
              ifShow: () => !!businessId,
              onClick: handleCreateContact,
            },
            {
              label: $t('crm.business.message.disassociate'),
              icon: ACTION_ICON.ADD,
              type: 'default',
              auth: ['crm:contact:create-business'],
              ifShow: () => !!businessId,
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
