import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { SystemUserApi } from '#/api/system/user';

import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

/** 关联数据 */
let userList: SystemUserApi.User[] = [];
getSimpleUserList().then((data) => (userList = data));

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'userId',
      label: $t('ai.write.field.user'),
      component: 'ApiSelect',
      componentProps: {
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [$t('ai.write.field.user')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'type',
      label: $t('ai.write.field.type'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [$t('ai.write.field.type')]),
        options: getDictOptions(DICT_TYPE.AI_WRITE_TYPE, 'number'),
      },
    },
    {
      fieldName: 'platform',
      label: $t('ai.write.field.platform'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('ai.write.field.platform'),
        ]),
        options: getDictOptions(DICT_TYPE.AI_PLATFORM, 'string'),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('ai.write.field.createTime'),
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
      title: $t('ai.write.field.id'),
      minWidth: 180,
      fixed: 'left',
    },
    {
      minWidth: 180,
      title: $t('ai.write.field.user'),
      field: 'userId',
      formatter: ({ cellValue }) => {
        return userList.find((user) => user.id === cellValue)?.nickname || '-';
      },
    },
    {
      field: 'type',
      title: $t('ai.write.field.type'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.AI_WRITE_TYPE },
      },
    },
    {
      field: 'platform',
      title: $t('ai.write.field.platform'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.AI_WRITE_TYPE },
      },
    },
    {
      field: 'model',
      title: $t('ai.write.field.model'),
      minWidth: 180,
    },
    {
      field: 'prompt',
      title: $t('ai.write.field.prompt'),
      minWidth: 180,
    },
    {
      field: 'generatedContent',
      title: $t('ai.write.field.generatedContent'),
      minWidth: 180,
    },
    {
      field: 'originalContent',
      title: $t('ai.write.field.originalContent'),
      minWidth: 180,
    },
    {
      field: 'length',
      title: $t('ai.write.field.length'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.AI_WRITE_LENGTH },
      },
    },
    {
      field: 'format',
      title: $t('ai.write.field.format'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.AI_WRITE_FORMAT },
      },
    },
    {
      field: 'tone',
      title: $t('ai.write.field.tone'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.AI_WRITE_TONE },
      },
    },
    {
      field: 'language',
      title: $t('ai.write.field.language'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.AI_WRITE_LANGUAGE },
      },
    },
    {
      field: 'createTime',
      title: $t('ai.write.field.createTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'errorMessage',
      title: $t('ai.write.field.errorMessage'),
      minWidth: 180,
    },
    {
      title: $t('common.operation'),
      width: 130,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
