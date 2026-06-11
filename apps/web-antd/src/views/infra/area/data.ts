import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { AreaApi } from '#/api/infra/area';

import { handleTree } from '@vben/utils';

import { getAreaList } from '#/api/infra/area';
import { $t } from '#/locales';
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
      fieldName: 'parentId',
      label: $t('infra.area.field.parentIdName'),
      component: 'ApiTreeSelect',
      componentProps: {
        allowClear: true,
        api: async () => {
          const data = await getAreaList({});
          // @ts-ignore 提示有异常
          data.unshift({
            id: 0,
            name: $t('ui.treeRoot', [$t('infra.area.field.parentIdName')]),
          });
          return handleTree(data);
        },
        labelField: 'name',
        valueField: 'id',
        childrenField: 'children',
        placeholder: $t('ui.placeholder.select', [
          $t('infra.area.field.parentIdName'),
        ]),
        treeDefaultExpandAll: false,
      },
      rules: 'selectRequired',
    },
    {
      fieldName: 'administrativeCode',
      label: $t('infra.area.field.administrativeCode'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.area.field.administrativeCode'),
        ]),
      },
    },
    {
      fieldName: 'name',
      label: $t('infra.area.field.name'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('infra.area.field.name')]),
      },
    },
    {
      fieldName: 'postalCode',
      label: $t('infra.area.field.postalCode'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.area.field.postalCode'),
        ]),
      },
    },
    {
      fieldName: 'level',
      label: $t('infra.area.field.level'),
      rules: 'required',
      component: 'I18nSelect',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_AREA_LEVEL, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.area.field.level'),
        ]),
      },
    },
    {
      fieldName: 'longitude',
      label: $t('infra.area.field.longitude'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.area.field.longitude'),
        ]),
      },
    },
    {
      fieldName: 'latitude',
      label: $t('infra.area.field.latitude'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.area.field.latitude'),
        ]),
      },
    },
    {
      fieldName: 'source',
      label: $t('infra.area.field.source'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.area.field.source'),
        ]),
      },
    },
    {
      fieldName: 'geoJson',
      label: $t('infra.area.field.geoJson'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.area.field.geoJson'),
        ]),
      },
    },
    {
      fieldName: 'sortNum',
      label: $t('infra.area.field.sortNum'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.area.field.sortNum'),
        ]),
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'administrativeCode',
      label: $t('infra.area.field.administrativeCode'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.area.field.administrativeCode'),
        ]),
      },
    },
    {
      fieldName: 'name',
      label: $t('infra.area.field.name'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [$t('infra.area.field.name')]),
      },
    },
    {
      fieldName: 'postalCode',
      label: $t('infra.area.field.postalCode'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.area.field.postalCode'),
        ]),
      },
    },
    {
      fieldName: 'parentId',
      label: $t('infra.area.field.parentId'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.area.field.parentId'),
        ]),
      },
    },
    {
      fieldName: 'level',
      label: $t('infra.area.field.level'),
      component: 'I18nSelect',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_AREA_LEVEL, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.area.field.level'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('infra.area.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions<AreaApi.Area>['columns'] {
  return [
    {
      field: 'id',
      title: $t('infra.area.field.id'),
      visible: false,
    },
    {
      field: 'administrativeCode',
      title: $t('infra.area.field.administrativeCode'),
      treeNode: true,
    },
    {
      field: 'name',
      title: $t('infra.area.field.name'),
      minWidth: 150,
    },
    {
      field: 'postalCode',
      title: $t('infra.area.field.postalCode'),
    },
    {
      field: 'parentId',
      title: $t('infra.area.field.parentId'),
      visible: false,
    },
    {
      field: 'level',
      title: $t('infra.area.field.level'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.SYSTEM_AREA_LEVEL },
      },
    },
    {
      field: 'longitude',
      title: $t('infra.area.field.longitude'),
    },
    {
      field: 'latitude',
      title: $t('infra.area.field.latitude'),
    },
    {
      field: 'source',
      title: $t('infra.area.field.source'),
      cellRender: {
        name: 'CellLink',
      },
    },
    {
      field: 'geoJson',
      title: $t('infra.area.field.geoJson'),
      cellRender: {
        name: 'CellLink',
      },
    },
    {
      field: 'sortNum',
      title: $t('infra.area.field.sortNum'),
      visible: false,
    },
    {
      field: 'createTime',
      title: $t('infra.area.field.createTime'),
      minWidth: 120,
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
