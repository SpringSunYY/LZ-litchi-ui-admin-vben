import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'userId',
      label: $t('system.oauth2.token.field.userId'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.oauth2.token.field.userId'),
        ]),
      },
    },
    {
      fieldName: 'userType',
      label: $t('system.oauth2.token.field.userType'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.USER_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.oauth2.token.field.userType'),
        ]),
      },
    },
    {
      fieldName: 'clientId',
      label: $t('system.oauth2.token.field.clientId'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.oauth2.token.field.clientId'),
        ]),
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'accessToken',
      title: $t('system.oauth2.token.field.accessToken'),
    },
    {
      field: 'refreshToken',
      title: $t('system.oauth2.token.field.refreshToken'),
    },
    {
      field: 'userId',
      title: $t('system.oauth2.token.field.userId'),
    },
    {
      field: 'userType',
      title: $t('system.oauth2.token.field.userType'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.USER_TYPE },
      },
    },
    {
      field: 'clientId',
      title: $t('system.oauth2.token.field.clientId'),
    },
    {
      field: 'expiresTime',
      title: $t('system.oauth2.token.field.expiresTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'createTime',
      title: $t('system.oauth2.token.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      minWidth: 80,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
