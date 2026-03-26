import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';

/** 合同数量统计-表格列 */
export const contractCountColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'time', title: $t('common.date'), minWidth: 100 },
  {
    field: 'currentMonthCount',
    title: $t('crm.performance.currentMonthCount'),
    minWidth: 120,
  },
  {
    field: 'lastMonthCount',
    title: $t('crm.performance.lastMonthCount'),
    minWidth: 120,
  },
  {
    field: 'lastYearCount',
    title: $t('crm.performance.lastYearCount'),
    minWidth: 120,
  },
  {
    field: 'monthChainRate',
    title: $t('crm.performance.monthChainRate'),
    minWidth: 120,
    formatter: ({ cellValue }) => (cellValue !== 'NULL' ? `${cellValue}%` : '-'),
  },
  {
    field: 'yearChainRate',
    title: $t('crm.performance.yearChainRate'),
    minWidth: 120,
    formatter: ({ cellValue }) => (cellValue !== 'NULL' ? `${cellValue}%` : '-'),
  },
];

/** 合同金额统计-表格列 */
export const contractPriceColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'time', title: $t('common.date'), minWidth: 100 },
  {
    field: 'currentMonthCount',
    title: $t('crm.performance.currentMonthAmount'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
  {
    field: 'lastMonthCount',
    title: $t('crm.performance.lastMonthAmount'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
  {
    field: 'lastYearCount',
    title: $t('crm.performance.lastYearAmount'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
  {
    field: 'monthChainRate',
    title: $t('crm.performance.monthChainRate'),
    minWidth: 120,
    formatter: ({ cellValue }) => (cellValue !== 'NULL' ? `${cellValue}%` : '-'),
  },
  {
    field: 'yearChainRate',
    title: $t('crm.performance.yearChainRate'),
    minWidth: 120,
    formatter: ({ cellValue }) => (cellValue !== 'NULL' ? `${cellValue}%` : '-'),
  },
];

/** 回款金额统计-表格列 */
export const receivablePriceColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'time', title: $t('common.date'), minWidth: 100 },
  {
    field: 'currentMonthCount',
    title: $t('crm.performance.currentMonthReceivable'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
  {
    field: 'lastMonthCount',
    title: $t('crm.performance.lastMonthReceivable'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
  {
    field: 'lastYearCount',
    title: $t('crm.performance.lastYearReceivable'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
  {
    field: 'monthChainRate',
    title: $t('crm.performance.monthChainRate'),
    minWidth: 120,
    formatter: ({ cellValue }) => (cellValue !== 'NULL' ? `${cellValue}%` : '-'),
  },
  {
    field: 'yearChainRate',
    title: $t('crm.performance.yearChainRate'),
    minWidth: 120,
    formatter: ({ cellValue }) => (cellValue !== 'NULL' ? `${cellValue}%` : '-'),
  },
];
