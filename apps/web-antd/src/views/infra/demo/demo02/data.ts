import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { Demo02CategoryApi } from '#/api/infra/demo/demo02';

import { $t } from '@vben/locales';
import { handleTree } from '@vben/utils';

import { getDemo02CategoryList } from '#/api/infra/demo/demo02';
import { getRangePickerDefaultProps } from '#/utils';

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
      label: $t('infra:demo02Category:field:parentId'),
      component: 'ApiTreeSelect',
      componentProps: {
        allowClear: true,
        api: async () => {
          const data = await getDemo02CategoryList({});
          data.unshift({
            id: 0,
            name: $t('ui.treeRoot', [
              $t('infra:demo02Category:field:parentId'),
            ]),
          });
          return handleTree(data);
        },
        labelField: 'name',
        valueField: 'id',
        childrenField: 'children',
        placeholder: $t('ui.placeholder.select', [
          $t('infra:demo02Category:field:parentId'),
        ]),
        treeDefaultExpandAll: true,
      },
      rules: 'selectRequired',
    },
    {
      fieldName: 'name',
      label: $t('infra:demo02Category:field:name'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra:demo02Category:field:name'),
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
      label: $t('infra:demo02Category:field:name'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra:demo02Category:field:name'),
        ]),
      },
    },
    {
      fieldName: 'parentId',
      label: $t('infra:demo02Category:field:parentId'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra:demo02Category:field:parentId'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('infra:demo02Category:field:createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions<Demo02CategoryApi.Demo02Category>['columns'] {
  return [
    {
      field: 'id',
      title: $t('infra:demo02Category:field:id'),
      minWidth: 120,
    },
    {
      field: 'name',
      title: $t('infra:demo02Category:field:name'),
      minWidth: 120,
    },
    {
      field: 'parentId',
      title: $t('infra:demo02Category:field:parentId'),
      minWidth: 120,
      treeNode: true,
    },
    {
      field: 'createTime',
      title: $t('infra:demo02Category:field:createTime'),
      minWidth: 120,
      sortable: true,
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 200,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
