import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { DescriptionItemSchema } from '#/components/description';

import { erpPriceInputFormatter, formatDateTime } from '@vben/utils';

import { $t } from '#/locales';

/** 详情页的字段 */
export function useDetailSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'customerName',
      label: $t('crm.business.field.customerName'),
    },
    {
      field: 'totalPrice',
      label: $t('crm.business.field.totalPrice'),
      content: (data) => erpPriceInputFormatter(data.totalPrice),
    },
    {
      field: 'statusTypeName',
      label: $t('crm.business.field.statusTypeName'),
    },
    {
      field: 'ownerUserName',
      label: $t('crm.business.field.ownerUser'),
    },
    {
      field: 'createTime',
      label: $t('crm.business.field.createTime'),
      content: (data) => formatDateTime(data?.createTime) as string,
    },
  ];
}

/** 详情页的基础字段 */
export function useDetailBaseSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'name',
      label: $t('crm.business.field.name'),
    },
    {
      field: 'customerName',
      label: $t('crm.business.field.customerName'),
    },
    {
      field: 'totalPrice',
      label: $t('crm.business.field.totalPrice'),
      content: (data) => erpPriceInputFormatter(data.totalPrice),
    },
    {
      field: 'dealTime',
      label: $t('crm.business.field.dealTime'),
      content: (data) => formatDateTime(data?.dealTime) as string,
    },
    {
      field: 'contactNextTime',
      label: $t('crm.business.field.contactNextTime'),
      content: (data) => formatDateTime(data?.contactNextTime) as string,
    },
    {
      field: 'statusTypeName',
      label: $t('crm.business.field.statusTypeName'),
    },
    {
      field: 'statusName',
      label: $t('crm.business.field.statusName'),
    },
    {
      field: 'remark',
      label: $t('crm.business.field.remark'),
    },
  ];
}

/** 详情列表的字段 */
export function useDetailListColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      type: 'checkbox',
      width: 50,
      fixed: 'left',
    },
    {
      field: 'name',
      title: $t('crm.business.field.name'),
      fixed: 'left',
      slots: { default: 'name' },
    },
    {
      field: 'customerName',
      title: $t('crm.business.field.customerName'),
      fixed: 'left',
      slots: { default: 'customerName' },
    },
    {
      field: 'totalPrice',
      title: $t('crm.business.field.totalPrice'),
      formatter: 'formatAmount2',
    },
    {
      field: 'dealTime',
      title: $t('crm.business.field.dealTime'),
      formatter: 'formatDate',
    },
    {
      field: 'ownerUserName',
      title: $t('crm.business.field.ownerUser'),
    },
    {
      field: 'ownerUserDeptName',
      title: $t('crm.business.field.ownerUserDeptName'),
    },
    {
      field: 'statusTypeName',
      title: $t('crm.business.field.statusTypeName'),
      fixed: 'right',
    },
    {
      field: 'statusName',
      title: $t('crm.business.field.statusName'),
      fixed: 'right',
    },
  ];
}
