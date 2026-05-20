import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { erpPriceInputFormatter } from '@vben/utils';

import { getAccountSimpleList } from '#/api/erp/finance/account';
import { getSupplierSimpleList } from '#/api/erp/purchase/supplier';
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
      label: $t('erp.payment.field.no'),
      component: 'Input',
      componentProps: {
        disabled: true,
      },
    },
    {
      fieldName: 'paymentTime',
      label: $t('erp.payment.field.paymentTime'),
      component: 'DatePicker',
      componentProps: {
        disabled: formType === 'detail',
        placeholder: $t('ui.placeholder.date', [
          $t('erp.payment.field.paymentTime'),
        ]),
        showTime: true,
        format: 'YYYY-MM-DD HH:mm:ss',
        valueFormat: 'x',
      },
      rules: 'required',
    },
    {
      fieldName: 'supplierId',
      label: $t('erp.payment.field.supplierIdName'),
      component: 'ApiSelect',
      componentProps: {
        disabled: formType === 'detail',
        placeholder: $t('ui.placeholder.select', [
          $t('erp.payment.field.supplierIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getSupplierSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
      rules: 'required',
    },
    {
      fieldName: 'financeUserId',
      label: $t('erp.payment.field.financeUserIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.payment.field.financeUserIdName'),
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
      label: $t('erp.payment.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.payment.field.remark'),
        ]),
        autoSize: { minRows: 1, maxRows: 1 },
        disabled: formType === 'detail',
      },
      formItemClass: 'col-span-2',
    },
    {
      fieldName: 'fileUrl',
      label: $t('erp.payment.field.fileUrl'),
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
      label: $t('erp.payment.field.items'),
      component: 'Input',
      formItemClass: 'col-span-3',
    },
    {
      fieldName: 'accountId',
      label: $t('erp.payment.field.accountIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.payment.field.accountIdName'),
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
      label: $t('erp.payment.field.totalPrice'),
      component: 'InputNumber',
      componentProps: {
        precision: 2,
        formatter: erpPriceInputFormatter,
        disabled: true,
      },
    },
    {
      fieldName: 'discountPrice',
      label: $t('erp.payment.field.discountPrice'),
      component: 'InputNumber',
      componentProps: {
        disabled: formType === 'detail',
        placeholder: $t('ui.placeholder.input', [
          $t('erp.payment.field.discountPrice'),
        ]),
        precision: 2,
        formatter: erpPriceInputFormatter,
      },
    },
    {
      fieldName: 'paymentPrice',
      label: $t('erp.payment.field.paymentPrice'),
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
          values.paymentPrice = totalPrice - discountPrice;
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
      title: $t('erp.payment.message.seq'),
      minWidth: 50,
      fixed: 'left',
    },
    {
      field: 'bizNo',
      title: $t('erp.payment.field.bizNoName'),
      minWidth: 200,
    },
    {
      field: 'totalPrice',
      title: $t('erp.payment.message.shouldPayPrice'),
      minWidth: 100,
      formatter: 'formatAmount2',
    },
    {
      field: 'paidPrice',
      title: $t('erp.payment.field.paidPrice'),
      minWidth: 100,
      formatter: 'formatAmount2',
    },
    {
      field: 'paymentPrice',
      title: $t('erp.payment.message.currentPayment'),
      minWidth: 115,
      fixed: 'right',
      slots: { default: 'paymentPrice' },
    },
    {
      field: 'remark',
      title: $t('erp.payment.field.remark'),
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
      label: $t('erp.payment.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.payment.field.no')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'paymentTime',
      label: $t('erp.payment.field.paymentTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'supplierId',
      label: $t('erp.payment.field.supplierIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.payment.field.supplierIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getSupplierSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
    {
      fieldName: 'creator',
      label: $t('erp.payment.field.creatorName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.payment.field.creatorName'),
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
      label: $t('erp.payment.field.financeUserIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.payment.field.financeUserIdName'),
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
      label: $t('erp.payment.field.accountIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.payment.field.accountIdName'),
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
      label: $t('erp.payment.field.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.ERP_AUDIT_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('erp.payment.field.status'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'remark',
      label: $t('erp.payment.field.remark'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.payment.field.remark'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'bizNo',
      label: $t('erp.payment.field.bizNo'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.payment.field.bizNo'),
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
      title: $t('erp.payment.field.no'),
      width: 180,
      fixed: 'left',
    },
    {
      field: 'supplierName',
      title: $t('erp.payment.field.supplierIdName'),
      minWidth: 120,
    },
    {
      field: 'paymentTime',
      title: $t('erp.payment.field.paymentTime'),
      width: 160,
      formatter: 'formatDate',
    },
    {
      field: 'creatorName',
      title: $t('erp.payment.field.creatorName'),
      minWidth: 120,
    },
    {
      field: 'financeUserName',
      title: $t('erp.payment.field.financeUserIdName'),
      minWidth: 120,
    },
    {
      field: 'accountName',
      title: $t('erp.payment.field.accountIdName'),
      minWidth: 120,
    },
    {
      field: 'totalPrice',
      title: $t('erp.payment.field.totalPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'discountPrice',
      title: $t('erp.payment.field.discountPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'paymentPrice',
      title: $t('erp.payment.field.paymentPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'status',
      title: $t('erp.payment.field.status'),
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

/** 采购入库单选择表单的配置项 */
export function usePurchaseInGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'no',
      label: $t('erp.payment.field.purchaseInNo'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.payment.field.purchaseInNo'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'supplierId',
      label: $t('erp.payment.field.supplierIdName'),
      component: 'Input',
      componentProps: {
        disabled: true,
        placeholder: $t('erp.payment.message.autoSelectedSupplier'),
      },
    },
    {
      fieldName: 'paymentStatus',
      label: $t('erp.payment.field.paymentStatus'),
      component: 'Select',
      componentProps: {
        options: [
          { label: $t('erp.payment.message.unpaid'), value: 0 },
          { label: $t('erp.payment.message.partialPayment'), value: 1 },
          { label: $t('erp.payment.message.paid'), value: 2 },
        ],
        placeholder: $t('ui.placeholder.select', [
          $t('erp.payment.field.paymentStatus'),
        ]),
        allowClear: true,
      },
    },
  ];
}

/** 采购入库单选择列表的字段 */
export function usePurchaseInGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      type: 'checkbox',
      width: 50,
      fixed: 'left',
    },
    {
      field: 'no',
      title: $t('erp.payment.field.purchaseInNo'),
      width: 200,
      fixed: 'left',
    },
    {
      field: 'supplierName',
      title: $t('erp.payment.field.supplierIdName'),
      minWidth: 120,
    },
    {
      field: 'inTime',
      title: $t('erp.payment.field.inTime'),
      width: 160,
      formatter: 'formatDate',
    },
    {
      field: 'totalPrice',
      title: $t('erp.payment.message.shouldPayPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'paymentPrice',
      title: $t('erp.payment.field.paidPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'unPaymentPrice',
      title: $t('erp.payment.message.unpaidPrice'),
      formatter: ({ row }) => {
        return erpPriceInputFormatter(row.totalPrice - row.paymentPrice || 0);
      },
      minWidth: 120,
    },
    {
      field: 'status',
      title: $t('erp.payment.field.status'),
      minWidth: 100,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.ERP_AUDIT_STATUS },
      },
    },
  ];
}

/** 采购退货单选择表单的配置项 */
export function useSaleReturnGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'no',
      label: $t('erp.payment.field.purchaseReturnNo'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.payment.field.purchaseReturnNo'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'supplierId',
      label: $t('erp.payment.field.supplierIdName'),
      component: 'Input',
      componentProps: {
        disabled: true,
        placeholder: $t('erp.payment.message.autoSelectedSupplier'),
      },
    },
    {
      fieldName: 'refundStatus',
      label: $t('erp.payment.field.refundStatus'),
      component: 'Select',
      componentProps: {
        options: [
          { label: $t('erp.payment.message.unpaid'), value: 0 },
          { label: $t('erp.payment.message.partialPayment'), value: 1 },
          { label: $t('erp.payment.message.paid'), value: 2 },
        ],
        placeholder: $t('ui.placeholder.select', [
          $t('erp.payment.field.refundStatus'),
        ]),
        allowClear: true,
      },
    },
  ];
}

/** 采购退货单选择列表的字段 */
export function useSaleReturnGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      type: 'checkbox',
      width: 50,
      fixed: 'left',
    },
    {
      field: 'no',
      title: $t('erp.payment.field.purchaseReturnNo'),
      width: 200,
      fixed: 'left',
    },
    {
      field: 'supplierName',
      title: $t('erp.payment.field.supplierIdName'),
      minWidth: 120,
    },
    {
      field: 'returnTime',
      title: $t('erp.payment.field.returnTime'),
      width: 160,
      formatter: 'formatDate',
    },
    {
      field: 'totalPrice',
      title: $t('erp.payment.message.shouldReturnPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'refundPrice',
      title: $t('erp.payment.message.refundedPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'unRefundPrice',
      title: $t('erp.payment.message.unRefundPrice'),
      formatter: ({ row }) => {
        return erpPriceInputFormatter(row.totalPrice - row.refundPrice || 0);
      },
      minWidth: 120,
    },
    {
      field: 'status',
      title: $t('erp.payment.field.status'),
      minWidth: 100,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.ERP_AUDIT_STATUS },
      },
    },
  ];
}
