import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { erpNumberFormatter, erpPriceInputFormatter } from '@vben/utils';

import { z } from '#/adapter/form';
import { getAccountSimpleList } from '#/api/erp/finance/account';
import { getProductSimpleList } from '#/api/erp/product/product';
import { getSupplierSimpleList } from '#/api/erp/purchase/supplier';
import { getWarehouseSimpleList } from '#/api/erp/stock/warehouse';
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
      label: $t('erp.purchaseReturn.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('erp.purchaseReturn.message.autoGenerate'),
        disabled: true,
      },
    },
    {
      fieldName: 'returnTime',
      label: $t('erp.purchaseReturn.field.returnTime'),
      component: 'DatePicker',
      componentProps: {
        disabled: formType === 'detail',
        placeholder: $t('ui.placeholder.date', [
          $t('erp.purchaseReturn.field.returnTime'),
        ]),
        showTime: true,
        format: 'YYYY-MM-DD HH:mm:ss',
        valueFormat: 'x',
      },
      rules: 'required',
    },
    {
      fieldName: 'orderNo',
      label: $t('erp.purchaseReturn.field.orderNo'),
      component: 'Input',
      formItemClass: 'col-span-1',
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.purchaseReturn.field.orderNo'),
        ]),
        disabled: formType === 'detail',
      },
    },
    {
      fieldName: 'supplierId',
      label: $t('erp.purchaseReturn.field.supplierIdName'),
      component: 'ApiSelect',
      componentProps: {
        disabled: true,
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseReturn.field.supplierIdName'),
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
      label: $t('erp.purchaseReturn.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.purchaseReturn.field.remark'),
        ]),
        autoSize: { minRows: 1, maxRows: 1 },
        disabled: formType === 'detail',
      },
      formItemClass: 'col-span-2',
    },
    {
      fieldName: 'fileUrl',
      label: $t('erp.purchaseReturn.field.fileUrl'),
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
      label: $t('erp.purchaseReturn.field.items'),
      component: 'Input',
      formItemClass: 'col-span-3',
    },
    {
      fieldName: 'discountPercent',
      label: $t('erp.purchaseReturn.field.discountPercent'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.purchaseReturn.field.discountPercent'),
        ]),
        min: 0,
        max: 100,
        precision: 2,
      },
      rules: z.number().min(0).optional(),
    },
    {
      fieldName: 'discountPrice',
      label: $t('erp.purchaseReturn.field.discountPrice'),
      component: 'InputNumber',
      componentProps: {
        precision: 2,
        formatter: erpPriceInputFormatter,
        disabled: true,
      },
    },
    {
      fieldName: 'discountedPrice',
      label: $t('erp.purchaseReturn.field.discountedPrice'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('erp.purchaseReturn.field.discountedPrice'),
        precision: 2,
        formatter: erpPriceInputFormatter,
        disabled: true,
      },
      dependencies: {
        triggerFields: ['totalPrice', 'otherPrice'],
        componentProps: (values) => {
          const totalPrice = values.totalPrice || 0;
          const otherPrice = values.otherPrice || 0;
          values.discountedPrice = totalPrice - otherPrice;
          return {};
        },
      },
    },
    {
      fieldName: 'otherPrice',
      label: $t('erp.purchaseReturn.field.otherPrice'),
      component: 'InputNumber',
      componentProps: {
        disabled: formType === 'detail',
        placeholder: $t('ui.placeholder.input', [
          $t('erp.purchaseReturn.field.otherPrice'),
        ]),
        precision: 2,
        formatter: erpPriceInputFormatter,
      },
    },
    {
      fieldName: 'accountId',
      label: $t('erp.purchaseReturn.field.accountIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseReturn.field.accountIdName'),
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
      label: $t('erp.purchaseReturn.field.totalPrice'),
      component: 'InputNumber',
      componentProps: {
        precision: 2,
        min: 0,
        disabled: true,
      },
      rules: z.number().min(0).optional(),
    },
  ];
}

