import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'type',
      label: $t('system.social.user.field.type'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_SOCIAL_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.social.user.field.type'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'nickname',
      label: $t('system.social.user.field.nickname'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.social.user.field.nickname'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'openid',
      label: $t('system.social.user.field.openid'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.social.user.field.openid'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'createTime',
      label: $t('system.social.user.field.createTime'),
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
      field: 'type',
      title: $t('system.social.user.field.type'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_SOCIAL_TYPE },
      },
    },
    {
      field: 'openid',
      title: $t('system.social.user.field.openid'),
    },
    {
      field: 'nickname',
      title: $t('system.social.user.field.nickname'),
    },
    {
      field: 'avatar',
      title: $t('system.social.user.field.avatar'),
      cellRender: {
        name: 'CellImage',
      },
    },
    {
      field: 'createTime',
      title: $t('system.social.user.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'updateTime',
      title: $t('system.social.user.field.updateTime'),
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
