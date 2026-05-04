import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '@vben/locales';

import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

/** 表单的字段 */
export function useFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'file',
      label: '文件上传',
      component: 'Upload',
      componentProps: {
        placeholder: '请选择要上传的文件',
      },
      rules: 'required',
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'configKey',
      label: '配置',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', ['配置']),
      },
    },
    {
      fieldName: 'name',
      label: '文件名',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', ['文件名']),
      },
    },
    {
      fieldName: 'type',
      label: '文件类型',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_FILE_FILE_TYPE, 'string'),
        placeholder: $t('ui.placeholder.select', ['文件类型']),
      },
    },
    {
      fieldName: 'size',
      label: '文件大小',
      component: 'NumberRange',
    },
    {
      fieldName: 'moduleType',
      label: '模块',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_FILE_MODULE_TYPE, 'string'),
        placeholder: $t('ui.placeholder.select', ['模块']),
      },
    },
    {
      fieldName: 'createTime',
      label: '创建时间',
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: '文件编号',
    },
    {
      field: 'configKey',
      title: '配置',
    },
    {
      field: 'name',
      title: '文件名',
    },
    {
      field: 'path',
      title: '文件路径',
      minWidth: 120,
    },
    {
      field: 'absolutePath',
      title: '绝对路径',
      cellRender: {
        name: 'CellFileAndImages',
      },
    },
    {
      field: 'relativePath',
      title: '相对路径',
      cellRender: {
        name: 'CellFileAndImages',
      },
    },
    {
      field: 'type',
      title: '文件类型',
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_FILE_FILE_TYPE },
      },
    },
    {
      field: 'size',
      title: '文件大小',
      formatter: ({ cellValue }) => {
        // TODO @YY：后续优化下
        if (!cellValue) return '0 B';
        const unitArr = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
        const index = Math.floor(Math.log(cellValue) / Math.log(1024));
        const size = cellValue / 1024 ** index;
        const formattedSize = size.toFixed(2);
        return `${formattedSize} ${unitArr[index]}`;
      },
    },
    {
      field: 'moduleType',
      title: '模块',
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_FILE_MODULE_TYPE },
      },
    },
    {
      field: 'createTime',
      title: '上传时间',
      formatter: 'formatDateTime',
    },
    {
      title: '操作',
      width: 160,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
