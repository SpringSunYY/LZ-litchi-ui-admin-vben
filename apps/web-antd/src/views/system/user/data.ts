import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { SystemUserApi } from '#/api/system/user';

import { handleTree } from '@vben/utils';

import { z } from '#/adapter/form';
import { getDeptList } from '#/api/system/dept';
import { getSimplePostList } from '#/api/system/post';
import { getSimpleRoleList } from '#/api/system/role';
import { $t } from '#/locales';
import {
  CommonStatusEnum,
  DICT_TYPE,
  getDictOptions,
  getRangePickerDefaultProps,
} from '#/utils';

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
      fieldName: 'username',
      label: $t('system.user.field.username'),
      component: 'Input',
      rules: 'required',
    },
    {
      label: $t('system.user.field.password'),
      fieldName: 'password',
      component: 'InputPassword',
      rules: 'required',
      dependencies: {
        triggerFields: ['id'],
        show: (values) => !values.id,
      },
    },
    {
      fieldName: 'nickname',
      label: $t('system.user.field.nickname'),
      component: 'Input',
      rules: 'required',
    },
    {
      fieldName: 'deptId',
      label: $t('system.user.field.deptId'),
      component: 'ApiTreeSelect',
      componentProps: {
        api: async () => {
          const data = await getDeptList();
          return handleTree(data);
        },
        labelField: 'name',
        valueField: 'id',
        childrenField: 'children',
        placeholder: $t('ui.placeholder.select', [
          $t('system.user.field.deptId'),
        ]),
        treeDefaultExpandAll: true,
      },
    },
    {
      fieldName: 'postIds',
      label: $t('system.user.field.postIds'),
      component: 'ApiSelect',
      componentProps: {
        api: getSimplePostList,
        labelField: 'name',
        valueField: 'id',
        mode: 'multiple',
        placeholder: $t('ui.placeholder.select', [
          $t('system.user.field.postIds'),
        ]),
      },
    },
    {
      fieldName: 'email',
      label: $t('system.user.field.email'),
      component: 'Input',
      rules: z
        .string()
        .email($t('ui.validate.email'))
        .or(z.literal(''))
        .optional(),
    },
    {
      fieldName: 'mobile',
      label: $t('system.user.field.mobile'),
      component: 'Input',
    },
    {
      fieldName: 'sex',
      label: $t('system.user.field.sex'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_USER_SEX, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(1),
    },
    {
      fieldName: 'status',
      label: $t('system.user.field.status'),
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
      label: $t('system.user.field.remark'),
      component: 'Textarea',
    },
  ];
}

/** 重置密码的表单 */
export function useResetPasswordFormSchema(): VbenFormSchema[] {
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
      fieldName: 'newPassword',
      label: $t('system.user.field.newPassword'),
      component: 'InputPassword',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.user.field.newPassword'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'confirmPassword',
      label: $t('system.user.field.confirmPassword'),
      component: 'InputPassword',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.user.field.confirmPassword'),
        ]),
      },
      dependencies: {
        rules(values: Record<string, any>) {
          const { newPassword } = values;
          return z
            .string()
            .nonempty($t('system.user.message.confirmPasswordEmpty'))
            .refine((value) => value === newPassword, {
              message: $t('system.user.message.passwordMismatch'),
            });
        },
        triggerFields: ['newPassword'],
      },
    },
  ];
}

/** 分配角色的表单 */
export function useAssignRoleFormSchema(): VbenFormSchema[] {
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
      fieldName: 'username',
      label: $t('system.user.field.username'),
      component: 'Input',
      componentProps: {
        disabled: true,
      },
    },
    {
      fieldName: 'nickname',
      label: $t('system.user.field.nickname'),
      component: 'Input',
      componentProps: {
        disabled: true,
      },
    },
    {
      fieldName: 'roleIds',
      label: $t('system.user.field.roleIds'),
      component: 'ApiSelect',
      componentProps: {
        api: getSimpleRoleList,
        labelField: 'name',
        valueField: 'id',
        mode: 'multiple',
        placeholder: $t('ui.placeholder.select', [
          $t('system.user.field.roleIds'),
        ]),
      },
    },
  ];
}

/** 用户导入的表单 */
export function useImportFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'file',
      label: $t('system.user.field.file'),
      component: 'Upload',
      rules: 'required',
      help: $t('system.user.help.fileType'),
    },
    {
      fieldName: 'updateSupport',
      label: $t('system.user.field.updateSupport'),
      component: 'Switch',
      componentProps: {
        checkedChildren: $t('common.yes'),
        unCheckedChildren: $t('common.no'),
      },
      rules: z.boolean().default(false),
      help: $t('system.user.help.updateSupport'),
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'username',
      label: $t('system.user.field.username'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.user.field.username'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'mobile',
      label: $t('system.user.field.mobile'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.user.field.mobile'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'createTime',
      label: $t('system.user.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns<T = SystemUserApi.User>(
  onStatusChange?: (
    newStatus: number,
    row: T,
  ) => PromiseLike<boolean | undefined>,
): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('system.user.field.id'),
    },
    {
      field: 'username',
      title: $t('system.user.field.username'),
    },
    {
      field: 'nickname',
      title: $t('system.user.field.nickname'),
    },
    {
      field: 'deptName',
      title: $t('system.user.field.deptName'),
    },
    {
      field: 'mobile',
      title: $t('system.user.field.mobile'),
    },
    {
      field: 'status',
      title: $t('system.user.field.status'),
      align: 'center',
      cellRender: {
        attrs: { beforeChange: onStatusChange },
        name: 'CellSwitch',
        props: {
          checkedValue: CommonStatusEnum.ENABLE,
          unCheckedValue: CommonStatusEnum.DISABLE,
        },
      },
    },
    {
      field: 'createTime',
      title: $t('system.user.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 180,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
