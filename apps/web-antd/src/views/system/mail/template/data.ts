import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { z } from '#/adapter/form';
import { getSimpleMailAccountList } from '#/api/system/mail/account';
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
      fieldName: 'name',
      label: $t('system.mail.template.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.template.field.name'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'code',
      label: $t('system.mail.template.field.code'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.template.field.code'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'accountId',
      label: $t('system.mail.template.field.accountId'),
      component: 'ApiSelect',
      componentProps: {
        api: async () => await getSimpleMailAccountList(),
        labelField: 'mail',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [
          $t('system.mail.template.field.accountId'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'nickname',
      label: $t('system.mail.template.field.nickname'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.template.field.nickname'),
        ]),
      },
    },
    {
      fieldName: 'title',
      label: $t('system.mail.template.field.title'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.template.field.title'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'content',
      label: $t('system.mail.template.field.content'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.template.field.content'),
        ]),
        height: 300,
      },
      rules: 'required',
    },
    {
      fieldName: 'status',
      label: $t('system.mail.template.field.status'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
    {
      fieldName: 'remark',
      label: $t('system.mail.template.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.template.field.remark'),
        ]),
      },
    },
  ];
}

/** 发送邮件表单 */
export function useSendMailFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'templateParams',
      label: $t('system.mail.template.field.params'),
      component: 'Input',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'content',
      label: $t('system.mail.template.field.content'),
      component: 'Textarea',
      componentProps: {
        disabled: true,
      },
    },
    {
      fieldName: 'mail',
      label: $t('system.mail.template.field.mail'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.template.field.mail'),
        ]),
      },
      rules: z.string().email($t('ui.validate.email')),
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'status',
      label: $t('system.mail.template.field.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.mail.template.field.status'),
        ]),
      },
    },
    {
      fieldName: 'code',
      label: $t('system.mail.template.field.code'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.template.field.code'),
        ]),
      },
    },
    {
      fieldName: 'name',
      label: $t('system.mail.template.field.name'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.template.field.name'),
        ]),
      },
    },
    {
      fieldName: 'accountId',
      label: $t('system.mail.template.field.accountId'),
      component: 'ApiSelect',
      componentProps: {
        api: async () => await getSimpleMailAccountList(),
        labelField: 'mail',
        valueField: 'id',
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.mail.template.field.accountId'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('system.mail.template.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(
  getAccountMail?: (accountId: number) => string | undefined,
): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('system.mail.template.field.id'),
    },
    {
      field: 'code',
      title: $t('system.mail.template.field.code'),
    },
    {
      field: 'name',
      title: $t('system.mail.template.field.name'),
    },
    {
      field: 'title',
      title: $t('system.mail.template.field.title'),
    },
    {
      field: 'accountId',
      title: $t('system.mail.template.field.accountId'),
      formatter: ({ cellValue }) => getAccountMail?.(cellValue) || '-',
    },
    {
      field: 'nickname',
      title: $t('system.mail.template.field.nickname'),
    },
    {
      field: 'status',
      title: $t('system.mail.template.field.status'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'createTime',
      title: $t('system.mail.template.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 220,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
