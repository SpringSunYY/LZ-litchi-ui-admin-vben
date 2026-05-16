import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { z } from '#/adapter/form';
import { $t } from '#/locales';
import { CommonStatusEnum, DICT_TYPE, getDictOptions } from '#/utils';

export const EVENT_EXECUTION_OPTIONS = [
  {
    label: 'start',
    value: 'start',
  },
  {
    label: 'end',
    value: 'end',
  },
];

export const EVENT_OPTIONS = [
  { label: 'create', value: 'create' },
  { label: 'assignment', value: 'assignment' },
  { label: 'complete', value: 'complete' },
  { label: 'delete', value: 'delete' },
  { label: 'update', value: 'update' },
  { label: 'timeout', value: 'timeout' },
];

/** 新增/修改的表单 */
export function useFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'id',
      component: 'Input',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'name',
      label: $t('bpm.processListener.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('bpm.processListener.field.name'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'status',
      label: $t('bpm.processListener.field.status'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
    {
      fieldName: 'type',
      label: $t('bpm.processListener.field.type'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.BPM_PROCESS_LISTENER_TYPE, 'string'),
        allowClear: true,
      },
      rules: 'required',
    },
    {
      fieldName: 'event',
      label: $t('bpm.processListener.field.event'),
      component: 'Select',
      componentProps: {
        options: EVENT_OPTIONS,
        allowClear: true,
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['type'],
        trigger: (values) => (values.event = undefined),
        componentProps: (values) => ({
          options:
            values.type === 'execution'
              ? EVENT_EXECUTION_OPTIONS
              : EVENT_OPTIONS,
        }),
      },
    },
    {
      fieldName: 'valueType',
      label: $t('bpm.processListener.field.valueType'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(
          DICT_TYPE.BPM_PROCESS_LISTENER_VALUE_TYPE,
          'string',
        ),
        allowClear: true,
      },
      rules: 'required',
    },
    {
      fieldName: 'value',
      label: $t('bpm.processListener.field.value'),
      component: 'Input',
      rules: 'required',
      dependencies: {
        triggerFields: ['valueType'],
        trigger: (values) => (values.value = undefined),
        componentProps: (values) => ({
          placeholder:
            values.valueType === 'class'
              ? $t('ui.placeholder.input', [
                  $t('bpm.processListener.placeholder.classPath'),
                ])
              : $t('ui.placeholder.input', [
                  $t('bpm.processListener.placeholder.expression'),
                ]),
        }),
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('bpm.processListener.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('bpm.processListener.field.name'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'type',
      label: $t('bpm.processListener.field.type'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('bpm.processListener.field.type'),
        ]),
        options: getDictOptions(DICT_TYPE.BPM_PROCESS_LISTENER_TYPE, 'string'),
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
      title: $t('bpm.processListener.field.id'),
      minWidth: 100,
    },
    {
      field: 'name',
      title: $t('bpm.processListener.field.name'),
      minWidth: 200,
    },
    {
      field: 'type',
      title: $t('bpm.processListener.field.type'),
      minWidth: 200,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.BPM_PROCESS_LISTENER_TYPE },
      },
    },
    {
      field: 'event',
      title: $t('bpm.processListener.field.event'),
      minWidth: 200,
    },
    {
      field: 'valueType',
      title: $t('bpm.processListener.field.valueType'),
      minWidth: 200,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.BPM_PROCESS_LISTENER_VALUE_TYPE },
      },
    },
    {
      field: 'value',
      title: $t('bpm.processListener.field.value'),
      minWidth: 200,
    },
    {
      field: 'createTime',
      title: $t('bpm.processListener.field.createTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'actions',
      title: $t('common.operation'),
      minWidth: 180,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
