import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { I18nKeyApi } from '#/api/infra/i18n/i18nKey';

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
      fieldName: 'messageName',
      label: '名称',
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: '请输入名称',
      },
    },
    {
      fieldName: 'messageKey',
      label: '键',
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: '请输入键',
      },
    },
    {
      fieldName: 'target',
      label: '使用端',
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_I18N_LOCALE_TARGET, 'number'),
        placeholder: '请选择使用端',
      },
    },
    {
      fieldName: 'isSystem',
      label: '是否内置',
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_I18N_KEY_IS_SYSTEM, 'number'),
        placeholder: '请选择是否内置',
      },
    },
    {
      fieldName: 'moduleType',
      label: '模块',
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_I18N_KEY_MODULE_TYPE, 'number'),
        placeholder: '请选择模块',
      },
    },
    {
      fieldName: 'useType',
      label: '使用类型',
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_I18N_KEY_USE_TYPE, 'number'),
        placeholder: '请选择使用类型',
      },
    },
    {
      fieldName: 'orderNum',
      label: '显示顺序',
      component: 'Input',
      componentProps: {
        placeholder: '请输入显示顺序',
      },
    },
    {
      fieldName: 'remark',
      label: '备注',
      component: 'Textarea',
      componentProps: {
        placeholder: '请输入备注',
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'messageName',
      label: '名称',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入名称',
      },
    },
    {
      fieldName: 'messageKey',
      label: '键',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入键',
      },
    },
    {
      fieldName: 'target',
      label: '使用端',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_I18N_LOCALE_TARGET, 'number'),
        placeholder: '请选择使用端',
      },
    },
    {
      fieldName: 'isSystem',
      label: '是否内置',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_I18N_KEY_IS_SYSTEM, 'number'),
        placeholder: '请选择是否内置',
      },
    },
    {
      fieldName: 'moduleType',
      label: '模块',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_I18N_KEY_MODULE_TYPE, 'number'),
        placeholder: '请选择模块',
      },
    },
    {
      fieldName: 'useType',
      label: '使用类型',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_I18N_KEY_USE_TYPE, 'number'),
        placeholder: '请选择使用类型',
      },
    },
    {
      fieldName: 'createTime',
      label: '创建时间',
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions<I18nKeyApi.I18nKey>['columns'] {
  return [
    { type: 'checkbox', width: 40 },
    {
      field: 'id',
      title: '编号',
      minWidth: 120,
    },
    {
      field: 'messageName',
      title: '名称',
      minWidth: 120,
    },
    {
      field: 'messageKey',
      title: '键',
      minWidth: 120,
    },
    {
      field: 'target',
      title: '使用端',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_LOCALE_TARGET },
      },
    },
    {
      field: 'isSystem',
      title: '是否内置',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_KEY_IS_SYSTEM },
      },
    },
    {
      field: 'moduleType',
      title: '模块',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_KEY_MODULE_TYPE },
      },
    },
    {
      field: 'useType',
      title: '使用类型',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_KEY_USE_TYPE },
      },
    },
    {
      field: 'orderNum',
      title: '显示顺序',
      minWidth: 120,
    },
    {
      field: 'remark',
      title: '备注',
      minWidth: 120,
    },
    {
      field: 'createTime',
      title: '创建时间',
      minWidth: 120,
      formatter: 'formatDateTime',
    },
    {
      title: '操作',
      width: 200,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
