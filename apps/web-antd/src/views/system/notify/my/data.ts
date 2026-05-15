import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { DescriptionItemSchema } from '#/components/description';

import { h } from 'vue';

import { formatDateTime } from '@vben/utils';

import { DictTag } from '#/components/dict-tag';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'readStatus',
      label: $t('system.notify.my.field.readStatus'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_BOOLEAN_STRING, 'boolean'),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.notify.my.field.readStatus'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('system.notify.my.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        allowClear: true,
        ...getRangePickerDefaultProps(),
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      title: '',
      width: 40,
      type: 'checkbox',
    },
    {
      field: 'templateNickname',
      title: $t('system.notify.my.field.templateNickname'),
    },
    {
      field: 'createTime',
      title: $t('system.notify.my.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'templateType',
      title: $t('system.notify.my.field.templateType'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_NOTIFY_TEMPLATE_TYPE },
      },
    },
    {
      field: 'templateContent',
      title: $t('system.notify.my.field.templateContent'),
    },
    {
      field: 'readStatus',
      title: $t('system.notify.my.field.readStatus'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_BOOLEAN_STRING },
      },
    },
    {
      field: 'readTime',
      title: $t('system.notify.my.field.readTime'),
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

export function useDetailSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'templateNickname',
      label: $t('system.notify.my.field.templateNickname'),
    },
    {
      field: 'createTime',
      label: $t('system.notify.my.field.createTime'),
      content: (data) => formatDateTime(data?.createTime) as string,
    },
    {
      field: 'templateType',
      label: $t('system.notify.my.field.templateType'),
      content: (data) =>
        h(DictTag, {
          type: DICT_TYPE.SYSTEM_NOTIFY_TEMPLATE_TYPE,
          value: data?.templateType,
        }),
    },
    {
      field: 'readStatus',
      label: $t('system.notify.my.field.readStatus'),
      content: (data) =>
        h(DictTag, {
          type: DICT_TYPE.INFRA_BOOLEAN_STRING,
          value: data?.readStatus,
        }),
    },
    {
      field: 'readTime',
      label: $t('system.notify.my.field.readTime'),
      content: (data) => formatDateTime(data?.readTime) as string,
    },
    {
      field: 'templateContent',
      label: $t('system.notify.my.field.templateContent'),
    },
  ];
}
