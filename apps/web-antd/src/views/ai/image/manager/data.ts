import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { SystemUserApi } from '#/api/system/user';

import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

let userList: SystemUserApi.User[] = [];
async function getUserData() {
  userList = await getSimpleUserList();
}

getUserData();

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'userId',
      label: $t('ai.image.field.userId'),
      component: 'ApiSelect',
      componentProps: {
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [$t('ai.image.field.userId')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'platform',
      label: $t('ai.image.field.platform'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('ai.image.field.platform'),
        ]),
        allowClear: true,
        options: getDictOptions(DICT_TYPE.AI_PLATFORM, 'string'),
      },
    },
    {
      fieldName: 'status',
      label: $t('ai.image.field.status'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [$t('ai.image.field.status')]),
        allowClear: true,
        options: getDictOptions(DICT_TYPE.AI_IMAGE_STATUS, 'number'),
      },
    },
    {
      fieldName: 'publicStatus',
      label: $t('ai.image.field.publicStatus'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('ai.image.field.publicStatus'),
        ]),
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_BOOLEAN_STRING, 'boolean'),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('ai.image.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(
  onPublicStatusChange?: (
    newStatus: boolean,
    row: any,
  ) => PromiseLike<boolean | undefined>,
): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('ai.image.field.id'),
      minWidth: 180,
      fixed: 'left',
    },
    {
      field: 'picUrl',
      title: $t('ai.image.field.picUrl'),
      minWidth: 110,
      fixed: 'left',
      cellRender: {
        name: 'CellImage',
      },
    },
    {
      field: 'userId',
      title: $t('ai.image.field.user'),
      minWidth: 180,
      formatter: ({ cellValue }) =>
        userList.find((user) => user.id === cellValue)?.nickname || '-',
    },
    {
      field: 'platform',
      title: $t('ai.image.field.platform'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.AI_PLATFORM },
      },
    },
    {
      field: 'model',
      title: $t('ai.image.field.model'),
      minWidth: 180,
    },
    {
      field: 'status',
      title: $t('ai.image.field.status'),
      minWidth: 100,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.AI_IMAGE_STATUS },
      },
    },
    {
      minWidth: 100,
      title: $t('ai.image.field.publicStatus'),
      field: 'publicStatus',
      align: 'center',
      cellRender: {
        attrs: { beforeChange: onPublicStatusChange },
        name: 'CellSwitch',
        props: {
          checkedValue: true,
          unCheckedValue: false,
        },
      },
    },
    {
      field: 'prompt',
      title: $t('ai.image.field.prompt'),
      minWidth: 180,
    },
    {
      field: 'createTime',
      title: $t('ai.image.field.createTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'width',
      title: $t('ai.image.field.width'),
      minWidth: 180,
    },
    {
      field: 'height',
      title: $t('ai.image.field.height'),
      minWidth: 180,
    },
    {
      field: 'errorMessage',
      title: $t('ai.image.field.errorMessage'),
      minWidth: 180,
    },
    {
      field: 'taskId',
      title: $t('ai.image.field.taskId'),
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
