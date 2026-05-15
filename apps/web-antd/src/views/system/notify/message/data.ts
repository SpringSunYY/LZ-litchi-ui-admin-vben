import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'userId',
      label: $t('system.notify.message.field.userId'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.notify.message.field.userId'),
        ]),
      },
    },
    {
      fieldName: 'userType',
      label: $t('system.notify.message.field.userType'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.USER_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.notify.message.field.userType'),
        ]),
      },
    },
    {
      fieldName: 'templateCode',
      label: $t('system.notify.template.field.code'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.notify.template.field.code'),
        ]),
      },
    },
    {
      fieldName: 'templateType',
      label: $t('system.notify.message.field.templateType'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(
          DICT_TYPE.SYSTEM_NOTIFY_TEMPLATE_TYPE,
          'number',
        ),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.notify.message.field.templateType'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('system.notify.message.field.createTime'),
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
      title: $t('system.notify.message.field.id'),
    },
    {
      field: 'userType',
      title: $t('system.notify.message.field.userType'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.USER_TYPE },
      },
    },
    {
      field: 'userId',
      title: $t('system.notify.message.field.userId'),
    },
    {
      field: 'templateCode',
      title: $t('system.notify.template.field.code'),
    },
    {
      field: 'templateNickname',
      title: $t('system.notify.template.field.nickname'),
    },
    {
      field: 'templateContent',
      title: $t('system.notify.message.field.templateContent'),
    },
    {
      field: 'templateParams',
      title: $t('system.notify.message.field.templateParams'),
      formatter: ({ cellValue }) => {
        try {
          return JSON.stringify(cellValue);
        } catch {
          return '';
        }
      },
    },
    {
      field: 'templateType',
      title: $t('system.notify.message.field.templateType'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_NOTIFY_TEMPLATE_TYPE },
      },
    },
    {
      field: 'readStatus',
      title: $t('system.notify.message.field.readStatus'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_BOOLEAN_STRING },
      },
    },
    {
      field: 'readTime',
      title: $t('system.notify.message.field.readTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'createTime',
      title: $t('system.notify.message.field.createTime'),
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
