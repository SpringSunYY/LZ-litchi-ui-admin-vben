import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'userId',
      label: $t('infra.apiAccessLog.field.userId'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.apiAccessLog.field.userId'),
        ]),
      },
    },
    {
      fieldName: 'userType',
      label: $t('infra.apiAccessLog.field.userType'),
      component: 'I18nSelect',
      componentProps: {
        options: getDictOptions(DICT_TYPE.USER_TYPE, 'number'),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('infra.apiAccessLog.field.userType'),
        ]),
      },
    },
    {
      fieldName: 'applicationName',
      label: $t('infra.apiAccessLog.field.applicationName'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.apiAccessLog.field.applicationName'),
        ]),
      },
    },
    {
      fieldName: 'beginTime',
      label: $t('infra.apiAccessLog.field.beginTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'duration',
      label: $t('infra.apiAccessLog.field.duration'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.apiAccessLog.field.duration'),
        ]),
      },
    },
    {
      fieldName: 'resultCode',
      label: $t('infra.apiAccessLog.field.resultCode'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.apiAccessLog.field.resultCode'),
        ]),
      },
    },
    {
      fieldName: 'requestMethod',
      label: $t('infra.apiAccessLog.field.requestMethod'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.apiAccessLog.field.requestMethod'),
        ]),
      },
    },
    {
      fieldName: 'userIp',
      label: $t('infra.apiAccessLog.field.userIp'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.apiAccessLog.field.userIp'),
        ]),
      },
    },
    {
      fieldName: 'userIpAddr',
      label: $t('infra.apiAccessLog.field.userIpAddr'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.apiAccessLog.field.userIpAddr'),
        ]),
      },
    },
    {
      fieldName: 'userBrowser',
      label: $t('infra.apiAccessLog.field.userBrowser'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.apiAccessLog.field.userBrowser'),
        ]),
      },
    },
    {
      fieldName: 'userPlatform',
      label: $t('infra.apiAccessLog.field.userPlatform'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.apiAccessLog.field.userPlatform'),
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
      title: $t('infra.apiAccessLog.field.id'),
    },
    {
      field: 'userId',
      title: $t('infra.apiAccessLog.field.userId'),
    },
    {
      field: 'userType',
      title: $t('infra.apiAccessLog.field.userType'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.USER_TYPE },
      },
    },
    {
      field: 'applicationName',
      title: $t('infra.apiAccessLog.field.applicationName'),
    },
    {
      field: 'requestMethod',
      title: $t('infra.apiAccessLog.field.requestMethod'),
    },
    {
      field: 'requestUrl',
      title: $t('infra.apiAccessLog.field.requestUrl'),
    },
    {
      field: 'beginTime',
      title: $t('infra.apiAccessLog.field.beginTime'),
      formatter: 'formatDateTime',
      sortable: true,
    },
    {
      field: 'duration',
      title: $t('infra.apiAccessLog.field.duration'),
      sortable: true,
      formatter: ({ cellValue }) =>
        `${cellValue} ${$t('infra.apiAccessLog.unit.duration')}`,
    },
    {
      field: 'resultCode',
      title: $t('infra.apiAccessLog.field.resultCode'),
      formatter: ({ row }) => {
        return row.resultCode === 0
          ? $t('infra.apiAccessLog.result.success')
          : `${$t('infra.apiAccessLog.result.fail')}(${row.resultMsg})`;
      },
    },
    {
      field: 'operateModule',
      title: $t('infra.apiAccessLog.field.operateModule'),
    },
    {
      field: 'operateName',
      title: $t('infra.apiAccessLog.field.operateName'),
    },
    {
      field: 'operateType',
      title: $t('infra.apiAccessLog.field.operateType'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.INFRA_OPERATE_TYPE },
      },
    },
    {
      title: $t('common.operation'),
      width: 80,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
