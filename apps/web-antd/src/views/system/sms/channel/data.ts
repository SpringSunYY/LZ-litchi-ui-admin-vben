import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { z } from '#/adapter/form';
import {
  CommonStatusEnum,
  DICT_TYPE,
  getDictOptions,
  getRangePickerDefaultProps,
} from '#/utils';
import { $t } from '#/locales';

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
      fieldName: 'signature',
      label: $t('system.sms.channel.field.signature'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.sms.channel.field.signature'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'code',
      label: $t('system.sms.channel.field.code'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_SMS_CHANNEL_CODE, 'string'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.sms.channel.field.code'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'status',
      label: $t('system.sms.channel.field.status'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
    {
      fieldName: 'apiKey',
      label: $t('system.sms.channel.field.apiKey'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.sms.channel.field.apiKey'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'apiSecret',
      label: $t('system.sms.channel.field.apiSecret'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.sms.channel.field.apiSecret'),
        ]),
      },
    },
    {
      fieldName: 'callbackUrl',
      label: $t('system.sms.channel.field.callbackUrl'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.sms.channel.field.callbackUrl'),
        ]),
      },
    },
    {
      fieldName: 'remark',
      label: $t('system.sms.channel.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.sms.channel.field.remark'),
        ]),
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'signature',
      label: $t('system.sms.channel.field.signature'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.sms.channel.field.signature'),
        ]),
      },
    },
    {
      fieldName: 'code',
      label: $t('system.sms.channel.field.code'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_SMS_CHANNEL_CODE, 'string'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.sms.channel.field.code'),
        ]),
      },
    },
    {
      fieldName: 'status',
      label: $t('system.sms.channel.field.status'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('system.sms.channel.field.createTime'),
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
      title: $t('system.sms.channel.field.id'),
    },
    {
      field: 'signature',
      title: $t('system.sms.channel.field.signature'),
    },
    {
      field: 'code',
      title: $t('system.sms.channel.field.code'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_SMS_CHANNEL_CODE },
      },
    },
    {
      field: 'status',
      title: $t('system.sms.channel.field.status'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'apiKey',
      title: $t('system.sms.channel.field.apiKey'),
    },
    {
      field: 'apiSecret',
      title: $t('system.sms.channel.field.apiSecret'),
    },
    {
      field: 'callbackUrl',
      title: $t('system.sms.channel.field.callbackUrl'),
    },
    {
      field: 'createTime',
      title: $t('system.sms.channel.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'remark',
      title: $t('system.sms.channel.field.remark'),
    },
    {
      title: $t('common.operation'),
      width: 130,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
