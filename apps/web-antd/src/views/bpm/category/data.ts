import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { z } from '#/adapter/form';
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
      label: $t('bpm.category.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('bpm.category.field.name'),
        ]),
      },
      rules: 'required',
    },
    {
      label: $t('bpm.category.field.code'),
      fieldName: 'code',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('bpm.category.field.code'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'description',
      label: $t('bpm.category.field.description'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('bpm.category.field.description'),
        ]),
      },
    },
    {
      fieldName: 'status',
      label: $t('bpm.category.field.status'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
    {
      fieldName: 'sort',
      label: $t('bpm.category.field.sort'),
      component: 'InputNumber',
      componentProps: {
        min: 0,
        controlsPosition: 'right',
        placeholder: $t('ui.placeholder.input', [
          $t('bpm.category.field.sort'),
        ]),
        class: 'w-full',
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('bpm.category.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('bpm.category.field.name'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'code',
      label: $t('bpm.category.field.code'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('bpm.category.field.code'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'status',
      label: $t('bpm.category.field.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('bpm.category.field.status'),
        ]),
        allowClear: true,
      },
    },
    // TODO 创建时间 等通用方法完善后加
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('bpm.category.field.id'),
      minWidth: 100,
    },
    {
      field: 'name',
      title: $t('bpm.category.field.name'),
      minWidth: 200,
    },
    {
      field: 'code',
      title: $t('bpm.category.field.code'),
      minWidth: 200,
    },
    {
      field: 'description',
      title: $t('bpm.category.field.description'),
      minWidth: 200,
    },
    {
      field: 'status',
      title: $t('bpm.category.field.status'),
      minWidth: 100,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'createTime',
      title: $t('bpm.category.field.createTime'),
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
