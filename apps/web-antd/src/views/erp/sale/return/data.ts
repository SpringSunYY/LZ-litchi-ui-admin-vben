import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { erpNumberFormatter, erpPriceInputFormatter } from '@vben/utils';

import { z } from '#/adapter/form';
import { getAccountSimpleList } from '#/api/erp/finance/account';
import { getProductSimpleList } from '#/api/erp/product/product';
import { getCustomerSimpleList } from '#/api/erp/sale/customer';
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
      label: $t('erp.saleReturn.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.saleReturn.field.no'),
        ]),
        disabled: true,
      },
    },
    {
      fieldName: 'returnTime',
      label: $t('erp.saleReturn.field.returnTime'),
      component: 'DatePicker',
      componentProps: {
        disabled: formType === 'detail',
        placeholder: $t('ui.placeholder.select', [
          $t('erp.saleReturn.field.returnTime'),
        ]),
        showTime: true,
        format: 'YYYY-MM-DD HH:mm:ss',
        valueFormat: 'x',
      },
      rules: 'required',
    },
    {
      fieldName: 'orderNo',
      label: $t('erp.saleReturn.field.orderNo'),
      component: 'Input',
      formItemClass: 'col-span-1',
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.saleReturn.field.orderNo'),
        ]),
        disabled: formType === 'detail',
      },
    },
    {
      fieldName: 'customerId',
      label: $t('erp.saleReturn.field.customerIdName'),
      component: 'ApiSelect',
      componentProps: {
        disabled: true,
        placeholder: $t('ui.placeholder.select', [
          $t('erp.saleReturn.field.customerIdName'),
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
      fieldName: 'saleUserId',
      label: $t('erp.saleReturn.field.saleUserIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.saleReturn.field.saleUserIdName'),
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
      label: $t('erp.saleReturn.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.saleReturn.field.remark'),
        ]),
        autoSize: { minRows: 1, maxRows: 1 },
        disabled: formType === 'detail',
      },
      formItemClass: 'col-span-2',
    },
    {
      fieldName: 'fileUrl',
      label: $t('erp.saleReturn.field.fileUrl'),
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
      label: $t('erp.saleReturn.field.items'),
      component: 'Input',
      formItemClass: 'col-span-3',
    },
    {
      fieldName: 'discountPercent',
      label: $t('erp.saleReturn.field.discountPercent'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.saleReturn.field.discountPercent'),
        ]),
        min: 0,
        max: 100,
        precision: 2,
      },
      rules: z.number().min(0).optional(),
    },
    {
      fieldName: 'discountPrice',
      label: $t('erp.saleReturn.field.discountPrice'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('erp.saleReturn.field.discountPrice'),
        precision: 2,
        formatter: erpPriceInputFormatter,
        disabled: true,
      },
    },
    {
      fieldName: 'discountedPrice',
      label: $t('erp.saleReturn.field.discountedPrice'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('erp.saleReturn.field.discountedPrice'),
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
      label: $t('erp.saleReturn.field.otherPrice'),
      component: 'InputNumber',
      componentProps: {
        disabled: formType === 'detail',
        placeholder: $t('ui.placeholder.input', [
          $t('erp.saleReturn.field.otherPrice'),
        ]),
        precision: 2,
        formatter: erpPriceInputFormatter,
      },
    },
    {
      fieldName: 'accountId',
      label: $t('erp.saleReturn.field.accountIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.saleReturn.field.accountIdName'),
        ]),
        disabled: true,
        allowClear: true,
        showSearch: true,
        api: getAccountSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
    {
      fieldName: 'totalPrice',
      label: $t('erp.saleReturn.field.totalPrice'),
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
      title: $t('erp.saleReturn.message.seq') || 'seq',
      minWidth: 50,
      fixed: 'left',
    },
    {
      field: 'warehouseId',
      title: $t('erp.saleReturn.field.warehouseIdName'),
      minWidth: 200,
      slots: { default: 'warehouseId' },
    },
    {
      field: 'productId',
      title: $t('erp.saleReturn.field.productIdName'),
      minWidth: 200,
      slots: { default: 'productId' },
    },
    {
      field: 'stockCount',
      title: $t('erp.saleReturn.field.stock'),
      minWidth: 80,
      formatter: 'formatAmount3',
    },
    {
      field: 'productBarCode',
      title: $t('erp.saleReturn.field.barCode'),
      minWidth: 120,
    },
    {
      field: 'productUnitName',
      title: $t('erp.saleReturn.field.unitName'),
      minWidth: 80,
    },
    {
      field: 'remark',
      title: $t('erp.saleReturn.field.remark'),
      minWidth: 150,
      slots: { default: 'remark' },
    },
    {
      field: 'totalCount',
      title: $t('erp.saleReturn.field.outCount'),
      formatter: 'formatAmount3',
      minWidth: 120,
      fixed: 'right',
      visible: formData && formData[0]?.outCount !== undefined,
    },
    {
      field: 'returnCount',
      title: $t('erp.saleReturn.field.returnCount'),
      formatter: 'formatAmount3',
      minWidth: 120,
      fixed: 'right',
      visible: formData && formData[0]?.returnCount !== undefined,
    },
    {
      field: 'count',
      title: $t('erp.saleReturn.field.count'),
      minWidth: 120,
      fixed: 'right',
      slots: { default: 'count' },
    },
    {
      field: 'productPrice',
      title: $t('erp.saleReturn.field.productPrice'),
      fixed: 'right',
      minWidth: 120,
      slots: { default: 'productPrice' },
    },
    {
      field: 'totalProductPrice',
      fixed: 'right',
      title: $t('erp.saleReturn.field.productAmount'),
      minWidth: 120,
      formatter: 'formatAmount2',
    },
    {
      fixed: 'right',
      field: 'taxPercent',
      title: $t('erp.saleReturn.field.taxPercent'),
      minWidth: 105,
      slots: { default: 'taxPercent' },
    },
    {
      fixed: 'right',
      field: 'taxPrice',
      title: $t('erp.saleReturn.field.taxPrice'),
      minWidth: 120,
      formatter: 'formatAmount2',
    },
    {
      field: 'totalPrice',
      fixed: 'right',
      title: $t('erp.saleReturn.field.totalAmount'),
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
      label: $t('erp.saleReturn.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.saleReturn.field.no'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'productId',
      label: $t('erp.saleReturn.field.productIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.saleReturn.field.productIdName'),
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
      label: $t('erp.saleReturn.field.returnTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'customerId',
      label: $t('erp.saleReturn.field.customerIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.saleReturn.field.customerIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getCustomerSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
    {
      fieldName: 'warehouseId',
      label: $t('erp.saleReturn.field.warehouseIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.saleReturn.field.warehouseIdName'),
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
      label: $t('erp.saleReturn.field.creatorName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.saleReturn.field.creatorName'),
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
      label: $t('erp.saleReturn.field.orderNo'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.saleReturn.field.orderNo'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'refundStatus',
      label: $t('erp.saleReturn.field.refundStatus'),
      component: 'Select',
      componentProps: {
        options: [
          { label: $t('erp.saleReturn.message.unrefunded'), value: 0 },
          { label: $t('erp.saleReturn.message.partialRefund'), value: 1 },
          { label: $t('erp.saleReturn.message.refunded'), value: 2 },
        ],
        placeholder: $t('ui.placeholder.select', [
          $t('erp.saleReturn.field.refundStatus'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'status',
      label: $t('erp.saleReturn.field.auditStatus'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.ERP_AUDIT_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('erp.saleReturn.field.auditStatus'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'remark',
      label: $t('erp.saleReturn.field.remark'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.saleReturn.field.remark'),
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
      title: $t('erp.saleReturn.field.no'),
      width: 200,
      fixed: 'left',
    },
    {
      field: 'productNames',
      title: $t('erp.saleReturn.field.productNames'),
      showOverflow: 'tooltip',
      minWidth: 120,
    },
    {
      field: 'customerName',
      title: $t('erp.saleReturn.field.customerIdName'),
      minWidth: 120,
    },
    {
      field: 'returnTime',
      title: $t('erp.saleReturn.field.returnTime'),
      width: 160,
      formatter: 'formatDate',
    },
    {
      field: 'creatorName',
      title: $t('erp.saleReturn.field.creatorName'),
      minWidth: 120,
    },
    {
      field: 'totalCount',
      title: $t('erp.saleReturn.field.totalCount'),
      formatter: 'formatAmount3',
      minWidth: 120,
    },
    {
      field: 'totalPrice',
      title: $t('erp.saleReturn.field.totalPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'refundPrice',
      title: $t('erp.saleReturn.field.refundPrice'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'unRefundPrice',
      title: $t('erp.saleReturn.field.unRefundPrice'),
      formatter: ({ row }) => {
        return `${erpNumberFormatter(row.totalPrice - row.refundPrice, 2)}${$t('erp.saleReturn.field.unRefundPrice').replace('未退金额', '').replace('unrefunded amount', '')}`;
      },
      minWidth: 120,
    },
    {
      field: 'status',
      title: $t('erp.saleReturn.field.auditStatus'),
      minWidth: 120,
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

/** 列表的搜索表单 */
export function useOrderGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'no',
      label: $t('erp.saleOrder.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.saleOrder.field.no')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'productId',
      label: $t('erp.saleOrder.field.productIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.saleOrder.field.productIdName'),
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
      label: $t('erp.saleOrder.field.orderTime'),
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
      title: $t('erp.saleOrder.field.no'),
      width: 200,
      fixed: 'left',
    },
    {
      field: 'productNames',
      title: $t('erp.saleOrder.field.productNames'),
      showOverflow: 'tooltip',
      minWidth: 120,
    },
    {
      field: 'customerName',
      title: $t('erp.saleOrder.field.customerIdName'),
      minWidth: 120,
    },
    {
      field: 'orderTime',
      title: $t('erp.saleOrder.field.orderTime'),
      width: 160,
      formatter: 'formatDate',
    },
    {
      field: 'creatorName',
      title: $t('erp.saleOrder.field.creatorName'),
      minWidth: 120,
    },
    {
      field: 'totalCount',
      title: $t('erp.saleOrder.field.totalCount'),
      formatter: 'formatAmount3',
      minWidth: 120,
    },
    {
      field: 'returnCount',
      title: $t('erp.saleOrder.field.returnCount'),
      formatter: 'formatAmount3',
      minWidth: 120,
    },
    {
      field: 'totalProductPrice',
      title: $t('erp.saleOrder.field.amountTotal'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'totalPrice',
      title: $t('erp.saleOrder.field.taxAmountTotal2'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
  ];
}
