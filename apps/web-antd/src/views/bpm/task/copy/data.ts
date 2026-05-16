import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import { getRangePickerDefaultProps } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('bpm.task.copy.field.processName'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('bpm.task.copy.field.processName'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'createTime',
      label: $t('bpm.task.copy.field.copyTime'),
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
      field: 'processInstanceName',
      title: $t('bpm.task.copy.field.processName'),
      minWidth: 200,
      fixed: 'left',
    },
    {
      field: 'summary',
      title: $t('bpm.task.copy.field.summary'),
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
      field: 'startUser.nickname',
      title: $t('bpm.task.copy.field.processStarter'),
      minWidth: 120,
    },
    {
      field: 'processInstanceStartTime',
      title: $t('bpm.task.copy.field.processStartTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'activityName',
      title: $t('bpm.task.copy.field.copyNode'),
      minWidth: 180,
    },
    {
      field: 'createUser.nickname',
      title: $t('bpm.task.copy.field.copier'),
      minWidth: 180,
      formatter: ({ cellValue }) => {
        return cellValue || '-';
      },
    },
    {
      field: 'reason',
      title: $t('bpm.task.copy.field.copyReason'),
      minWidth: 180,
    },
    {
      field: 'createTime',
      title: $t('bpm.task.copy.field.copyTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 120,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
