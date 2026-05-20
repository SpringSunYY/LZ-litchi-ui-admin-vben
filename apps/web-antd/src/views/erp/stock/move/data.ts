import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { getProductSimpleList } from '#/api/erp/product/product';
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
      label: $t('erp.stockMove.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('erp.stockMove.message.autoGenerate'),
        disabled: true,
      },
    },
    {
      fieldName: 'moveTime',
      label: $t('erp.stockMove.field.moveTime'),
      component: 'DatePicker',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [$t('erp.stockMove.field.moveTime')]),
        showTime: true,
        format: 'YYYY-MM-DD HH:mm:ss',
        valueFormat: 'x',
      },
      rules: 'required',
    },
    {
      fieldName: 'remark',
      label: $t('erp.stockMove.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.stockMove.field.remark')]),
        autoSize: { minRows: 1, maxRows: 1 },
        disabled: formType === 'detail',
      },
      formItemClass: 'col-span-2',
    },
    {
      fieldName: 'fileUrl',
      label: $t('erp.stockMove.field.fileUrl'),
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
      label: $t('erp.stockMove.field.items'),
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
    { type: 'seq', title: $t('erp.stockMove.message.seq'), minWidth: 50, fixed: 'left' },
    {
      field: 'fromWarehouseId',
      title: $t('erp.stockMove.field.fromWarehouseIdName'),
      minWidth: 150,
      slots: { default: 'fromWarehouseId' },
    },
    {
      field: 'toWarehouseId',
      title: $t('erp.stockMove.field.toWarehouseIdName'),
      minWidth: 150,
      slots: { default: 'toWarehouseId' },
    },
    {
      field: 'productId',
      title: $t('erp.stockMove.field.productIdName'),
      minWidth: 200,
      slots: { default: 'productId' },
    },
    {
      field: 'stockCount',
      title: $t('erp.stockMove.field.stock'),
      minWidth: 80,
      formatter: 'formatAmount3',
    },
    {
      field: 'productBarCode',
      title: $t('erp.stockMove.field.barCode'),
      minWidth: 120,
    },
    {
      field: 'productUnitName',
      title: $t('erp.stockMove.field.unitName'),
      minWidth: 80,
    },
    {
      field: 'remark',
      title: $t('erp.stockMove.field.remark'),
      minWidth: 150,
      slots: { default: 'remark' },
    },
    {
      field: 'count',
      title: $t('erp.stockMove.field.count'),
      minWidth: 120,
      fixed: 'right',
      slots: { default: 'count' },
    },
    {
      field: 'productPrice',
      title: $t('erp.stockMove.field.productPrice'),
      minWidth: 120,
      fixed: 'right',
      slots: { default: 'productPrice' },
    },
    {
      field: 'totalPrice',
      title: $t('erp.stockMove.field.productAmount'),
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
      label: $t('erp.stockMove.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.stockMove.field.no')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'productId',
      label: $t('erp.stockMove.field.productIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [$t('erp.stockMove.field.productIdName')]),
        allowClear: true,
        showSearch: true,
        api: getProductSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
    {
      fieldName: 'moveTime',
      label: $t('erp.stockMove.field.moveTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'fromWarehouseId',
      label: $t('erp.stockMove.field.fromWarehouseIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [$t('erp.stockMove.field.fromWarehouseIdName')]),
        allowClear: true,
        showSearch: true,
        api: getWarehouseSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
    {
      fieldName: 'toWarehouseId',
      label: $t('erp.stockMove.field.toWarehouseIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [$t('erp.stockMove.field.toWarehouseIdName')]),
        allowClear: true,
        showSearch: true,
        api: getWarehouseSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
    {
      fieldName: 'creator',
      label: $t('erp.stockMove.field.creatorName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [$t('erp.stockMove.field.creatorName')]),
        allowClear: true,
        showSearch: true,
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
      },
    },
    {
      fieldName: 'status',
      label: $t('erp.stockMove.field.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.ERP_AUDIT_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [$t('erp.stockMove.field.status')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'remark',
      label: $t('erp.stockMove.field.remark'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.stockMove.field.remark')]),
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
      title: $t('erp.stockMove.field.no'),
      width: 200,
      fixed: 'left',
    },
    {
      field: 'productNames',
      title: $t('erp.stockMove.field.productNames'),
      showOverflow: 'tooltip',
      minWidth: 120,
    },
    {
      field: 'moveTime',
      title: $t('erp.stockMove.field.moveTime'),
      width: 160,
      formatter: 'formatDate',
    },
    {
      field: 'creatorName',
      title: $t('erp.stockMove.field.creatorName'),
      minWidth: 120,
    },
    {
      field: 'totalCount',
      title: $t('erp.stockMove.field.totalCount'),
      formatter: 'formatAmount3',
      minWidth: 120,
    },
    {
      field: 'totalPrice',
      title: $t('erp.stockMove.field.totalAmount'),
      formatter: 'formatAmount2',
      minWidth: 120,
    },
    {
      field: 'status',
      title: $t('erp.stockMove.field.status'),
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
