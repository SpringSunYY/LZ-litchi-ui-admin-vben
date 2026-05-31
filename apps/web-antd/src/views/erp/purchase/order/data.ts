import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { erpPriceInputFormatter } from '@vben/utils';

import { z } from '#/adapter/form';
import { getAccountSimpleList } from '#/api/erp/finance/account';
import { getProductSimpleList } from '#/api/erp/product/product';
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
      label: $t('erp.purchaseOrder.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.purchaseOrder.field.no'),
        ]),
        disabled: true,
      },
    },
    {
      fieldName: 'orderTime',
      label: $t('erp.purchaseOrder.field.orderTime'),
      component: 'DatePicker',
      componentProps: {
        placeholder: $t('ui.placeholder.date', [
          $t('erp.purchaseOrder.field.orderTime'),
        ]),
        showTime: true,
        format: 'YYYY-MM-DD HH:mm:ss',
        valueFormat: 'x',
      },
      rules: 'required',
    },
    {
      label: $t('erp.purchaseOrder.field.supplierIdName'),
      fieldName: 'supplierId',
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseOrder.field.supplierIdName'),
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
      fieldName: 'remark',
      label: $t('erp.purchaseOrder.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.purchaseOrder.field.remark'),
        ]),
        autoSize: { minRows: 1, maxRows: 1 },
        disabled: formType === 'detail',
      },
      formItemClass: 'col-span-2',
    },
    {
      fieldName: 'fileUrl',
      label: $t('erp.purchaseOrder.field.fileUrl'),
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
      label: $t('erp.purchaseOrder.field.items'),
      component: 'Input',
      formItemClass: 'col-span-3',
    },
    {
      fieldName: 'discountPercent',
      label: $t('erp.purchaseOrder.field.discountPercent'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.purchaseOrder.field.discountPercent'),
        ]),
        min: 0,
        max: 100,
        precision: 2,
      },
      rules: z.number().min(0).optional(),
    },
    {
      fieldName: 'discountPrice',
      label: $t('erp.purchaseOrder.field.discountPrice'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('erp.purchaseOrder.field.discountPrice'),
        precision: 2,
        formatter: erpPriceInputFormatter,
        disabled: true,
      },
    },
    {
      fieldName: 'totalPrice',
      label: $t('erp.purchaseOrder.field.totalPrice'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('erp.purchaseOrder.field.totalPrice'),
        precision: 2,
        formatter: erpPriceInputFormatter,
        disabled: true,
      },
    },
    {
      fieldName: 'accountId',
      label: $t('erp.purchaseOrder.field.accountIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseOrder.field.accountIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getAccountSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
    {
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.purchaseOrder.field.depositPrice'),
        ]),
        precision: 2,
        min: 0,
      },
      fieldName: 'depositPrice',
      label: $t('erp.purchaseOrder.field.depositPrice'),
      rules: z.number().min(0).optional(),
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
      field: 'productId',
      title: $t('erp.purchaseOrder.field.productIdName'),
      minWidth: 200,
      slots: { default: 'productId' },
    },
    {
      field: 'stockCount',
      title: $t('erp.purchaseOrder.field.stock'),
      minWidth: 80,
    },
    {
      field: 'productBarCode',
      title: $t('erp.purchaseOrder.field.barCode'),
      minWidth: 120,
    },
    {
      field: 'productUnitName',
      title: $t('erp.purchaseOrder.field.unitName'),
      minWidth: 80,
    },
    {
      field: 'remark',
      title: $t('erp.purchaseOrder.field.remark'),
      minWidth: 150,
      slots: { default: 'remark' },
    },
    {
      field: 'count',
      title: $t('erp.purchaseOrder.field.count'),
      minWidth: 120,
      fixed: 'right',
      slots: { default: 'count' },
    },
    {
      field: 'productPrice',
      title: $t('erp.purchaseOrder.field.productPrice'),
      minWidth: 120,
      fixed: 'right',
      slots: { default: 'productPrice' },
    },
    {
      field: 'totalProductPrice',
      title: $t('erp.purchaseOrder.field.productAmount'),
      minWidth: 120,
      fixed: 'right',
      formatter: 'formatAmount2',
    },
    {
      field: 'taxPercent',
      title: $t('erp.purchaseOrder.field.taxPercent'),
      minWidth: 105,
      fixed: 'right',
      slots: { default: 'taxPercent' },
    },
    {
      field: 'taxPrice',
      title: $t('erp.purchaseOrder.field.taxPrice'),
      minWidth: 120,
      fixed: 'right',
      formatter: 'formatAmount2',
    },
    {
      field: 'totalPrice',
      title: $t('erp.purchaseOrder.field.taxAmountTotal'),
      minWidth: 120,
      fixed: 'right',
      formatter: 'formatAmount2',
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
      label: $t('erp.purchaseOrder.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.purchaseOrder.field.no'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'productId',
      label: $t('erp.purchaseOrder.field.productIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseOrder.field.productIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getProductSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
    {
      fieldName: 'orderTime',
      label: $t('erp.purchaseOrder.field.orderTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'supplierId',
      label: $t('erp.purchaseOrder.field.supplierIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseOrder.field.supplierIdName'),
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
      label: $t('erp.purchaseOrder.field.creatorName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseOrder.field.creatorName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
      },
    },
    {
      fieldName: 'status',
      label: $t('erp.purchaseOrder.field.auditStatus'),
      component: 'I18nSelect',
      componentProps: {
        options: getDictOptions(DICT_TYPE.ERP_AUDIT_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseOrder.field.auditStatus'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'remark',
      label: $t('erp.purchaseOrder.field.remark'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.purchaseOrder.field.remark'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'inStatus',
      label: $t('erp.purchaseOrder.field.inStatus'),
      component: 'I18nSelect',
      componentProps: {
        options: [
          { label: $t('erp.purchaseIn.message.unpaid'), value: 0 },
          { label: $t('erp.purchaseIn.message.partialPayment'), value: 1 },
          { label: $t('erp.purchaseIn.message.paid'), value: 2 },
        ],
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseOrder.field.inStatus'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'returnStatus',
      label: $t('erp.purchaseOrder.field.returnStatus'),
      component: 'I18nSelect',
      componentProps: {
        options: [
          { label: $t('erp.purchaseReturn.message.unrefunded'), value: 0 },
          { label: $t('erp.purchaseReturn.message.partialRefund'), value: 1 },
          { label: $t('erp.purchaseReturn.message.refunded'), value: 2 },
        ],
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseOrder.field.returnStatus'),
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
      title: $t('erp.purchaseOrder.field.no'),
      width: 200,
      fixed: 'left',
    },
    {
      field: 'productNames',
      title: $t('erp.purchaseOrder.field.productIdName'),
      showOverflow: 'tooltip',
      minWidth: 120,
    },
    {
      field: 'supplierName',
      title: $t('erp.purchaseOrder.field.supplierIdName'),
      minWidth: 120,
    },
    {
      field: 'orderTime',
      title: $t('erp.purchaseOrder.field.orderTime'),
      width: 160,
      formatter: 'formatDate',
    },
    {
      field: 'creatorName',
      title: $t('erp.purchaseOrder.field.creatorName'),
      minWidth: 120,
    },
    {
      field: 'totalCount',
      title: $t('erp.purchaseOrder.field.totalCount'),
      formatter: 'formatAmount3',
      minWidth: 120,
    },
    {
      field: 'inCount',
      title: $t('erp.purchaseOrder.field.inCount'),
      formatter: 'formatAmount3',
      minWidth: 120,
    },
    {
      field: 'returnCount',
      title: $t('erp.purchaseOrder.field.returnCount'),
      formatter: 'formatAmount3',
      minWidth: 120,
    },
    {
      field: 'totalProductPrice',
      title: $t('erp.purchaseOrder.field.amountTotal'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'totalPrice',
      title: $t('erp.purchaseOrder.field.taxAmountTotal2'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'depositPrice',
      title: $t('erp.purchaseOrder.field.depositPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'status',
      title: $t('erp.purchaseOrder.field.auditStatus'),
      minWidth: 120,
      cellRender: {
        name: 'CellI18nDict',
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
