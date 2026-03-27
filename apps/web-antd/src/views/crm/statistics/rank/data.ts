import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';

/** 通用排行-表格列 (签约合同数、产品销量、新增客户数、新增联系人数、跟进次数、跟进客户数) */
export const rankColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'nickname', title: $t('crm.common.employee'), minWidth: 120 },
  { field: 'deptName', title: $t('crm.common.department'), minWidth: 150 },
  { field: 'count', title: $t('crm.rank.count'), minWidth: 120 },
];

/** 合同金额排行-表格列 */
export const contractPriceRankColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'nickname', title: $t('crm.common.employee'), minWidth: 120 },
  { field: 'deptName', title: $t('crm.common.department'), minWidth: 150 },
  {
    field: 'count',
    title: $t('crm.rank.contractPrice'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
];

/** 回款金额排行-表格列 */
export const receivablePriceRankColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'nickname', title: $t('crm.common.employee'), minWidth: 120 },
  { field: 'deptName', title: $t('crm.common.department'), minWidth: 150 },
  {
    field: 'count',
    title: $t('crm.rank.receivablePrice'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
];

/** 签约合同排行-表格列 */
export const contractCountRankColumns: VxeTableGridOptions['columns'] =
  rankColumns;

/** 产品销量排行-表格列 */
export const productSalesRankColumns: VxeTableGridOptions['columns'] =
  rankColumns;

/** 新增客户数排行-表格列 */
export const customerCountRankColumns: VxeTableGridOptions['columns'] =
  rankColumns;

/** 新增联系人数排行-表格列 */
export const contactsCountRankColumns: VxeTableGridOptions['columns'] =
  rankColumns;

/** 跟进次数排行-表格列 */
export const followCountRankColumns: VxeTableGridOptions['columns'] =
  rankColumns;

/** 跟进客户数排行-表格列 */
export const followCustomerCountRankColumns: VxeTableGridOptions['columns'] =
  rankColumns;
