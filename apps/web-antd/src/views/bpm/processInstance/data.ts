import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { getCategorySimpleList } from '#/api/bpm/category';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    // {
    //   fieldName: 'startUserId',
    //   label: '发起人',
    //   component: 'ApiSelect',
    //   componentProps: {
    //     placeholder: '请选择发起人',
    //     allowClear: true,
    //     api: getSimpleUserList,
    //     labelField: 'nickname',
    //     valueField: 'id',
    //   },
    // },
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
    // 流程分类
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
    // 流程状态
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
    // 发起时间
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
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'name',
      title: $t('bpm.processInstance.field.name'),
      minWidth: 200,
      fixed: 'left',
    },
    {
      field: 'summary',
      title: $t('bpm.processInstance.field.summary'),
      minWidth: 200,
      slots: {
        default: 'slot-summary',
      },
    },

    {
      field: 'categoryName',
      title: $t('bpm.processInstance.field.categoryName'),
      minWidth: 120,
      fixed: 'left',
    },

    // 流程状态
    {
      field: 'status',
      title: $t('bpm.processInstance.field.status'),
      minWidth: 250,
      slots: {
        default: 'slot-status',
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
      title: $t('common.operation'),
      width: 180,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
