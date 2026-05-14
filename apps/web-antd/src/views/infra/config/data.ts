import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

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
      fieldName: 'category',
      label: $t('infra.config.field.category'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.config.field.category'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'name',
      label: $t('infra.config.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.config.field.name'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'key',
      label: $t('infra.config.field.key'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('infra.config.field.key')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'value',
      label: $t('infra.config.field.value'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.config.field.value'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'visible',
      label: $t('infra.config.field.visible'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_BOOLEAN_STRING, 'boolean'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      defaultValue: true,
      rules: 'required',
    },
    {
      fieldName: 'remark',
      label: $t('infra.config.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.config.field.remark'),
        ]),
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('infra.config.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.config.field.name'),
        ]),
        clearable: true,
      },
    },
    {
      fieldName: 'key',
      label: $t('infra.config.field.key'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('infra.config.field.key')]),
        clearable: true,
      },
    },
    {
      fieldName: 'type',
      label: $t('infra.config.field.type'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_CONFIG_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.config.field.type'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'createTime',
      label: $t('infra.config.field.createTime'),
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
      title: $t('infra.config.field.id'),
    },
    {
      field: 'category',
      title: $t('infra.config.field.category'),
    },
    {
      field: 'name',
      title: $t('infra.config.field.name'),
    },
    {
      field: 'key',
      title: $t('infra.config.field.key'),
    },
    {
      field: 'value',
      title: $t('infra.config.field.value'),
    },
    {
      field: 'visible',
      title: $t('infra.config.field.visible'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_BOOLEAN_STRING },
      },
    },
    {
      field: 'type',
      title: $t('infra.config.field.type'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_CONFIG_TYPE },
      },
    },
    {
      field: 'remark',
      title: $t('infra.config.field.remark'),
    },
    {
      field: 'createTime',
      title: $t('infra.config.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 160,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
