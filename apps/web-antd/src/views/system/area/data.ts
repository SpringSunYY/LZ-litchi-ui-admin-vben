import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { AreaApi } from '#/api/system/area';

import { handleTree } from '@vben/utils';

import { getAreaList } from '#/api/system/area';
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
      label: $t('system.area.field.parentIdName'),
      component: 'ApiTreeSelect',
      componentProps: {
        allowClear: true,
        api: async () => {
          const data = await getAreaList({});
          // @ts-ignore 提示有异常
          data.unshift({
            id: 0,
            name: $t('ui.treeRoot', [$t('system.area.field.parentIdName')]),
          });
          return handleTree(data);
        },
        labelField: 'name',
        valueField: 'id',
        childrenField: 'children',
        placeholder: $t('ui.placeholder.select', [
          $t('system.area.field.parentIdName'),
        ]),
        treeDefaultExpandAll: false,
      },
      rules: 'selectRequired',
    },
    {
      fieldName: 'name',
      label: $t('system.area.field.name'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('system.area.field.name')]),
      },
    },
    {
      fieldName: 'postalCode',
      label: $t('system.area.field.postalCode'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.area.field.postalCode'),
        ]),
      },
    },
    {
      fieldName: 'level',
      label: $t('system.area.field.level'),
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_AREA_LEVEL, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.area.field.level'),
        ]),
      },
    },
    {
      fieldName: 'longitude',
      label: $t('system.area.field.longitude'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.area.field.longitude'),
        ]),
      },
    },
    {
      fieldName: 'latitude',
      label: $t('system.area.field.latitude'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.area.field.latitude'),
        ]),
      },
    },
    {
      fieldName: 'source',
      label: $t('system.area.field.source'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.area.field.source'),
        ]),
      },
    },
    {
      fieldName: 'geoJson',
      label: $t('system.area.field.geoJson'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.area.field.geoJson'),
        ]),
      },
    },
    {
      fieldName: 'sortNum',
      label: $t('system.area.field.sortNum'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.area.field.sortNum'),
        ]),
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('system.area.field.name'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [$t('system.area.field.name')]),
      },
    },
    {
      fieldName: 'postalCode',
      label: $t('system.area.field.postalCode'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.area.field.postalCode'),
        ]),
      },
    },
    {
      fieldName: 'parentId',
      label: $t('system.area.field.parentId'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.area.field.parentId'),
        ]),
      },
    },
    {
      fieldName: 'level',
      label: $t('system.area.field.level'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_AREA_LEVEL, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('system.area.field.level'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('system.area.field.createTime'),
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
      title: $t('system.area.field.id'),
    },
    {
      field: 'name',
      title: $t('system.area.field.name'),
      minWidth: 150,
      treeNode: true,
    },
    {
      field: 'postalCode',
      title: $t('system.area.field.postalCode'),
    },
    {
      field: 'parentId',
      title: $t('system.area.field.parentId'),
      visible: false,
    },
    {
      field: 'level',
      title: $t('system.area.field.level'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_AREA_LEVEL },
      },
    },
    {
      field: 'longitude',
      title: $t('system.area.field.longitude'),
    },
    {
      field: 'latitude',
      title: $t('system.area.field.latitude'),
    },
    {
      field: 'source',
      title: $t('system.area.field.source'),
      cellRender: {
        name: 'CellLink',
      },
    },
    {
      field: 'geoJson',
      title: $t('system.area.field.geoJson'),
      cellRender: {
        name: 'CellLink',
      },
    },
    {
      field: 'sortNum',
      title: $t('system.area.field.sortNum'),
      visible: false,
    },
    {
      field: 'createTime',
      title: $t('system.area.field.createTime'),
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
