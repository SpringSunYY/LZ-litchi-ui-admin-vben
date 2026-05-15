import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { z } from '#/adapter/form';
import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import {
  CommonStatusEnum,
  DICT_TYPE,
  getDictOptions,
  getRangePickerDefaultProps,
  UserTypeEnum,
} from '#/utils';

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
      fieldName: 'name',
      label: $t('system.notify.template.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.notify.template.field.name'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'code',
      label: $t('system.notify.template.field.code'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.notify.template.field.code'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'nickname',
      label: $t('system.notify.template.field.nickname'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.notify.template.field.nickname'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'content',
      label: $t('system.notify.template.field.content'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.notify.template.field.content'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'type',
      label: $t('system.notify.template.field.type'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(
          DICT_TYPE.SYSTEM_NOTIFY_TEMPLATE_TYPE,
          'number',
        ),
        placeholder: $t('ui.placeholder.select', [
          $t('system.notify.template.field.type'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'status',
      label: $t('system.notify.template.field.status'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
    {
      fieldName: 'remark',
      label: $t('system.notify.template.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.notify.template.field.remark'),
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
      label: $t('system.notify.template.field.name'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.notify.template.field.name'),
        ]),
      },
    },
    {
      fieldName: 'code',
      label: $t('system.notify.template.field.code'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('system.notify.template.field.code'),
        ]),
      },
    },
    {
      fieldName: 'status',
      label: $t('system.notify.template.field.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.notify.template.field.status'),
        ]),
      },
    },
    {
      fieldName: 'type',
      label: $t('system.notify.template.field.type'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(
          DICT_TYPE.SYSTEM_NOTIFY_TEMPLATE_TYPE,
          'number',
        ),
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('system.notify.template.field.type'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('system.notify.template.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 发送站内信表单 */
export function useSendNotifyFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'content',
      label: $t('system.notify.template.field.content'),
      component: 'Textarea',
      componentProps: {
        disabled: true,
      },
    },
    {
      fieldName: 'templateCode',
      label: $t('system.notify.template.field.code'),
      component: 'Input',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'userType',
      label: $t('system.notify.message.field.userType'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.USER_TYPE, 'number'),
      },
      rules: z.number().default(UserTypeEnum.MEMBER),
    },
    {
      fieldName: 'userId',
      label: $t('system.notify.template.field.receiverId'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.notify.template.field.receiverId'),
        ]),
      },
      dependencies: {
        show(values) {
          return values.userType === UserTypeEnum.MEMBER;
        },
        triggerFields: ['userType'],
      },
      rules: 'required',
    },
    {
      fieldName: 'userId',
      label: $t('system.notify.template.field.receiver'),
      component: 'ApiSelect',
      componentProps: {
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
        placeholder: $t('ui.placeholder.select', [
          $t('system.notify.template.field.receiver'),
        ]),
      },
      dependencies: {
        show(values) {
          return values.userType === UserTypeEnum.ADMIN;
        },
        triggerFields: ['userType'],
      },
      rules: 'required',
    },
    {
      fieldName: 'templateParams',
      label: $t('system.notify.template.field.params'),
      component: 'Input',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('system.notify.template.field.id'),
    },
    {
      field: 'name',
      title: $t('system.notify.template.field.name'),
    },
    {
      field: 'code',
      title: $t('system.notify.template.field.code'),
    },
    {
      field: 'nickname',
      title: $t('system.notify.template.field.nickname'),
    },
    {
      field: 'content',
      title: $t('system.notify.template.field.content'),
    },
    {
      field: 'type',
      title: $t('system.notify.template.field.type'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_NOTIFY_TEMPLATE_TYPE },
      },
    },
    {
      field: 'status',
      title: $t('system.notify.template.field.status'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'remark',
      title: $t('system.notify.template.field.remark'),
    },
    {
      field: 'createTime',
      title: $t('system.notify.template.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 220,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
