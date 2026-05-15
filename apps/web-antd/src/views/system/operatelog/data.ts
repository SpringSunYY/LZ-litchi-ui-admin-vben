import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import { getRangePickerDefaultProps } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'userId',
      label: $t('system.operatelog.field.userId'),
      component: 'ApiSelect',
      componentProps: {
        api: getSimpleUserList,
        fieldNames: {
          label: 'nickname',
          value: 'id',
        },
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.operatelog.field.userId'),
        ]),
      },
    },
    {
      fieldName: 'type',
      label: $t('system.operatelog.field.type'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.operatelog.field.type'),
        ]),
      },
    },
    {
      fieldName: 'subType',
      label: $t('system.operatelog.field.subType'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.operatelog.field.subType'),
        ]),
      },
    },
    {
      fieldName: 'action',
      label: $t('system.operatelog.field.action'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.operatelog.field.action'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('system.operatelog.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'bizId',
      label: $t('system.operatelog.field.bizId'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.operatelog.field.bizId'),
        ]),
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('system.operatelog.field.id'),
    },
    {
      field: 'userName',
      title: $t('system.operatelog.field.userName'),
    },
    {
      field: 'type',
      title: $t('system.operatelog.field.type'),
    },
    {
      field: 'subType',
      title: $t('system.operatelog.field.subType'),
    },
    {
      field: 'action',
      title: $t('system.operatelog.field.action'),
    },
    {
      field: 'createTime',
      title: $t('system.operatelog.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'bizId',
      title: $t('system.operatelog.field.bizId'),
    },
    {
      field: 'userIp',
      title: $t('system.operatelog.field.userIp'),
    },
    {
      title: $t('common.operation'),
      minWidth: 80,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
