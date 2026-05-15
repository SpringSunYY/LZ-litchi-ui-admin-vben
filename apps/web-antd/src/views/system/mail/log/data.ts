import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { getSimpleMailAccountList } from '#/api/system/mail/account';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'sendTime',
      label: $t('system.mail.log.field.sendTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'userId',
      label: $t('system.mail.log.field.userId'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.log.field.userId'),
        ]),
      },
    },
    {
      fieldName: 'userType',
      label: $t('system.mail.log.field.userType'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.USER_TYPE, 'number'),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.mail.log.field.userType'),
        ]),
      },
    },
    {
      fieldName: 'sendStatus',
      label: $t('system.mail.log.field.sendStatus'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_MAIL_SEND_STATUS, 'number'),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.mail.log.field.sendStatus'),
        ]),
      },
    },
    {
      fieldName: 'accountId',
      label: $t('system.mail.account.field.mail'),
      component: 'ApiSelect',
      componentProps: {
        api: async () => await getSimpleMailAccountList(),
        labelField: 'mail',
        valueField: 'id',
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.mail.account.field.mail'),
        ]),
      },
    },
    {
      fieldName: 'templateId',
      label: $t('system.mail.log.field.templateId'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.mail.log.field.templateId'),
        ]),
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('system.mail.log.field.id'),
    },
    {
      field: 'sendTime',
      title: $t('system.mail.log.field.sendTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'toMail',
      title: $t('system.mail.log.field.toMail'),
    },
    {
      field: 'templateTitle',
      title: $t('system.mail.log.field.templateTitle'),
    },
    {
      field: 'templateContent',
      title: $t('system.mail.log.field.templateContent'),
    },
    {
      field: 'fromMail',
      title: $t('system.mail.log.field.fromMail'),
    },
    {
      field: 'sendStatus',
      title: $t('system.mail.log.field.sendStatus'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_MAIL_SEND_STATUS },
      },
    },
    {
      field: 'templateCode',
      title: $t('system.mail.log.field.templateCode'),
    },
    {
      title: $t('common.operation'),
      width: 80,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
