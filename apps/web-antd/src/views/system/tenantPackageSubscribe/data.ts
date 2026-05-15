import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { TenantPackageSubscribeApi } from '#/api/system/tenantPackageSubscribe';

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
      fieldName: 'packageName',
      label: $t('system.tenantPackageSubscribe.field.packageName'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackageSubscribe.field.packageName'),
        ]),
      },
    },
    {
      fieldName: 'packageCode',
      label: $t('system.tenantPackageSubscribe.field.packageCode'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        readOnly: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackageSubscribe.field.packageCode'),
        ]),
      },
    },
    {
      fieldName: 'price',
      label: $t('system.tenantPackageSubscribe.field.price'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        readOnly: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackageSubscribe.field.price'),
        ]),
      },
    },
    {
      fieldName: 'tenantName',
      label: $t('system.tenantPackageSubscribe.field.tenantName'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackageSubscribe.field.tenantName'),
        ]),
      },
    },
    {
      fieldName: 'tenantCode',
      label: $t('system.tenantPackageSubscribe.field.tenantCode'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        readOnly: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackageSubscribe.field.tenantCode'),
        ]),
      },
    },
    {
      fieldName: 'discountPrice',
      label: $t('system.tenantPackageSubscribe.field.discountPrice'),
      rules: 'required',
      component: 'InputNumber',
      componentProps: {
        min: 0,
        precision: 2,
        defaultValue: 0,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackageSubscribe.field.discountPrice'),
        ]),
      },
    },
    {
      fieldName: 'days',
      label: $t('system.tenantPackageSubscribe.field.days'),
      rules: 'required',
      component: 'InputNumber',
      componentProps: {
        min: 0,
        defaultValue: 30,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackageSubscribe.field.days'),
        ]),
      },
    },
    {
      fieldName: 'totalPrice',
      label: $t('system.tenantPackageSubscribe.field.totalPrice'),
      rules: 'required',
      component: 'InputNumber',
      componentProps: {
        readonly: true,
        min: 0,
        precision: 2,
        defaultValue: 0,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackageSubscribe.field.totalPrice'),
        ]),
      },
    },
    {
      fieldName: 'status',
      label: $t('system.tenantPackageSubscribe.field.status'),
      rules: 'required',
      component: 'RadioGroup',
      defaultValue: 1,
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
      label: $t('system.tenantPackageSubscribe.field.payStatus'),
      rules: 'required',
      component: 'RadioGroup',
      defaultValue: 0,
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
      label: $t('system.tenantPackageSubscribe.field.startTime'),
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
      label: $t('system.tenantPackageSubscribe.field.endTime'),
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
      label: $t('system.tenantPackageSubscribe.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackageSubscribe.field.remark'),
        ]),
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
      label: $t('system.tenantPackageSubscribe.field.packageName'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackageSubscribe.field.packageName'),
        ]),
      },
    },
    {
      fieldName: 'packageCode',
      label: $t('system.tenantPackageSubscribe.field.packageCode'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackageSubscribe.field.packageCode'),
        ]),
      },
    },
    {
      fieldName: 'packageType',
      label: $t('system.tenantPackageSubscribe.field.packageType'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_TENANT_PACKAGE_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.tenantPackageSubscribe.field.packageType'),
        ]),
      },
    },
    {
      fieldName: 'packageStatus',
      label: $t('system.tenantPackageSubscribe.field.packageStatus'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(
          DICT_TYPE.SYSTEM_TENANT_PACKAGE_STATUS,
          'number',
        ),
        placeholder: $t('ui.placeholder.select', [
          $t('system.tenantPackageSubscribe.field.packageStatus'),
        ]),
      },
    },
    {
      fieldName: 'tenantName',
      label: $t('system.tenantPackageSubscribe.field.tenantName'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackageSubscribe.field.tenantName'),
        ]),
      },
    },
    {
      fieldName: 'tenantCode',
      label: $t('system.tenantPackageSubscribe.field.tenantCode'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackageSubscribe.field.tenantCode'),
        ]),
      },
    },
    {
      fieldName: 'status',
      label: $t('system.tenantPackageSubscribe.field.status'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(
          DICT_TYPE.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS,
          'number',
        ),
        placeholder: $t('ui.placeholder.select', [
          $t('system.tenantPackageSubscribe.field.status'),
        ]),
      },
    },
    {
      fieldName: 'payStatus',
      label: $t('system.tenantPackageSubscribe.field.payStatus'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(
          DICT_TYPE.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_PAY_STATUS,
          'number',
        ),
        placeholder: $t('ui.placeholder.select', [
          $t('system.tenantPackageSubscribe.field.payStatus'),
        ]),
      },
    },
    {
      fieldName: 'startTime',
      label: $t('system.tenantPackageSubscribe.field.startTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'endTime',
      label: $t('system.tenantPackageSubscribe.field.endTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'createTime',
      label: $t('system.tenantPackageSubscribe.field.createTime'),
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
      title: $t('system.tenantPackageSubscribe.field.id'),
      minWidth: 120,
    },
    {
      field: 'packageName',
      title: $t('system.tenantPackageSubscribe.field.packageName'),
      minWidth: 120,
    },
    {
      field: 'packageCode',
      title: $t('system.tenantPackageSubscribe.field.packageCode'),
      minWidth: 120,
    },
    {
      field: 'packageType',
      title: $t('system.tenantPackageSubscribe.field.packageType'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_PACKAGE_TYPE },
      },
    },
    {
      field: 'packageStatus',
      title: $t('system.tenantPackageSubscribe.field.packageStatus'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_PACKAGE_STATUS },
      },
    },
    {
      field: 'packageLogo',
      title: $t('system.tenantPackageSubscribe.field.packageLogo'),
      minWidth: 120,
      cellRender: {
        name: 'CellImage',
        props: {
          width: 40,
          height: 40,
        },
      },
    },
    {
      field: 'tenantName',
      title: $t('system.tenantPackageSubscribe.field.tenantName'),
      minWidth: 120,
    },
    {
      field: 'tenantCode',
      title: $t('system.tenantPackageSubscribe.field.tenantCode'),
      minWidth: 120,
    },
    {
      field: 'price',
      title: $t('system.tenantPackageSubscribe.field.price'),
      minWidth: 120,
    },
    {
      field: 'discountPrice',
      title: $t('system.tenantPackageSubscribe.field.discountPrice'),
      minWidth: 120,
    },
    {
      field: 'days',
      title: $t('system.tenantPackageSubscribe.field.days'),
      minWidth: 120,
    },
    {
      field: 'totalPrice',
      title: $t('system.tenantPackageSubscribe.field.totalPrice'),
      minWidth: 120,
    },
    {
      field: 'status',
      title: $t('system.tenantPackageSubscribe.field.status'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_STATUS },
      },
    },
    {
      field: 'payStatus',
      title: $t('system.tenantPackageSubscribe.field.payStatus'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_PACKAGE_SUBSCRIBE_PAY_STATUS },
      },
    },
    {
      field: 'startTime',
      title: $t('system.tenantPackageSubscribe.field.startTime'),
      minWidth: 120,
      formatter: 'formatDateTime',
    },
    {
      field: 'endTime',
      title: $t('system.tenantPackageSubscribe.field.endTime'),
      minWidth: 120,
      formatter: 'formatDateTime',
    },
    {
      field: 'remark',
      title: $t('system.tenantPackageSubscribe.field.remark'),
      minWidth: 120,
    },
    {
      field: 'createTime',
      title: $t('system.tenantPackageSubscribe.field.createTime'),
      minWidth: 120,
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 200,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
