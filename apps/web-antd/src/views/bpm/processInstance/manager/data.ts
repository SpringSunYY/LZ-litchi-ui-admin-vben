import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { BpmProcessInstanceApi } from '#/api/bpm/processInstance';

import { h } from 'vue';

import { Button } from 'ant-design-vue';

import { getCategorySimpleList } from '#/api/bpm/category';
import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'startUserId',
      label: $t('bpm.processInstance.field.startUser'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('bpm.processInstance.field.startUser'),
        ]),
        allowClear: true,
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
      },
    },
    {
      fieldName: 'name',
      label: $t('bpm.processInstance.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('bpm.processInstance.field.name'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'processDefinitionId',
      label: $t('bpm.processInstance.field.processDefinition'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('bpm.processInstance.field.processDefinition'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'category',
      label: $t('bpm.processInstance.field.category'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('bpm.processInstance.field.category'),
        ]),
        allowClear: true,
        api: getCategorySimpleList,
        labelField: 'name',
        valueField: 'code',
      },
    },
    {
      fieldName: 'status',
      label: $t('bpm.processInstance.field.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(
          DICT_TYPE.BPM_PROCESS_INSTANCE_STATUS,
          'number',
        ),
        placeholder: $t('ui.placeholder.select', [
          $t('bpm.processInstance.field.status'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'createTime',
      label: $t('bpm.processInstance.field.startTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(
  onTaskClick: (task: BpmProcessInstanceApi.Task) => void,
): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'name',
      title: $t('bpm.processInstance.field.name'),
      minWidth: 200,
      fixed: 'left',
    },

    {
      field: 'categoryName',
      title: $t('bpm.processInstance.field.categoryName'),
      minWidth: 120,
      fixed: 'left',
    },

    {
      field: 'startUser.nickname',
      title: $t('bpm.processInstance.field.startUser'),
      minWidth: 120,
    },

    {
      field: 'startUser.deptName',
      title: $t('bpm.processInstance.field.deptName'),
      minWidth: 120,
    },

    {
      field: 'status',
      title: $t('bpm.processInstance.field.status'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.BPM_PROCESS_INSTANCE_STATUS },
      },
    },

    {
      field: 'startTime',
      title: $t('bpm.processInstance.field.startTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'endTime',
      title: $t('bpm.processInstance.field.endTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'durationInMillis',
      title: $t('bpm.processInstance.field.duration'),
      minWidth: 180,
      formatter: 'formatPast2',
    },

    {
      field: 'tasks',
      title: $t('bpm.processInstance.field.tasks'),
      minWidth: 320,
      slots: {
        default: ({ row }) => {
          if (!row?.tasks?.length) return '-';

          return row.tasks.map((task: BpmProcessInstanceApi.Task) =>
            h(
              Button,
              {
                type: 'link',
                size: 'small',
                onClick: () => onTaskClick(task),
              },
              { default: () => task.name },
            ),
          );
        },
      },
    },

    {
      field: 'id',
      title: $t('bpm.processInstance.field.id'),
      minWidth: 320,
    },
    {
      title: $t('common.operation'),
      width: 180,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
