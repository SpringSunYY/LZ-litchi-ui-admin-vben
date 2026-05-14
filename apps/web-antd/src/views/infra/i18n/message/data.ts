import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { I18nKeyApi } from '#/api/infra/i18n/i18nKey';
import type { I18nMessageApi } from '#/api/infra/i18n/i18nMessage';

import { getI18nLocalePage } from '#/api/infra/i18n/i18nLocale';
import { $t } from '#/locales';
import { DICT_TYPE, getDictLabel, getDictOptions } from '#/utils';

/** 键名 - 新增/修改的表单 */
export function useKeyFormSchema(): VbenFormSchema[] {
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
      fieldName: 'messageName',
      label: $t('infra.i18nMessage.field.messageName'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.i18nMessage.field.messageName'),
        ]),
      },
    },
    {
      fieldName: 'messageKey',
      label: $t('infra.i18nMessage.field.messageKey'),
      rules: 'required',
      component: 'Input',
      componentProps: (values) => {
        return {
          placeholder: $t('ui.placeholder.input', [
            $t('infra.i18nMessage.field.messageKey'),
          ]),
          readOnly: !!values.id,
        };
      },
    },
    {
      fieldName: 'isSystem',
      label: $t('infra.i18nMessage.field.isSystem'),
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_I18N_KEY_IS_SYSTEM, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nMessage.field.isSystem'),
        ]),
      },
    },
    {
      fieldName: 'moduleType',
      label: $t('infra.i18nMessage.field.moduleType'),
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_MODULE_TYPE),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nMessage.field.moduleType'),
        ]),
      },
    },
    {
      fieldName: 'useType',
      label: $t('infra.i18nMessage.field.useType'),
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_I18N_KEY_USE_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nMessage.field.useType'),
        ]),
      },
    },
    {
      fieldName: 'orderNum',
      label: $t('infra.i18nMessage.field.orderNum'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.i18nMessage.field.orderNum'),
        ]),
        min: 0,
      },
    },
    {
      fieldName: 'remark',
      label: $t('infra.i18nMessage.field.remark'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.i18nMessage.field.remark'),
        ]),
      },
    },
  ];
}

/** 键名 - 列表的搜索表单 */
export function useKeyGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'messageName',
      label: $t('infra.i18nMessage.field.messageName'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.i18nMessage.field.messageName'),
        ]),
      },
    },
    {
      fieldName: 'messageKey',
      label: $t('infra.i18nMessage.field.messageKey'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.i18nMessage.field.messageKey'),
        ]),
      },
    },
    {
      fieldName: 'isSystem',
      label: $t('infra.i18nMessage.field.isSystem'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_I18N_KEY_IS_SYSTEM, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nMessage.field.isSystem'),
        ]),
      },
    },
    {
      fieldName: 'moduleType',
      label: $t('infra.i18nMessage.field.moduleType'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_MODULE_TYPE),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nMessage.field.moduleType'),
        ]),
      },
    },
    {
      fieldName: 'useType',
      label: $t('infra.i18nMessage.field.useType'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_I18N_KEY_USE_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nMessage.field.useType'),
        ]),
      },
    },
  ];
}

/** 键名 - 列表的字段 */
export function useKeyGridColumns(): VxeTableGridOptions<I18nKeyApi.I18nKey>['columns'] {
  return [
    {
      field: 'id',
      title: $t('infra.i18nMessage.field.id'),
      visible: false,
      minWidth: 120,
    },
    {
      field: 'messageName',
      title: $t('infra.i18nMessage.field.messageName'),
      minWidth: 120,
    },
    {
      field: 'messageKey',
      title: $t('infra.i18nMessage.field.messageKey'),
      minWidth: 120,
    },
    {
      field: 'isSystem',
      title: $t('infra.i18nMessage.field.isSystem'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_KEY_IS_SYSTEM },
      },
    },
    {
      field: 'moduleType',
      title: $t('infra.i18nMessage.field.moduleType'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_MODULE_TYPE },
      },
    },
    {
      field: 'useType',
      title: $t('infra.i18nMessage.field.useType'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_KEY_USE_TYPE },
      },
    },
    {
      field: 'orderNum',
      title: $t('infra.i18nMessage.field.orderNum'),
      visible: false,
      minWidth: 80,
    },
    {
      field: 'remark',
      title: $t('infra.i18nMessage.field.remark'),
      visible: false,
      minWidth: 120,
    },
    {
      field: 'createTime',
      title: $t('infra.i18nMessage.field.createTime'),
      visible: false,
      minWidth: 120,
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 200,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}

