import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';

/** 地区分布-表格列 */
export const areaColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  {
    field: 'areaName',
    title: $t('crm.statistics.portrait.areaName'),
    minWidth: 120,
  },
  {
    field: 'customerCount',
    title: $t('crm.statistics.portrait.customerCount'),
    minWidth: 100,
  },
  {
    field: 'customerPortion',
    title: $t('crm.statistics.portrait.areaPortion'),
    minWidth: 120,
  },
  {
    field: 'dealCount',
    title: $t('crm.statistics.portrait.dealCount'),
    minWidth: 100,
  },
  {
    field: 'dealPortion',
    title: $t('crm.statistics.portrait.dealPortion'),
    minWidth: 120,
  },
];

/** 级别分布-表格列 */
export const levelColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  {
    field: 'levelName',
    title: $t('crm.statistics.portrait.level'),
    minWidth: 120,
  },
  {
    field: 'customerCount',
    title: $t('crm.statistics.portrait.customerCount'),
    minWidth: 100,
  },
  {
    field: 'levelPortion',
    title: $t('crm.statistics.portrait.levelPortion'),
    minWidth: 120,
  },
  {
    field: 'dealCount',
    title: $t('crm.statistics.portrait.dealCount'),
    minWidth: 100,
  },
  {
    field: 'dealPortion',
    title: $t('crm.statistics.portrait.dealPortion'),
    minWidth: 120,
  },
];

/** 来源分布-表格列 */
export const sourceColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  {
    field: 'sourceName',
    title: $t('crm.statistics.portrait.source'),
    minWidth: 120,
  },
  {
    field: 'customerCount',
    title: $t('crm.statistics.portrait.customerCount'),
    minWidth: 100,
  },
  {
    field: 'sourcePortion',
    title: $t('crm.statistics.portrait.sourcePortion'),
    minWidth: 120,
  },
  {
    field: 'dealCount',
    title: $t('crm.statistics.portrait.dealCount'),
    minWidth: 100,
  },
  {
    field: 'dealPortion',
    title: $t('crm.statistics.portrait.dealPortion'),
    minWidth: 120,
  },
];

/** 行业分布-表格列 */
export const industryColumns: VxeTableGridOptions['columns'] = [
  { type: 'seq', width: 60, title: '#' },
  {
    field: 'industryName',
    title: $t('crm.statistics.portrait.industry'),
    minWidth: 120,
  },
  {
    field: 'customerCount',
    title: $t('crm.statistics.portrait.customerCount'),
    minWidth: 100,
  },
  {
    field: 'industryPortion',
    title: $t('crm.statistics.portrait.industryPortion'),
    minWidth: 120,
  },
  {
    field: 'dealCount',
    title: $t('crm.statistics.portrait.dealCount'),
    minWidth: 100,
  },
  {
    field: 'dealPortion',
    title: $t('crm.statistics.portrait.dealPortion'),
    minWidth: 120,
  },
];
