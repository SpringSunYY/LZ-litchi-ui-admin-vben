import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { SystemTenantApi } from '#/api/system/tenant';

import { z } from '#/adapter/form';
import { getAreaTree } from '#/api/system/area';
import { $t } from '#/locales';
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
      label: $t('system.tenant.field.name'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenant.field.name'),
        ]),
      },
    },
    {
      fieldName: 'code',
      label: $t('system.tenant.field.code'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenant.field.code'),
        ]),
      },
    },
    {
      fieldName: 'contactName',
      label: $t('system.tenant.field.contactName'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenant.field.contactName'),
        ]),
      },
    },
    {
      fieldName: 'contactMobile',
      label: $t('system.tenant.field.contactMobile'),
      component: 'Input',
      rules: 'mobile',
    },
    {
      fieldName: 'industry',
      label: $t('system.tenant.field.industry'),
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_TENANT_INDUSTRY, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.tenant.field.industry'),
        ]),
      },
    },
    {
      fieldName: 'type',
      label: $t('system.tenant.field.type'),
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_TENANT_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.tenant.field.type'),
        ]),
      },
    },
    {
      fieldName: 'addressCode',
      label: $t('system.tenant.field.addressCode'),
      component: 'ApiTreeSelect',
      componentProps: {
        api: () => getAreaTree(),
        fieldNames: { label: 'name', value: 'id', children: 'children' },
      },
    },
    {
      fieldName: 'addressDetail',
      label: $t('system.tenant.field.addressDetail'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenant.field.addressDetail'),
        ]),
      },
    },
    {
      fieldName: 'qualifications',
      label: $t('system.tenant.field.qualifications'),
      component: 'FileUpload',
      componentProps: {
        moduleType: 'system',
      },
    },
    {
      label: $t('system.tenant.field.username'),
      fieldName: 'username',
      component: 'Input',
      rules: 'required',
      dependencies: {
        triggerFields: ['id'],
        show: (values) => !values.id,
      },
    },
    {
      label: $t('system.tenant.field.password'),
      fieldName: 'password',
      component: 'InputPassword',
      rules: 'required',
      dependencies: {
        triggerFields: ['id'],
        show: (values) => !values.id,
      },
    },
    {
      label: $t('system.tenant.field.website'),
      fieldName: 'website',
      component: 'Input',
    },
    {
      fieldName: 'status',
      label: $t('system.tenant.field.status'),
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
      label: $t('system.tenant.field.name'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenant.field.name'),
        ]),
      },
    },
    {
      fieldName: 'code',
      label: $t('system.tenant.field.code'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenant.field.code'),
        ]),
      },
    },
    {
      fieldName: 'contactName',
      label: $t('system.tenant.field.contactName'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenant.field.contactName'),
        ]),
      },
    },
    {
      fieldName: 'contactMobile',
      label: $t('system.tenant.field.contactMobile'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenant.field.contactMobile'),
        ]),
      },
    },
    {
      fieldName: 'industry',
      label: $t('system.tenant.field.industry'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_TENANT_INDUSTRY, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.tenant.field.industry'),
        ]),
      },
    },
    {
      fieldName: 'type',
      label: $t('system.tenant.field.type'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_TENANT_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.tenant.field.type'),
        ]),
      },
    },
    {
      fieldName: 'status',
      label: $t('system.tenant.field.status'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_TENANT_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.tenant.field.status'),
        ]),
      },
    },
    {
      fieldName: 'addressCode',
      label: $t('system.tenant.field.addressCode'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenant.field.addressCode'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('system.tenant.field.createTime'),
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
      title: $t('system.tenant.field.id'),
      minWidth: 120,
    },
    {
      field: 'name',
      title: $t('system.tenant.field.name'),
      minWidth: 120,
    },
    {
      field: 'code',
      title: $t('system.tenant.field.code'),
      minWidth: 120,
    },
    {
      field: 'contactUserId',
      title: $t('system.tenant.field.contactUserId'),
      minWidth: 120,
      visible: false,
    },
    {
      field: 'contactName',
      title: $t('system.tenant.field.contactName'),
      minWidth: 120,
    },
    {
      field: 'contactMobile',
      title: $t('system.tenant.field.contactMobile'),
      minWidth: 120,
    },
    {
      field: 'industry',
      title: $t('system.tenant.field.industry'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_INDUSTRY },
      },
    },
    {
      field: 'type',
      title: $t('system.tenant.field.type'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_TYPE },
      },
    },
    {
      field: 'addressCode',
      title: $t('system.tenant.field.addressCode'),
      minWidth: 160,
      slots: { default: 'addressCode' },
    },
    {
      field: 'addressDetail',
      title: $t('system.tenant.field.addressDetail'),
      minWidth: 120,
    },
    {
      field: 'qualifications',
      title: $t('system.tenant.field.qualifications'),
      minWidth: 120,
      cellRender: {
        name: 'CellFilePreview',
      },
    },
    {
      field: 'status',
      title: $t('system.tenant.field.status'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_STATUS },
      },
    },
    {
      field: 'website',
      title: $t('system.tenant.field.website'),
      minWidth: 120,
    },
    {
      field: 'rechargeAmount',
      title: $t('system.tenant.field.rechargeAmount'),
      minWidth: 120,
    },
    {
      field: 'paymentAmount',
      title: $t('system.tenant.field.paymentAmount'),
      minWidth: 120,
    },
    {
      field: 'balanceAmount',
      title: $t('system.tenant.field.balanceAmount'),
      minWidth: 120,
    },
    {
      field: 'accountCount',
      title: $t('system.tenant.field.accountCount'),
      minWidth: 120,
    },
    {
      field: 'currentAccountCount',
      title: $t('system.tenant.field.currentAccountCount'),
      minWidth: 120,
    },
    {
      field: 'createTime',
      title: $t('system.tenant.field.createTime'),
      minWidth: 120,
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 220,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
