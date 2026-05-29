import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { SystemUserApi } from '#/api/system/user';

import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import { getRangePickerDefaultProps } from '#/utils';

/** 关联数据 */
let userList: SystemUserApi.User[] = [];
getSimpleUserList().then((data) => (userList = data));

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'userId',
      label: $t('ai.mindmap.field.user'),
      component: 'ApiSelect',
      componentProps: {
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [$t('ai.mindmap.field.user')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'prompt',
      label: $t('ai.mindmap.field.prompt'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.mindmap.field.prompt'),
        ]),
        clearable: true,
      },
    },
    {
      fieldName: 'createTime',
      label: $t('ai.mindmap.field.createTime'),
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
      title: $t('ai.mindmap.field.id'),
      minWidth: 180,
      fixed: 'left',
    },
    {
      field: 'userId',
      title: $t('ai.mindmap.field.user'),
      minWidth: 180,
      formatter: ({ cellValue }) =>
        userList.find((user) => user.id === cellValue)?.nickname || '-',
    },
    {
      field: 'prompt',
      title: $t('ai.mindmap.field.prompt'),
      minWidth: 180,
    },
    {
      field: 'generatedContent',
      title: $t('ai.mindmap.field.generatedContent'),
      minWidth: 300,
    },
    {
      field: 'model',
      title: $t('ai.mindmap.field.model'),
      minWidth: 180,
    },
    {
      field: 'createTime',
      title: $t('ai.mindmap.field.createTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'errorMessage',
      title: $t('ai.mindmap.field.errorMessage'),
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
