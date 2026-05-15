import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { z } from '#/adapter/form';
import { getSimpleDictTypeList } from '#/api/system/dict/type';
import { CommonStatusEnum, DICT_TYPE, getDictOptions } from '#/utils';
import { $t } from '#/locales';

// ============================== 字典类型 ==============================

/** 类型新增/修改的表单 */
export function useTypeFormSchema(): VbenFormSchema[] {
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
      label: $t('system.dict.typeField.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('system.dict.typeField.name')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'type',
      label: $t('system.dict.typeField.type'),
      component: 'Input',
      componentProps: (values) => {
        return {
          placeholder: $t('ui.placeholder.input', [$t('system.dict.typeField.type')]),
          disabled: !!values.id,
        };
      },
      rules: 'required',
      dependencies: {
        triggerFields: [''],
      },
    },
    {
      fieldName: 'status',
      label: $t('system.dict.typeField.status'),
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
      label: $t('system.dict.typeField.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('system.dict.typeField.remark')]),
      },
    },
  ];
}

/** 类型列表的搜索表单 */
export function useTypeGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('system.dict.typeField.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('system.dict.typeField.name')]),
        clearable: true,
      },
    },
    {
      fieldName: 'type',
      label: $t('system.dict.typeField.type'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('system.dict.typeField.type')]),
        clearable: true,
      },
    },
    {
      fieldName: 'status',
      label: $t('system.dict.typeField.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [$t('system.dict.typeField.status')]),
        clearable: true,
      },
    },
  ];
}

/** 类型列表的字段 */
export function useTypeGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('system.dict.typeField.id'),
    },
    {
      field: 'name',
      title: $t('system.dict.typeField.name'),
    },
    {
      field: 'type',
      title: $t('system.dict.typeField.type'),
    },
    {
      field: 'status',
      title: $t('system.dict.typeField.status'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'remark',
      title: $t('system.dict.typeField.remark'),
    },
    {
      field: 'createTime',
      title: $t('system.dict.typeField.createTime'),
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 160,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}

// ============================== 字典数据 ==============================

// TODO @YY：后续针对 antd，增加
/**
 * 颜色选项
 */
const colorOptions = [
  { value: '', label: $t('ui.none') },
  { value: 'processing', label: $t('ui.color.primary') },
  { value: 'success', label: $t('ui.color.success') },
  { value: 'default', label: $t('ui.color.default') },
  { value: 'warning', label: $t('ui.color.warning') },
  { value: 'error', label: $t('ui.color.danger') },
  { value: 'pink', label: 'pink' },
  { value: 'red', label: 'red' },
  { value: 'orange', label: 'orange' },
  { value: 'green', label: 'green' },
  { value: 'cyan', label: 'cyan' },
  { value: 'blue', label: 'blue' },
  { value: 'purple', label: 'purple' },
];

/** 数据新增/修改的表单 */
export function useDataFormSchema(): VbenFormSchema[] {
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
      fieldName: 'dictType',
      label: $t('system.dict.dataField.dictType'),
      component: 'ApiSelect',
      componentProps: (values) => {
        return {
          api: getSimpleDictTypeList,
          placeholder: $t('ui.placeholder.select', [$t('system.dict.dataField.dictType')]),
          labelField: 'name',
          valueField: 'type',
          disabled: !!values.id,
        };
      },
      rules: 'required',
      dependencies: {
        triggerFields: [''],
      },
    },
    {
      fieldName: 'label',
      label: $t('system.dict.dataField.label'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('system.dict.dataField.label')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'value',
      label: $t('system.dict.dataField.value'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('system.dict.dataField.value')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'sort',
      label: $t('system.dict.dataField.sort'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('system.dict.dataField.sort')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'status',
      label: $t('system.dict.dataField.status'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [$t('system.dict.dataField.status')]),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
    {
      fieldName: 'colorType',
      label: $t('system.dict.dataField.colorType'),
      component: 'Select',
      componentProps: {
        options: colorOptions,
        placeholder: $t('ui.placeholder.select', [$t('system.dict.dataField.colorType')]),
      },
    },
    {
      fieldName: 'cssClass',
      label: $t('system.dict.dataField.cssClass'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('system.dict.dataField.cssClass')]),
      },
      help: $t('system.dict.help.cssClass'),
    },
    {
      fieldName: 'remark',
      label: $t('system.dict.dataField.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('system.dict.dataField.remark')]),
      },
    },
  ];
}

/** 字典数据列表搜索表单 */
export function useDataGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'label',
      label: $t('system.dict.dataField.label'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('system.dict.dataField.label')]),
        clearable: true,
      },
    },
    {
      fieldName: 'status',
      label: $t('system.dict.dataField.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [$t('system.dict.dataField.status')]),
        clearable: true,
      },
    },
  ];
}

/**
 * 字典数据表格列
 */
export function useDataGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('system.dict.dataField.id'),
    },
    {
      field: 'label',
      title: $t('system.dict.dataField.label'),
    },
    {
      field: 'value',
      title: $t('system.dict.dataField.value'),
    },
    {
      field: 'sort',
      title: $t('system.dict.dataField.sort'),
    },
    {
      field: 'status',
      title: $t('system.dict.dataField.status'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'colorType',
      title: $t('system.dict.dataField.colorType'),
    },
    {
      field: 'cssClass',
      title: $t('system.dict.dataField.cssClass'),
    },
    {
      title: $t('system.dict.dataField.createTime'),
      field: 'createTime',
      visible: false,
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 160,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
