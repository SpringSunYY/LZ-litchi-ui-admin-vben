import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import { DICT_TYPE, getRangePickerDefaultProps } from '#/utils';

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
      title: $t('bpm.task.manager.field.process'),
      minWidth: 200,
      fixed: 'left',
    },
    {
      field: 'processInstance.startUser.nickname',
      title: $t('bpm.task.manager.field.startUser'),
      minWidth: 120,
    },
    {
      field: 'createTime',
      title: $t('bpm.task.manager.field.startTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'name',
      title: $t('bpm.task.manager.field.currentTask'),
      minWidth: 180,
    },
    {
      field: 'createTime',
      title: $t('bpm.task.manager.field.taskStartTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'endTime',
      title: $t('bpm.task.manager.field.taskEndTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'assigneeUser.nickname',
      title: $t('bpm.task.manager.field.approver'),
      minWidth: 180,
    },
    {
      field: 'status',
      title: $t('bpm.task.manager.field.approvalStatus'),
      minWidth: 180,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.BPM_TASK_STATUS },
      },
    },
    {
      field: 'reason',
      title: $t('bpm.task.manager.field.approvalSuggestion'),
      minWidth: 180,
    },
    {
      field: 'durationInMillis',
      title: $t('bpm.task.manager.field.duration'),
      minWidth: 180,
      formatter: 'formatPast2',
    },
    {
      field: 'processInstanceId',
      title: $t('bpm.task.manager.field.processInstanceId'),
      minWidth: 280,
    },
    {
      field: 'id',
      title: $t('bpm.task.manager.field.taskId'),
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