/** 信息 - 新增/修改的表单 */
export function useMessageFormSchema(): VbenFormSchema[] {
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
      fieldName: 'messageName',
      label: $t('infra.i18nMessage.field.messageName'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        readOnly: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.i18nMessage.field.messageName'),
        ]),
      },
    },
    {
      fieldName: 'messageKey',
      label: $t('infra.i18nMessage.field.messageKey'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        readOnly: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.i18nMessage.field.messageKey'),
        ]),
      },
    },
    {
      fieldName: 'isSystem',
      label: $t('infra.i18nMessage.field.isSystem'),
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_I18N_KEY_IS_SYSTEM, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nMessage.field.isSystem'),
        ]),
        disabled: true,
      },
    },
    {
      fieldName: 'moduleType',
      label: $t('infra.i18nMessage.field.moduleType'),
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_MODULE_TYPE),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nMessage.field.moduleType'),
        ]),
        disabled: true,
      },
    },
    {
      fieldName: 'useType',
      label: $t('infra.i18nMessage.field.useType'),
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_I18N_KEY_USE_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nMessage.field.useType'),
        ]),
        disabled: true,
      },
    },
    {
      fieldName: 'locale',
      label: $t('infra.i18nMessage.field.locale'),
      rules: 'required',
      component: 'ApiSelect',
      componentProps: {
        api: getI18nLocalePage,
        resultField: 'list',
        labelField: 'label',
        valueField: 'locale',
        afterFetch: (data: any) =>
          data.list.map((item: any) => ({
            ...item,
            label: `${item.locale} - ${item.localeName} - ${getDictLabel(DICT_TYPE.INFRA_I18N_LOCALE_TARGET, item.localeTarget)}`,
            locale: `${item.locale}_${item.localeTarget}`,
          })),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nMessage.field.locale'),
        ]),
      },
    },
    {
      fieldName: 'message',
      label: $t('infra.i18nMessage.field.messageContent'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.i18nMessage.field.messageContent'),
        ]),
      },
    },
    {
      fieldName: 'remark',
      label: $t('infra.i18nMessage.field.remark'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.i18nMessage.field.remark'),
        ]),
      },
    },
  ];
}

/** 信息 - 列表的搜索表单 */
export function useMessageGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'locale',
      label: $t('infra.i18nMessage.field.locale'),
      component: 'ApiSelect',
      componentProps: {
        api: getI18nLocalePage,
        resultField: 'list',
        labelField: 'label',
        valueField: 'locale',
        afterFetch: (data: any) =>
          data.list.map((item: any) => ({
            ...item,
            label: `${item.locale} - ${item.localeName} - ${getDictLabel(DICT_TYPE.INFRA_I18N_LOCALE_TARGET, item.localeTarget)}`,
            locale: `${item.locale}_${item.localeTarget}`,
          })),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nMessage.field.locale'),
        ]),
      },
      formItemClass: 'md:col-span-2',
    },
  ];
}

/** 信息 - 列表的字段 */
export function useMessageGridColumns(): VxeTableGridOptions<I18nMessageApi.I18nMessage>['columns'] {
  return [
    { type: 'checkbox', width: 40 },
    {
      field: 'id',
      title: $t('infra.i18nMessage.field.id'),
      visible: false,
      minWidth: 120,
    },
    {
      field: 'messageName',
      title: $t('infra.i18nMessage.field.messageName'),
      visible: false,
      minWidth: 120,
    },
    {
      field: 'messageKey',
      title: $t('infra.i18nMessage.field.messageKey'),
      visible: false,
      minWidth: 120,
    },
    {
      field: 'locale',
      title: $t('infra.i18nMessage.field.locale'),
      minWidth: 120,
    },
    {
      field: 'localeTarget',
      title: $t('infra.i18nMessage.field.localeTarget'),
      visible: true,
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_LOCALE_TARGET },
      },
    },
    {
      field: 'isSystem',
      title: $t('infra.i18nMessage.field.isSystem'),
      visible: false,
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_KEY_IS_SYSTEM },
      },
    },
    {
      field: 'moduleType',
      title: $t('infra.i18nMessage.field.moduleType'),
      visible: false,
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_MODULE_TYPE },
      },
    },
    {
      field: 'useType',
      title: $t('infra.i18nMessage.field.useType'),
      visible: false,
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_KEY_USE_TYPE },
      },
    },
    {
      field: 'message',
      title: $t('infra.i18nMessage.field.messageContent'),
      minWidth: 120,
    },
    {
      field: 'remark',
      visible: false,
      title: $t('infra.i18nMessage.field.remark'),
      minWidth: 120,
    },
    {
      field: 'createTime',
      title: $t('infra.i18nMessage.field.createTime'),
      visible: false,
      minWidth: 120,
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 200,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
