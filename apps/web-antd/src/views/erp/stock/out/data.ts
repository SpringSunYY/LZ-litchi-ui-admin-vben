import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { getProductSimpleList } from '#/api/erp/product/product';
import { getCustomerSimpleList } from '#/api/erp/sale/customer';
import { getWarehouseSimpleList } from '#/api/erp/stock/warehouse';
import { getSimpleUserList } from '#/api/system/user';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';
import { $t } from '#/locales';

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
      label: $t('erp.stockOut.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('erp.stockOut.message.autoGenerate'),
        disabled: true,
      },
    },
    {
      fieldName: 'outTime',
      label: $t('erp.stockOut.field.outTime'),
      component: 'DatePicker',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [$t('erp.stockOut.field.outTime')]),
        showTime: true,
        format: 'YYYY-MM-DD HH:mm:ss',
        valueFormat: 'x',
      },
      rules: 'required',
    },
    {
      fieldName: 'customerId',
      label: $t('erp.stockOut.field.customerIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [$t('erp.stockOut.field.customerIdName')]),
        allowClear: true,
        showSearch: true,
        api: getCustomerSimpleList,
        fieldNames: {
          label: 'name',
          value: 'id',
        },
      },
      rules: 'required',
    },
    {
      fieldName: 'remark',
      label: $t('erp.stockOut.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.stockOut.field.remark')]),
        autoSize: { minRows: 1, maxRows: 1 },
        disabled: formType === 'detail',
      },
      formItemClass: 'col-span-2',
    },
    {
      fieldName: 'fileUrl',
      label: $t('erp.stockOut.field.fileUrl'),
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
      label: $t('erp.stockOut.field.items'),
      component: 'Input',
      formItemClass: 'col-span-3',
    },
  ];
}

/** 表单的明细表格列 */
export function useFormItemColumns(
  disabled: boolean,
): VxeTableGridOptions['columns'] {
  return [
    { type: 'seq', title: $t('erp.stockOut.message.seq'), minWidth: 50, fixed: 'left' },
    {
      field: 'warehouseId',
      title: $t('erp.stockOut.field.warehouseIdName'),
      minWidth: 150,
      slots: { default: 'warehouseId' },
    },
    {
      field: 'productId',
      title: $t('erp.stockOut.field.productIdName'),
      minWidth: 200,
      slots: { default: 'productId' },
    },
    {
      field: 'stockCount',
      title: $t('erp.stockOut.field.stock'),
      minWidth: 80,
      formatter: 'formatAmount3',
    },
    {
      field: 'productBarCode',
      title: $t('erp.stockOut.field.barCode'),
      minWidth: 120,
    },
    {
      field: 'productUnitName',
      title: $t('erp.stockOut.field.unitName'),
      minWidth: 80,
    },
    {
      field: 'remark',
      title: $t('erp.stockOut.field.remark'),
      minWidth: 150,
      slots: { default: 'remark' },
    },
    {
      field: 'count',
      title: $t('erp.stockOut.field.count'),
      minWidth: 120,
      fixed: 'right',
      slots: { default: 'count' },
    },
    {
      field: 'productPrice',
      title: $t('erp.stockOut.field.productPrice'),
      minWidth: 120,
      fixed: 'right',
      slots: { default: 'productPrice' },
    },
    {
      field: 'totalPrice',
      title: $t('erp.stockOut.field.productAmount'),
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
      label: $t('erp.stockOut.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.stockOut.field.no')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'productId',
      label: $t('erp.stockOut.field.productIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [$t('erp.stockOut.field.productIdName')]),
        allowClear: true,
        showSearch: true,
        api: getProductSimpleList,
        fieldNames: {
          label: 'name',
          value: 'id',
        },
      },
    },
    {
      fieldName: 'outTime',
      label: $t('erp.stockOut.field.outTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'customerId',
      label: $t('erp.stockOut.field.customerIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [$t('erp.stockOut.field.customerIdName')]),
        allowClear: true,
        showSearch: true,
        api: getCustomerSimpleList,
        fieldNames: {
          label: 'name',
          value: 'id',
        },
      },
    },
    {
      fieldName: 'warehouseId',
      label: $t('erp.stockOut.field.warehouseIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [$t('erp.stockOut.field.warehouseIdName')]),
        allowClear: true,
        showSearch: true,
        api: getWarehouseSimpleList,
        fieldNames: {
          label: 'name',
          value: 'id',
        },
      },
    },
    {
      fieldName: 'creator',
      label: $t('erp.stockOut.field.creatorName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [$t('erp.stockOut.field.creatorName')]),
        allowClear: true,
        showSearch: true,
        api: getSimpleUserList,
        fieldNames: {
          label: 'nickname',
          value: 'id',
        },
      },
    },
    {
      fieldName: 'status',
      label: $t('erp.stockOut.field.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.ERP_AUDIT_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [$t('erp.stockOut.field.status')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'remark',
      label: $t('erp.stockOut.field.remark'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.stockOut.field.remark')]),
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
      title: $t('erp.stockOut.field.no'),
      width: 200,
      fixed: 'left',
    },
    {
      field: 'productNames',
      title: $t('erp.stockOut.field.productNames'),
      showOverflow: 'tooltip',
      minWidth: 120,
    },
    {
      field: 'customerName',
      title: $t('erp.stockOut.field.customerIdName'),
      minWidth: 120,
    },
    {
      field: 'outTime',
      title: $t('erp.stockOut.field.outTime'),
      width: 160,
      formatter: 'formatDate',
    },
    {
      field: 'creatorName',
      title: $t('erp.stockOut.field.creatorName'),
      minWidth: 120,
    },
    {
      field: 'totalCount',
      title: $t('erp.stockOut.field.totalCount'),
      formatter: 'formatAmount3',
      minWidth: 120,
    },
    {
      field: 'totalPrice',
      title: $t('erp.stockOut.field.totalAmount'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'status',
      title: $t('erp.stockOut.field.status'),
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
