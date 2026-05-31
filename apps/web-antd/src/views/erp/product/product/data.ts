import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { handleTree } from '@vben/utils';

import { z } from '#/adapter/form';
import { getProductCategorySimpleList } from '#/api/erp/product/category';
import { getProductUnitSimpleList } from '#/api/erp/product/unit';
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
      component: 'Input',
      fieldName: 'name',
      label: $t('erp.product.field.name'),
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.product.field.name')]),
      },
    },
    {
      fieldName: 'barCode',
      label: $t('erp.product.field.barCode'),
      component: 'Input',
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.product.field.barCode'),
        ]),
      },
    },
    {
      fieldName: 'categoryId',
      label: $t('erp.product.field.categoryIdName'),
      component: 'ApiTreeSelect',
      componentProps: {
        api: async () => {
          const data = await getProductCategorySimpleList();
          return handleTree(data);
        },
        labelField: 'name',
        valueField: 'id',
        childrenField: 'children',
        placeholder: $t('ui.placeholder.select', [
          $t('erp.product.field.categoryIdName'),
        ]),
        treeDefaultExpandAll: true,
      },
      rules: 'required',
    },
    {
      fieldName: 'unitId',
      label: $t('erp.product.field.unitIdName'),
      component: 'ApiSelect',
      componentProps: {
        api: getProductUnitSimpleList,
        labelField: 'name',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [
          $t('erp.product.field.unitIdName'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'status',
      label: $t('erp.product.field.status'),
      component: 'I18nRadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
    {
      fieldName: 'standard',
      label: $t('erp.product.field.standard'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.product.field.standard'),
        ]),
      },
    },
    {
      fieldName: 'expiryDay',
      label: $t('erp.product.field.expiryDay'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.product.field.expiryDay'),
        ]),
      },
    },
    {
      fieldName: 'weight',
      label: $t('erp.product.field.weight'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.product.field.weight'),
        ]),
      },
    },
    {
      fieldName: 'purchasePrice',
      label: $t('erp.product.field.purchasePrice'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.product.field.purchasePrice'),
        ]),
        precision: 2,
        min: 0,
        step: 0.01,
      },
    },
    {
      fieldName: 'salePrice',
      label: $t('erp.product.field.salePrice'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.product.field.salePrice'),
        ]),
        precision: 2,
        min: 0,
        step: 0.01,
      },
    },
    {
      fieldName: 'minPrice',
      label: $t('erp.product.field.minPrice'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.product.field.minPrice'),
        ]),
        precision: 2,
        min: 0,
        step: 0.01,
      },
    },
    {
      fieldName: 'remark',
      label: $t('erp.product.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.product.field.remark'),
        ]),
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('erp.product.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.product.field.name')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'categoryId',
      label: $t('erp.product.field.categoryIdName'),
      component: 'ApiTreeSelect',
      componentProps: {
        api: async () => {
          const data = await getProductCategorySimpleList();
          return handleTree(data);
        },
        labelField: 'name',
        valueField: 'id',
        childrenField: 'children',
        placeholder: $t('ui.placeholder.select', [
          $t('erp.product.field.categoryIdName'),
        ]),
        treeDefaultExpandAll: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'barCode',
      title: $t('erp.product.field.barCode'),
      minWidth: 120,
    },
    {
      field: 'name',
      title: $t('erp.product.field.name'),
      minWidth: 200,
    },
    {
      field: 'standard',
      title: $t('erp.product.field.standard'),
      minWidth: 100,
    },
    {
      field: 'categoryName',
      title: $t('erp.product.field.categoryIdName'),
      minWidth: 120,
    },
    {
      field: 'unitName',
      title: $t('erp.product.field.unitIdName'),
      minWidth: 100,
    },
    {
      field: 'purchasePrice',
      title: $t('erp.product.field.purchasePrice'),
      minWidth: 100,
      formatter: 'formatAmount2',
    },
    {
      field: 'salePrice',
      title: $t('erp.product.field.salePrice'),
      minWidth: 100,
      formatter: 'formatAmount2',
    },
    {
      field: 'minPrice',
      title: $t('erp.product.field.minPrice'),
      minWidth: 100,
      formatter: 'formatAmount2',
    },
    {
      field: 'status',
      title: $t('erp.product.field.status'),
      minWidth: 100,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'createTime',
      title: $t('erp.product.field.createTime'),
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
