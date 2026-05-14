import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { I18nLocaleApi } from '#/api/infra/i18n/i18nLocale';

import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

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
      fieldName: 'localeName',
      label: $t('infra.i18nLocale.field.localeName'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.i18nLocale.field.localeName'),
        ]),
      },
    },
    {
      fieldName: 'locale',
      label: $t('infra.i18nLocale.field.locale'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.i18nLocale.field.locale'),
        ]),
      },
    },
    {
      fieldName: 'orderNum',
      label: $t('infra.i18nLocale.field.orderNum'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.i18nLocale.field.orderNum'),
        ]),
        min: 0,
      },
    },
    {
      fieldName: 'localeStatus',
      label: $t('infra.i18nLocale.field.localeStatus'),
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_I18N_LOCALE_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nLocale.field.localeStatus'),
        ]),
      },
    },
    {
      fieldName: 'localeTarget',
      label: $t('infra.i18nLocale.field.localeTarget'),
      rules: 'required',
      help: $t('infra.i18nLocale.help.localeTarget'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_I18N_LOCALE_TARGET, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nLocale.field.localeTarget'),
        ]),
      },
    },
    {
      fieldName: 'isDefault',
      label: $t('infra.i18nLocale.field.isDefault'),
      help: $t('infra.i18nLocale.help.isDefault'),
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(
          DICT_TYPE.INFRA_I18N_LOCALE_IS_DEFAULT,
          'number',
        ),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nLocale.field.isDefault'),
        ]),
      },
    },
    {
      fieldName: 'remark',
      label: $t('infra.i18nLocale.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.i18nLocale.field.remark'),
        ]),
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'localeName',
      label: $t('infra.i18nLocale.field.localeName'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.i18nLocale.field.localeName'),
        ]),
      },
    },
    {
      fieldName: 'locale',
      label: $t('infra.i18nLocale.field.locale'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.i18nLocale.field.locale'),
        ]),
      },
    },
    {
      fieldName: 'localeStatus',
      label: $t('infra.i18nLocale.field.localeStatus'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_I18N_LOCALE_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nLocale.field.localeStatus'),
        ]),
      },
    },
    {
      fieldName: 'localeTarget',
      label: $t('infra.i18nLocale.field.localeTarget'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_I18N_LOCALE_TARGET, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nLocale.field.localeTarget'),
        ]),
      },
    },
    {
      fieldName: 'isDefault',
      label: $t('infra.i18nLocale.field.isDefault'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(
          DICT_TYPE.INFRA_I18N_LOCALE_IS_DEFAULT,
          'number',
        ),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.i18nLocale.field.isDefault'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('infra.i18nLocale.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions<I18nLocaleApi.I18nLocale>['columns'] {
  return [
    { type: 'checkbox', width: 40 },
    {
      field: 'id',
      title: $t('infra.i18nLocale.field.id'),
      minWidth: 120,
    },
    {
      field: 'localeName',
      title: $t('infra.i18nLocale.field.localeName'),
      minWidth: 120,
    },
    {
      field: 'locale',
      title: $t('infra.i18nLocale.field.locale'),
      minWidth: 120,
    },
    {
      field: 'orderNum',
      title: $t('infra.i18nLocale.field.orderNum'),
      minWidth: 120,
    },
    {
      field: 'localeStatus',
      title: $t('infra.i18nLocale.field.localeStatus'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_LOCALE_STATUS },
      },
    },
    {
      field: 'localeTarget',
      title: $t('infra.i18nLocale.field.localeTarget'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_LOCALE_TARGET },
      },
    },
    {
      field: 'isDefault',
      title: $t('infra.i18nLocale.field.isDefault'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_I18N_LOCALE_IS_DEFAULT },
      },
    },
    {
      field: 'remark',
      title: $t('infra.i18nLocale.field.remark'),
      minWidth: 120,
    },
    {
      field: 'createTime',
      title: $t('infra.i18nLocale.field.createTime'),
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
