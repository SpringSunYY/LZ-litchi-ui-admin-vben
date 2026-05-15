import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { z } from '#/adapter/form';
import { $t } from '#/locales';
import {
  CommonStatusEnum,
  DICT_TYPE,
  getDictOptions,
  getRangePickerDefaultProps,
  SystemDataScopeEnum,
} from '#/utils';

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
      label: $t('system.role.field.name'),
      component: 'Input',
      rules: 'required',
    },
    {
      fieldName: 'code',
      label: $t('system.role.field.code'),
      component: 'Input',
      rules: 'required',
    },
    {
      fieldName: 'sort',
      label: $t('system.role.field.sort'),
      component: 'InputNumber',
      componentProps: {
        min: 0,
        controlsPosition: 'right',
        placeholder: $t('ui.placeholder.input', [$t('system.role.field.sort')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'status',
      label: $t('system.role.field.status'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
    {
      fieldName: 'remark',
      label: $t('system.role.field.remark'),
      component: 'Textarea',
    },
  ];
}

/** 分配数据权限的表单 */
export function useAssignDataPermissionFormSchema(): VbenFormSchema[] {
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
      label: $t('system.role.field.name'),
      component: 'Input',
      componentProps: {
        disabled: true,
      },
    },
    {
      component: 'Input',
      fieldName: 'code',
      label: $t('system.role.field.code'),
      componentProps: {
        disabled: true,
      },
    },
    {
      component: 'Select',
      fieldName: 'dataScope',
      label: $t('system.role.field.dataScope'),
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_DATA_SCOPE, 'number'),
      },
    },
    {
      fieldName: 'dataScopeDeptIds',
      label: $t('system.role.field.dataScopeDeptIds'),
      component: 'Input',
      formItemClass: 'items-start',
      dependencies: {
        triggerFields: ['dataScope'],
        show: (values) => {
          return values.dataScope === SystemDataScopeEnum.DEPT_CUSTOM;
        },
      },
    },
  ];
}

/** 分配菜单的表单 */
export function useAssignMenuFormSchema(): VbenFormSchema[] {
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
      label: $t('system.role.field.name'),
      component: 'Input',
      componentProps: {
        disabled: true,
      },
    },
    {
      fieldName: 'code',
      label: $t('system.role.field.code'),
      component: 'Input',
      componentProps: {
        disabled: true,
      },
    },
    {
      fieldName: 'menuIds',
      label: $t('system.role.field.menuIds'),
      component: 'Input',
      formItemClass: 'items-start',
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('system.role.field.name'),
      component: 'Input',
    },
    {
      fieldName: 'code',
      label: $t('system.role.field.code'),
      component: 'Input',
    },
    {
      fieldName: 'status',
      label: $t('system.role.field.status'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('system.role.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('system.role.field.id'),
    },
    {
      field: 'name',
      title: $t('system.role.field.name'),
    },
    {
      field: 'type',
      title: $t('system.role.field.type'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_ROLE_TYPE },
      },
    },
    {
      field: 'code',
      title: $t('system.role.field.code'),
    },
    {
      field: 'sort',
      title: $t('system.role.field.sort'),
    },
    {
      field: 'remark',
      title: $t('system.role.field.remark'),
    },
    {
      field: 'status',
      title: $t('system.role.field.status'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'createTime',
      title: $t('system.role.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 240,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
