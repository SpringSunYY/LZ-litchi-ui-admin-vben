import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import {
  CommonStatusEnum,
  DICT_TYPE,
  getDictOptions,
  getRangePickerDefaultProps,
} from '#/utils';
import { $t } from '#/locales';

/** 新增/修改的表单 */
export function useFormSchema(): VbenFormSchema[] {
  return [
    {
      component: 'Input',
      fieldName: 'id',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      component: 'Input',
      fieldName: 'name',
      label: $t('ai.model.tool.field.name'),
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.tool.field.name'),
        ]),
      },
    },
    {
      component: 'Textarea',
      fieldName: 'description',
      label: $t('ai.model.tool.field.description'),
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.tool.field.description'),
        ]),
      },
    },
    {
      fieldName: 'status',
      label: $t('ai.model.tool.field.status'),
      component: 'I18nRadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      defaultValue: CommonStatusEnum.ENABLE,
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('ai.model.tool.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.tool.field.name'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'status',
      label: $t('ai.model.tool.field.status'),
      component: 'I18nSelect',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('ai.model.tool.field.status'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('ai.model.tool.field.createTime'),
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
      title: $t('ai.model.tool.field.id'),
      minWidth: 100,
    },
    {
      field: 'name',
      title: $t('ai.model.tool.field.name'),
      minWidth: 120,
    },
    {
      field: 'description',
      title: $t('ai.model.tool.field.description'),
      minWidth: 140,
    },
    {
      field: 'status',
      title: $t('ai.model.tool.field.status'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
      minWidth: 80,
    },
    {
      field: 'createTime',
      title: $t('ai.model.tool.field.createTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 130,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
