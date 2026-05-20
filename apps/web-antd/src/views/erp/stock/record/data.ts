import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { getProductSimpleList } from '#/api/erp/product/product';
import { getWarehouseSimpleList } from '#/api/erp/stock/warehouse';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';
import { $t } from '#/locales';

/** 搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'productId',
      label: $t('erp.stockRecord.field.productIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.stockRecord.field.productIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getProductSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
    {
      fieldName: 'warehouseId',
      label: $t('erp.stockRecord.field.warehouseIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.stockRecord.field.warehouseIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getWarehouseSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
    {
      fieldName: 'bizType',
      label: $t('erp.stockRecord.field.bizType'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.stockRecord.field.bizType'),
        ]),
        allowClear: true,
        options: getDictOptions(DICT_TYPE.ERP_STOCK_RECORD_BIZ_TYPE, 'number'),
      },
    },
    {
      fieldName: 'bizNo',
      label: $t('erp.stockRecord.field.bizNo'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.stockRecord.field.bizNo'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'createTime',
      label: $t('erp.stockRecord.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'productName',
      title: $t('erp.stockRecord.field.productName'),
      minWidth: 150,
    },
    {
      field: 'categoryName',
      title: $t('erp.stockRecord.field.categoryName'),
      width: 120,
    },
    {
      field: 'unitName',
      title: $t('erp.stockRecord.field.unitName'),
      width: 100,
    },
    {
      field: 'warehouseName',
      title: $t('erp.stockRecord.field.warehouseName'),
      width: 120,
    },
    {
      field: 'bizType',
      title: $t('erp.stockRecord.field.bizType'),
      width: 100,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.ERP_STOCK_RECORD_BIZ_TYPE },
      },
    },
    {
      field: 'bizNo',
      title: $t('erp.stockRecord.field.bizNo'),
      width: 200,
      showOverflow: 'tooltip',
    },
    {
      field: 'createTime',
      title: $t('erp.stockRecord.field.bizTime'),
      width: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'count',
      title: $t('erp.stockRecord.field.count'),
      width: 120,
      formatter: 'formatAmount3',
    },
    {
      field: 'totalCount',
      title: $t('erp.stockRecord.field.stockCount'),
      width: 100,
      formatter: 'formatAmount3',
    },
    {
      field: 'creatorName',
      title: $t('erp.stockRecord.field.creatorName'),
      width: 100,
    },
  ];
}
