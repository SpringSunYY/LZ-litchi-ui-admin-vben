import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { I18nLocaleApi } from '#/api/infra/i18nLocale';

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
      fieldName: 'localeName',
      label: '国家地区',
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: '请输入国家地区',
      },
    },
    {
      fieldName: 'locale',
      label: '简称',
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: '请输入简称',
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
      fieldName: 'localeStatus',
      label: '状态',
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_I18N_LOCALE_STATUS, 'number'),
        placeholder: '请选择状态',
      },
    },
    {
      fieldName: 'localeType',
      label: '类型',
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_I18N_LOCALE_TYPE, 'number'),
        placeholder: '请选择类型',
      },
    },
    {
      fieldName: 'isDefault',
      label: '默认',
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(
          DICT_TYPE.INFRA_I18N_LOCALE_IS_DEFAULT,
          'number',
        ),
        placeholder: '请选择默认',
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
      fieldName: 'localeName',
      label: '国家地区',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入国家地区',
      },
    },
    {
      fieldName: 'locale',
      label: '简称',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入简称',
      },
    },
    {
      fieldName: 'localeStatus',
      label: '状态',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_I18N_LOCALE_STATUS, 'number'),
        placeholder: '请选择状态',
      },
    },
    {
      fieldName: 'localeType',
      label: '类型',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_I18N_LOCALE_TYPE, 'number'),
        placeholder: '请选择类型',
      },
    },
    {
      fieldName: 'isDefault',
      label: '默认',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(
          DICT_TYPE.INFRA_I18N_LOCALE_IS_DEFAULT,
          'number',
        ),
        placeholder: '请选择默认',
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
export function useGridColumns(): VxeTableGridOptions<I18nLocaleApi.I18nLocale>['columns'] {
  return [
    { type: 'checkbox', width: 40 },
    {
      field: 'id',
      title: '编号',
      minWidth: 120,
    },
    {
      field: 'localeName',
      title: '国家地区',
      minWidth: 120,
    },
    {
      field: 'locale',
      title: '简称',
      minWidth: 120,
    },
    {
      field: 'orderNum',
      title: '显示顺序',
      minWidth: 120,
    },
    {
      field: 'localeStatus',
      title: '状态',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_LOCALE_STATUS },
      },
    },
    {
      field: 'localeType',
      title: '类型',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_LOCALE_TYPE },
      },
    },
    {
      field: 'isDefault',
      title: '默认',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_LOCALE_IS_DEFAULT },
      },
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
