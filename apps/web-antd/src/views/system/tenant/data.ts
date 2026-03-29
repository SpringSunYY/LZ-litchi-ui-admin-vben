import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { SystemTenantApi } from '#/api/system/tenant';

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
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'name',
      label: '租户名',
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: '请输入租户名',
      },
    },
    {
      fieldName: 'code',
      label: '编码',
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: '请输入编码',
      },
    },
    {
      fieldName: 'contactName',
      label: '联系人',
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: '请输入联系人',
      },
    },
    {
      fieldName: 'contactMobile',
      label: '联系手机',
      component: 'Input',
      componentProps: {
        placeholder: '请输入联系手机',
      },
    },
    {
      fieldName: 'industry',
      label: '行业',
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_TENANT_INDUSTRY, 'number'),
        placeholder: '请选择行业',
      },
    },
    {
      fieldName: 'type',
      label: '类型',
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_TENANT_TYPE, 'number'),
        placeholder: '请选择类型',
      },
    },
    {
      fieldName: 'addressCode',
      label: '地区',
      component: 'Input',
      componentProps: {
        placeholder: '请输入地区',
      },
    },
    {
      fieldName: 'addressDetail',
      label: '地址',
      component: 'Input',
      componentProps: {
        placeholder: '请输入地址',
      },
    },
    {
      fieldName: 'qualifications',
      label: '相关资质',
      component: 'FileUpload',
    },
    {
      label: '用户名称',
      fieldName: 'username',
      component: 'Input',
      rules: 'required',
      dependencies: {
        triggerFields: ['id'],
        show: (values) => !values.id,
      },
    },
    {
      label: '用户密码',
      fieldName: 'password',
      component: 'InputPassword',
      rules: 'required',
      dependencies: {
        triggerFields: ['id'],
        show: (values) => !values.id,
      },
    },
    {
      label: '绑定域名',
      fieldName: 'website',
      component: 'Input',
      rules: 'required',
    },
    {
      fieldName: 'status',
      label: '租户状态',
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
      label: '租户名',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入租户名',
      },
    },
    {
      fieldName: 'code',
      label: '编码',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入编码',
      },
    },
    {
      fieldName: 'contactName',
      label: '联系人',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入联系人',
      },
    },
    {
      fieldName: 'contactMobile',
      label: '联系手机',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入联系手机',
      },
    },
    {
      fieldName: 'industry',
      label: '行业',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_TENANT_INDUSTRY, 'number'),
        placeholder: '请选择行业',
      },
    },
    {
      fieldName: 'type',
      label: '类型',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_TENANT_TYPE, 'number'),
        placeholder: '请选择类型',
      },
    },
    {
      fieldName: 'status',
      label: '租户状态',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_TENANT_STATUS, 'number'),
        placeholder: '请选择租户状态',
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
export function useGridColumns(): VxeTableGridOptions<SystemTenantApi.Tenant>['columns'] {
  return [
    { type: 'checkbox', width: 40 },
    {
      field: 'id',
      title: '租户编号',
      minWidth: 120,
    },
    {
      field: 'name',
      title: '租户名',
      minWidth: 120,
    },
    {
      field: 'code',
      title: '编码',
      minWidth: 120,
    },
    {
      field: 'contactUserId',
      title: '联系人的用户编号',
      minWidth: 120,
      visible: false,
    },
    {
      field: 'contactName',
      title: '联系人',
      minWidth: 120,
    },
    {
      field: 'contactMobile',
      title: '联系手机',
      minWidth: 120,
    },
    {
      field: 'industry',
      title: '行业',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_INDUSTRY },
      },
    },
    {
      field: 'type',
      title: '类型',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_TYPE },
      },
    },
    {
      field: 'addressCode',
      title: '地区',
      minWidth: 120,
    },
    {
      field: 'addressDetail',
      title: '地址',
      minWidth: 120,
    },
    {
      field: 'qualifications',
      title: '相关资质',
      minWidth: 120,
    },
    {
      field: 'status',
      title: '租户状态',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_STATUS },
      },
    },
    {
      field: 'website',
      title: '绑定域名',
      minWidth: 120,
    },
    {
      field: 'rechargeAmount',
      title: '充值金额',
      minWidth: 120,
    },
    {
      field: 'paymentAmount',
      title: '支付金额',
      minWidth: 120,
    },
    {
      field: 'balanceAmount',
      title: '余额',
      minWidth: 120,
    },
    {
      field: 'accountCount',
      title: '账号数量',
      minWidth: 120,
    },
    {
      field: 'currentAccountCount',
      title: '当前数量',
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
