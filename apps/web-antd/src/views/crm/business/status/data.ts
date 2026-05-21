import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { handleTree } from '@vben/utils';

import { getDeptList } from '#/api/system/dept';
import { $t } from '#/locales';

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
      fieldName: 'name',
      label: $t('crm.businessStatus.field.name'),
      component: 'Input',
      rules: 'required',
    },
    {
      fieldName: 'deptIds',
      label: $t('crm.businessStatus.field.dept'),
      component: 'ApiTreeSelect',
      componentProps: {
        api: async () => {
          const data = await getDeptList();
          return handleTree(data);
        },
        multiple: true,
        fieldNames: { label: 'name', value: 'id', children: 'children' },
        placeholder: $t('crm.businessStatus.field.selectDept'),
        treeDefaultExpandAll: true,
      },
    },
    {
      fieldName: 'statuses',
      label: '阶段设置',
      component: 'Input',
      rules: 'required',
    },
  ];
}

/** 商机状态阶段列表列配置 */
export function useFormColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'defaultStatus',
      title: $t('crm.businessStatus.field.stage'),
      minWidth: 100,
      slots: { default: 'defaultStatus' },
    },
    {
      field: 'name',
      title: $t('crm.businessStatus.field.stageName'),
      minWidth: 100,
      slots: { default: 'name' },
    },
    {
      field: 'percent',
      title: $t('crm.businessStatus.field.winRate'),
      minWidth: 100,
      slots: { default: 'percent' },
    },
    {
      title: $t('crm.businessStatus.field.operation'),
      width: 130,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'name',
      title: $t('crm.businessStatus.field.name'),
    },
    {
      field: 'deptNames',
      title: $t('crm.businessStatus.field.dept'),
      formatter: ({ cellValue }) =>
        cellValue?.length > 0
          ? cellValue.join(' ')
          : $t('crm.businessStatus.field.allCompany'),
    },
    {
      field: 'creator',
      title: $t('crm.businessStatus.field.creator'),
    },
    {
      field: 'createTime',
      title: $t('crm.businessStatus.field.createTime'),
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
