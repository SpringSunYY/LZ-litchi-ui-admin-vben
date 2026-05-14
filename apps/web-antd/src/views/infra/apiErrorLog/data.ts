import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import {
  DICT_TYPE,
  getDictOptions,
  getRangePickerDefaultProps,
  InfraApiErrorLogProcessStatusEnum,
} from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'userId',
      label: $t('infra.apiErrorLog.field.userId'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.apiErrorLog.field.userId'),
        ]),
      },
    },
    {
      fieldName: 'userType',
      label: $t('infra.apiErrorLog.field.userType'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.USER_TYPE, 'number'),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('infra.apiErrorLog.field.userType'),
        ]),
      },
    },
    {
      fieldName: 'applicationName',
      label: $t('infra.apiErrorLog.field.applicationName'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.apiErrorLog.field.applicationName'),
        ]),
      },
    },
    {
      fieldName: 'exceptionTime',
      label: $t('infra.apiErrorLog.field.exceptionTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'processStatus',
      label: $t('infra.apiErrorLog.field.processStatus'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(
          DICT_TYPE.INFRA_API_ERROR_LOG_PROCESS_STATUS,
          'number',
        ),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('infra.apiErrorLog.field.processStatus'),
        ]),
      },
      defaultValue: InfraApiErrorLogProcessStatusEnum.INIT,
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('infra.apiErrorLog.field.id'),
    },
    {
      field: 'userId',
      title: $t('infra.apiErrorLog.field.userId'),
    },
    {
      field: 'userType',
      title: $t('infra.apiErrorLog.field.userType'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.USER_TYPE },
      },
    },
    {
      field: 'applicationName',
      title: $t('infra.apiErrorLog.field.applicationName'),
    },
    {
      field: 'requestMethod',
      title: $t('infra.apiErrorLog.field.requestMethod'),
    },
    {
      field: 'requestUrl',
      title: $t('infra.apiErrorLog.field.requestUrl'),
    },
    {
      field: 'exceptionTime',
      title: $t('infra.apiErrorLog.field.exceptionTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'exceptionName',
      title: $t('infra.apiErrorLog.field.exceptionName'),
    },
    {
      field: 'processStatus',
      title: $t('infra.apiErrorLog.field.processStatus'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_API_ERROR_LOG_PROCESS_STATUS },
      },
    },
    {
      title: $t('common.operation'),
      width: 200,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
