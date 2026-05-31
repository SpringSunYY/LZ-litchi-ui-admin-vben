import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { getContractSimpleList } from '#/api/crm/contract';
import { getCustomerSimpleList } from '#/api/crm/customer';
import { getReceivablePlanSimpleList } from '#/api/crm/receivable/plan';
import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions } from '#/utils';

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
      label: $t('crm.receivable.field.no'),
      component: 'Input',
      // rules: 'required',
      componentProps: {
        placeholder: $t('crm.receivable.message.autoGenerateNo'),
        disabled: true,
      },
    },
    {
      fieldName: 'ownerUserId',
      label: $t('crm.receivable.field.ownerUserId'),
      component: 'ApiSelect',
      rules: 'required',
      componentProps: {
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [
          $t('crm.receivable.field.ownerUserId'),
        ]),
      },
    },
    {
      fieldName: 'customerId',
      label: $t('crm.receivable.field.customerId'),
      component: 'ApiSelect',
      rules: 'required',
      componentProps: {
        api: getCustomerSimpleList,
        labelField: 'name',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [
          $t('crm.receivable.field.customerId'),
        ]),
      },
    },
    {
      fieldName: 'contractId',
      label: $t('crm.receivable.field.contractId'),
      component: 'I18nSelect',
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
                disabled: item.auditStatus === 20,
              })),
              placeholder: $t('ui.placeholder.select', [
                $t('crm.receivable.field.contractId'),
              ]),
            } as any;
          }
        },
      },
    },
    {
      fieldName: 'planId',
      label: $t('crm.receivable.field.planId'),
      component: 'I18nSelect',
      rules: 'required',
      dependencies: {
        triggerFields: ['contractId'],
        disabled: (values) => !values.contractId,
        async componentProps(values) {
          if (values.contractId) {
            values.planId = undefined;
            const plans = await getReceivablePlanSimpleList(
              values.customerId,
              values.contractId,
            );
            return {
              options: plans.map((item) => ({
                label: item.period,
                value: item.id,
              })),
              placeholder: $t('ui.placeholder.select', [
                $t('crm.receivable.field.planId'),
              ]),
            } as any;
          }
        },
      },
    },
    {
      fieldName: 'returnTime',
      label: $t('crm.receivable.field.returnTime'),
      component: 'DatePicker',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('crm.receivable.field.returnTime'),
        ]),
        showTime: false,
        valueFormat: 'x',
        format: 'YYYY-MM-DD',
      },
    },
    {
      fieldName: 'price',
      label: $t('crm.receivable.field.price'),
      component: 'InputNumber',
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.receivable.field.price'),
        ]),
        min: 0,
        precision: 2,
      },
    },
    {
      fieldName: 'returnType',
      label: $t('crm.receivable.field.returnType'),
      component: 'I18nSelect',
      rules: 'required',
      componentProps: {
        options: getDictOptions(DICT_TYPE.CRM_RECEIVABLE_RETURN_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('crm.receivable.field.returnType'),
        ]),
      },
    },
    {
      fieldName: 'remark',
      label: $t('crm.receivable.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.receivable.field.remark'),
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
      fieldName: 'no',
      label: $t('crm.receivable.field.no'),
      component: 'Input',
    },
    {
      fieldName: 'customerId',
      label: $t('crm.receivable.field.customerId'),
      component: 'ApiSelect',
      componentProps: {
        api: getCustomerSimpleList,
        labelField: 'name',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [
          $t('crm.receivable.field.customerId'),
        ]),
      },
    },
  ];
}

export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      title: $t('crm.receivable.field.no'),
      field: 'no',
      minWidth: 150,
      fixed: 'left',
      slots: { default: 'no' },
    },
    {
      title: $t('crm.receivable.field.customerName'),
      field: 'customerName',
      minWidth: 150,
      slots: { default: 'customerName' },
    },
    {
      title: $t('crm.receivable.field.contract'),
      field: 'contract',
      minWidth: 150,
      slots: { default: 'contractNo' },
    },
    {
      title: $t('crm.receivable.field.returnTime'),
      field: 'returnTime',
      minWidth: 150,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.receivable.field.priceUnit'),
      field: 'price',
      minWidth: 150,
      formatter: 'formatAmount2',
    },
    {
      title: $t('crm.receivable.field.returnType'),
      field: 'returnType',
      minWidth: 150,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_RECEIVABLE_RETURN_TYPE },
      },
    },
    {
      title: $t('crm.receivable.field.remark'),
      field: 'remark',
      minWidth: 150,
    },
    {
      title: $t('crm.receivable.field.totalPrice'),
      field: 'contract.totalPrice',
      minWidth: 150,
      formatter: 'formatAmount2',
    },
    {
      title: $t('crm.receivable.field.ownerUserName'),
      field: 'ownerUserName',
      minWidth: 150,
    },
    {
      title: $t('crm.receivable.field.ownerUserDeptName'),
      field: 'ownerUserDeptName',
      minWidth: 150,
    },
    {
      title: $t('crm.receivable.field.updateTime'),
      field: 'updateTime',
      minWidth: 150,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.receivable.field.createTime'),
      field: 'createTime',
      minWidth: 150,
      formatter: 'formatDateTime',
    },
    {
      title: $t('crm.receivable.field.creatorName'),
      field: 'creatorName',
      minWidth: 150,
    },
    {
      title: $t('crm.receivable.field.auditStatus'),
      field: 'auditStatus',
      minWidth: 100,
      fixed: 'right',
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_AUDIT_STATUS },
      },
    },
    {
      title: $t('common.operation'),
      field: 'actions',
      width: 130,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
