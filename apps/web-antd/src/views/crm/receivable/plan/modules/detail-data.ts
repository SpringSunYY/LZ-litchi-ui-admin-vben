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
      label: $t('crm.receivablePlan.field.customerName'),
    },
    {
      field: 'totalPrice',
      label: $t('crm.receivablePlan.field.totalPrice'),
      content: (data) => erpPriceInputFormatter(data.totalPrice),
    },
    {
      field: 'returnTime',
      label: $t('crm.receivablePlan.field.returnTime'),
      content: (data) => formatDateTime(data?.returnTime) as string,
    },
    {
      field: 'price',
      label: $t('crm.receivablePlan.field.price'),
      content: (data) => erpPriceInputFormatter(data.price),
    },
    {
      field: 'ownerUserName',
      label: $t('crm.receivablePlan.field.ownerUserName'),
    },
  ];
}

/** 详情页的基础字段 */
export function useDetailBaseSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'no',
      label: $t('crm.receivablePlan.field.period'),
    },
    {
      field: 'customerName',
      label: $t('crm.receivablePlan.field.customerName'),
    },
    {
      field: 'contract',
      label: $t('crm.receivablePlan.field.contractNo'),
      content: (data) => data?.contract?.no,
    },
    {
      field: 'returnTime',
      label: $t('crm.receivablePlan.field.returnTime'),
      content: (data) => formatDateTime(data?.returnTime) as string,
    },
    {
      field: 'price',
      label: $t('crm.receivablePlan.field.price'),
      content: (data) => erpPriceInputFormatter(data.price),
    },
    {
      field: 'returnType',
      label: $t('crm.receivablePlan.field.returnType'),
      content: (data) =>
        h(I18nDictTag, {
          type: DICT_TYPE.CRM_RECEIVABLE_RETURN_TYPE,
          value: data?.returnType,
        }),
    },
    {
      field: 'remark',
      label: $t('crm.receivablePlan.field.remark'),
    },
  ];
}

/** 详情列表的字段 */
export function useDetailListColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      title: $t('crm.receivablePlan.field.customerName'),
      field: 'customerName',
      minWidth: 150,
    },
    {
      title: $t('crm.receivablePlan.field.contractNo'),
      field: 'contractNo',
      minWidth: 150,
    },
    {
      title: $t('crm.receivablePlan.field.period'),
      field: 'period',
      minWidth: 150,
    },
    {
      title: $t('crm.receivablePlan.field.priceUnit'),
      field: 'price',
      minWidth: 150,
      formatter: 'formatAmount2',
    },
    {
      title: $t('crm.receivablePlan.field.returnTime'),
      field: 'returnTime',
      minWidth: 150,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.receivablePlan.field.remindDays'),
      field: 'remindDays',
      minWidth: 150,
    },
    {
      title: $t('crm.receivablePlan.field.remindTime'),
      field: 'remindTime',
      minWidth: 150,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.receivablePlan.field.ownerUserName'),
      field: 'ownerUserName',
      minWidth: 150,
    },
    {
      title: $t('crm.receivablePlan.field.remark'),
      field: 'remark',
      minWidth: 150,
    },
    {
      title: $t('common.operation'),
      field: 'actions',
      width: 240,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
