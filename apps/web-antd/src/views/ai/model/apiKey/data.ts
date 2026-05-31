import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { z } from '#/adapter/form';
import { $t } from '#/locales';
import { CommonStatusEnum, DICT_TYPE, getDictOptions } from '#/utils';

/** 新增/修改的表单 */
export function useFormSchema(): VbenFormSchema[] {
  return [
    {
      component: 'Input',
      fieldName: 'id',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'platform',
      label: $t('ai.model.apiKey.field.platform'),
      component: 'I18nSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('ai.model.apiKey.field.platform'),
        ]),
        options: getDictOptions(DICT_TYPE.AI_PLATFORM, 'string'),
        allowClear: true,
      },
      rules: 'required',
    },
    {
      component: 'Input',
      fieldName: 'name',
      label: $t('ai.model.apiKey.field.name'),
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.apiKey.field.name'),
        ]),
      },
    },
    {
      component: 'Input',
      fieldName: 'apiKey',
      label: $t('ai.model.apiKey.field.apiKey'),
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.apiKey.field.apiKey'),
        ]),
      },
    },
    {
      component: 'Input',
      fieldName: 'url',
      label: $t('ai.model.apiKey.field.url'),
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.apiKey.field.url'),
        ]),
      },
    },
    {
      fieldName: 'status',
      label: $t('ai.model.apiKey.field.status'),
      component: 'I18nRadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('ai.model.apiKey.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.apiKey.field.name'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'platform',
      label: $t('ai.model.apiKey.field.platform'),
      component: 'I18nSelect',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('ai.model.apiKey.field.platform'),
        ]),
        options: getDictOptions(DICT_TYPE.AI_PLATFORM, 'string'),
      },
    },
    {
      fieldName: 'status',
      label: $t('ai.model.apiKey.field.status'),
      component: 'I18nSelect',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('ai.model.apiKey.field.status'),
        ]),
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'platform',
      title: $t('ai.model.apiKey.field.platform'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.AI_PLATFORM },
      },
      minWidth: 100,
    },
    {
      field: 'name',
      title: $t('ai.model.apiKey.field.name'),
      minWidth: 120,
    },
    {
      field: 'apiKey',
      title: $t('ai.model.apiKey.field.apiKey'),
      minWidth: 140,
    },
    {
      field: 'url',
      title: $t('ai.model.apiKey.field.url'),
      minWidth: 180,
    },
    {
      field: 'status',
      title: $t('ai.model.apiKey.field.status'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
      minWidth: 80,
    },
    {
      title: $t('common.operation'),
      width: 130,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
