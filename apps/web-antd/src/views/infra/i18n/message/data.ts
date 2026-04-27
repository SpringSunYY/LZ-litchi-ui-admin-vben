import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { I18nKeyApi } from '#/api/infra/i18n/i18nKey';
import type { I18nMessageApi } from '#/api/infra/i18n/i18nMessage';

import { getI18nLocalePage } from '#/api/infra/i18n/i18nLocale';
import { DICT_TYPE, getDictLabel, getDictOptions } from '#/utils';

/** 键名 - 新增/修改的表单 */
export function useKeyFormSchema(): VbenFormSchema[] {
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
      component: 'InputNumber',
      componentProps: {
        placeholder: '请输入显示顺序',
        min: 0,
      },
    },
    {
      fieldName: 'remark',
      label: '备注',
      component: 'Input',
      componentProps: {
        placeholder: '请输入备注',
      },
    },
  ];
}

/** 键名 - 列表的搜索表单 */
export function useKeyGridFormSchema(): VbenFormSchema[] {
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
    // {
    //   fieldName: 'createTime',
    //   label: '创建时间',
    //   component: 'RangePicker',
    //   componentProps: {
    //     ...getRangePickerDefaultProps(),
    //     allowClear: true,
    //   },
    // },
  ];
}

/** 键名 - 列表的字段 */
export function useKeyGridColumns(): VxeTableGridOptions<I18nKeyApi.I18nKey>['columns'] {
  return [
    { type: 'checkbox', width: 40 },
    {
      field: 'id',
      title: '编号',
      visible: false,
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
      visible: false,
      minWidth: 80,
    },
    {
      field: 'remark',
      title: '备注',
      visible: false,
      minWidth: 120,
    },
    {
      field: 'createTime',
      title: '创建时间',
      visible: false,
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

/** 信息 - 新增/修改的表单 */
export function useMessageFormSchema(): VbenFormSchema[] {
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
        readOnly: true,
        placeholder: '请输入名称',
      },
    },
    {
      fieldName: 'messageKey',
      label: '键',
      rules: 'required',
      component: 'Input',
      componentProps: {
        readOnly: true,
        placeholder: '请输入键',
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
        disabled: true,
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
        disabled: true,
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
        disabled: true,
      },
    },
    {
      fieldName: 'locale',
      label: '简称',
      rules: 'required',
      component: 'ApiSelect',
      componentProps: {
        api: getI18nLocalePage,
        resultField: 'list',
        labelField: 'label',
        valueField: 'locale',
        afterFetch: (data: any) =>
          data.list.map((item: any) => ({
            ...item,
            label: `${item.locale} - ${item.localeName} - ${getDictLabel(DICT_TYPE.INFRA_I18N_LOCALE_TARGET, item.localeTarget)}`,
            locale: `${item.locale}_${item.localeTarget}`,
          })),
        placeholder: '请选择简称',
      },
    },
    {
      fieldName: 'message',
      label: '消息',
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: '请输入消息',
      },
    },
    {
      fieldName: 'remark',
      label: '备注',
      component: 'Input',
      componentProps: {
        placeholder: '请输入备注',
      },
    },
  ];
}

/** 信息 - 列表的搜索表单 */
export function useMessageGridFormSchema(): VbenFormSchema[] {
  return [
    // {
    //   fieldName: 'messageName',
    //   label: '名称',
    //   component: 'Input',
    //   componentProps: {
    //     allowClear: true,
    //     placeholder: '请输入名称',
    //   },
    // },
    // {
    //   fieldName: 'messageKey',
    //   label: '键',
    //   component: 'Input',
    //   componentProps: {
    //     allowClear: true,
    //     placeholder: '请输入键',
    //   },
    // },
    {
      fieldName: 'locale',
      label: '简称',
      component: 'ApiSelect',
      componentProps: {
        api: getI18nLocalePage,
        resultField: 'list',
        labelField: 'label',
        valueField: 'locale',
        afterFetch: (data: any) =>
          data.list.map((item: any) => ({
            ...item,
            label: `${item.locale} - ${item.localeName} - ${getDictLabel(DICT_TYPE.INFRA_I18N_LOCALE_TARGET, item.localeTarget)}`,
            locale: `${item.locale}_${item.localeTarget}`,
          })),
        allowClear: true,
        placeholder: '请选择简称',
      },
      formItemClass: 'md:col-span-2',
    },
    // {
    //   fieldName: 'localeTarget',
    //   label: '使用端',
    //   component: 'Select',
    //   componentProps: {
    //     allowClear: true,
    //     options: getDictOptions(DICT_TYPE.INFRA_I18N_LOCALE_TARGET, 'number'),
    //     placeholder: '请选择使用端',
    //   },
    // },
    // {
    //   fieldName: 'isSystem',
    //   label: '是否内置',
    //   component: 'Select',
    //   componentProps: {
    //     allowClear: true,
    //     options: getDictOptions(DICT_TYPE.INFRA_I18N_KEY_IS_SYSTEM, 'number'),
    //     placeholder: '请选择是否内置',
    //   },
    // },
    // {
    //   fieldName: 'moduleType',
    //   label: '模块',
    //   component: 'Select',
    //   componentProps: {
    //     allowClear: true,
    //     options: getDictOptions(DICT_TYPE.INFRA_I18N_KEY_MODULE_TYPE, 'number'),
    //     placeholder: '请选择模块',
    //   },
    // },
    // {
    //   fieldName: 'useType',
    //   label: '使用类型',
    //   component: 'Select',
    //   componentProps: {
    //     allowClear: true,
    //     options: getDictOptions(DICT_TYPE.INFRA_I18N_KEY_USE_TYPE, 'number'),
    //     placeholder: '请选择使用类型',
    //   },
    // },
    // {
    //   fieldName: 'remark',
    //   label: '备注',
    //   component: 'Input',
    //   componentProps: {
    //     allowClear: true,
    //     placeholder: '请输入备注',
    //   },
    // },
    // {
    //   fieldName: 'createTime',
    //   label: '创建时间',
    //   component: 'RangePicker',
    //   componentProps: {
    //     ...getRangePickerDefaultProps(),
    //     allowClear: true,
    //   },
    // },
  ];
}

/** 信息 - 列表的字段 */
export function useMessageGridColumns(): VxeTableGridOptions<I18nMessageApi.I18nMessage>['columns'] {
  return [
    { type: 'checkbox', width: 40 },
    {
      field: 'id',
      title: '主键',
      visible: false,
      minWidth: 120,
    },
    {
      field: 'messageName',
      title: '名称',
      visible: false,
      minWidth: 120,
    },
    {
      field: 'messageKey',
      title: '键',
      visible: false,
      minWidth: 120,
    },
    {
      field: 'locale',
      title: '简称',
      minWidth: 120,
    },
    {
      field: 'localeTarget',
      title: '使用端',
      visible: true,
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_LOCALE_TARGET },
      },
    },
    {
      field: 'isSystem',
      title: '是否内置',
      visible: false,
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_KEY_IS_SYSTEM },
      },
    },
    {
      field: 'moduleType',
      title: '模块',
      visible: false,
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_KEY_MODULE_TYPE },
      },
    },
    {
      field: 'useType',
      title: '使用类型',
      visible: false,
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_KEY_USE_TYPE },
      },
    },
    {
      field: 'message',
      title: '消息',
      minWidth: 120,
    },
    {
      field: 'remark',
      visible: false,
      title: '备注',
      minWidth: 120,
    },
    {
      field: 'createTime',
      title: '创建时间',
      visible: false,
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
