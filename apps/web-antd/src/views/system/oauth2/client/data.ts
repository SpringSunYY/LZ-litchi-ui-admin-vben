import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { z } from '#/adapter/form';
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
      fieldName: 'clientId',
      label: $t('system.oauth2.client.field.clientId'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.oauth2.client.field.clientId'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'secret',
      label: $t('system.oauth2.client.field.secret'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.oauth2.client.field.secret'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'name',
      label: $t('system.oauth2.client.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.oauth2.client.field.name'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'logo',
      label: $t('system.oauth2.client.field.logo'),
      component: 'ImageUpload',
      componentProps: {
        limit: 1,
        moduleType: 'system',
      },
      rules: 'required',
    },
    {
      fieldName: 'description',
      label: $t('system.oauth2.client.field.description'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.oauth2.client.field.description'),
        ]),
      },
    },
    {
      fieldName: 'status',
      label: $t('system.oauth2.client.field.status'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
    {
      fieldName: 'accessTokenValiditySeconds',
      label: $t('system.oauth2.client.field.accessTokenValiditySeconds'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('system.oauth2.client.help.accessTokenValidity'),
        min: 0,
        controlsPosition: 'right',
      },
      rules: 'required',
    },
    {
      fieldName: 'refreshTokenValiditySeconds',
      label: $t('system.oauth2.client.field.refreshTokenValiditySeconds'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('system.oauth2.client.help.refreshTokenValidity'),
        min: 0,
        controlsPosition: 'right',
      },
      rules: 'required',
    },
    {
      fieldName: 'authorizedGrantTypes',
      label: $t('system.oauth2.client.field.authorizedGrantTypes'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_OAUTH2_GRANT_TYPE),
        mode: 'multiple',
        placeholder: $t('ui.placeholder.select', [
          $t('system.oauth2.client.field.authorizedGrantTypes'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'scopes',
      label: $t('system.oauth2.client.field.scopes'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('system.oauth2.client.field.scopes'),
        ]),
        mode: 'tags',
      },
    },
    {
      fieldName: 'autoApproveScopes',
      label: $t('system.oauth2.client.field.autoApproveScopes'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('system.oauth2.client.field.autoApproveScopes'),
        ]),
        mode: 'multiple',
      },
    },
    {
      fieldName: 'redirectUris',
      label: $t('system.oauth2.client.field.redirectUris'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('system.oauth2.client.field.redirectUris'),
        ]),
        mode: 'tags',
      },
      rules: 'required',
    },
    {
      fieldName: 'authorities',
      label: $t('system.oauth2.client.field.authorities'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('system.oauth2.client.field.authorities'),
        ]),
        mode: 'tags',
      },
    },
    {
      fieldName: 'resourceIds',
      label: $t('system.oauth2.client.field.resourceIds'),
      component: 'Select',
      componentProps: {
        mode: 'tags',
        placeholder: $t('ui.placeholder.select', [
          $t('system.oauth2.client.field.resourceIds'),
        ]),
      },
    },
    {
      fieldName: 'additionalInformation',
      label: $t('system.oauth2.client.field.additionalInformation'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('system.oauth2.client.help.additionalInformation'),
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('system.oauth2.client.field.name'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.oauth2.client.field.name'),
        ]),
      },
    },
    {
      fieldName: 'status',
      label: $t('system.oauth2.client.field.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.oauth2.client.field.status'),
        ]),
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'clientId',
      title: $t('system.oauth2.client.field.clientId'),
    },
    {
      field: 'secret',
      title: $t('system.oauth2.client.field.secret'),
    },
    {
      field: 'name',
      title: $t('system.oauth2.client.field.name'),
    },
    {
      field: 'logo',
      title: $t('system.oauth2.client.field.logo'),
      cellRender: {
        name: 'CellImage',
      },
    },
    {
      field: 'status',
      title: $t('system.oauth2.client.field.status'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'accessTokenValiditySeconds',
      title: $t('system.oauth2.client.field.accessTokenValiditySeconds'),
      formatter: ({ cellValue }) => `${cellValue} 秒`,
    },
    {
      field: 'refreshTokenValiditySeconds',
      title: $t('system.oauth2.client.field.refreshTokenValiditySeconds'),
      formatter: ({ cellValue }) => `${cellValue} 秒`,
    },
    {
      field: 'authorizedGrantTypes',
      title: $t('system.oauth2.client.field.authorizedGrantTypes'),
    },
    {
      field: 'createTime',
      title: $t('system.oauth2.client.field.createTime'),
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
