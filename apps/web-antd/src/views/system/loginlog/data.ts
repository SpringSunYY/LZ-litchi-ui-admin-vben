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
        name: 'CellDict',
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
      field: 'userAgent',
      title: $t('system.loginlog.field.userAgent'),
    },
    {
      field: 'result',
      title: $t('system.loginlog.field.result'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_LOGIN_RESULT },
      },
    },
    {
      field: 'createTime',
      title: $t('system.loginlog.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 80,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
