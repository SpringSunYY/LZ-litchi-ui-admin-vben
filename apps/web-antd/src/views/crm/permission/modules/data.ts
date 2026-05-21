import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { BizTypeEnum, PermissionLevelEnum } from '#/api/crm/permission';
import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions } from '#/utils';

/** 转移表单 */
export function useTransferFormSchema(): VbenFormSchema[] {
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
      fieldName: 'newOwnerUserId',
      label: $t('crm.permission.field.newOwnerUserId'),
      component: 'ApiSelect',
      componentProps: {
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
      },
      rules: 'required',
    },
    {
      fieldName: 'oldOwnerHandler',
      label: $t('crm.permission.field.oldOwnerHandler'),
      component: 'RadioGroup',
      componentProps: {
        options: [
          {
            label: $t('crm.permission.field.add'),
            value: true,
          },
          {
            label: $t('crm.permission.field.remove'),
            value: false,
          },
        ],
      },
      rules: 'required',
    },
    {
      fieldName: 'oldOwnerPermissionLevel',
      label: $t('crm.permission.field.oldOwnerPermissionLevel'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(
          DICT_TYPE.CRM_PERMISSION_LEVEL,
          'number',
        ).filter((dict) => dict.value !== PermissionLevelEnum.OWNER),
      },
      dependencies: {
        triggerFields: ['oldOwnerHandler'],
        show: (values) => values.oldOwnerHandler,
        trigger(values) {
          if (!values.oldOwnerHandler) {
            values.oldOwnerPermissionLevel = undefined;
          }
        },
      },
      rules: 'required',
    },
    {
      fieldName: 'toBizTypes',
      label: $t('crm.permission.field.toBizTypes'),
      component: 'CheckboxGroup',
      componentProps: {
        options: [
          {
            label: $t('crm.permission.field.contact'),
            value: BizTypeEnum.CRM_CONTACT,
          },
          {
            label: $t('crm.permission.field.business'),
            value: BizTypeEnum.CRM_BUSINESS,
          },
          {
            label: $t('crm.permission.field.contract'),
            value: BizTypeEnum.CRM_CONTRACT,
          },
        ],
      },
    },
  ];
}

/** 新增/修改团队成员的表单 */
export function useFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'bizId',
      component: 'Input',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'ids',
      component: 'Input',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'userId',
      label: $t('crm.permission.field.userId'),
      component: 'ApiSelect',
      componentProps: {
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
      },
      dependencies: {
        triggerFields: ['ids'],
        show: (values) => {
          return values.ids === undefined;
        },
      },
    },
    {
      fieldName: 'level',
      label: $t('crm.permission.field.level'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(
          DICT_TYPE.CRM_PERMISSION_LEVEL,
          'number',
        ).filter((dict) => dict.value !== PermissionLevelEnum.OWNER),
      },
      rules: 'required',
    },
    {
      fieldName: 'bizType',
      label: $t('crm.permission.field.bizType'),
      component: 'RadioGroup',
      componentProps: {
        options: [
          {
            label: $t('crm.permission.field.contact'),
            value: BizTypeEnum.CRM_CONTACT,
          },
          {
            label: $t('crm.permission.field.business'),
            value: BizTypeEnum.CRM_BUSINESS,
          },
          {
            label: $t('crm.permission.field.contract'),
            value: BizTypeEnum.CRM_CONTRACT,
          },
        ],
      },
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'toBizTypes',
      label: $t('crm.permission.field.addTo'),
      component: 'CheckboxGroup',
      componentProps: {
        options: [
          {
            label: $t('crm.permission.field.contact'),
            value: BizTypeEnum.CRM_CONTACT,
          },
          {
            label: $t('crm.permission.field.business'),
            value: BizTypeEnum.CRM_BUSINESS,
          },
          {
            label: $t('crm.permission.field.contract'),
            value: BizTypeEnum.CRM_CONTRACT,
          },
        ],
      },
      dependencies: {
        triggerFields: ['ids', 'bizType'],
        show: (values) => {
          return (
            values.ids === undefined &&
            values.bizType === BizTypeEnum.CRM_CUSTOMER
          );
        },
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      type: 'checkbox',
      width: 50,
    },
    {
      field: 'nickname',
      title: $t('crm.permission.field.nickname'),
    },
    {
      field: 'deptName',
      title: $t('crm.permission.field.deptName'),
    },
    {
      field: 'postNames',
      title: $t('crm.permission.field.postNames'),
    },
    {
      field: 'level',
      title: $t('crm.permission.field.level'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.CRM_PERMISSION_LEVEL },
      },
    },
    {
      field: 'createTime',
      title: $t('crm.permission.field.createTime'),
      formatter: 'formatDateTime',
    },
  ];
}
