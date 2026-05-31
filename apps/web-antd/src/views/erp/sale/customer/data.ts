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
      component: 'Input',
      fieldName: 'name',
      label: $t('erp.customer.field.name'),
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.customer.field.name'),
        ]),
      },
    },
    {
      fieldName: 'contact',
      label: $t('erp.customer.field.contact'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.customer.field.contact'),
        ]),
      },
    },
    {
      fieldName: 'mobile',
      label: $t('erp.customer.field.mobile'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.customer.field.mobile'),
        ]),
      },
    },
    {
      fieldName: 'telephone',
      label: $t('erp.customer.field.telephone'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.customer.field.telephone'),
        ]),
      },
    },
    {
      fieldName: 'email',
      label: $t('erp.customer.field.email'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.customer.field.email'),
        ]),
      },
    },
    {
      fieldName: 'fax',
      label: $t('erp.customer.field.fax'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.customer.field.fax')]),
      },
    },
    {
      fieldName: 'status',
      label: $t('erp.customer.field.status'),
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
      label: $t('erp.customer.field.sort'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.customer.field.sort'),
        ]),
        precision: 0,
      },
      rules: 'required',
    },
    {
      fieldName: 'taxNo',
      label: $t('erp.customer.field.taxNo'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.customer.field.taxNo'),
        ]),
      },
    },
    {
      fieldName: 'taxPercent',
      label: $t('erp.customer.field.taxPercent'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.customer.field.taxPercent'),
        ]),
        precision: 2,
      },
      rules: z.number().min(0).max(100).optional(),
    },
    {
      fieldName: 'bankName',
      label: $t('erp.customer.field.bankName'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.customer.field.bankName'),
        ]),
      },
    },
    {
      fieldName: 'bankAccount',
      label: $t('erp.customer.field.bankAccount'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.customer.field.bankAccount'),
        ]),
      },
    },
    {
      fieldName: 'bankAddress',
      label: $t('erp.customer.field.bankAddress'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.customer.field.bankAddress'),
        ]),
      },
    },
    {
      fieldName: 'remark',
      label: $t('erp.customer.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.customer.field.remark'),
        ]),
        rows: 3,
      },
      formItemClass: 'col-span-2',
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('erp.customer.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.customer.field.name'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'mobile',
      label: $t('erp.customer.field.mobile'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.customer.field.mobile'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'email',
      label: $t('erp.customer.field.email'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.customer.field.email'),
        ]),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'name',
      title: $t('erp.customer.field.name'),
      minWidth: 150,
    },
    {
      field: 'contact',
      title: $t('erp.customer.field.contact'),
      minWidth: 120,
    },
    {
      field: 'mobile',
      title: $t('erp.customer.field.mobile'),
      minWidth: 130,
    },
    {
      field: 'telephone',
      title: $t('erp.customer.field.telephone'),
      minWidth: 130,
    },
    {
      field: 'email',
      title: $t('erp.customer.field.email'),
      minWidth: 180,
    },
    {
      field: 'status',
      title: $t('erp.customer.field.status'),
      minWidth: 100,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'sort',
      title: $t('erp.customer.field.sort'),
      minWidth: 80,
    },
    {
      field: 'remark',
      title: $t('erp.customer.field.remark'),
      minWidth: 150,
      showOverflow: 'tooltip',
    },
    {
      field: 'createTime',
      title: $t('erp.customer.field.createTime'),
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
