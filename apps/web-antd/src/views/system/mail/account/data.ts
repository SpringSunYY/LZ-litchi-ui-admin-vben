import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { z } from '#/adapter/form';
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
      fieldName: 'mail',
      label: $t('system.mail.account.field.mail'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.account.field.mail'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'username',
      label: $t('system.mail.account.field.username'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.account.field.username'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'password',
      label: $t('system.mail.account.field.password'),
      component: 'InputPassword',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.account.field.password'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'host',
      label: $t('system.mail.account.field.host'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.account.field.host'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'port',
      label: $t('system.mail.account.field.port'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.account.field.port'),
        ]),
        min: 0,
        max: 65_535,
      },
      rules: 'required',
    },
    {
      fieldName: 'sslEnable',
      label: $t('system.mail.account.field.sslEnable'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_BOOLEAN_STRING, 'boolean'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.boolean().default(true),
    },
    {
      fieldName: 'starttlsEnable',
      label: $t('system.mail.account.field.starttlsEnable'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_BOOLEAN_STRING, 'boolean'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.boolean().default(false),
    },
    {
      fieldName: 'remark',
      label: $t('system.mail.account.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.account.field.remark'),
        ]),
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'mail',
      label: $t('system.mail.account.field.mail'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.account.field.mail'),
        ]),
        clearable: true,
      },
    },
    {
      fieldName: 'username',
      label: $t('system.mail.account.field.username'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.account.field.username'),
        ]),
        clearable: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('system.mail.account.field.id'),
    },
    {
      field: 'mail',
      title: $t('system.mail.account.field.mail'),
    },
    {
      field: 'username',
      title: $t('system.mail.account.field.username'),
    },
    {
      field: 'host',
      title: $t('system.mail.account.field.host'),
    },
    {
      field: 'port',
      title: $t('system.mail.account.field.port'),
    },
    {
      field: 'sslEnable',
      title: $t('system.mail.account.field.sslEnable'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_BOOLEAN_STRING },
      },
    },
    {
      field: 'starttlsEnable',
      title: $t('system.mail.account.field.starttlsEnable'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_BOOLEAN_STRING },
      },
    },
    {
      field: 'createTime',
      title: $t('system.mail.account.field.createTime'),
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
