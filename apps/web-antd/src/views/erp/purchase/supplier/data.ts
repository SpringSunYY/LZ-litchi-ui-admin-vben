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
      fieldName: 'name',
      label: $t('erp.supplier.field.name'),
      component: 'Input',
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.supplier.field.name'),
        ]),
      },
    },
    {
      fieldName: 'contact',
      label: $t('erp.supplier.field.contact'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.supplier.field.contact'),
        ]),
      },
    },
    {
      fieldName: 'mobile',
      label: $t('erp.supplier.field.mobile'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.supplier.field.mobile'),
        ]),
      },
    },
    {
      fieldName: 'telephone',
      label: $t('erp.supplier.field.telephone'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.supplier.field.telephone'),
        ]),
      },
    },
    {
      fieldName: 'email',
      label: $t('erp.supplier.field.email'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.supplier.field.email'),
        ]),
      },
    },
    {
      fieldName: 'fax',
      label: $t('erp.supplier.field.fax'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('erp.supplier.field.fax')]),
      },
    },
    {
      fieldName: 'status',
      label: $t('erp.supplier.field.status'),
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
      label: $t('erp.supplier.field.sort'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.supplier.field.sort'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'taxNo',
      label: $t('erp.supplier.field.taxNo'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.supplier.field.taxNo'),
        ]),
      },
    },
    {
      fieldName: 'taxPercent',
      label: $t('erp.supplier.field.taxPercent'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.supplier.field.taxPercent'),
        ]),
        min: 0,
        precision: 2,
      },
    },
    {
      fieldName: 'bankName',
      label: $t('erp.supplier.field.bankName'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.supplier.field.bankName'),
        ]),
      },
    },
    {
      fieldName: 'bankAccount',
      label: $t('erp.supplier.field.bankAccount'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.supplier.field.bankAccount'),
        ]),
      },
    },
    {
      fieldName: 'bankAddress',
      label: $t('erp.supplier.field.bankAddress'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.supplier.field.bankAddress'),
        ]),
      },
    },
    {
      fieldName: 'remark',
      label: $t('erp.supplier.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.supplier.field.remark'),
        ]),
        rows: 3,
      },
      formItemClass: 'col-span-2',
    },
  ];
}

/** 搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('erp.supplier.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.supplier.field.name'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'mobile',
      label: $t('erp.supplier.field.mobile'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.supplier.field.mobile'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'telephone',
      label: $t('erp.supplier.field.telephone'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('erp.supplier.field.telephone'),
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
      title: $t('erp.supplier.field.name'),
      minWidth: 150,
    },
    {
      field: 'contact',
      title: $t('erp.supplier.field.contact'),
      minWidth: 120,
    },
    {
      field: 'mobile',
      title: $t('erp.supplier.field.mobile'),
      minWidth: 130,
    },
    {
      field: 'telephone',
      title: $t('erp.supplier.field.telephone'),
      minWidth: 130,
    },
    {
      field: 'email',
      title: $t('erp.supplier.field.email'),
      minWidth: 180,
    },
    {
      field: 'status',
      title: $t('erp.supplier.field.status'),
      minWidth: 100,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'sort',
      title: $t('erp.supplier.field.sort'),
      minWidth: 80,
    },
    {
      field: 'remark',
      title: $t('erp.supplier.field.remark'),
      minWidth: 150,
      showOverflow: 'tooltip',
    },
    {
      title: $t('common.operation'),
      width: 130,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
