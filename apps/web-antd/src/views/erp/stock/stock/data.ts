import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { getProductSimpleList } from '#/api/erp/product/product';
import { getWarehouseSimpleList } from '#/api/erp/stock/warehouse';
import { $t } from '#/locales';

/** 搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'productId',
      label: $t('erp.stock.field.productIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.stock.field.productIdName'),
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
      label: $t('erp.stock.field.warehouseIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.stock.field.warehouseIdName'),
        ]),
        allowClear: true,
        showSearch: true,
        api: getWarehouseSimpleList,
        labelField: 'name',
        valueField: 'id',
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'productName',
      title: $t('erp.stock.field.productName'),
      minWidth: 150,
    },
    {
      field: 'unitName',
      title: $t('erp.stock.field.unitName'),
      minWidth: 100,
    },
    {
      field: 'categoryName',
      title: $t('erp.stock.field.categoryName'),
      minWidth: 120,
    },
    {
      field: 'count',
      title: $t('erp.stock.field.stockCount'),
      minWidth: 100,
      formatter: 'formatAmount3',
    },
    {
      field: 'warehouseName',
      title: $t('erp.stock.field.warehouseName'),
      minWidth: 120,
    },
  ];
}
