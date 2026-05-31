import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { SystemUserApi } from '#/api/system/user';

import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import { DICT_TYPE, getRangePickerDefaultProps } from '#/utils';

/** 关联数据 */
let userList: SystemUserApi.User[] = [];
getSimpleUserList().then((data) => (userList = data));

/** 列表的搜索表单 */
export function useGridFormSchemaConversation(): VbenFormSchema[] {
  return [
    {
      fieldName: 'userId',
      label: $t('ai.chat.conversation.field.userId'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.chat.conversation.field.userId'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'title',
      label: $t('ai.chat.conversation.field.title'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.chat.conversation.field.title'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'createTime',
      label: $t('ai.chat.conversation.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumnsConversation(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('ai.chat.conversation.field.id'),
      fixed: 'left',
      minWidth: 180,
    },
    {
      field: 'title',
      title: $t('ai.chat.conversation.field.title'),
      minWidth: 180,
      fixed: 'left',
    },
    {
      title: $t('ai.chat.conversation.field.user'),
      minWidth: 180,
      field: 'userId',
      formatter: ({ cellValue }) => {
        if (cellValue === 0) {
          return $t('ai.chat.conversation.field.system');
        }
        return userList.find((user) => user.id === cellValue)?.nickname || '-';
      },
    },
    {
      field: 'roleName',
      title: $t('ai.chat.conversation.field.roleName'),
      minWidth: 180,
    },
    {
      field: 'model',
      title: $t('ai.chat.conversation.field.model'),
      minWidth: 180,
    },
    {
      field: 'messageCount',
      title: $t('ai.chat.conversation.field.messageCount'),
      minWidth: 180,
    },
    {
      field: 'createTime',
      title: $t('ai.chat.conversation.field.createTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'temperature',
      title: $t('ai.chat.conversation.field.temperature'),
      minWidth: 80,
    },
    {
      title: $t('ai.chat.conversation.field.maxTokens'),
      field: 'maxTokens',
      minWidth: 120,
    },
    {
      title: $t('ai.chat.conversation.field.maxContexts'),
      field: 'maxContexts',
      minWidth: 120,
    },
    {
      title: $t('common.operation'),
      width: 130,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchemaMessage(): VbenFormSchema[] {
  return [
    {
      fieldName: 'conversationId',
      label: $t('ai.chat.message.field.conversationId'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.chat.message.field.conversationId'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'userId',
      label: $t('ai.chat.message.field.userId'),
      component: 'ApiSelect',
      componentProps: {
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [
          $t('ai.chat.message.field.userId'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'createTime',
      label: $t('ai.chat.message.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumnsMessage(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('ai.chat.message.field.id'),
      fixed: 'left',
      minWidth: 180,
    },
    {
      field: 'conversationId',
      title: $t('ai.chat.message.field.conversationId'),
      minWidth: 180,
      fixed: 'left',
    },
    {
      title: $t('ai.chat.message.field.user'),
      minWidth: 180,
      field: 'userId',
      formatter: ({ cellValue }) =>
        userList.find((user) => user.id === cellValue)?.nickname || '-',
    },
    {
      field: 'roleName',
      title: $t('ai.chat.message.field.roleName'),
      minWidth: 180,
    },
    {
      field: 'type',
      title: $t('ai.chat.message.field.type'),
      minWidth: 100,
    },
    {
      field: 'model',
      title: $t('ai.chat.message.field.model'),
      minWidth: 180,
    },
    {
      field: 'content',
      title: $t('ai.chat.message.field.content'),
      minWidth: 300,
    },
    {
      field: 'createTime',
      title: $t('ai.chat.message.field.createTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      field: 'replyId',
      title: $t('ai.chat.message.field.replyId'),
      minWidth: 180,
    },
    {
      title: $t('ai.chat.message.field.useContext'),
      field: 'useContext',
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.INFRA_BOOLEAN_STRING },
      },
      minWidth: 100,
    },
    {
      title: $t('common.operation'),
      width: 130,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
