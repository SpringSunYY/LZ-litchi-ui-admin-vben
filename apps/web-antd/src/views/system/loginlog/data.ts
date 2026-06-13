import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import { DICT_TYPE, getRangePickerDefaultProps } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'username',
      label: $t('system.loginlog.field.username'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.loginlog.field.username'),
        ]),
      },
    },
    {
      fieldName: 'userIp',
      label: $t('system.loginlog.field.userIp'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.loginlog.field.userIp'),
        ]),
      },
    },
    {
      fieldName: 'userIpAddr',
      label: $t('system.loginlog.field.userIpAddr'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.loginlog.field.userIpAddr'),
        ]),
      },
    },
    {
      fieldName: 'userAgent',
      label: $t('system.loginlog.field.userAgent'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.loginlog.field.userAgent'),
        ]),
      },
    },
    {
      fieldName: 'userBrowser',
      label: $t('system.loginlog.field.userBrowser'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.loginlog.field.userBrowser'),
        ]),
      },
    },
    {
      fieldName: 'userPlatform',
      label: $t('system.loginlog.field.userPlatform'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.loginlog.field.userPlatform'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('system.loginlog.field.createTime'),
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
      title: $t('system.loginlog.field.id'),
    },
    {
      field: 'logType',
      title: $t('system.loginlog.field.logType'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.SYSTEM_LOGIN_TYPE },
      },
    },
    {
      field: 'username',
      title: $t('system.loginlog.field.username'),
    },
    {
      field: 'userIp',
      title: $t('system.loginlog.field.userIp'),
    },
    {
      field: 'userIpAddr',
      title: $t('system.loginlog.field.userIpAddr'),
    },
    {
      field: 'userAgent',
      title: $t('system.loginlog.field.userAgent'),
      visible: false,
    },
    {
      field: 'userBrowser',
      title: $t('system.loginlog.field.userBrowser'),
    },
    {
      field: 'userPlatform',
      title: $t('system.loginlog.field.userPlatform'),
    },
    {
      field: 'result',
      title: $t('system.loginlog.field.result'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.SYSTEM_LOGIN_RESULT },
      },
    },
    {
      field: 'createTime',
      title: $t('system.loginlog.field.createTime'),
      formatter: 'formatDateTime',
      sortable: true,
    },
    {
      title: $t('common.operation'),
      width: 80,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
