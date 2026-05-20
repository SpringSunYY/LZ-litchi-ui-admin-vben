import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { erpPriceInputFormatter } from '@vben/utils';

import { getAccountSimpleList } from '#/api/erp/finance/account';
import { getCustomerSimpleList } from '#/api/erp/sale/customer';
import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

/** 表单的配置项 */
export function useFormSchema(formType: string): VbenFormSchema[] {
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
      label: $t('erp.receipt.field.no'),
      component: 'Input',
      componentProps: {
        disabled: true,
      },
    },
    {
      fieldName: 'receiptTime',
      label: $t('erp.receipt.field.receiptTime'),
      component: 'DatePicker',
      componentProps: {
        disabled: formType === 'detail',
        placeholder: $t('ui.placeholder.date', [
          $t('erp.receipt.field.receiptTime'),
        ]),
        showTime: true,
        format: 'YYYY-MM-DD HH:mm:ss',
        valueFormat: 'x',
      },
      rules: 'required',
    },
    {
      fieldName: 'customerId',
      label: $t('erp.receipt.field.customerIdName'),
      component: 'ApiSelect',
      componentProps: {
        disabled: formType === 'detail',
        placeholder: $t('ui.placeholder.select', [
          $t('erp.receipt.field.customerIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getCustomerSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
      rules: 'required',
    },
    {
      fieldName: 'financeUserId',
      label: $t('erp.receipt.field.financeUserIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.receipt.field.financeUserIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
      },
    },
    {
      fieldName: 'remark',
      label: $t('erp.receipt.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.receipt.field.remark'),
        ]),
        autoSize: { minRows: 1, maxRows: 1 },
        disabled: formType === 'detail',
      },
      formItemClass: 'col-span-2',
    },
    {
      fieldName: 'fileUrl',
      label: $t('erp.receipt.field.fileUrl'),
      component: 'FileUpload',
      componentProps: {
        maxNumber: 1,
        maxSize: 10,
        accept: [
          'pdf',
          'doc',
          'docx',
          'xls',
          'xlsx',
          'txt',
          'jpg',
          'jpeg',
          'png',
        ],
        showDescription: formType !== 'detail',
        disabled: formType === 'detail',
      },
      formItemClass: 'col-span-3',
    },
    {
      fieldName: 'items',
      label: $t('erp.receipt.field.items'),
      component: 'Input',
      formItemClass: 'col-span-3',
    },
    {
      fieldName: 'accountId',
      label: $t('erp.receipt.field.accountIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.receipt.field.accountIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getAccountSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
    {
      fieldName: 'totalPrice',
      label: $t('erp.receipt.field.totalPrice'),
      component: 'InputNumber',
      componentProps: {
        precision: 2,
        formatter: erpPriceInputFormatter,
        disabled: true,
      },
    },
    {
      fieldName: 'discountPrice',
      label: $t('erp.receipt.field.discountPrice'),
      component: 'InputNumber',
      componentProps: {
        disabled: formType === 'detail',
        placeholder: $t('ui.placeholder.input', [
          $t('erp.receipt.field.discountPrice'),
        ]),
        precision: 2,
        formatter: erpPriceInputFormatter,
      },
    },
    {
      fieldName: 'receiptPrice',
      label: $t('erp.receipt.field.receiptPrice'),
      component: 'InputNumber',
      componentProps: {
        precision: 2,
        formatter: erpPriceInputFormatter,
        disabled: true,
      },
      dependencies: {
        triggerFields: ['totalPrice', 'discountPrice'],
        componentProps: (values) => {
          const totalPrice = values.totalPrice || 0;
          const discountPrice = values.discountPrice || 0;
          values.receiptPrice = totalPrice - discountPrice;
          return {};
        },
      },
    },
  ];
}

/** 表单的明细表格列 */
export function useFormItemColumns(
  disabled: boolean,
): VxeTableGridOptions['columns'] {
  return [
    {
      type: 'seq',
      title: $t('erp.receipt.message.seq'),
      minWidth: 50,
      fixed: 'left',
    },
    {
      field: 'bizNo',
      title: $t('erp.receipt.field.bizNoName'),
      minWidth: 200,
    },
    {
      field: 'totalPrice',
      title: $t('erp.receipt.message.shouldReceivePrice'),
      minWidth: 100,
      formatter: 'formatAmount2',
    },
    {
      field: 'receiptedPrice',
      title: $t('erp.receipt.field.receiptedPrice'),
      minWidth: 100,
      formatter: 'formatAmount2',
    },
    {
      field: 'receiptPrice',
      title: $t('erp.receipt.message.currentReceipt'),
      minWidth: 115,
      fixed: 'right',
      slots: { default: 'receiptPrice' },
    },
    {
      field: 'remark',
      title: $t('erp.receipt.field.remark'),
      minWidth: 150,
      slots: { default: 'remark' },
    },
    {
      title: $t('common.operation'),
      width: 50,
      fixed: 'right',
      slots: { default: 'actions' },
      visible: !disabled,
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'no',
      label: $t('erp.receipt.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.receipt.field.no')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'receiptTime',
      label: $t('erp.receipt.field.receiptTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'customerId',
      label: $t('erp.receipt.field.customerIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.receipt.field.customerIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getCustomerSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
    {
      fieldName: 'creator',
      label: $t('erp.receipt.field.creatorName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.receipt.field.creatorName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
      },
    },
    {
      fieldName: 'financeUserId',
      label: $t('erp.receipt.field.financeUserIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.receipt.field.financeUserIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
      },
    },
    {
      fieldName: 'accountId',
      label: $t('erp.receipt.field.accountIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.receipt.field.accountIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getAccountSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
    {
      fieldName: 'status',
      label: $t('erp.receipt.field.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.ERP_AUDIT_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('erp.receipt.field.status'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'remark',
      label: $t('erp.receipt.field.remark'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.receipt.field.remark'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'bizNo',
      label: $t('erp.receipt.field.bizNo'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.receipt.field.bizNo'),
        ]),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      type: 'checkbox',
      width: 50,
      fixed: 'left',
    },
    {
      field: 'no',
      title: $t('erp.receipt.field.no'),
      width: 180,
      fixed: 'left',
    },
    {
      field: 'customerName',
      title: $t('erp.receipt.field.customerIdName'),
      minWidth: 120,
    },
    {
      field: 'receiptTime',
      title: $t('erp.receipt.field.receiptTime'),
      width: 160,
      formatter: 'formatDate',
    },
    {
      field: 'creatorName',
      title: $t('erp.receipt.field.creatorName'),
      minWidth: 120,
    },
    {
      field: 'financeUserName',
      title: $t('erp.receipt.field.financeUserIdName'),
      minWidth: 120,
    },
    {
      field: 'accountName',
      title: $t('erp.receipt.field.accountIdName'),
      minWidth: 120,
    },
    {
      field: 'totalPrice',
      title: $t('erp.receipt.field.totalPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'discountPrice',
      title: $t('erp.receipt.field.discountPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'receiptPrice',
      title: $t('erp.receipt.field.receiptPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'status',
      title: $t('erp.receipt.field.status'),
      minWidth: 90,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.ERP_AUDIT_STATUS },
      },
    },
    {
      title: $t('common.operation'),
      width: 260,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}

/** 销售出库单选择表单的配置项 */
export function useSaleOutGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'no',
      label: $t('erp.receipt.field.saleOutNo'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.receipt.field.saleOutNo'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'customerId',
      label: $t('erp.receipt.field.customerIdName'),
      component: 'Input',
      componentProps: {
        disabled: true,
        placeholder: $t('erp.receipt.message.autoSelectedCustomer'),
      },
    },
    {
      fieldName: 'receiptStatus',
      label: $t('erp.receipt.field.receiptStatus'),
      component: 'Select',
      componentProps: {
        options: [
          { label: $t('erp.receipt.message.unreceipt'), value: 0 },
          { label: $t('erp.receipt.message.partialReceipt'), value: 1 },
          { label: $t('erp.receipt.message.receipted'), value: 2 },
        ],
        placeholder: $t('ui.placeholder.select', [
          $t('erp.receipt.field.receiptStatus'),
        ]),
        allowClear: true,
      },
    },
  ];
}

/** 销售出库单选择列表的字段 */
export function useSaleOutGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      type: 'checkbox',
      width: 50,
      fixed: 'left',
    },
    {
      field: 'no',
      title: $t('erp.receipt.field.saleOutNo'),
      width: 200,
      fixed: 'left',
    },
    {
      field: 'customerName',
      title: $t('erp.receipt.field.customerIdName'),
      minWidth: 120,
    },
    {
      field: 'outTime',
      title: $t('erp.receipt.field.outTime'),
      width: 160,
      formatter: 'formatDate',
    },
    {
      field: 'totalPrice',
      title: $t('erp.receipt.message.shouldReceivePrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'receiptPrice',
      title: $t('erp.receipt.field.receiptedPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'unReceiptPrice',
      title: $t('erp.receipt.message.unreceiptPrice'),
      formatter: ({ row }) => {
        return erpPriceInputFormatter(row.totalPrice - row.receiptPrice || 0);
      },
      minWidth: 120,
    },
    {
      field: 'status',
      title: $t('erp.receipt.field.status'),
      minWidth: 100,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.ERP_AUDIT_STATUS },
      },
    },
  ];
}

/** 销售退货单选择表单的配置项 */
export function useSaleReturnGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'no',
      label: $t('erp.receipt.field.saleReturnNo'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.receipt.field.saleReturnNo'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'customerId',
      label: $t('erp.receipt.field.customerIdName'),
      component: 'Input',
      componentProps: {
        disabled: true,
        placeholder: $t('erp.receipt.message.autoSelectedCustomer'),
      },
    },
    {
      fieldName: 'refundStatus',
      label: $t('erp.receipt.field.refundStatus'),
      component: 'Select',
      componentProps: {
        options: [
          { label: $t('erp.receipt.message.unrefunded'), value: 0 },
          { label: $t('erp.receipt.message.partialRefund'), value: 1 },
          { label: $t('erp.receipt.message.refunded'), value: 2 },
        ],
        placeholder: $t('ui.placeholder.select', [
          $t('erp.receipt.field.refundStatus'),
        ]),
        allowClear: true,
      },
    },
  ];
}

/** 销售退货单选择列表的字段 */
export function useSaleReturnGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      type: 'checkbox',
      width: 50,
      fixed: 'left',
    },
    {
      field: 'no',
      title: $t('erp.receipt.field.saleReturnNo'),
      width: 200,
      fixed: 'left',
    },
    {
      field: 'customerName',
      title: $t('erp.receipt.field.customerIdName'),
      minWidth: 120,
    },
    {
      field: 'returnTime',
      title: $t('erp.receipt.field.returnTime'),
      width: 160,
      formatter: 'formatDate',
    },
    {
      field: 'totalPrice',
      title: $t('erp.receipt.message.shouldReturnPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'refundPrice',
      title: $t('erp.receipt.message.refundedPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'unRefundPrice',
      title: $t('erp.receipt.message.unRefundPrice'),
      formatter: ({ row }) => {
        return erpPriceInputFormatter(row.totalPrice - row.refundPrice || 0);
      },
      minWidth: 120,
    },
    {
      field: 'status',
      title: $t('erp.receipt.field.status'),
      minWidth: 100,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.ERP_AUDIT_STATUS },
      },
    },
  ];
}
