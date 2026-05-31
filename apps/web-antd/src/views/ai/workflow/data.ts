import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'code',
      label: $t('ai.workflow.field.code'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('ai.workflow.field.code')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'name',
      label: $t('ai.workflow.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('ai.workflow.field.name')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'status',
      label: $t('ai.workflow.field.status'),
      component: 'I18nSelect',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('ai.workflow.field.status'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'createTime',
      label: $t('ai.workflow.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('ai.workflow.field.id'),
      minWidth: 100,
    },
    {
      field: 'code',
      title: $t('ai.workflow.field.code'),
      minWidth: 150,
    },
    {
      field: 'name',
      title: $t('ai.workflow.field.name'),
      minWidth: 200,
    },
    {
      field: 'createTime',
      title: $t('ai.workflow.field.createTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'remark',
      title: $t('ai.workflow.field.remark'),
      minWidth: 200,
    },
    {
      field: 'status',
      title: $t('ai.workflow.field.status'),
      minWidth: 100,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      title: $t('common.operation'),
      width: 130,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
