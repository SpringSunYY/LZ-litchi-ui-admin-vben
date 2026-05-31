import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { ErpWarehouseApi } from '#/api/erp/stock/warehouse';

import { z } from '#/adapter/form';
import { $t } from '#/locales';
import { CommonStatusEnum, DICT_TYPE, getDictOptions } from '#/utils';

/** 新增/修改的表单 */
export function useFormSchema(): VbenFormSchema[] {
  return [
    {
      component: 'Input',
      fieldName: 'id',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'name',
      label: $t('erp.warehouse.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.warehouse.field.name'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'address',
      label: $t('erp.warehouse.field.address'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.warehouse.field.address'),
        ]),
      },
    },
    {
      fieldName: 'status',
      label: $t('erp.warehouse.field.status'),
      component: 'I18nRadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
    {
      fieldName: 'warehousePrice',
      label: $t('erp.warehouse.field.warehousePrice'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('erp.warehouse.field.warehousePricePlaceholder'),
        min: 0,
        precision: 2,
      },
    },
    {
      fieldName: 'truckagePrice',
      label: $t('erp.warehouse.field.truckagePrice'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('erp.warehouse.field.truckagePricePlaceholder'),
        min: 0,
        precision: 2,
      },
    },
    {
      fieldName: 'principal',
      label: $t('erp.warehouse.field.principal'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.warehouse.field.principal'),
        ]),
      },
    },
    {
      fieldName: 'sort',
      label: $t('erp.warehouse.field.sort'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.warehouse.field.sort'),
        ]),
        precision: 0,
      },
      rules: 'required',
    },
    {
      fieldName: 'remark',
      label: $t('erp.warehouse.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.warehouse.field.remark'),
        ]),
      },
    },
  ];
}

/** 搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('erp.warehouse.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.warehouse.field.name'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'status',
      label: $t('erp.warehouse.field.status'),
      component: 'I18nSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('erp.warehouse.field.status'),
        ]),
        allowClear: true,
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(
  onDefaultStatusChange?: (
    newStatus: boolean,
    row: ErpWarehouseApi.Warehouse,
  ) => PromiseLike<boolean | undefined>,
): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'name',
      title: $t('erp.warehouse.field.name'),
      minWidth: 150,
    },
    {
      field: 'address',
      title: $t('erp.warehouse.field.address'),
      minWidth: 200,
      showOverflow: 'tooltip',
    },
    {
      field: 'warehousePrice',
      title: $t('erp.warehouse.field.warehousePrice'),
      minWidth: 120,
      formatter: 'formatAmount2',
    },
    {
      field: 'truckagePrice',
      title: $t('erp.warehouse.field.truckagePrice'),
      minWidth: 120,
      formatter: 'formatAmount2',
    },
    {
      field: 'principal',
      title: $t('erp.warehouse.field.principal'),
      minWidth: 100,
    },
    {
      field: 'sort',
      title: $t('erp.warehouse.field.sort'),
      minWidth: 80,
    },
    {
      field: 'status',
      title: $t('erp.warehouse.field.status'),
      minWidth: 100,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'defaultStatus',
      title: $t('erp.warehouse.field.defaultStatus'),
      minWidth: 100,
      cellRender: {
        attrs: { beforeChange: onDefaultStatusChange },
        name: 'CellSwitch',
        props: {
          checkedValue: true,
          unCheckedValue: false,
        },
      },
    },
    {
      field: 'remark',
      title: $t('erp.warehouse.field.remark'),
      minWidth: 150,
      showOverflow: 'tooltip',
    },
    {
      field: 'createTime',
      title: $t('erp.warehouse.field.createTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 130,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
