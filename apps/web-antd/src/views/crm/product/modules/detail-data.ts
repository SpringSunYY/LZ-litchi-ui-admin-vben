import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { DescriptionItemSchema } from '#/components/description';

import { h } from 'vue';

import { erpPriceInputFormatter } from '@vben/utils';

import { DictTag } from '#/components/dict-tag';
import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

/** 详情页的字段 */
export function useDetailSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'categoryName',
      label: $t('crm.product.field.categoryName'),
    },
    {
      field: 'unit',
      label: $t('crm.product.field.unit'),
      content: (data) =>
        h(DictTag, { type: DICT_TYPE.CRM_PRODUCT_UNIT, value: data?.unit }),
    },
    {
      field: 'price',
      label: $t('crm.product.field.price'),
      content: (data) => erpPriceInputFormatter(data.price),
    },
    {
      field: 'no',
      label: $t('crm.product.field.no'),
    },
  ];
}

/** 详情页的基础字段 */
export function useDetailBaseSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'name',
      label: $t('crm.product.field.name'),
    },
    {
      field: 'no',
      label: $t('crm.product.field.no'),
    },
    {
      field: 'price',
      label: $t('crm.product.field.priceUnit'),
      content: (data) => erpPriceInputFormatter(data.price),
    },
    {
      field: 'description',
      label: $t('crm.product.field.description'),
    },
    {
      field: 'categoryName',
      label: $t('crm.product.field.categoryName'),
    },
    {
      field: 'status',
      label: $t('crm.product.field.status'),
      content: (data) =>
        h(DictTag, { type: DICT_TYPE.CRM_PRODUCT_STATUS, value: data?.status }),
    },
    {
      field: 'unit',
      label: $t('crm.product.field.unit'),
      content: (data) =>
        h(DictTag, { type: DICT_TYPE.CRM_PRODUCT_UNIT, value: data?.unit }),
    },
  ];
}

/** 详情列表的字段 */
export function useDetailListColumns(
  showBussinePrice: boolean,
): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'productName',
      title: $t('crm.product.field.name'),
    },
    {
      field: 'productNo',
      title: $t('crm.product.productTable.productNo'),
    },
    {
      field: 'productUnit',
      title: $t('crm.product.productTable.productUnit'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.CRM_PRODUCT_UNIT },
      },
    },
    {
      field: 'productPrice',
      title: $t('crm.product.productTable.productPrice'),
      formatter: 'formatAmount2',
    },
    {
      field: 'businessPrice',
      title: $t('crm.business.field.totalPrice'),
      formatter: 'formatAmount2',
      visible: showBussinePrice,
    },
    {
      field: 'count',
      title: $t('crm.product.productTable.count'),
      formatter: 'formatNumber',
    },
    {
      field: 'totalPrice',
      title: $t('crm.product.productTable.totalPrice'),
      formatter: 'formatAmount2',
    },
  ];
}
