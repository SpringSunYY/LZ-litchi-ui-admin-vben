import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { z } from '#/adapter/form';
import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import { CommonStatusEnum, DICT_TYPE, getDictOptions } from '#/utils';

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
      label: $t('bpm.group.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('bpm.group.field.name')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'description',
      label: $t('bpm.group.field.description'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('bpm.group.field.description'),
        ]),
      },
    },
    {
      fieldName: 'userIds',
      label: $t('bpm.group.field.userIds'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('bpm.group.field.userIds'),
        ]),
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
        mode: 'tags',
      },
      rules: z
        .array(z.number())
        .min(1, $t('ui.placeholder.select', [$t('bpm.group.field.userIds')]))
        .default([]),
    },
    {
      fieldName: 'status',
      label: $t('bpm.group.field.status'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('bpm.group.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('bpm.group.field.name')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'status',
      label: $t('bpm.group.field.status'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('bpm.group.field.status'),
        ]),
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        allowClear: true,
      },
    },
    {
      fieldName: 'createTime',
      label: $t('bpm.group.field.createTime'),
      component: 'RangePicker',
      componentProps: {
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
      title: $t('bpm.group.field.id'),
      minWidth: 100,
    },
    {
      field: 'name',
      title: $t('bpm.group.field.name'),
      minWidth: 200,
    },
    {
      field: 'description',
      title: $t('bpm.group.field.description'),
      minWidth: 200,
    },
    {
      field: 'userIds',
      title: $t('bpm.group.field.userIds'),
      minWidth: 200,
      slots: { default: 'userIds' },
    },
    {
      field: 'status',
      title: $t('bpm.group.field.status'),
      minWidth: 100,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'createTime',
      title: $t('bpm.group.field.createTime'),
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
