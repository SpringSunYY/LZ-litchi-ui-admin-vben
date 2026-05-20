import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { ErpProductCategoryApi } from '#/api/erp/product/category';

import { handleTree } from '@vben/utils';

import { z } from '#/adapter/form';
import { getProductCategoryList } from '#/api/erp/product/category';
import { $t } from '#/locales';
import { CommonStatusEnum, DICT_TYPE, getDictOptions } from '#/utils';

/** 新增/修改的表单 */
export function useFormSchema(): VbenFormSchema[] {
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
      fieldName: 'parentId',
      label: $t('erp.category.field.parentIdName'),
      component: 'ApiTreeSelect',
      componentProps: {
        allowClear: true,
        api: async () => {
          const data = await getProductCategoryList();
          data.unshift({
            id: 0,
            name: $t('erp.category.message.topLevelCategory'),
          });
          return handleTree(data);
        },
        labelField: 'name',
        valueField: 'id',
        childrenField: 'children',
        placeholder: $t('ui.placeholder.select', [
          $t('erp.category.field.parentIdName'),
        ]),
        treeDefaultExpandAll: true,
      },
      rules: 'selectRequired',
    },
    {
      fieldName: 'name',
      label: $t('erp.category.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.category.field.name'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'code',
      label: $t('erp.category.field.code'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.category.field.code'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'sort',
      label: $t('erp.category.field.sort'),
      component: 'InputNumber',
      componentProps: {
        min: 0,
        placeholder: $t('ui.placeholder.input', [
          $t('erp.category.field.sort'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'status',
      label: $t('erp.category.field.status'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
  ];
}

/** 查询表单 */
export function useQueryFormSchema(): VbenFormSchema[] {
  return [
    {
      component: 'Input',
      fieldName: 'name',
      label: $t('erp.category.field.name'),
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.category.field.name'),
        ]),
        allowClear: true,
      },
    },
    {
      component: 'Select',
      fieldName: 'status',
      label: $t('erp.category.field.status'),
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('erp.category.field.status'),
        ]),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions<ErpProductCategoryApi.ProductCategory>['columns'] {
  return [
    {
      field: 'name',
      title: $t('erp.category.field.name'),
      align: 'left',
      treeNode: true,
    },
    {
      field: 'code',
      title: $t('erp.category.field.code'),
    },
    {
      field: 'sort',
      title: $t('erp.category.field.sort'),
    },
    {
      field: 'status',
      title: $t('erp.category.field.status'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'createTime',
      title: $t('erp.category.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 220,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
