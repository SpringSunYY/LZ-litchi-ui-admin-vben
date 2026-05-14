import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { DescriptionItemSchema } from '#/components/description';

import { h } from 'vue';

import { formatDateTime } from '@vben/utils';

import { Timeline } from 'ant-design-vue';

import { DictTag } from '#/components/dict-tag';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions } from '#/utils';

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
      label: $t('infra.job.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('infra.job.field.name')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'handlerName',
      label: $t('infra.job.field.handlerName'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.job.field.handlerName'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'handlerParam',
      label: $t('infra.job.field.handlerParam'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.job.field.handlerParam'),
        ]),
      },
    },
    {
      fieldName: 'cronExpression',
      label: $t('infra.job.field.cronExpression'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.job.field.cronExpression'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'retryCount',
      label: $t('infra.job.field.retryCount'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('infra.job.field.retryCount'),
        min: 0,
      },
      rules: 'required',
    },
    {
      fieldName: 'retryInterval',
      label: $t('infra.job.field.retryInterval'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('infra.job.field.retryInterval'),
        min: 0,
      },
      rules: 'required',
    },
    {
      fieldName: 'monitorTimeout',
      label: $t('infra.job.field.monitorTimeout'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('infra.job.field.monitorTimeout'),
        min: 0,
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('infra.job.field.name'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [$t('infra.job.field.name')]),
      },
    },
    {
      fieldName: 'status',
      label: $t('infra.job.field.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_JOB_STATUS, 'number'),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('infra.job.field.status'),
        ]),
      },
    },
    {
      fieldName: 'handlerName',
      label: $t('infra.job.field.handlerName'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.job.field.handlerName'),
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
      title: $t('infra.job.field.id'),
    },
    {
      field: 'name',
      title: $t('infra.job.field.name'),
    },
    {
      field: 'status',
      title: $t('infra.job.field.status'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_JOB_STATUS },
      },
    },
    {
      field: 'handlerName',
      title: $t('infra.job.field.handlerName'),
    },
    {
      field: 'handlerParam',
      title: $t('infra.job.field.handlerParam'),
    },
    {
      field: 'cronExpression',
      title: $t('infra.job.field.cronExpression'),
    },
    {
      title: $t('common.operation'),
      minWidth: 240,
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
      label: $t('infra.job.field.id'),
    },
    {
      field: 'name',
      label: $t('infra.job.field.name'),
    },
    {
      field: 'status',
      label: $t('infra.job.field.status'),
      content: (data) =>
        h(DictTag, {
          type: DICT_TYPE.INFRA_JOB_STATUS,
          value: data?.status,
        }),
    },
    {
      field: 'handlerName',
      label: $t('infra.job.field.handlerName'),
    },
    {
      field: 'handlerParam',
      label: $t('infra.job.field.handlerParam'),
    },
    {
      field: 'cronExpression',
      label: $t('infra.job.field.cronExpression'),
    },
    {
      field: 'retryCount',
      label: $t('infra.job.field.retryCount'),
    },
    {
      field: 'retryInterval',
      label: $t('infra.job.field.retryInterval'),
    },
    {
      field: 'monitorTimeout',
      label: $t('infra.job.field.monitorTimeout'),
      content: (data) =>
        data?.monitorTimeout && data.monitorTimeout > 0
          ? `${data.monitorTimeout} ${$t('infra.job.field.monitorTimeoutUnit')}`
          : $t('infra.job.field.monitorTimeoutDisabled'),
    },
    {
      field: 'nextTimes',
      label: $t('infra.job.field.nextTimes'),
      content: (data) => {
        if (!data?.nextTimes) {
          return $t('infra.job.field.noNextTimes');
        }
        if (data.nextTimes.length === 0) {
          return $t('infra.job.field.noNextTimes');
        }
        return h(Timeline, {}, () =>
          data.nextTimes.map((time: any) =>
            h(Timeline.Item, {}, () => formatDateTime(time)?.toString()),
          ),
        );
      },
    },
  ];
}
