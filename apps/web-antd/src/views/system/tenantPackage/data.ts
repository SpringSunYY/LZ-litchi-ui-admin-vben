import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { SystemTenantPackageApi } from '#/api/system/tenantPackage';

import { z } from '#/adapter/form';
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
      formItemClass: 'col-span-1',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'name',
      label: $t('system.tenantPackage.field.name'),
      formItemClass: 'col-span-1',
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackage.field.name'),
        ]),
      },
    },
    {
      fieldName: 'code',
      label: $t('system.tenantPackage.field.code'),
      formItemClass: 'col-span-1',
      rules: 'required',
      component: 'Input',
      componentProps: (values) => {
        return {
          placeholder: $t('system.tenantPackage.field.code'),
          readOnly: !!values.id,
        };
      },
    },
    {
      fieldName: 'price',
      label: $t('system.tenantPackage.field.price'),
      rules: 'required',
      formItemClass: 'col-span-1',
      component: 'InputNumber',
      defaultValue: 0,
      componentProps: {
        min: 0,
        precision: 2,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackage.field.price'),
        ]),
      },
    },
    {
      fieldName: 'orderNum',
      label: $t('system.tenantPackage.field.sort'),
      rules: 'required',
      formItemClass: 'col-span-1',
      component: 'InputNumber',
      defaultValue: 1,
      componentProps: {
        min: 0,
        max: 10,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackage.field.sort'),
        ]),
      },
    },
    {
      fieldName: 'subscriptionNum',
      label: $t('system.tenantPackage.field.subscriptionNum'),
      rules: 'required',
      formItemClass: 'col-span-1',
      component: 'InputNumber',
      defaultValue: 0,
      componentProps: {
        min: 0,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackage.field.subscriptionNum'),
        ]),
      },
    },
    {
      fieldName: 'subscriptionTotalAmount',
      label: $t('system.tenantPackage.field.subscriptionTotalAmount'),
      rules: 'required',
      component: 'InputNumber',
      formItemClass: 'col-span-1',
      defaultValue: 0,
      componentProps: {
        min: 0,
        precision: 2,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackage.field.subscriptionTotalAmount'),
        ]),
      },
    },
    {
      fieldName: 'status',
      label: $t('system.tenantPackage.field.status'),
      formItemClass: 'col-span-1',
      component: 'RadioGroup',
      defaultValue: 0,
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
      fieldName: 'published',
      label: $t('system.tenantPackage.field.published'),
      rules: 'required',
      formItemClass: 'col-span-1',
      component: 'RadioGroup',
      defaultValue: 0,
      componentProps: {
        options: getDictOptions(
          DICT_TYPE.SYSTEM_TENANT_PACKAGE_PUBLISHED,
          'number',
        ),
        buttonStyle: 'solid',
        optionType: 'button',
      },
    },
    {
      fieldName: 'type',
      label: $t('system.tenantPackage.field.type'),
      formItemClass: 'col-span-1',
      rules: 'required',
      component: 'Select',
      defaultValue: 0,
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_TENANT_PACKAGE_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.tenantPackage.field.type'),
        ]),
      },
    },
    {
      fieldName: 'logo',
      label: $t('system.tenantPackage.field.logo'),
      rules: 'required',
      component: 'ImageUpload',
      componentProps: {
        moduleType: 'system',
      },
    },
    {
      fieldName: 'description',
      label: $t('system.tenantPackage.field.description'),
      component: 'RichTextarea',
    },
    {
      fieldName: 'remark',
      label: $t('system.tenantPackage.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackage.field.remark'),
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
      fieldName: 'name',
      label: $t('system.tenantPackage.field.name'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackage.field.name'),
        ]),
      },
    },
    {
      fieldName: 'code',
      label: $t('system.tenantPackage.field.code'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackage.field.code'),
        ]),
      },
    },
    {
      fieldName: 'type',
      label: $t('system.tenantPackage.field.type'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_TENANT_PACKAGE_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.tenantPackage.field.type'),
        ]),
      },
    },
    {
      fieldName: 'description',
      label: $t('system.tenantPackage.field.description'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.tenantPackage.field.description'),
        ]),
      },
    },
    {
      fieldName: 'status',
      label: $t('system.tenantPackage.field.status'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(
          DICT_TYPE.SYSTEM_TENANT_PACKAGE_STATUS,
          'number',
        ),
        placeholder: $t('ui.placeholder.select', [
          $t('system.tenantPackage.field.status'),
        ]),
      },
    },
    {
      fieldName: 'published',
      label: $t('system.tenantPackage.field.published'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(
          DICT_TYPE.SYSTEM_TENANT_PACKAGE_PUBLISHED,
          'number',
        ),
        placeholder: $t('ui.placeholder.select', [
          $t('system.tenantPackage.field.published'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('system.tenantPackage.field.createTime'),
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
      title: $t('system.tenantPackage.field.id'),
      minWidth: 120,
    },
    {
      field: 'name',
      title: $t('system.tenantPackage.field.name'),
      minWidth: 120,
    },
    {
      field: 'code',
      title: $t('system.tenantPackage.field.code'),
      minWidth: 120,
    },
    {
      field: 'type',
      title: $t('system.tenantPackage.field.type'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_PACKAGE_TYPE },
      },
    },
    {
      field: 'logo',
      title: $t('system.tenantPackage.field.logo'),
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
      title: $t('system.tenantPackage.field.price'),
      minWidth: 120,
    },
    {
      field: 'description',
      title: $t('system.tenantPackage.field.description'),
      minWidth: 120,
    },
    {
      field: 'status',
      title: $t('system.tenantPackage.field.status'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_PACKAGE_STATUS },
      },
    },
    {
      field: 'published',
      title: $t('system.tenantPackage.field.published'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_TENANT_PACKAGE_PUBLISHED },
      },
    },
    {
      field: 'orderNum',
      title: $t('system.tenantPackage.field.sort'),
      minWidth: 120,
    },
    {
      field: 'subscriptionNum',
      title: $t('system.tenantPackage.field.subscriptionNum'),
      minWidth: 120,
    },
    {
      field: 'subscriptionTotalAmount',
      title: $t('system.tenantPackage.field.subscriptionTotalAmount'),
      minWidth: 120,
    },
    {
      field: 'remark',
      title: $t('system.tenantPackage.field.remark'),
      minWidth: 120,
    },
    {
      field: 'createTime',
      title: $t('system.tenantPackage.field.createTime'),
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
