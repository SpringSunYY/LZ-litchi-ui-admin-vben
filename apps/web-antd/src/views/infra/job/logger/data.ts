import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { DescriptionItemSchema } from '#/components/description';

import { h } from 'vue';

import { formatDateTime } from '@vben/utils';

import dayjs from 'dayjs';

import { DictTag } from '#/components/dict-tag';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'handlerName',
      label: $t('infra.jobLog.field.handlerName'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.jobLog.field.handlerName'),
        ]),
      },
    },
    {
      fieldName: 'beginTime',
      label: $t('infra.jobLog.field.beginTime'),
      component: 'DatePicker',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('infra.jobLog.field.beginTime'),
        ]),
        valueFormat: 'YYYY-MM-DD HH:mm:ss',
        showTime: {
          format: 'HH:mm:ss',
          defaultValue: dayjs('00:00:00', 'HH:mm:ss'),
        },
      },
    },
    {
      fieldName: 'endTime',
      label: $t('infra.jobLog.field.endTime'),
      component: 'DatePicker',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('infra.jobLog.field.endTime'),
        ]),
        valueFormat: 'YYYY-MM-DD HH:mm:ss',
        showTime: {
          format: 'HH:mm:ss',
          defaultValue: dayjs('23:59:59', 'HH:mm:ss'),
        },
      },
    },
    {
      fieldName: 'status',
      label: $t('infra.jobLog.field.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_JOB_LOG_STATUS, 'number'),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('infra.jobLog.field.status'),
        ]),
      },
    },
  ];
}

/** 表格列配置 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('infra.jobLog.field.id'),
    },
    {
      field: 'jobId',
      title: $t('infra.jobLog.field.jobId'),
    },
    {
      field: 'handlerName',
      title: $t('infra.jobLog.field.handlerName'),
    },
    {
      field: 'handlerParam',
      title: $t('infra.jobLog.field.handlerParam'),
    },
    {
      field: 'executeIndex',
      title: $t('infra.jobLog.field.executeIndex'),
    },
    {
      field: 'beginTime',
      title: $t('infra.jobLog.field.beginTime'),
      formatter: ({ row }) => {
        return `${formatDateTime(row.beginTime)} ~ ${formatDateTime(row.endTime)}`;
      },
    },
    {
      field: 'duration',
      title: $t('infra.jobLog.field.duration'),
      formatter: ({ cellValue }) =>
        `${cellValue} ${$t('infra.jobLog.field.durationUnit')}`,
    },
    {
      field: 'status',
      title: $t('infra.jobLog.field.status'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_JOB_LOG_STATUS },
      },
    },
    {
      title: $t('common.operation'),
      minWidth: 80,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}

/** 详情的配置 */
export function useDetailSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'id',
      label: $t('infra.jobLog.field.id'),
    },
    {
      field: 'jobId',
      label: $t('infra.jobLog.field.jobId'),
    },
    {
      field: 'handlerName',
      label: $t('infra.jobLog.field.handlerName'),
    },
    {
      field: 'handlerParam',
      label: $t('infra.jobLog.field.handlerParam'),
    },
    {
      field: 'executeIndex',
      label: $t('infra.jobLog.field.executeIndex'),
    },
    {
      field: 'beginTime',
      label: $t('infra.jobLog.field.beginTime'),
    },
    {
      field: 'endTime',
      label: $t('infra.jobLog.field.endTime'),
    },
    {
      field: 'duration',
      label: $t('infra.jobLog.field.duration'),
    },
    {
      field: 'status',
      label: $t('infra.jobLog.field.status'),
      content: (data) =>
        h(DictTag, {
          type: DICT_TYPE.INFRA_JOB_LOG_STATUS,
          value: data?.status,
        }),
    },
    {
      field: 'result',
      label: $t('infra.jobLog.field.result'),
    },
  ];
}
