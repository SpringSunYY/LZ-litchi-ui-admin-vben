import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { z } from '#/adapter/form';
import { $t } from '#/locales';
import {
  CommonStatusEnum,
  DICT_TYPE,
  getDictOptions,
  SystemUserSocialTypeEnum,
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
      label: $t('system.social.client.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.social.client.field.name'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'socialType',
      label: $t('system.social.client.field.socialType'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_SOCIAL_TYPE, 'number'),
      },
      rules: 'required',
    },
    {
      fieldName: 'userType',
      label: $t('system.social.client.field.userType'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.USER_TYPE, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: 'required',
    },
    {
      fieldName: 'clientId',
      label: $t('system.social.client.field.clientId'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.social.client.field.clientId'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'clientSecret',
      label: $t('system.social.client.field.clientSecret'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.social.client.field.clientSecret'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'agentId',
      label: $t('system.social.client.field.agentId'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.social.client.field.agentId'),
        ]),
      },
      dependencies: {
        triggerFields: ['socialType'],
        show: (values) =>
          values.socialType === SystemUserSocialTypeEnum.WECHAT_ENTERPRISE.type,
      },
    },
    {
      fieldName: 'status',
      label: $t('system.social.client.field.status'),
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

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('system.social.client.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.social.client.field.name'),
        ]),
      },
    },
    {
      fieldName: 'socialType',
      label: $t('system.social.client.field.socialType'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_SOCIAL_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.social.client.field.socialType'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'userType',
      label: $t('system.social.client.field.userType'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.USER_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.social.client.field.userType'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'clientId',
      label: $t('system.social.client.field.clientId'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.social.client.field.clientId'),
        ]),
      },
    },
    {
      fieldName: 'status',
      label: $t('system.social.client.field.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.social.client.field.status'),
        ]),
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
      title: $t('system.social.client.field.id'),
    },
    {
      field: 'name',
      title: $t('system.social.client.field.name'),
    },
    {
      field: 'socialType',
      title: $t('system.social.client.field.socialType'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_SOCIAL_TYPE },
      },
    },
    {
      field: 'userType',
      title: $t('system.social.client.field.userType'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.USER_TYPE },
      },
    },
    {
      field: 'clientId',
      title: $t('system.social.client.field.clientId'),
    },
    {
      field: 'status',
      title: $t('system.social.client.field.status'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'createTime',
      title: $t('system.social.client.field.createTime'),
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
