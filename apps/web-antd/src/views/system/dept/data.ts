import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { SystemDeptApi } from '#/api/system/dept';

import { handleTree } from '@vben/utils';

import { z } from '#/adapter/form';
import { getDeptList } from '#/api/system/dept';
import { getSimpleUserList } from '#/api/system/user';
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
      label: $t('system.dept.field.parentId'),
      component: 'ApiTreeSelect',
      componentProps: {
        allowClear: true,
        api: async () => {
          const data = await getDeptList();
          data.unshift({
            id: 0,
            name: $t('ui.treeRoot', [$t('system.dept.field.parentId')]),
          });
          return handleTree(data);
        },
        labelField: 'name',
        valueField: 'id',
        childrenField: 'children',
        placeholder: $t('ui.placeholder.select', [
          $t('system.dept.field.parentId'),
        ]),
        treeDefaultExpandAll: true,
      },
      rules: 'selectRequired',
    },
    {
      fieldName: 'name',
      label: $t('system.dept.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('system.dept.field.name')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'sort',
      label: $t('system.dept.field.sort'),
      component: 'InputNumber',
      componentProps: {
        min: 0,
        controlsPosition: 'right',
        placeholder: $t('ui.placeholder.input', [$t('system.dept.field.sort')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'leaderUserId',
      label: $t('system.dept.field.leaderUserId'),
      component: 'ApiSelect',
      componentProps: {
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [
          $t('system.dept.field.leaderUserId'),
        ]),
        allowClear: true,
      },
      rules: z.number().optional(),
    },
    {
      fieldName: 'phone',
      label: $t('system.dept.field.phone'),
      component: 'Input',
      componentProps: {
        maxLength: 11,
        placeholder: $t('ui.placeholder.input', [
          $t('system.dept.field.phone'),
        ]),
      },
      rules: 'mobileRequired',
    },
    {
      fieldName: 'email',
      label: $t('system.dept.field.email'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.dept.field.email'),
        ]),
      },
      rules: z.string().email($t('ui.validate.email')).optional(),
    },
    {
      fieldName: 'status',
      label: $t('system.dept.field.status'),
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

/** 列表的字段 */
export function useGridColumns(
  getLeaderName?: (userId: number) => string | undefined,
): VxeTableGridOptions<SystemDeptApi.Dept>['columns'] {
  return [
    {
      field: 'name',
      title: $t('system.dept.field.name'),
      align: 'left',
      fixed: 'left',
      treeNode: true,
    },
    {
      field: 'leaderUserId',
      title: $t('system.dept.field.leaderUserId'),
      formatter: ({ cellValue }) => getLeaderName?.(cellValue) || '-',
    },
    {
      field: 'sort',
      title: $t('system.dept.field.sort'),
    },
    {
      field: 'status',
      title: $t('system.dept.field.status'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'createTime',
      title: $t('system.dept.field.createTime'),
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
