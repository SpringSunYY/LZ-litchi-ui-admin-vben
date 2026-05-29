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
      label: $t('ai.music.field.userId'),
      component: 'ApiSelect',
      componentProps: {
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [$t('ai.music.field.userId')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'title',
      label: $t('ai.music.field.title'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('ai.music.field.title')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'status',
      label: $t('ai.music.field.status'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [$t('ai.music.field.status')]),
        allowClear: true,
        options: getDictOptions(DICT_TYPE.AI_MUSIC_STATUS, 'number'),
      },
    },
    {
      fieldName: 'generateMode',
      label: $t('ai.music.field.generateMode'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('ai.music.field.generateMode'),
        ]),
        allowClear: true,
        options: getDictOptions(DICT_TYPE.AI_GENERATE_MODE, 'number'),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('ai.music.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
    {
      fieldName: 'publicStatus',
      label: $t('ai.music.field.publicStatus'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('ai.music.field.publicStatus'),
        ]),
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_BOOLEAN_STRING, 'boolean'),
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
      title: $t('ai.music.field.id'),
      minWidth: 180,
      fixed: 'left',
    },
    {
      title: $t('ai.music.field.title'),
      minWidth: 180,
      fixed: 'left',
      field: 'title',
    },
    {
      minWidth: 180,
      title: $t('ai.music.field.user'),
      field: 'userId',
      formatter: ({ cellValue }) => {
        return userList.find((user) => user.id === cellValue)?.nickname || '-';
      },
    },
    {
      field: 'status',
      title: $t('ai.music.field.status'),
      minWidth: 100,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.AI_MUSIC_STATUS },
      },
    },
    {
      field: 'model',
      title: $t('ai.music.field.model'),
      minWidth: 180,
    },
    {
      title: $t('ai.music.field.content'),
      minWidth: 180,
      slots: { default: 'content' },
    },
    {
      field: 'duration',
      title: $t('ai.music.field.duration'),
      minWidth: 100,
    },
    {
      field: 'prompt',
      title: $t('ai.music.field.prompt'),
      minWidth: 180,
    },
    {
      field: 'lyric',
      title: $t('ai.music.field.lyric'),
      minWidth: 180,
    },
    {
      field: 'gptDescriptionPrompt',
      title: $t('ai.music.field.gptDescriptionPrompt'),
      minWidth: 180,
    },
    {
      field: 'generateMode',
      title: $t('ai.music.field.generateMode'),
      minWidth: 100,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.AI_GENERATE_MODE },
      },
    },
    {
      field: 'tags',
      title: $t('ai.music.field.tags'),
      minWidth: 180,
      cellRender: {
        name: 'CellTags',
      },
    },
    {
      minWidth: 100,
      title: $t('ai.music.field.publicStatus'),
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
      field: 'taskId',
      title: $t('ai.music.field.taskId'),
      minWidth: 180,
    },
    {
      field: 'errorMessage',
      title: $t('ai.music.field.errorMessage'),
      minWidth: 180,
    },
    {
      field: 'createTime',
      title: $t('ai.music.field.createTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 130,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
