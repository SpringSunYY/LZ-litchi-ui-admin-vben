import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

/** 销售漏斗-商机汇总表格列 */
export const funnelColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  {
    field: 'endStatus',
    title: $t('crm.funnel.endStatus'),
    width: 200,
    cellRender: {
      name: 'CellDict',
      props: { type: DICT_TYPE.CRM_BUSINESS_END_STATUS_TYPE },
    },
  },
  {
    field: 'businessCount',
    title: $t('crm.common.businessCount'),
    minWidth: 200,
  },
  {
    field: 'totalPrice',
    title: $t('crm.common.businessAmount'),
    minWidth: 200,
    formatter: 'formatAmount2',
  },
];

/** 商机分析-表格列 */
export const businessColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  {
    field: 'name',
    title: $t('crm.funnel.businessName'),
    minWidth: 180,
  },
  {
    field: 'customerName',
    title: $t('crm.common.customerName'),
    minWidth: 180,
  },
  {
    field: 'statusTypeName',
    title: $t('crm.common.businessStage'),
    minWidth: 120,
  },
  {
    field: 'ownerUserName',
    title: $t('crm.common.employee'),
    minWidth: 120,
  },
  {
    field: 'totalProductPrice',
    title: $t('crm.funnel.totalProductPrice'),
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'discountPercent',
    title: $t('crm.funnel.discountPercent'),
    minWidth: 120,
    formatter: ({ cellValue }) => (cellValue ? `${cellValue}%` : '-'),
  },
  {
    field: 'totalPrice',
    title: $t('crm.common.businessAmount'),
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'dealTime',
    title: $t('crm.contract.orderDate'),
    minWidth: 160,
    formatter: 'formatDate',
  },
  {
    field: 'creatorName',
    title: $t('crm.funnel.creator'),
    minWidth: 120,
  },
];

/** 商机转化率分析-表格列 */
export const inversionRateColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  {
    field: 'name',
    title: $t('crm.funnel.businessName'),
    minWidth: 180,
  },
  {
    field: 'customerName',
    title: $t('crm.common.customerName'),
    minWidth: 180,
  },
  {
    field: 'statusTypeName',
    title: $t('crm.common.businessStage'),
    minWidth: 120,
  },
  {
    field: 'ownerUserName',
    title: $t('crm.common.employee'),
    minWidth: 120,
  },
  {
    field: 'totalProductPrice',
    title: $t('crm.funnel.totalProductPrice'),
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'discountPercent',
    title: $t('crm.funnel.discountPercent'),
    minWidth: 120,
    formatter: ({ cellValue }) => (cellValue ? `${cellValue}%` : '-'),
  },
  {
    field: 'totalPrice',
    title: $t('crm.common.businessAmount'),
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'dealTime',
    title: $t('crm.contract.orderDate'),
    minWidth: 160,
    formatter: 'formatDate',
  },
  {
    field: 'creatorName',
    title: $t('crm.funnel.creator'),
    minWidth: 120,
  },
];
