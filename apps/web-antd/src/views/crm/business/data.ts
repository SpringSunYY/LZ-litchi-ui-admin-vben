import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { erpPriceMultiply } from '@vben/utils';

import { getBusinessStatusTypeSimpleList } from '#/api/crm/business/status';
import { getCustomerSimpleList } from '#/api/crm/customer';
import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';

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
      label: $t('crm.business.field.name'),
      component: 'Input',
      rules: 'required',
    },
    {
      fieldName: 'ownerUserId',
      label: $t('crm.business.field.ownerUser'),
      component: 'ApiSelect',
      componentProps: {
        api: () => getSimpleUserList(),
        fieldNames: {
          label: 'nickname',
          value: 'id',
        },
      },
      rules: 'required',
    },
    {
      fieldName: 'customerId',
      label: $t('crm.business.field.customerName'),
      component: 'ApiSelect',
      componentProps: {
        api: () => getCustomerSimpleList(),
        fieldNames: {
          label: 'name',
          value: 'id',
        },
      },
      dependencies: {
        triggerFields: ['id'],
        // disabled: (values) => !values.customerId,
      },
      rules: 'required',
    },
    {
      fieldName: 'contactId',
      label: $t('crm.business.field.contact'),
      component: 'Input',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'statusTypeId',
      label: $t('crm.business.field.statusType'),
      component: 'ApiSelect',
      componentProps: {
        api: () => getBusinessStatusTypeSimpleList(),
        fieldNames: {
          label: 'name',
          value: 'id',
        },
      },
      dependencies: {
        triggerFields: ['id'],
        disabled: (values) => values.id,
      },
      rules: 'required',
    },
    {
      fieldName: 'dealTime',
      label: $t('crm.business.field.dealTime'),
      component: 'DatePicker',
      rules: 'required',
      componentProps: {
        showTime: false,
        format: 'YYYY-MM-DD HH:mm:ss',
        valueFormat: 'x',
      },
    },
    {
      fieldName: 'product',
      label: $t('crm.business.field.product'),
      component: 'Input',
      formItemClass: 'col-span-3',
    },
    {
      fieldName: 'totalProductPrice',
      label: $t('crm.business.field.totalProductPrice'),
      component: 'InputNumber',
      componentProps: {
        min: 0,
      },
      rules: 'required',
    },
    {
      fieldName: 'discountPercent',
      label: $t('crm.business.field.discountPercent'),
      component: 'InputNumber',
      componentProps: {
        min: 0,
        precision: 2,
      },
      rules: 'required',
    },
    {
      fieldName: 'totalPrice',
      label: $t('crm.business.field.totalPrice'),
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
      fieldName: 'name',
      label: $t('crm.business.field.name'),
      component: 'Input',
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'name',
      title: $t('crm.business.field.name'),
      fixed: 'left',
      slots: { default: 'name' },
    },
    {
      field: 'customerName',
      title: $t('crm.business.field.customerName'),
      fixed: 'left',
      slots: { default: 'customerName' },
    },
    {
      field: 'totalPrice',
      title: $t('crm.business.field.totalPrice'),
      formatter: 'formatAmount2',
    },
    {
      field: 'dealTime',
      title: $t('crm.business.field.dealTime'),
      formatter: 'formatDate',
    },
    {
      field: 'remark',
      title: $t('crm.business.field.remark'),
    },
    {
      field: 'contactNextTime',
      title: $t('crm.business.field.contactNextTime'),
      formatter: 'formatDate',
    },
    {
      field: 'ownerUserName',
      title: $t('crm.business.field.ownerUser'),
    },
    {
      field: 'ownerUserDeptName',
      title: $t('crm.business.field.ownerUserDeptName'),
    },
    {
      field: 'contactLastTime',
      title: $t('crm.business.field.contactLastTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'updateTime',
      title: $t('crm.business.field.updateTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'createTime',
      title: $t('crm.business.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'creatorName',
      title: $t('crm.business.field.creatorName'),
    },
    {
      field: 'statusTypeName',
      title: $t('crm.business.field.statusTypeName'),
      fixed: 'right',
    },
    {
      field: 'statusName',
      title: $t('crm.business.field.statusName'),
      fixed: 'right',
    },
    {
      title: $t('common.operation'),
      width: 130,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
