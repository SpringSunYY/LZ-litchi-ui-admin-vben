import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { Demo01ContactApi } from '#/api/infra/demo/demo01';

import { $t } from '@vben/locales';

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
    /** 名字 */
    {
      fieldName: 'name',
      label: $t('infra.demo01Contact.field.name'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.demo01Contact.field.name'),
        ]),
      },
    },
    /** 性别 */
    {
      fieldName: 'sex',
      label: $t('infra.demo01Contact.field.sex'),
      rules: 'required',
      component: 'I18nRadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_USER_SEX, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
    },
    /** 出生年 */
    {
      fieldName: 'birthday',
      label: $t('infra.demo01Contact.field.birthday'),
      rules: 'required',
      component: 'DatePicker',
      componentProps: {
        showTime: true,
        format: 'YYYY-MM-DD HH:mm:ss',
        valueFormat: 'x',
      },
    },
    /** 年龄 */
    {
      fieldName: 'age',
      label: $t('infra.demo01Contact.field.age'),
      component: 'InputNumber',
      componentProps: {
        min: 0,
        controlsPosition: 'right',
        placeholder: $t('ui.placeholder.input', [
          $t('infra.demo01Contact.field.age'),
        ]),
      },
    },
    /** 简介 */
    {
      fieldName: 'description',
      label: $t('infra.demo01Contact.field.description'),
      rules: 'required',
      component: 'RichTextarea',
      componentProps: {
        moduleType: 'infra',
      },
    },
    /** 头像 */
    {
      fieldName: 'avatar',
      label: $t('infra.demo01Contact.field.avatar'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.demo01Contact.field.avatar'),
        ]),
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    /** 名字 */
    {
      fieldName: 'name',
      label: $t('infra.demo01Contact.field.name'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.demo01Contact.field.name'),
        ]),
      },
    },
    /** 性别 */
    {
      fieldName: 'sex',
      label: $t('infra.demo01Contact.field.sex'),
      component: 'I18nSelect',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_USER_SEX, 'boolean'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.demo01Contact.field.sex'),
        ]),
      },
    },
    /** 出生年 */
    {
      fieldName: 'birthday',
      label: $t('infra.demo01Contact.field.birthday'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    /** 年龄 */
    {
      fieldName: 'age',
      label: $t('infra.demo01Contact.field.age'),
      component: 'NumberRange',
    },
    /** 简介 */
    {
      fieldName: 'description',
      label: $t('infra.demo01Contact.field.description'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.demo01Contact.field.description'),
        ]),
      },
    },
    /** 头像 */
    {
      fieldName: 'avatar',
      label: $t('infra.demo01Contact.field.avatar'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.demo01Contact.field.avatar'),
        ]),
      },
    },
    /** 创建时间 */
    {
      fieldName: 'createTime',
      label: $t('infra.demo01Contact.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions<Demo01ContactApi.Demo01Contact>['columns'] {
  return [
    { type: 'checkbox', width: 40 },
    /** 编号 */
    {
      field: 'id',
      title: $t('infra.demo01Contact.field.id'),
      minWidth: 120,
    },
    /** 名字 */
    {
      field: 'name',
      title: $t('infra.demo01Contact.field.name'),
      minWidth: 120,
    },
    /** 性别 */
    {
      field: 'sex',
      title: $t('infra.demo01Contact.field.sex'),
      minWidth: 120,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.SYSTEM_USER_SEX },
      },
    },
    /** 出生年 */
    {
      field: 'birthday',
      title: $t('infra.demo01Contact.field.birthday'),
      minWidth: 120,
      sortable: true,
      formatter: 'formatDateTime',
    },
    /** 年龄 */
    {
      field: 'age',
      title: $t('infra.demo01Contact.field.age'),
      minWidth: 120,
      sortable: true,
    },
    /** 简介 */
    {
      field: 'description',
      title: $t('infra.demo01Contact.field.description'),
      minWidth: 120,
    },
    /** 头像 */
    {
      field: 'avatar',
      title: $t('infra.demo01Contact.field.avatar'),
      minWidth: 120,
    },
    /** 创建时间 */
    {
      field: 'createTime',
      title: $t('infra.demo01Contact.field.createTime'),
      minWidth: 120,
      sortable: true,
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

/** 示例联系人导入的表单 */
export function useDemo01ContactImportSchema(): VbenFormSchema[] {
  return [
    /** 示例联系人导入文件 */
    {
      fieldName: 'file',
      label: $t('ui.actionTitle.import', [
        $t('infra.demo01Contact.demo01Contact'),
      ]),
      component: 'Upload',
      rules: 'required',
      componentProps: {
        accept: '.xls,.xlsx',
        maxSize: 10,
        maxNumber: 1,
        uploadParams: {
          type: 'file',
        },
      },
    },
  ];
}