/** 表单的明细表格列 */
export function useFormItemColumns(
  formData?: any[],
  disabled?: boolean,
): VxeTableGridOptions['columns'] {
  return [
    {
      type: 'seq',
      title: $t('erp.payment.message.seq'),
      minWidth: 50,
      fixed: 'left',
    },
    {
      field: 'warehouseId',
      title: $t('erp.purchaseReturn.field.warehouseIdName'),
      minWidth: 200,
      slots: { default: 'warehouseId' },
    },
    {
      field: 'productId',
      title: $t('erp.purchaseReturn.field.productName'),
      minWidth: 200,
      slots: { default: 'productId' },
    },
    {
      field: 'stockCount',
      title: $t('erp.purchaseReturn.field.stock'),
      minWidth: 80,
      formatter: 'formatAmount3',
    },
    {
      field: 'productBarCode',
      title: $t('erp.purchaseReturn.field.barCode'),
      minWidth: 120,
    },
    {
      field: 'productUnitName',
      title: $t('erp.purchaseReturn.field.unitName'),
      minWidth: 80,
    },
    {
      field: 'remark',
      title: $t('erp.purchaseReturn.field.remark'),
      minWidth: 150,
      slots: { default: 'remark' },
    },
    {
      field: 'inCount',
      title: $t('erp.purchaseReturn.field.inCount'),
      formatter: 'formatAmount3',
      minWidth: 120,
      fixed: 'right',
      visible: formData && formData[0]?.inCount !== undefined,
    },
    {
      field: 'returnCount',
      title: $t('erp.purchaseReturn.field.returnCount'),
      formatter: 'formatAmount3',
      minWidth: 120,
      fixed: 'right',
      visible: formData && formData[0]?.returnCount !== undefined,
    },
    {
      field: 'count',
      title: $t('erp.purchaseReturn.field.count'),
      minWidth: 120,
      fixed: 'right',
      slots: { default: 'count' },
    },
    {
      field: 'productPrice',
      title: $t('erp.purchaseReturn.field.productPrice'),
      fixed: 'right',
      minWidth: 120,
      slots: { default: 'productPrice' },
    },
    {
      field: 'totalProductPrice',
      fixed: 'right',
      title: $t('erp.purchaseReturn.field.productAmount'),
      minWidth: 120,
      formatter: 'formatAmount2',
    },
    {
      fixed: 'right',
      field: 'taxPercent',
      title: $t('erp.purchaseReturn.field.taxPercent'),
      minWidth: 105,
      slots: { default: 'taxPercent' },
    },
    {
      fixed: 'right',
      field: 'taxPrice',
      title: $t('erp.purchaseReturn.field.taxPrice'),
      minWidth: 120,
      formatter: 'formatAmount2',
    },
    {
      field: 'totalPrice',
      fixed: 'right',
      title: $t('erp.purchaseReturn.field.totalAmount'),
      minWidth: 120,
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
      label: $t('erp.purchaseReturn.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.purchaseReturn.field.no'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'productId',
      label: $t('erp.purchaseReturn.field.productIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseReturn.field.productIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getProductSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
    {
      fieldName: 'returnTime',
      label: $t('erp.purchaseReturn.field.returnTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'supplierId',
      label: $t('erp.purchaseReturn.field.supplierIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseReturn.field.supplierIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getSupplierSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
    {
      fieldName: 'warehouseId',
      label: $t('erp.purchaseReturn.field.warehouseIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseReturn.field.warehouseIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getWarehouseSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
    {
      fieldName: 'creator',
      label: $t('erp.purchaseReturn.field.creatorName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseReturn.field.creatorName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
      },
    },
    {
      fieldName: 'orderNo',
      label: $t('erp.purchaseReturn.field.orderNo'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.purchaseReturn.field.orderNo'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'refundStatus',
      label: $t('erp.purchaseReturn.field.refundStatus'),
      component: 'I18nSelect',
      componentProps: {
        options: [
          { label: $t('erp.purchaseReturn.message.unrefunded'), value: 0 },
          { label: $t('erp.purchaseReturn.message.partialRefund'), value: 1 },
          { label: $t('erp.purchaseReturn.message.refunded'), value: 2 },
        ],
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseReturn.field.refundStatus'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'status',
      label: $t('erp.purchaseReturn.field.auditStatus'),
      component: 'I18nSelect',
      componentProps: {
        options: getDictOptions(DICT_TYPE.ERP_AUDIT_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseReturn.field.auditStatus'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'remark',
      label: $t('erp.purchaseReturn.field.remark'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.purchaseReturn.field.remark'),
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
      title: $t('erp.purchaseReturn.field.no'),
      width: 200,
      fixed: 'left',
    },
    {
      field: 'productNames',
      title: $t('erp.purchaseReturn.field.productIdName'),
      showOverflow: 'tooltip',
      minWidth: 120,
    },
    {
      field: 'supplierName',
      title: $t('erp.purchaseReturn.field.supplierIdName'),
      minWidth: 120,
    },
    {
      field: 'returnTime',
      title: $t('erp.purchaseReturn.field.returnTime'),
      width: 160,
      formatter: 'formatDate',
    },
    {
      field: 'creatorName',
      title: $t('erp.purchaseReturn.field.creatorName'),
      minWidth: 120,
    },
    {
      field: 'totalCount',
      title: $t('erp.purchaseReturn.field.totalCount'),
      formatter: 'formatAmount3',
      minWidth: 120,
    },
    {
      field: 'totalPrice',
      title: $t('erp.purchaseReturn.field.totalPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'refundPrice',
      title: $t('erp.purchaseReturn.field.refundPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'unRefundPrice',
      title: $t('erp.purchaseReturn.field.unRefundPrice'),
      formatter: ({ row }) => {
        return `${erpNumberFormatter(row.totalPrice - row.refundPrice, 2)}${$t('ui.amount.yuan')}`;
      },
      minWidth: 120,
    },
    {
      field: 'status',
      title: $t('erp.purchaseReturn.field.auditStatus'),
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

/** 列表的搜索表单 */
export function useOrderGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'no',
      label: $t('erp.purchaseReturn.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.purchaseReturn.field.no'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'productId',
      label: $t('erp.purchaseReturn.field.productIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.purchaseReturn.field.productIdName'),
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
      label: $t('erp.purchaseReturn.field.orderTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useOrderGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      type: 'radio',
      width: 50,
      fixed: 'left',
    },
    {
      field: 'no',
      title: $t('erp.purchaseReturn.field.no'),
      width: 200,
      fixed: 'left',
    },
    {
      field: 'productNames',
      title: $t('erp.purchaseReturn.field.productIdName'),
      showOverflow: 'tooltip',
      minWidth: 120,
    },
    {
      field: 'supplierName',
      title: $t('erp.purchaseReturn.field.supplierIdName'),
      minWidth: 120,
    },
    {
      field: 'orderTime',
      title: $t('erp.purchaseReturn.field.orderTime'),
      width: 160,
      formatter: 'formatDate',
    },
    {
      field: 'creatorName',
      title: $t('erp.purchaseReturn.field.creatorName'),
      minWidth: 120,
    },
    {
      field: 'totalCount',
      title: $t('erp.purchaseReturn.field.totalCount'),
      formatter: 'formatAmount3',
      minWidth: 120,
    },
    {
      field: 'inCount',
      title: $t('erp.purchaseReturn.field.inCount2'),
      formatter: 'formatAmount3',
      minWidth: 120,
    },
    {
      field: 'returnCount',
      title: $t('erp.purchaseReturn.field.returnCount2'),
      formatter: 'formatAmount3',
      minWidth: 120,
    },
    {
      field: 'totalProductPrice',
      title: $t('erp.purchaseReturn.field.amountTotal'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'totalPrice',
      title: $t('erp.purchaseReturn.field.taxAmountTotal'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
  ];
}
