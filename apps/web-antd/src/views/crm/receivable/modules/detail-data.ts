import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { DescriptionItemSchema } from '#/components/description';

import { h } from 'vue';

import { erpPriceInputFormatter, formatDateTime } from '@vben/utils';

import I18nDictTag from '#/components/i18n/i18n-dict-tag/i18n-dict-tag.vue';
import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

/** 详情页的字段 */
export function useDetailSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'customerName',
      label: $t('crm.receivable.field.customerName'),
    },
    {
      field: 'totalPrice',
      label: $t('crm.receivable.field.totalPrice'),
      content: (data) => erpPriceInputFormatter(data.totalPrice),
    },
    {
      field: 'returnTime',
      label: $t('crm.receivable.field.returnTime'),
      content: (data) => formatDateTime(data?.returnTime) as string,
    },
    {
      field: 'price',
      label: $t('crm.receivable.field.price'),
      content: (data) => erpPriceInputFormatter(data.price),
    },
    {
      field: 'ownerUserName',
      label: $t('crm.receivable.field.ownerUserName'),
    },
  ];
}

/** 详情页的基础字段 */
export function useDetailBaseSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'no',
      label: $t('crm.receivable.field.no'),
    },
    {
      field: 'customerName',
      label: $t('crm.receivable.field.customerName'),
    },
    {
      field: 'contract',
      label: $t('crm.receivable.field.contract'),
      content: (data) => data?.contract?.no,
    },
    {
      field: 'returnTime',
      label: $t('crm.receivable.field.returnTime'),
      content: (data) => formatDateTime(data?.returnTime) as string,
    },
    {
      field: 'price',
      label: $t('crm.receivable.field.price'),
      content: (data) => erpPriceInputFormatter(data.price),
    },
    {
      field: 'returnType',
      label: $t('crm.receivable.field.returnType'),
      content: (data) =>
        h(I18nDictTag, {
          type: DICT_TYPE.CRM_RECEIVABLE_RETURN_TYPE,
          value: data?.returnType,
        }),
    },
    {
      field: 'remark',
      label: $t('crm.receivable.field.remark'),
    },
  ];
}

/** 详情列表的字段 */
export function useDetailListColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      title: $t('crm.receivable.field.no'),
      field: 'no',
      minWidth: 150,
      fixed: 'left',
    },
    {
      title: $t('crm.receivable.field.customerName'),
      field: 'customerName',
      minWidth: 150,
    },
    {
      title: $t('crm.receivable.field.contract'),
      field: 'contract.no',
      minWidth: 150,
    },
    {
      title: $t('crm.receivable.field.returnTime'),
      field: 'returnTime',
      minWidth: 150,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.receivable.field.priceUnit'),
      field: 'price',
      minWidth: 150,
      formatter: 'formatAmount2',
    },
    {
      title: $t('crm.receivable.field.returnType'),
      field: 'returnType',
      minWidth: 150,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_RECEIVABLE_RETURN_TYPE },
      },
    },
    {
      title: $t('crm.receivable.field.ownerUserName'),
      field: 'ownerUserName',
      minWidth: 150,
    },
    {
      title: $t('crm.receivable.field.remark'),
      field: 'remark',
      minWidth: 150,
    },
    {
      title: $t('crm.receivable.field.auditStatus'),
      field: 'auditStatus',
      minWidth: 100,
      fixed: 'right',
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_AUDIT_STATUS },
      },
    },
    {
      title: $t('common.operation'),
      field: 'actions',
      width: 130,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
