import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { z } from '#/adapter/form';
import { getSimpleSmsChannelList } from '#/api/system/sms/channel';
import { $t } from '#/locales';
import {
  CommonStatusEnum,
  DICT_TYPE,
  getDictOptions,
  getRangePickerDefaultProps,
} from '#/utils';

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
      fieldName: 'type',
      label: $t('system.sms.template.field.type'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_SMS_TEMPLATE_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.sms.template.field.type'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'name',
      label: $t('system.sms.template.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.sms.template.field.name'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'code',
      label: $t('system.sms.template.field.code'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.sms.template.field.code'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'channelId',
      label: $t('system.sms.template.field.channelId'),
      component: 'ApiSelect',
      componentProps: {
        api: async () => await getSimpleSmsChannelList(),
        labelField: 'signature',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [
          $t('system.sms.template.field.channelId'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'status',
      label: $t('system.sms.template.field.status'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
    {
      fieldName: 'content',
      label: $t('system.sms.template.field.content'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.sms.template.field.content'),
        ]),
        rows: 4,
      },
      rules: 'required',
    },
    {
      fieldName: 'apiTemplateId',
      label: $t('system.sms.template.field.apiTemplateId'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.sms.template.field.apiTemplateId'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'remark',
      label: $t('system.sms.template.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.sms.template.field.remark'),
        ]),
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'type',
      label: $t('system.sms.template.field.type'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_SMS_TEMPLATE_TYPE, 'number'),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.sms.template.field.type'),
        ]),
      },
    },
    {
      fieldName: 'status',
      label: $t('system.sms.template.field.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.sms.template.field.status'),
        ]),
      },
    },
    {
      fieldName: 'code',
      label: $t('system.sms.template.field.code'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.sms.template.field.code'),
        ]),
      },
    },
    {
      fieldName: 'name',
      label: $t('system.sms.template.field.name'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.sms.template.field.name'),
        ]),
      },
    },
    {
      fieldName: 'channelId',
      label: $t('system.sms.template.field.channelId'),
      component: 'ApiSelect',
      componentProps: {
        api: async () => await getSimpleSmsChannelList(),
        labelField: 'signature',
        valueField: 'id',
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.sms.template.field.channelId'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('system.sms.template.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 发送短信表单 */
export function useSendSmsFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'content',
      label: $t('system.sms.template.field.content'),
      component: 'Textarea',
      componentProps: {
        disabled: true,
      },
    },
    {
      fieldName: 'mobile',
      label: $t('system.sms.template.field.mobile'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.sms.template.field.mobile'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'templateParams',
      label: $t('system.sms.template.field.templateParams'),
      component: 'Input',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('system.sms.template.field.id'),
    },
    {
      field: 'type',
      title: $t('system.sms.template.field.type'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_SMS_TEMPLATE_TYPE },
      },
    },
    {
      field: 'name',
      title: $t('system.sms.template.field.name'),
    },
    {
      field: 'code',
      title: $t('system.sms.template.field.code'),
    },
    {
      field: 'content',
      title: $t('system.sms.template.field.content'),
      minWidth: 200,
    },
    {
      field: 'status',
      title: $t('system.sms.template.field.status'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'apiTemplateId',
      title: $t('system.sms.template.field.apiTemplateId'),
    },
    {
      field: 'channelCode',
      title: $t('system.sms.template.field.channelCode'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_SMS_CHANNEL_CODE },
      },
    },
    {
      field: 'createTime',
      title: $t('system.sms.template.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'remark',
      title: $t('system.sms.template.field.remark'),
    },
    {
      title: $t('common.operation'),
      width: 220,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
