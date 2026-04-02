import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { TenantPackageSubscribeApi } from '#/api/system/tenantPackageSubscribe';

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
      fieldName: 'packageName',
      label: '套餐名',
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: '请输入套餐名',
      },
    },
    {
      fieldName: 'packageCode',
      label: '套餐编码',
      disabled: true,
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: '请输入套餐编码',
      },
    },
    {
      fieldName: 'price',
      label: '套餐价格',
      rules: 'required',
      disabled: true,
      component: 'Input',
      componentProps: {
        placeholder: '请输入套餐价格',
      },
    },
    {
      fieldName: 'tenantName',
      label: '租户名',
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: '请输入租户名',
      },
    },
    {
      fieldName: 'tenantCode',
      label: '租户编码',
      rules: 'required',
      disabled: true,
      component: 'Input',
      componentProps: {
        placeholder: '请输入租户编码',
      },
    },
    {
      fieldName: 'discountPrice',
      label: '优惠价格',
      rules: 'required',
      component: 'InputNumber',
      componentProps: {
        min: 0,
        precision: 2,
        defaultValue: 0,
        placeholder: '请输入优惠价格',
      },
    },
    {
      fieldName: 'days',
      label: '天数',
      rules: 'required',
      component: 'InputNumber',
      componentProps: {
        min: 0,
        defaultValue: 30,
        placeholder: '请输入天数',
      },
    },
    {
      fieldName: 'totalPrice',
      label: '总价格',
      rules: 'required',
      disabled: true,
      component: 'InputNumber',
      componentProps: {
        min: 0,
        precision: 2,
        defaultValue: 0,
        readOnly: true,
        placeholder: '请输入总价格',
      },
    },
    {
      fieldName: 'status',
      label: '订阅状态',
      rules: 'required',
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(
          DICT_TYPE.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS,
          'number',
        ),
        buttonStyle: 'solid',
        optionType: 'button',
      },
    },
    {
      fieldName: 'payStatus',
      label: '支付状态',
      rules: 'required',
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(
          DICT_TYPE.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_PAY_STATUS,
          'number',
        ),
        buttonStyle: 'solid',
        optionType: 'button',
      },
    },
    {
      fieldName: 'startTime',
      label: '开始时间',
      rules: 'required',
      component: 'DatePicker',
      componentProps: {
        showTime: true,
        format: 'YYYY-MM-DD',
        valueFormat: 'x',
      },
    },
    {
      fieldName: 'endTime',
      label: '结束时间',
      rules: 'required',
      component: 'DatePicker',
      disabled: true,
      componentProps: {
        showTime: true,
        format: 'YYYY-MM-DD',
        valueFormat: 'x',
      },
    },
    {
      fieldName: 'remark',
      label: '备注',
      component: 'Textarea',
      componentProps: {
        placeholder: '请输入备注',
        rows: 3,
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'packageName',
      label: '套餐名',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入套餐名',
      },
    },
    {
      fieldName: 'packageCode',
      label: '套餐编码',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入套餐编码',
      },
    },
    {
      fieldName: 'packageType',
      label: '套餐类型',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_TENANT_PACKAGE_TYPE, 'number'),
        placeholder: '请选择套餐类型',
      },
    },
    {
      fieldName: 'packageStatus',
      label: '套餐状态',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(
          DICT_TYPE.SYSTEM_TENANT_PACKAGE_STATUS,
          'number',
        ),
        placeholder: '请选择套餐状态',
      },
    },
    {
      fieldName: 'tenantName',
      label: '租户名',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入租户名',
      },
    },
    {
      fieldName: 'tenantCode',
      label: '租户编码',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入租户编码',
      },
    },
    {
      fieldName: 'status',
      label: '订阅状态',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(
          DICT_TYPE.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS,
          'number',
        ),
        placeholder: '请选择订阅状态',
      },
    },
    {
      fieldName: 'payStatus',
      label: '支付状态',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(
          DICT_TYPE.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_PAY_STATUS,
          'number',
        ),
        placeholder: '请选择支付状态',
      },
    },
    {
      fieldName: 'startTime',
      label: '开始时间',
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'endTime',
      label: '结束时间',
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
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
export function useGridColumns(): VxeTableGridOptions<TenantPackageSubscribeApi.TenantPackageSubscribe>['columns'] {
  return [
    { type: 'checkbox', width: 40 },
    {
      field: 'id',
      title: '套餐编号',
      minWidth: 120,
    },
    {
      field: 'packageName',
      title: '套餐名',
      minWidth: 120,
    },
    {
      field: 'packageCode',
      title: '套餐编码',
      minWidth: 120,
    },
    {
      field: 'packageType',
      title: '套餐类型',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_PACKAGE_TYPE },
      },
    },
    {
      field: 'packageStatus',
      title: '套餐状态',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_PACKAGE_STATUS },
      },
    },
    {
      field: 'packageLogo',
      title: 'LOGO',
      minWidth: 120,
    },
    {
      field: 'tenantName',
      title: '租户名',
      minWidth: 120,
    },
    {
      field: 'tenantCode',
      title: '租户编码',
      minWidth: 120,
    },
    {
      field: 'price',
      title: '套餐价格',
      minWidth: 120,
    },
    {
      field: 'discountPrice',
      title: '优惠价格',
      minWidth: 120,
    },
    {
      field: 'days',
      title: '天数',
      minWidth: 120,
    },
    {
      field: 'totalPrice',
      title: '总价格',
      minWidth: 120,
    },
    {
      field: 'status',
      title: '订阅状态',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS },
      },
    },
    {
      field: 'payStatus',
      title: '支付状态',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_PAY_STATUS },
      },
    },
    {
      field: 'startTime',
      title: '开始时间',
      minWidth: 120,
      formatter: 'formatDateTime',
    },
    {
      field: 'endTime',
      title: '结束时间',
      minWidth: 120,
      formatter: 'formatDateTime',
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
