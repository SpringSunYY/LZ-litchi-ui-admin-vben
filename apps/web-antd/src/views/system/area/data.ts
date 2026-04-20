import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { AreaApi } from '#/api/system/area';

import { handleTree } from '@vben/utils';

import { getAreaList } from '#/api/system/area';
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
      label: '上级地区',
      component: 'ApiTreeSelect',
      componentProps: {
        allowClear: true,
        api: async () => {
          const data = await getAreaList({});
          // @ts-ignore
          data.unshift({ id: 0, name: '顶级地区信息' });
          return handleTree(data);
        },
        labelField: 'name',
        valueField: 'id',
        childrenField: 'children',
        placeholder: '请选择上级地区',
        treeDefaultExpandAll: false,
      },
      rules: 'selectRequired',
    },
    {
      fieldName: 'name',
      label: '地区名称',
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: '请输入地区名称',
      },
    },
    {
      fieldName: 'postalCode',
      label: '邮政编码',
      component: 'Input',
      componentProps: {
        placeholder: '请输入邮政编码',
      },
    },
    {
      fieldName: 'level',
      label: '层级',
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_AREA_LEVEL, 'number'),
        placeholder: '请选择层级',
      },
    },
    {
      fieldName: 'longitude',
      label: '经度',
      component: 'Input',
      componentProps: {
        placeholder: '请输入经度',
      },
    },
    {
      fieldName: 'latitude',
      label: '纬度',
      component: 'Input',
      componentProps: {
        placeholder: '请输入纬度',
      },
    },
    {
      fieldName: 'source',
      label: '数据来源',
      component: 'Input',
      componentProps: {
        placeholder: '请输入数据来源',
      },
    },
    {
      fieldName: 'geoJson',
      label: 'GeoJson',
      component: 'Input',
      componentProps: {
        placeholder: '请输入GeoJson',
      },
    },
    {
      fieldName: 'sortNum',
      label: '排序号',
      component: 'Input',
      componentProps: {
        placeholder: '请输入排序号',
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: '地区名称',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入地区名称',
      },
    },
    {
      fieldName: 'postalCode',
      label: '邮政编码',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入邮政编码',
      },
    },
    {
      fieldName: 'parentId',
      label: '父级ID',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: '请输入父级ID',
      },
    },
    {
      fieldName: 'level',
      label: '层级',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.SYSTEM_AREA_LEVEL, 'number'),
        placeholder: '请选择层级',
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
export function useGridColumns(): VxeTableGridOptions<AreaApi.Area>['columns'] {
  return [
    {
      field: 'id',
      title: 'ID',
      minWidth: 120,
    },
    {
      field: 'name',
      title: '地区名称',
      minWidth: 120,
      treeNode: true,
    },
    {
      field: 'postalCode',
      title: '邮政编码',
      minWidth: 120,
    },
    {
      field: 'parentId',
      title: '父级ID',
      minWidth: 120,
    },
    {
      field: 'level',
      title: '层级',
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_AREA_LEVEL },
      },
    },
    {
      field: 'longitude',
      title: '经度',
      minWidth: 120,
    },
    {
      field: 'latitude',
      title: '纬度',
      minWidth: 120,
    },
    {
      field: 'source',
      title: '数据来源',
      minWidth: 120,
      slots: { default: 'source' },
    },
    {
      field: 'geoJson',
      title: 'GeoJson',
      minWidth: 120,
      slots: { default: 'geoJson' },
    },
    {
      field: 'sortNum',
      title: '排序号',
      minWidth: 120,
    },
    {
      field: 'createTime',
      title: '创建时间',
      minWidth: 120,
      formatter: 'formatDateTime',
    },
    {
      title: '操作',
      width: 200,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
