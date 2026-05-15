import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { getSimpleSmsChannelList } from '#/api/system/sms/channel';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'mobile',
      label: $t('system.sms.log.field.mobile'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.sms.log.field.mobile'),
        ]),
      },
    },
    {
      fieldName: 'channelId',
      label: $t('system.sms.log.field.channelCode'),
      component: 'ApiSelect',
      componentProps: {
        api: async () => await getSimpleSmsChannelList(),
        labelField: 'signature',
        valueField: 'id',
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.sms.log.field.channelCode'),
        ]),
      },
    },
    {
      fieldName: 'templateId',
      label: $t('system.sms.log.field.templateId'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.sms.log.field.templateId'),
        ]),
      },
    },
    {
      fieldName: 'sendStatus',
      label: $t('system.sms.log.field.sendStatus'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_SMS_SEND_STATUS, 'number'),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.sms.log.field.sendStatus'),
        ]),
      },
    },
    {
      fieldName: 'sendTime',
      label: $t('system.sms.log.field.sendTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'receiveStatus',
      label: $t('system.sms.log.field.receiveStatus'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_SMS_RECEIVE_STATUS, 'number'),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.sms.log.field.receiveStatus'),
        ]),
      },
    },
    {
      fieldName: 'receiveTime',
      label: $t('system.sms.log.field.receiveTime'),
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
      title: $t('system.sms.log.field.id'),
    },
    {
      field: 'mobile',
      title: $t('system.sms.log.field.mobile'),
    },
    {
      field: 'templateContent',
      title: $t('system.sms.log.field.templateContent'),
      minWidth: 300,
    },
    {
      field: 'sendStatus',
      title: $t('system.sms.log.field.sendStatus'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_SMS_SEND_STATUS },
      },
    },
    {
      field: 'sendTime',
      title: $t('system.sms.log.field.sendTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'receiveStatus',
      title: $t('system.sms.log.field.receiveStatus'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_SMS_RECEIVE_STATUS },
      },
    },
    {
      field: 'receiveTime',
      title: $t('system.sms.log.field.receiveTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'channelCode',
      title: $t('system.sms.log.field.channelCode'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_SMS_CHANNEL_CODE },
      },
    },
    {
      field: 'templateId',
      title: $t('system.sms.log.field.templateId'),
    },
    {
      field: 'templateType',
      title: $t('system.sms.log.field.templateType'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_SMS_TEMPLATE_TYPE },
      },
    },
    {
      field: 'createTime',
      title: $t('system.sms.log.field.createTime'),
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
