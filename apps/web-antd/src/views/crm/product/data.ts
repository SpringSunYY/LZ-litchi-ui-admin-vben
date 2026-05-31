import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { useUserStore } from '@vben/stores';
import { handleTree } from '@vben/utils';

import { z } from '#/adapter/form';
import { getProductCategoryList } from '#/api/crm/product/category';
import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import { CommonStatusEnum, DICT_TYPE, getDictOptions } from '#/utils';

/** 新增/修改的表单 */
export function useFormSchema(): VbenFormSchema[] {
  const userStore = useUserStore();

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
      label: $t('crm.product.field.name'),
      rules: 'required',
    },
    {
      component: 'Input',
      fieldName: 'no',
      label: $t('crm.product.field.no'),
      rules: 'required',
    },
    {
      component: 'ApiSelect',
      fieldName: 'ownerUserId',
      label: $t('crm.product.field.ownerUserId'),
      rules: 'required',
      dependencies: {
        triggerFields: ['id'],
        disabled: (values) => values.id,
      },
      componentProps: {
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [
          $t('crm.product.field.ownerUserId'),
        ]),
        allowClear: true,
      },
      defaultValue: userStore.userInfo?.id,
    },
    {
      component: 'ApiTreeSelect',
      fieldName: 'categoryId',
      label: $t('crm.product.field.categoryId'),
      rules: 'required',
      componentProps: {
        api: async () => {
          const data = await getProductCategoryList();
          return handleTree(data);
        },
        fieldNames: { label: 'name', value: 'id', children: 'children' },
        placeholder: $t('ui.placeholder.select', [
          $t('crm.product.field.categoryId'),
        ]),
      },
    },
    {
      fieldName: 'unit',
      label: $t('crm.product.field.unit'),
      component: 'I18nSelect',
      componentProps: {
        options: getDictOptions(DICT_TYPE.CRM_PRODUCT_UNIT, 'number'),
      },
      rules: 'required',
    },
    {
      component: 'InputNumber',
      fieldName: 'price',
      label: $t('crm.product.field.priceUnit'),
      rules: 'required',
      componentProps: {
        min: 0,
        precision: 2,
        step: 0.1,
      },
    },
    {
      component: 'Textarea',
      fieldName: 'description',
      label: $t('crm.product.field.description'),
    },
    {
      fieldName: 'status',
      label: $t('crm.product.field.status'),
      component: 'I18nRadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.CRM_PRODUCT_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('crm.product.field.name'),
      component: 'Input',
    },
    {
      fieldName: 'status',
      label: $t('crm.product.field.status'),
      component: 'I18nSelect',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.CRM_PRODUCT_STATUS, 'number'),
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('crm.product.field.id'),
      visible: false,
    },
    {
      field: 'name',
      title: $t('crm.product.field.name'),
      slots: { default: 'name' },
    },
    {
      field: 'categoryName',
      title: $t('crm.product.field.categoryName'),
    },
    {
      field: 'unit',
      title: $t('crm.product.field.unit'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_PRODUCT_UNIT },
      },
    },
    {
      field: 'no',
      title: $t('crm.product.field.no'),
    },
    {
      field: 'price',
      title: $t('crm.product.field.priceUnit'),
      formatter: 'formatAmount2',
    },
    {
      field: 'description',
      title: $t('crm.product.field.description'),
    },
    {
      field: 'status',
      title: $t('crm.product.field.status'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_PRODUCT_STATUS },
      },
    },
    {
      field: 'ownerUserName',
      title: $t('crm.product.field.ownerUserName'),
    },
    {
      field: 'updateTime',
      title: $t('crm.product.field.updateTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'creatorName',
      title: $t('crm.product.field.creatorName'),
    },
    {
      field: 'createTime',
      title: $t('crm.product.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 160,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}

/** 代码生成表格列定义 */
export function useProductEditTableColumns(): VxeTableGridOptions['columns'] {
  return [
    { type: 'seq', title: $t('crm.product.productTable.seq'), minWidth: 50 },
    {
      field: 'productId',
      title: $t('crm.product.productTable.productId'),
      minWidth: 100,
      slots: { default: 'productId' },
    },
    {
      field: 'productNo',
      title: $t('crm.product.productTable.productNo'),
      minWidth: 150,
    },
    {
      field: 'productUnit',
      title: $t('crm.product.productTable.productUnit'),
      minWidth: 100,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_PRODUCT_UNIT },
      },
    },
    {
      field: 'productPrice',
      title: $t('crm.product.productTable.productPrice'),
      minWidth: 100,
      formatter: 'formatAmount2',
    },
    {
      field: 'sellingPrice',
      title: $t('crm.product.productTable.sellingPrice'),
      minWidth: 100,
      slots: { default: 'sellingPrice' },
    },
    {
      field: 'count',
      title: $t('crm.product.productTable.count'),
      minWidth: 100,
      slots: { default: 'count' },
    },
    {
      field: 'totalPrice',
      title: $t('crm.product.productTable.totalPrice'),
      minWidth: 100,
      formatter: 'formatAmount2',
    },
    {
      title: $t('common.operation'),
      width: 80,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
