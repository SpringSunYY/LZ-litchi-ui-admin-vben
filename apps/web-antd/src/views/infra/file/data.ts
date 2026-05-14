import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

/** 表单的字段 */
export function useFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'file',
      label: $t('infra.file.field.file'),
      component: 'Upload',
      componentProps: {
        placeholder: $t('infra.file.upload.placeholder'),
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
      label: $t('infra.file.field.configKey'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.file.field.configKey'),
        ]),
      },
    },
    {
      fieldName: 'name',
      label: $t('infra.file.field.name'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [$t('infra.file.field.name')]),
      },
    },
    {
      fieldName: 'type',
      label: $t('infra.file.field.type'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_FILE_FILE_TYPE, 'string'),
        placeholder: $t('ui.placeholder.select', [$t('infra.file.field.type')]),
      },
    },
    {
      fieldName: 'size',
      label: $t('infra.file.field.size'),
      component: 'NumberRange',
    },
    {
      fieldName: 'moduleType',
      label: $t('infra.file.field.moduleType'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_MODULE_TYPE, 'string'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.file.field.moduleType'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('infra.file.field.createTime'),
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
      title: $t('infra.file.field.id'),
    },
    {
      field: 'configKey',
      title: $t('infra.file.field.configKey'),
    },
    {
      field: 'name',
      title: $t('infra.file.field.name'),
    },
    {
      field: 'path',
      title: $t('infra.file.field.path'),
      minWidth: 120,
    },
    {
      field: 'absolutePath',
      title: $t('infra.file.field.absolutePath'),
      cellRender: {
        name: 'CellFileAndImages',
      },
    },
    {
      field: 'relativePath',
      title: $t('infra.file.field.relativePath'),
      cellRender: {
        name: 'CellFileAndImages',
      },
    },
    {
      field: 'type',
      title: $t('infra.file.field.type'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_FILE_FILE_TYPE },
      },
    },
    {
      field: 'size',
      title: $t('infra.file.field.size'),
      formatter: ({ cellValue }) => {
        // TODO @YY：后续优化下
        if (!cellValue) return $t('infra.file.sizeZero');
        const unitArr = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
        const index = Math.floor(Math.log(cellValue) / Math.log(1024));
        const size = cellValue / 1024 ** index;
        const formattedSize = size.toFixed(2);
        return `${formattedSize} ${unitArr[index]}`;
      },
    },
    {
      field: 'moduleType',
      title: $t('infra.file.field.moduleType'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_MODULE_TYPE },
      },
    },
    {
      field: 'createTime',
      title: $t('infra.file.field.uploadTime'),
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
