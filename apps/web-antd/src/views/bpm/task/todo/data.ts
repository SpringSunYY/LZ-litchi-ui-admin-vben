import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { getCategorySimpleList } from '#/api/bpm/category';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('bpm.task.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('bpm.task.field.name')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'processDefinitionId',
      label: $t('bpm.task.field.processDefinitionId'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('bpm.task.field.processDefinitionId'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'category',
      label: $t('bpm.task.field.category'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('bpm.task.field.category'),
        ]),
        allowClear: true,
        api: getCategorySimpleList,
        labelField: 'name',
        valueField: 'code',
      },
    },
    {
      fieldName: 'status',
      label: $t('bpm.task.field.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(
          DICT_TYPE.BPM_PROCESS_INSTANCE_STATUS,
          'number',
        ),
        placeholder: $t('ui.placeholder.select', [$t('bpm.task.field.status')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'createTime',
      label: $t('bpm.task.field.taskTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'processInstance.name',
      title: $t('bpm.task.todo.field.process'),
      minWidth: 200,
      fixed: 'left',
    },
    {
      field: 'processInstance.summary',
      title: $t('bpm.task.todo.field.summary'),
      minWidth: 200,
      formatter: ({ cellValue }) => {
        return cellValue && cellValue.length > 0
          ? cellValue
              .map((item: any) => `${item.key} : ${item.value}`)
              .join('\n')
          : '-';
      },
    },
    {
      field: 'processInstance.startUser.nickname',
      title: $t('bpm.task.todo.field.startUser'),
      minWidth: 120,
    },
    {
      field: 'name',
      title: $t('bpm.task.todo.field.currentTask'),
      minWidth: 180,
    },
    {
      field: 'createTime',
      title: $t('bpm.task.field.taskTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'processInstanceId',
      title: $t('bpm.task.todo.field.processInstanceId'),
      minWidth: 280,
    },
    {
      field: 'id',
      title: $t('bpm.task.todo.field.taskId'),
      minWidth: 280,
    },
    {
      title: $t('common.operation'),
      width: 120,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
