import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('crm.customerPool.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.customerPool.field.name'),
        ]),
      },
    },
    {
      fieldName: 'mobile',
      label: $t('crm.customerPool.field.mobile'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.customerPool.field.mobile'),
        ]),
      },
    },
    {
      fieldName: 'industryId',
      label: $t('crm.customerPool.field.industryId'),
      component: 'I18nSelect',
      componentProps: {
        options: getDictOptions(DICT_TYPE.CRM_CUSTOMER_INDUSTRY, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('crm.customerPool.field.industryId'),
        ]),
      },
    },
    {
      fieldName: 'level',
      label: $t('crm.customerPool.field.level'),
      component: 'I18nSelect',
      componentProps: {
        options: getDictOptions(DICT_TYPE.CRM_CUSTOMER_LEVEL, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('crm.customerPool.field.level'),
        ]),
      },
    },
    {
      fieldName: 'source',
      label: $t('crm.customerPool.field.source'),
      component: 'I18nSelect',
      componentProps: {
        options: getDictOptions(DICT_TYPE.CRM_CUSTOMER_SOURCE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('crm.customerPool.field.source'),
        ]),
      },
    },
  ];
}

export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      title: $t('crm.customerPool.field.name'),
      field: 'name',
      minWidth: 160,
      fixed: 'left',
      slots: { default: 'name' },
    },
    {
      title: $t('crm.customerPool.field.source'),
      field: 'source',
      minWidth: 100,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_CUSTOMER_SOURCE },
      },
    },
    {
      title: $t('crm.customerPool.field.mobile'),
      field: 'mobile',
      minWidth: 120,
    },
    {
      title: $t('crm.customerPool.field.telephone'),
      field: 'telephone',
      minWidth: 120,
    },
    {
      title: $t('crm.customerPool.field.email'),
      field: 'email',
      minWidth: 140,
    },
    {
      title: $t('crm.customerPool.field.level'),
      field: 'level',
      minWidth: 135,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_CUSTOMER_LEVEL },
      },
    },
    {
      title: $t('crm.customerPool.field.industryId'),
      field: 'industryId',
      minWidth: 100,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_CUSTOMER_INDUSTRY },
      },
    },
    {
      title: $t('crm.customerPool.field.contactNextTime'),
      field: 'contactNextTime',
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.customerPool.field.remark'),
      field: 'remark',
      minWidth: 200,
    },
    {
      title: $t('crm.customerPool.field.dealStatus'),
      field: 'dealStatus',
      minWidth: 80,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.INFRA_BOOLEAN_STRING },
      },
    },
    {
      title: $t('crm.customerPool.field.contactLastTime'),
      field: 'contactLastTime',
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.customerPool.field.contactLastContent'),
      field: 'contactLastContent',
      minWidth: 200,
    },
    {
      title: $t('crm.customerPool.field.updateTime'),
      field: 'updateTime',
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.customerPool.field.createTime'),
      field: 'createTime',
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.customerPool.field.creatorName'),
      field: 'creatorName',
      minWidth: 100,
    },
  ];
}
