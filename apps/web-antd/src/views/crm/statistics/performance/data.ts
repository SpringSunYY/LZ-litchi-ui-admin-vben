import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';

/** 合同数量统计-表格列 */
export const contractCountColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'time', title: $t('crm.common.date'), minWidth: 100 },
  {
    field: 'currentMonthCount',
    title: $t('crm.statistics.performance.currentMonthCount'),
    minWidth: 120,
  },
  {
    field: 'lastMonthCount',
    title: $t('crm.statistics.performance.lastMonthCount'),
    minWidth: 120,
  },
  {
    field: 'lastYearCount',
    title: $t('crm.statistics.performance.lastYearCount'),
    minWidth: 120,
  },
  {
    field: 'monthChainRate',
    title: $t('crm.statistics.performance.monthChainRate'),
    minWidth: 120,
    formatter: ({ cellValue }) =>
      cellValue === 'NULL' ? '-' : `${cellValue}%`,
  },
  {
    field: 'yearChainRate',
    title: $t('crm.statistics.performance.yearChainRate'),
    minWidth: 120,
    formatter: ({ cellValue }) =>
      cellValue === 'NULL' ? '-' : `${cellValue}%`,
  },
];

/** 合同金额统计-表格列 */
export const contractPriceColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'time', title: $t('crm.common.date'), minWidth: 100 },
  {
    field: 'currentMonthCount',
    title: $t('crm.statistics.performance.currentMonthAmount'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
  {
    field: 'lastMonthCount',
    title: $t('crm.statistics.performance.lastMonthAmount'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
  {
    field: 'lastYearCount',
    title: $t('crm.statistics.performance.lastYearAmount'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
  {
    field: 'monthChainRate',
    title: $t('crm.statistics.performance.monthChainRate'),
    minWidth: 120,
    formatter: ({ cellValue }) =>
      cellValue === 'NULL' ? '-' : `${cellValue}%`,
  },
  {
    field: 'yearChainRate',
    title: $t('crm.statistics.performance.yearChainRate'),
    minWidth: 120,
    formatter: ({ cellValue }) =>
      cellValue === 'NULL' ? '-' : `${cellValue}%`,
  },
];

/** 回款金额统计-表格列 */
export const receivablePriceColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  { field: 'time', title: $t('crm.common.date'), minWidth: 100 },
  {
    field: 'currentMonthCount',
    title: $t('crm.statistics.performance.currentMonthReceivable'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
  {
    field: 'lastMonthCount',
    title: $t('crm.statistics.performance.lastMonthReceivable'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
  {
    field: 'lastYearCount',
    title: $t('crm.statistics.performance.lastYearReceivable'),
    minWidth: 150,
    formatter: 'formatAmount2',
  },
  {
    field: 'monthChainRate',
    title: $t('crm.statistics.performance.monthChainRate'),
    minWidth: 120,
    formatter: ({ cellValue }) =>
      cellValue === 'NULL' ? '-' : `${cellValue}%`,
  },
  {
    field: 'yearChainRate',
    title: $t('crm.statistics.performance.yearChainRate'),
    minWidth: 120,
    formatter: ({ cellValue }) =>
      cellValue === 'NULL' ? '-' : `${cellValue}%`,
  },
];
