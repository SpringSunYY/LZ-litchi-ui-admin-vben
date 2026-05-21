import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmProductCategoryApi } from '#/api/crm/product/category';

import { handleTree } from '@vben/utils';

import { getProductCategoryList } from '#/api/crm/product/category';
import { $t } from '#/locales';

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
      fieldName: 'parentId',
      label: $t('crm.productCategory.field.parentIdName'),
      component: 'ApiTreeSelect',
      componentProps: {
        allowClear: true,
        api: async () => {
          const data = await getProductCategoryList();
          data.unshift({
            id: 0,
            name: $t('crm.productCategory.message.topLevelCategory'),
          } as CrmProductCategoryApi.ProductCategory);
          return handleTree(data);
        },
        fieldNames: { label: 'name', value: 'id', children: 'children' },
        placeholder: $t('ui.placeholder.select', [
          $t('crm.productCategory.field.parentIdName'),
        ]),
        showSearch: true,
        treeDefaultExpandAll: true,
      },
      rules: 'selectRequired',
    },
    {
      fieldName: 'name',
      label: $t('crm.productCategory.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.productCategory.field.name'),
        ]),
      },
      rules: 'required',
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('crm.productCategory.field.name'),
      component: 'Input',
    },
  ];
}

/** 表格列配置 */
export function useGridColumns(): VxeTableGridOptions<CrmProductCategoryApi.ProductCategory>['columns'] {
  return [
    {
      field: 'name',
      title: $t('crm.productCategory.field.name'),
      treeNode: true,
    },
    {
      field: 'id',
      title: $t('crm.productCategory.field.id'),
    },
    {
      field: 'createTime',
      title: $t('crm.productCategory.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'actions',
      title: $t('common.operation'),
      width: 200,
      fixed: 'right',
      slots: {
        default: 'actions',
      },
    },
  ];
}
