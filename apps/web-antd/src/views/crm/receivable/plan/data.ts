import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { floatToFixed2 } from '@vben/utils';

import { getContractSimpleList } from '#/api/crm/contract';
import { getCustomerSimpleList } from '#/api/crm/customer';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions } from '#/utils';

/** 新增/修改的表单 */
export function useFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'customerId',
      label: $t('crm.receivablePlan.field.customerId'),
      component: 'ApiSelect',
      rules: 'required',
      componentProps: {
        api: getCustomerSimpleList,
        labelField: 'name',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [
          $t('crm.receivablePlan.field.customerId'),
        ]),
      },
    },
    {
      fieldName: 'contractId',
      label: $t('crm.receivablePlan.field.contractId'),
      component: 'ApiSelect',
      rules: 'required',
      dependencies: {
        triggerFields: ['customerId'],
        disabled: (values) => !values.customerId,
        async componentProps(values) {
          if (values.customerId) {
            values.contractId = undefined;
            const contracts = await getContractSimpleList(values.customerId);
            return {
              options: contracts.map((item) => ({
                label: item.name,
                value: item.id,
              })),
              placeholder: $t('ui.placeholder.select', [
                $t('crm.receivablePlan.field.contractId'),
              ]),
            };
          }
          return {
            options: [],
            placeholder: $t('ui.placeholder.select', [
              $t('crm.receivablePlan.field.contractId'),
            ]),
          };
        },
      },
    },
    {
      fieldName: 'period',
      label: $t('crm.receivablePlan.field.period'),
      component: 'Input',
      componentProps: {
        placeholder: $t('crm.receivablePlan.message.autoGenerateNo'),
        disabled: true,
      },
    },
    {
      fieldName: 'price',
      label: $t('crm.receivablePlan.field.price'),
      component: 'InputNumber',
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.receivablePlan.field.price'),
        ]),
        min: 0,
        precision: 2,
      },
    },
    {
      fieldName: 'returnTime',
      label: $t('crm.receivablePlan.field.returnTime'),
      component: 'DatePicker',
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('crm.receivablePlan.field.returnTime'),
        ]),
      },
    },
    {
      fieldName: 'remindDays',
      label: $t('crm.receivablePlan.field.remindDays'),
      component: 'InputNumber',
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.receivablePlan.field.remindDays'),
        ]),
        min: 0,
      },
    },
    {
      fieldName: 'returnType',
      label: $t('crm.receivablePlan.field.returnType'),
      component: 'Select',
      rules: 'required',
      componentProps: {
        options: getDictOptions(DICT_TYPE.CRM_RECEIVABLE_RETURN_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('crm.receivablePlan.field.returnType'),
        ]),
      },
    },
    {
      fieldName: 'remark',
      label: $t('crm.receivablePlan.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.receivablePlan.field.remark'),
        ]),
        rows: 4,
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'customerId',
      label: $t('crm.receivablePlan.field.customerId'),
      component: 'ApiSelect',
      componentProps: {
        api: getCustomerSimpleList,
        labelField: 'name',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [
          $t('crm.receivablePlan.field.customerId'),
        ]),
      },
    },
    {
      fieldName: 'contractNo',
      label: $t('crm.receivablePlan.field.contractNo'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.receivablePlan.field.contractNo'),
        ]),
      },
    },
  ];
}

export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      title: $t('crm.receivablePlan.field.customerName'),
      field: 'customerName',
      minWidth: 150,
      fixed: 'left',
      slots: { default: 'customerName' },
    },
    {
      title: $t('crm.receivablePlan.field.contractNo'),
      field: 'contractNo',
      minWidth: 200,
    },
    {
      title: $t('crm.receivablePlan.field.period'),
      field: 'period',
      minWidth: 150,
      slots: { default: 'period' },
    },
    {
      title: $t('crm.receivablePlan.field.priceUnit'),
      field: 'price',
      minWidth: 160,
      formatter: 'formatAmount2',
    },
    {
      title: $t('crm.receivablePlan.field.returnTime'),
      field: 'returnTime',
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.receivablePlan.field.remindDays'),
      field: 'remindDays',
      minWidth: 150,
    },
    {
      title: $t('crm.receivablePlan.field.remindTime'),
      field: 'remindTime',
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.receivablePlan.field.returnType'),
      field: 'returnType',
      minWidth: 130,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.CRM_RECEIVABLE_RETURN_TYPE },
      },
    },
    {
      title: $t('crm.receivablePlan.field.remark'),
      field: 'remark',
      minWidth: 120,
    },
    {
      title: $t('crm.receivablePlan.field.ownerUserName'),
      field: 'ownerUserName',
      minWidth: 120,
    },
    {
      title: $t('crm.receivablePlan.field.receivablePriceUnit'),
      field: 'receivable.price',
      minWidth: 160,
      formatter: 'formatAmount2',
    },
    {
      title: $t('crm.receivablePlan.field.receivableTime'),
      field: 'receivable.returnTime',
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.receivablePlan.field.unpaidPriceUnit'),
      field: 'unpaidPrice',
      minWidth: 160,
      formatter: ({ row }) => {
        if (row.receivable) {
          return floatToFixed2(row.price - row.receivable.price);
        }
        return floatToFixed2(row.price);
      },
    },
    {
      title: $t('crm.receivablePlan.field.updateTime'),
      field: 'updateTime',
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.receivablePlan.field.createTime'),
      field: 'createTime',
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.receivablePlan.field.creatorName'),
      field: 'creatorName',
      minWidth: 100,
    },
    {
      title: $t('common.operation'),
      field: 'actions',
      width: 180,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
