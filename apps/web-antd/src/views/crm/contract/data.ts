import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { erpPriceMultiply, floatToFixed2 } from '@vben/utils';

import { z } from '#/adapter/form';
import { getSimpleBusinessList } from '#/api/crm/business';
import { getSimpleContactList } from '#/api/crm/contact';
import { getCustomerSimpleList } from '#/api/crm/customer';
import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

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
      fieldName: 'no',
      label: $t('crm.contract.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: `${$t('crm.contract.field.no')} - ${$t(
          'ui.placeholder.autoGenerate',
        )}`,
        disabled: () => true,
      },
    },
    {
      fieldName: 'name',
      label: $t('crm.contract.field.name'),
      component: 'Input',
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.contract.field.name'),
        ]),
      },
    },
    {
      fieldName: 'ownerUserId',
      label: $t('crm.contract.field.ownerUserId'),
      component: 'ApiSelect',
      componentProps: {
        api: () => getSimpleUserList(),
        fieldNames: {
          label: 'nickname',
          value: 'id',
        },
        placeholder: $t('ui.placeholder.select', [
          $t('crm.contract.field.ownerUserId'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'customerId',
      label: $t('crm.contract.field.customerId'),
      component: 'ApiSelect',
      rules: 'required',
      componentProps: {
        api: getCustomerSimpleList,
        labelField: 'name',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [
          $t('crm.contract.field.customerId'),
        ]),
      },
    },
    {
      fieldName: 'businessId',
      label: $t('crm.contract.field.businessId'),
      component: 'ApiSelect',
      componentProps: {
        api: getSimpleBusinessList,
        labelField: 'name',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [
          $t('crm.contract.field.businessId'),
        ]),
      },
    },
    {
      fieldName: 'orderDate',
      label: $t('crm.contract.field.orderDate'),
      component: 'DatePicker',
      rules: 'required',
      componentProps: {
        showTime: false,
        format: 'YYYY-MM-DD',
        valueFormat: 'x',
        placeholder: $t('ui.placeholder.date', [
          $t('crm.contract.field.orderDate'),
        ]),
      },
    },
    {
      fieldName: 'startTime',
      label: $t('crm.contract.field.startTime'),
      component: 'DatePicker',
      componentProps: {
        showTime: false,
        format: 'YYYY-MM-DD',
        valueFormat: 'x',
        placeholder: $t('ui.placeholder.date', [
          $t('crm.contract.field.startTime'),
        ]),
      },
    },
    {
      fieldName: 'endTime',
      label: $t('crm.contract.field.endTime'),
      component: 'DatePicker',
      componentProps: {
        showTime: false,
        format: 'YYYY-MM-DD',
        valueFormat: 'x',
        placeholder: $t('ui.placeholder.date', [
          $t('crm.contract.field.endTime'),
        ]),
      },
    },
    {
      fieldName: 'signUserId',
      label: $t('crm.contract.field.signUserId'),
      component: 'ApiSelect',
      componentProps: {
        api: () => getSimpleUserList(),
        fieldNames: {
          label: 'nickname',
          value: 'id',
        },
        placeholder: $t('ui.placeholder.select', [
          $t('crm.contract.field.signUserId'),
        ]),
      },
    },
    {
      fieldName: 'signContactId',
      label: $t('crm.contract.field.signContactId'),
      component: 'ApiSelect',
      componentProps: {
        api: getSimpleContactList,
        labelField: 'name',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [
          $t('crm.contract.field.signContactId'),
        ]),
      },
    },
    {
      fieldName: 'remark',
      label: $t('crm.contract.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.contract.field.remark'),
        ]),
        rows: 4,
      },
    },
    {
      fieldName: 'product',
      label: $t('crm.contract.field.product'),
      component: 'Input',
      formItemClass: 'col-span-3',
    },
    {
      fieldName: 'totalProductPrice',
      label: $t('crm.contract.field.totalProductPrice'),
      component: 'InputNumber',
      componentProps: {
        min: 0,
      },
    },
    {
      fieldName: 'discountPercent',
      label: $t('crm.contract.field.discountPercent'),
      component: 'InputNumber',
      rules: z.number().min(0).max(100).default(0),
      componentProps: {
        min: 0,
        precision: 2,
      },
    },
    {
      fieldName: 'totalPrice',
      label: $t('crm.contract.field.totalPrice'),
      component: 'InputNumber',
      dependencies: {
        triggerFields: ['totalProductPrice', 'discountPercent'],
        disabled: () => true,
        trigger(values, form) {
          const discountPrice =
            erpPriceMultiply(
              values.totalProductPrice,
              values.discountPercent / 100,
            ) ?? 0;
          form.setFieldValue(
            'totalPrice',
            values.totalProductPrice - discountPrice,
          );
        },
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'no',
      label: $t('crm.contract.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('crm.contract.field.no')]),
      },
    },
    {
      fieldName: 'name',
      label: $t('crm.contract.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.contract.field.name'),
        ]),
      },
    },
    {
      fieldName: 'customerId',
      label: $t('crm.contract.field.customerName'),
      component: 'ApiSelect',
      componentProps: {
        api: getCustomerSimpleList,
        labelField: 'name',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [
          $t('crm.contract.field.customerName'),
        ]),
      },
    },
  ];
}

export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      title: $t('crm.contract.field.no'),
      field: 'no',
      minWidth: 150,
      fixed: 'left',
    },
    {
      title: $t('crm.contract.field.name'),
      field: 'name',
      minWidth: 150,
      fixed: 'left',
      slots: { default: 'name' },
    },
    {
      title: $t('crm.contract.field.customerName'),
      field: 'customerName',
      minWidth: 150,
      slots: { default: 'customerName' },
    },
    {
      title: $t('crm.contract.field.businessName'),
      field: 'businessName',
      minWidth: 150,
      slots: { default: 'businessName' },
    },
    {
      title: $t('crm.contract.field.totalPrice'),
      field: 'totalPrice',
      minWidth: 150,
      formatter: 'formatAmount2',
    },
    {
      title: $t('crm.contract.field.orderDate'),
      field: 'orderDate',
      minWidth: 150,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.contract.field.startTime'),
      field: 'startTime',
      minWidth: 150,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.contract.field.endTime'),
      field: 'endTime',
      minWidth: 150,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.contract.field.signContactName'),
      field: 'signContactName',
      minWidth: 150,
      slots: { default: 'signContactName' },
    },
    {
      title: $t('crm.contract.field.signUserName'),
      field: 'signUserName',
      minWidth: 150,
    },
    {
      title: $t('crm.contract.field.totalReceivablePrice'),
      field: 'totalReceivablePrice',
      minWidth: 150,
      formatter: 'formatAmount2',
    },
    {
      title: $t('crm.contract.field.unpaidPrice'),
      field: 'unpaidPrice',
      minWidth: 150,
      formatter: ({ row }) => {
        return floatToFixed2(row.totalPrice - row.totalReceivablePrice);
      },
    },
    {
      title: $t('crm.contract.field.contactLastTime'),
      field: 'contactLastTime',
      minWidth: 150,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.contract.field.ownerUserName'),
      field: 'ownerUserName',
      minWidth: 150,
    },
    {
      title: $t('crm.contract.field.ownerUserDeptName'),
      field: 'ownerUserDeptName',
      minWidth: 150,
    },
    {
      title: $t('crm.contract.field.updateTime'),
      field: 'updateTime',
      minWidth: 150,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.contract.field.createTime'),
      field: 'createTime',
      minWidth: 150,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.contract.field.creatorName'),
      field: 'creatorName',
      minWidth: 150,
    },
    {
      title: $t('crm.contract.field.remark'),
      field: 'remark',
      minWidth: 150,
    },
    {
      title: $t('crm.contract.field.auditStatus'),
      field: 'auditStatus',
      fixed: 'right',
      minWidth: 100,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_AUDIT_STATUS },
      },
    },
    {
      title: $t('common.operation'),
      field: 'actions',
      fixed: 'right',
      width: 130,
      slots: { default: 'actions' },
    },
  ];
}
