import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { DescriptionItemSchema } from '#/components/description';

import { h } from 'vue';

import dayjs from 'dayjs';

import { DictTag } from '#/components/dict-tag';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

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
      fieldName: 'type',
      label: $t('bpm.oa.leave.field.type'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('bpm.oa.leave.field.type'),
        ]),
        options: getDictOptions(DICT_TYPE.BPM_OA_LEAVE_TYPE, 'number'),
        allowClear: true,
      },
      rules: 'required',
    },
    {
      fieldName: 'startTime',
      label: $t('bpm.oa.leave.field.startTime'),
      component: 'DatePicker',
      componentProps: {
        placeholder: $t('ui.placeholder.date', [
          $t('bpm.oa.leave.field.startTime'),
        ]),
        showTime: true,
        valueFormat: 'x',
        format: 'YYYY-MM-DD HH:mm:ss',
      },
      rules: 'required',
    },
    {
      fieldName: 'endTime',
      label: $t('bpm.oa.leave.field.endTime'),
      component: 'DatePicker',
      componentProps: {
        placeholder: $t('ui.placeholder.date', [
          $t('bpm.oa.leave.field.endTime'),
        ]),
        showTime: true,
        valueFormat: 'x',
        format: 'YYYY-MM-DD HH:mm:ss',
      },
      rules: 'required',
    },
    {
      fieldName: 'reason',
      label: $t('bpm.oa.leave.field.reason'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('bpm.oa.leave.field.reason'),
        ]),
      },
      rules: 'required',
    },
  ];
}

/** 列表的搜索表单 */
export function GridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'type',
      label: $t('bpm.oa.leave.field.type'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('bpm.oa.leave.field.type'),
        ]),
        options: getDictOptions(DICT_TYPE.BPM_OA_LEAVE_TYPE, 'number'),
        allowClear: true,
      },
    },
    {
      fieldName: 'status',
      label: $t('bpm.processInstance.field.status'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('bpm.processInstance.field.status'),
        ]),
        options: getDictOptions(
          DICT_TYPE.BPM_PROCESS_INSTANCE_STATUS,
          'number',
        ),
        allowClear: true,
      },
    },
    {
      fieldName: 'reason',
      label: $t('bpm.oa.leave.field.reason'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('bpm.oa.leave.field.reason'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('bpm.oa.leave.field.createTime'),
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
      field: 'id',
      title: $t('bpm.oa.leave.field.id'),
      minWidth: 100,
    },
    {
      field: 'status',
      title: $t('bpm.oa.leave.field.status'),
      minWidth: 100,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.BPM_PROCESS_INSTANCE_STATUS },
      },
    },
    {
      field: 'startTime',
      title: $t('bpm.oa.leave.field.startTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'endTime',
      title: $t('bpm.oa.leave.field.endTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'type',
      title: $t('bpm.oa.leave.field.type'),
      minWidth: 100,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.BPM_OA_LEAVE_TYPE },
      },
    },
    {
      field: 'reason',
      title: $t('bpm.oa.leave.field.reason'),
      minWidth: 150,
    },
    {
      field: 'createTime',
      title: $t('bpm.oa.leave.field.createTime'),
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

/** 详情 */
export function useDetailFormSchema(): DescriptionItemSchema[] {
  return [
    {
      label: $t('bpm.oa.leave.field.type'),
      field: 'type',
      content: (data) =>
        h(DictTag, {
          type: DICT_TYPE.BPM_OA_LEAVE_TYPE,
          value: data?.type,
        }),
    },
    {
      label: $t('bpm.oa.leave.field.startTime'),
      field: 'startTime',
      content: (data) => dayjs(data?.startTime).format('YYYY-MM-DD HH:mm:ss'),
    },
    {
      label: $t('bpm.oa.leave.field.endTime'),
      field: 'endTime',
      content: (data) => dayjs(data?.endTime).format('YYYY-MM-DD HH:mm:ss'),
    },
    {
      label: $t('bpm.oa.leave.field.reason'),
      field: 'reason',
    },
  ];
}
