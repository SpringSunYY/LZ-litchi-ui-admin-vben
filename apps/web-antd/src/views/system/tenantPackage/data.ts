import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { SystemTenantPackageApi } from '#/api/system/tenant-package';

import { z } from '#/adapter/form';
import {
  CommonStatusEnum,
  DICT_TYPE,
  getDictOptions,
  getRangePickerDefaultProps,
} from '#/utils';

/** 新增/修改的表单 */
export function useFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'id',
      component: 'Input',
      formItemClass: 'col-span-1',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'name',
      label: '套餐名',
      formItemClass: 'col-span-1',
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: '请输入套餐名',
      },
    },
    {
      fieldName: 'code',
      label: '套餐编码',
      formItemClass: 'col-span-1',
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
      formItemClass: 'col-span-1',
      component: 'InputNumber',
      componentProps: {
        min: 0,
        precision: 2,
        placeholder: '请输入套餐价格',
      },
    },
    {
      fieldName: 'orderNum',
      label: '排序',
      rules: 'required',
      formItemClass: 'col-span-1',
      component: 'InputNumber',
      componentProps: {
        min: 0,
        max: 10,
        placeholder: '请输入排序',
      },
    },
    {
      fieldName: 'subscriptionNum',
      label: '订阅数',
      rules: 'required',
      formItemClass: 'col-span-1',
      component: 'InputNumber',
      componentProps: {
        min: 0,
        placeholder: '请输入订阅数',
      },
    },
    {
      fieldName: 'subscriptionTotalAmount',
      label: '订阅总额',
      rules: 'required',
      component: 'InputNumber',
      formItemClass: 'col-span-1',
      componentProps: {
        min: 0,
        precision: 2,
        placeholder: '请输入订阅总额',
      },
    },
    {
      fieldName: 'status',
      label: '状态',
      formItemClass: 'col-span-1',
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(
          DICT_TYPE.SYSTEM_TENANT_PACKAGE_STATUS,
          'number',
        ),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
    {
      fieldName: 'type',
      label: '套餐类型',
      formItemClass: 'col-span-1',
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_TENANT_PACKAGE_TYPE),
        placeholder: '请选择套餐类型',
      },
    },
    {
      fieldName: 'description',
      label: '套餐描述',
      component: 'RichTextarea',
    },
    {
      fieldName: 'logo',
      label: 'LOGO',
      rules: 'required',
      component: 'ImageUpload',
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
      fieldName: 'name',
      label: '套餐名',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入套餐名',
      },
    },
    {
      fieldName: 'code',
      label: '套餐编码',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入套餐编码',
      },
    },
    {
      fieldName: 'type',
      label: '套餐类型',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_TENANT_PACKAGE_TYPE, 'number'),
        placeholder: '请选择套餐类型',
      },
    },
    {
      fieldName: 'description',
      label: '套餐描述',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入套餐描述',
      },
    },
    {
      fieldName: 'status',
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
export function useGridColumns(): VxeTableGridOptions<SystemTenantPackageApi.TenantPackage>['columns'] {
  return [
    { type: 'checkbox', width: 40 },
    {
      field: 'id',
      title: '套餐编号',
      minWidth: 120,
    },
    {
      field: 'name',
      title: '套餐名',
      minWidth: 120,
    },
    {
      field: 'code',
      title: '套餐编码',
      minWidth: 120,
    },
    {
      field: 'type',
      title: '套餐类型',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_PACKAGE_TYPE },
      },
    },
    {
      field: 'logo',
      title: 'LOGO',
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
      field: 'price',
      title: '套餐价格',
      minWidth: 120,
    },
    {
      field: 'description',
      title: '套餐描述',
      minWidth: 120,
    },
    {
      field: 'status',
      title: '套餐状态',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_PACKAGE_STATUS },
      },
    },
    {
      field: 'orderNum',
      title: '排序',
      minWidth: 120,
    },
    {
      field: 'subscriptionNum',
      title: '订阅数',
      minWidth: 120,
    },
    {
      field: 'subscriptionTotalAmount',
      title: '订阅总额',
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
