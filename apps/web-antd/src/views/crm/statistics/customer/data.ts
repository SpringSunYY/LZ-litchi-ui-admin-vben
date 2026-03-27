import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

/** 客户总量-表格列 */
export const customerSummaryColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'ownerUserName', title: $t('crm.common.employee'), minWidth: 120 },
  {
    field: 'customerCreateCount',
    title: $t('crm.customer.newCustomerCount'),
    minWidth: 100,
  },
  {
    field: 'customerDealCount',
    title: $t('crm.customer.dealCustomerCount'),
    minWidth: 100,
  },
  {
    field: 'dealRate',
    title: $t('crm.customer.dealRate'),
    minWidth: 100,
    formatter: ({ cellValue }) => `${cellValue}%`,
  },
  {
    field: 'contractPrice',
    title: $t('crm.portrait.totalPrice'),
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'receivablePrice',
    title: $t('crm.portrait.receivablePrice'),
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'receivableNotPrice',
    title: $t('crm.portrait.receivableNotPrice'),
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'receivableRate',
    title: $t('crm.customer.receivableRate'),
    minWidth: 100,
    formatter: ({ cellValue }) => `${cellValue}%`,
  },
];

/** 公海汇总-表格列 */
export const poolSummaryColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'ownerUserName', title: $t('crm.common.employee'), minWidth: 120 },
  {
    field: 'customerPutCount',
    title: $t('crm.customer.putIntoPoolCount'),
    minWidth: 100,
  },
  {
    field: 'customerTakeCount',
    title: $t('crm.customer.takeFromPoolCount'),
    minWidth: 100,
  },
];

/** 跟进汇总-表格列 */
export const followUpSummaryColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'ownerUserName', title: $t('crm.common.employee'), minWidth: 120 },
  {
    field: 'followUpRecordCount',
    title: $t('crm.customer.followUpCount'),
    minWidth: 100,
  },
  {
    field: 'followUpCustomerCount',
    title: $t('crm.customer.followUpCustomerCount'),
    minWidth: 100,
  },
];

/** 跟进方式-表格列 */
export const followUpTypeColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  {
    field: 'followUpType',
    title: $t('crm.customer.followUpType'),
    minWidth: 120,
    cellRender: {
      name: 'CellDict',
      props: { type: DICT_TYPE.CRM_FOLLOW_UP_TYPE },
    },
  },
  {
    field: 'followUpRecordCount',
    title: $t('crm.customer.followUpCount'),
    minWidth: 100,
  },
  {
    field: 'portion',
    title: $t('crm.customer.followUpTypeDistribution'),
    minWidth: 100,
    formatter: ({ cellValue }) => `${cellValue}%`,
  },
];

/** 成交周期(按地区)-表格列 */
export const dealCycleByAreaColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'areaName', title: $t('crm.portrait.areaName'), minWidth: 120 },
  {
    field: 'customerDealCount',
    title: $t('crm.customer.dealCustomerCount'),
    minWidth: 100,
  },
  {
    field: 'customerDealCycle',
    title: $t('crm.customer.dealCycleDays'),
    minWidth: 100,
  },
];

/** 成交周期(按员工)-表格列 */
export const dealCycleByUserColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'ownerUserName', title: $t('crm.common.employee'), minWidth: 120 },
  {
    field: 'customerDealCount',
    title: $t('crm.customer.dealCustomerCount'),
    minWidth: 100,
  },
  {
    field: 'customerDealCycle',
    title: $t('crm.customer.dealCycleDays'),
    minWidth: 100,
  },
];

/** 成交周期(按产品)-表格列 */
export const dealCycleByProductColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'productName', title: $t('crm.common.productName'), minWidth: 120 },
  {
    field: 'customerDealCount',
    title: $t('crm.customer.dealCustomerCount'),
    minWidth: 100,
  },
  {
    field: 'customerDealCycle',
    title: $t('crm.customer.dealCycleDays'),
    minWidth: 100,
  },
];

/** 客户转化-表格列 */
export const conversionStatColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  {
    field: 'customerName',
    title: $t('crm.common.customerName'),
    minWidth: 150,
  },
  { field: 'contractName', title: $t('crm.contract.name'), minWidth: 150 },
  {
    field: 'totalPrice',
    title: $t('crm.contract.totalPrice'),
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'receivablePrice',
    title: $t('crm.contract.receivablePrice'),
    minWidth: 120,
    formatter: 'formatAmount2',
  },
  {
    field: 'orderDate',
    title: $t('crm.contract.orderDate'),
    minWidth: 160,
    formatter: 'formatDateTime',
  },
  { field: 'ownerUserName', title: $t('crm.common.ownerUser'), minWidth: 100 },
];
