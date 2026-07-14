import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import { getRangePickerDefaultProps } from '#/utils';

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'id',
      label: $t('infra.vectorImage.field.id'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.vectorImage.field.id'),
        ]),
      },
    },
    {
      fieldName: 'imagePath',
      label: $t('infra.vectorImage.field.imagePath'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.vectorImage.field.imagePath'),
        ]),
      },
    },
    {
      fieldName: 'fileId',
      label: $t('infra.vectorImage.field.fileId'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.vectorImage.field.fileId'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('infra.vectorImage.field.createTime'),
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
      type: 'checkbox',
      width: 40,
    },
    {
      field: 'id',
      title: $t('infra.vectorImage.field.id'),
      minWidth: 220,
    },
    {
      field: 'imagePath',
      title: $t('infra.vectorImage.field.imagePath'),
      minWidth: 200,
      cellRender: { name: 'CellImage' },
    },
    {
      field: 'fileId',
      title: $t('infra.vectorImage.field.fileId'),
      minWidth: 120,
    },
    {
      field: 'createTime',
      title: $t('infra.vectorImage.field.createTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 240,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}

/** 以图搜图结果字段（用于搜索结果展示） */
export function useSearchResultColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'imagePath',
      title: $t('infra.vectorImage.field.imagePath'),
      minWidth: 200,
      cellRender: { name: 'CellImage' },
    },
    {
      field: 'id',
      title: $t('infra.vectorImage.field.id'),
      minWidth: 220,
    },
    {
      field: 'fileId',
      title: $t('infra.vectorImage.field.fileId'),
      minWidth: 120,
    },
    {
      field: 'similarity',
      title: $t('infra.vectorImage.field.similarity'),
      width: 120,
      align: 'center',
    },
    {
      field: 'score',
      title: $t('infra.vectorImage.field.score'),
      width: 100,
      align: 'right',
    },
    {
      field: 'createTime',
      title: $t('infra.vectorImage.field.createTime'),
      width: 260,
      fixed: 'right',
      formatter: 'formatDateTime',
    },
  ];
}
