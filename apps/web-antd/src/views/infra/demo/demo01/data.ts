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
    {
      fieldName: 'name',
      label: $t('infra:demo01-contact:field:name'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra:demo01-contact:field:name'),
        ]),
      },
    },
    {
      fieldName: 'sex',
      label: $t('infra:demo01-contact:field:sex'),
      rules: 'required',
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_USER_SEX, 'boolean'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
    },
    {
      fieldName: 'birthday',
      label: $t('infra:demo01-contact:field:birthday'),
      rules: 'required',
      component: 'DatePicker',
      componentProps: {
        showTime: true,
        format: 'YYYY-MM-DD HH:mm:ss',
        valueFormat: 'x',
      },
    },
    {
      fieldName: 'description',
      label: $t('infra:demo01-contact:field:description'),
      rules: 'required',
      component: 'FileUpload',
    },
    {
      fieldName: 'age',
      label: $t('infra:demo01-contact:field:age'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra:demo01-contact:field:age'),
        ]),
      },
    },
    {
      fieldName: 'avatar',
      label: $t('infra:demo01-contact:field:avatar'),
      component: 'ImageUpload',
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('infra:demo01-contact:field:name'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra:demo01-contact:field:name'),
        ]),
      },
    },
    {
      fieldName: 'sex',
      label: $t('infra:demo01-contact:field:sex'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_USER_SEX, 'boolean'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra:demo01-contact:field:sex'),
        ]),
      },
    },
    {
      fieldName: 'birthday',
      label: $t('infra:demo01-contact:field:birthday'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'age',
      label: $t('infra:demo01-contact:field:age'),
      component: 'NumberRange',
    },
    {
      fieldName: 'createTime',
      label: $t('infra:demo01-contact:field:createTime'),
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
    {
      field: 'id',
      title: $t('infra:demo01-contact:field:id'),
      minWidth: 120,
    },
    {
      field: 'name',
      title: $t('infra:demo01-contact:field:name'),
      minWidth: 120,
    },
    {
      field: 'sex',
      title: $t('infra:demo01-contact:field:sex'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_USER_SEX },
      },
    },
    {
      field: 'birthday',
      title: $t('infra:demo01-contact:field:birthday'),
      minWidth: 120,
      sortable: true,
      formatter: 'formatDateTime',
    },
    {
      field: 'description',
      title: $t('infra:demo01-contact:field:description'),
      minWidth: 120,
      cellRender: {
        name: 'CellFilePreview',
      },
    },
    {
      field: 'age',
      title: $t('infra:demo01-contact:field:age'),
      minWidth: 120,
      sortable: true,
    },
    {
      field: 'avatar',
      title: $t('infra:demo01-contact:field:avatar'),
      minWidth: 120,
      cellRender: {
        name: 'CellImage',
        props: {
          width: 40,
          height: 40,
        },
      },
    },
    {
      field: 'createTime',
      title: $t('infra:demo01-contact:field:createTime'),
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
    {
      fieldName: 'file',
      label: $t('ui.actionTitle.import'),
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
