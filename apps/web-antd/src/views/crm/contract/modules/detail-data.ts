import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { DescriptionItemSchema } from '#/components/description';

import { h } from 'vue';

import {
  erpPriceInputFormatter,
  floatToFixed2,
  formatDateTime,
} from '@vben/utils';

import I18nDictTag from '#/components/i18n/i18n-dict-tag/i18n-dict-tag.vue';
import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

/** 详情头部的配置 */
export function useDetailSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'customerName',
      label: $t('crm.contract.field.customerName'),
    },
    {
      field: 'totalPrice',
      label: $t('crm.contract.field.totalPrice'),
      content: (data) => erpPriceInputFormatter(data?.totalPrice) as string,
    },
    {
      field: 'orderDate',
      label: $t('crm.contract.field.orderDate'),
      content: (data) => formatDateTime(data?.orderDate) as string,
    },
    {
      field: 'totalReceivablePrice',
      label: $t('crm.contract.field.totalReceivablePrice'),
      content: (data) =>
        erpPriceInputFormatter(data?.totalReceivablePrice) as string,
    },
    {
      field: 'ownerUserName',
      label: $t('crm.contract.field.ownerUserName'),
    },
  ];
}

/** 详情基本信息的配置 */
export function useDetailBaseSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'no',
      label: $t('crm.contract.field.no'),
    },
    {
      field: 'name',
      label: $t('crm.contract.field.name'),
    },
    {
      field: 'customerName',
      label: $t('crm.contract.field.customerName'),
    },
    {
      field: 'businessName',
      label: $t('crm.contract.field.businessName'),
    },
    {
      field: 'totalPrice',
      label: $t('crm.contract.field.totalPrice'),
      content: (data) => erpPriceInputFormatter(data?.totalPrice) as string,
    },
    {
      field: 'orderDate',
      label: $t('crm.contract.field.orderDate'),
      content: (data) => formatDateTime(data?.orderDate) as string,
    },
    {
      field: 'startTime',
      label: $t('crm.contract.field.startTime'),
      content: (data) => formatDateTime(data?.startTime) as string,
    },
    {
      field: 'endTime',
      label: $t('crm.contract.field.endTime'),
      content: (data) => formatDateTime(data?.endTime) as string,
    },
    {
      field: 'signContactName',
      label: $t('crm.contract.field.signContactName'),
    },
    {
      field: 'signUserName',
      label: $t('crm.contract.field.signUserName'),
    },
    {
      field: 'remark',
      label: $t('crm.contract.field.remark'),
    },
    {
      field: 'auditStatus',
      label: $t('crm.contract.field.auditStatus'),
      content: (data) =>
        h(I18nDictTag, {
          type: DICT_TYPE.CRM_AUDIT_STATUS,
          value: data?.auditStatus,
        }),
    },
  ];
}

export function useDetailListColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      title: $t('crm.contract.field.no'),
      field: 'no',
      minWidth: 150,
      fixed: 'left',
    },
    {
      title: $t('crm.contract.field.name'),
      field: 'name',
      minWidth: 150,
      fixed: 'left',
      slots: { default: 'name' },
    },
    {
      title: $t('crm.contract.field.totalPrice'),
      field: 'totalPrice',
      minWidth: 150,
      formatter: 'formatAmount2',
    },
    {
      title: $t('crm.contract.field.startTime'),
      field: 'startTime',
      minWidth: 150,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.contract.field.endTime'),
      field: 'endTime',
      minWidth: 150,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.contract.field.totalReceivablePrice'),
      field: 'totalReceivablePrice',
      minWidth: 150,
      formatter: 'formatAmount2',
    },
    {
      title: $t('crm.contract.field.unpaidPrice'),
      field: 'unpaidPrice',
      minWidth: 150,
      formatter: ({ row }) => {
        return floatToFixed2(row.totalPrice - row.totalReceivablePrice);
      },
    },
    {
      title: $t('crm.contract.field.ownerUserName'),
      field: 'ownerUserName',
      minWidth: 150,
    },
    {
      title: $t('crm.contract.field.ownerUserDeptName'),
      field: 'ownerUserDeptName',
      minWidth: 150,
    },
    {
      title: $t('crm.contract.field.createTime'),
      field: 'createTime',
      minWidth: 150,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.contract.field.creatorName'),
      field: 'creatorName',
      minWidth: 150,
    },
    {
      title: $t('crm.contract.field.remark'),
      field: 'remark',
      minWidth: 150,
    },
    {
      title: $t('crm.contract.field.auditStatus'),
      field: 'auditStatus',
      fixed: 'right',
      minWidth: 100,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_AUDIT_STATUS },
      },
    },
  ];
}
