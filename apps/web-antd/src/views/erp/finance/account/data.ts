import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { ErpAccountApi } from '#/api/erp/finance/account';

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
      component: 'Input',
      fieldName: 'name',
      label: $t('erp.account.field.name'),
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.account.field.name')]),
      },
    },
    {
      fieldName: 'status',
      label: $t('erp.account.field.status'),
      component: 'I18nRadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },

    {
      fieldName: 'sort',
      label: $t('erp.account.field.sort'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.account.field.sort')]),
        precision: 0,
      },
      rules: 'required',
      defaultValue: 0,
    },
    {
      fieldName: 'defaultStatus',
      label: $t('erp.account.field.defaultStatus'),
      component: 'I18nRadioGroup',
      componentProps: {
        options: [
          {
            label: $t('common.yes'),
            value: true,
          },
          {
            label: $t('common.no'),
            value: false,
          },
        ],
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.boolean().default(false).optional(),
    },
    {
      fieldName: 'no',
      label: $t('erp.account.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.account.field.no')]),
      },
    },
    {
      fieldName: 'remark',
      label: $t('erp.account.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.account.field.remark'),
        ]),
        rows: 3,
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('erp.account.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.account.field.name')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'no',
      label: $t('erp.account.field.no'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.account.field.no')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'remark',
      label: $t('erp.account.field.remark'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.account.field.remark'),
        ]),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(
  onDefaultStatusChange?: (
    newStatus: boolean,
    row: ErpAccountApi.Account,
  ) => PromiseLike<boolean | undefined>,
): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'name',
      title: $t('erp.account.field.name'),
      minWidth: 150,
    },
    {
      field: 'no',
      title: $t('erp.account.field.no'),
      minWidth: 120,
    },
    {
      field: 'remark',
      title: $t('erp.account.field.remark'),
      minWidth: 150,
      showOverflow: 'tooltip',
    },
    {
      field: 'sort',
      title: $t('erp.account.field.sort'),
      minWidth: 80,
    },
    {
      field: 'status',
      title: $t('erp.account.field.status'),
      minWidth: 100,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'defaultStatus',
      title: $t('erp.account.field.defaultStatus'),
      minWidth: 100,
      cellRender: {
        attrs: { beforeChange: onDefaultStatusChange },
        name: 'CellSwitch',
        props: {
          checkedValue: true,
          unCheckedValue: false,
        },
      },
    },
    {
      field: 'createTime',
      title: $t('erp.account.field.createTime'),
      minWidth: 180,
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
