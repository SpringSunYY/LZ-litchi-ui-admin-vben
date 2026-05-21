import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { getSimpleContactList } from '#/api/crm/contact';
import { getCustomerSimpleList } from '#/api/crm/customer';
import { getAreaTree } from '#/api/system/area';
import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions } from '#/utils';

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
      label: $t('crm.contact.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('crm.contact.field.name')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'ownerUserId',
      label: $t('crm.contact.field.ownerUserId'),
      component: 'ApiSelect',
      componentProps: {
        api: () => getSimpleUserList(),
        fieldNames: {
          label: 'nickname',
          value: 'id',
        },
        placeholder: $t('ui.placeholder.select', [
          $t('crm.contact.field.ownerUserId'),
        ]),
      },
    },
    {
      fieldName: 'customerId',
      label: $t('crm.contact.field.customerName'),
      component: 'ApiSelect',
      componentProps: {
        api: () => getCustomerSimpleList(),
        fieldNames: {
          label: 'name',
          value: 'id',
        },
        placeholder: $t('ui.placeholder.select', [
          $t('crm.contact.field.customerName'),
        ]),
      },
    },
    {
      fieldName: 'mobile',
      label: $t('crm.contact.field.mobile'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.contact.field.mobile'),
        ]),
      },
    },
    {
      fieldName: 'telephone',
      label: $t('crm.contact.field.telephone'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.contact.field.telephone'),
        ]),
      },
    },
    {
      fieldName: 'email',
      label: $t('crm.contact.field.email'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.contact.field.email'),
        ]),
      },
    },
    {
      fieldName: 'wechat',
      label: $t('crm.contact.field.wechat'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.contact.field.wechat'),
        ]),
      },
    },
    {
      fieldName: 'qq',
      label: $t('crm.contact.field.qq'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('crm.contact.field.qq')]),
      },
    },
    {
      fieldName: 'post',
      label: $t('crm.contact.field.post'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('crm.contact.field.post')]),
      },
    },
    {
      fieldName: 'master',
      label: $t('crm.contact.field.master'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('crm.contact.field.master'),
        ]),
        options: getDictOptions(DICT_TYPE.INFRA_BOOLEAN_STRING, 'boolean'),
      },
    },
    {
      fieldName: 'sex',
      label: $t('crm.contact.field.sex'),
      component: 'Select',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [$t('crm.contact.field.sex')]),
        options: getDictOptions(DICT_TYPE.SYSTEM_USER_SEX, 'number'),
      },
    },
    {
      fieldName: 'parentId',
      label: $t('crm.contact.field.parentId'),
      component: 'ApiSelect',
      componentProps: {
        api: () => getSimpleContactList(),
        fieldNames: {
          label: 'name',
          value: 'id',
        },
        placeholder: $t('ui.placeholder.select', [
          $t('crm.contact.field.parentId'),
        ]),
      },
    },
    {
      fieldName: 'areaId',
      label: $t('crm.contact.field.areaId'),
      component: 'ApiTreeSelect',
      componentProps: {
        api: () => getAreaTree(),
        fieldNames: { label: 'name', value: 'id', children: 'children' },
        placeholder: $t('ui.placeholder.select', [
          $t('crm.contact.field.areaId'),
        ]),
      },
    },
    {
      fieldName: 'detailAddress',
      label: $t('crm.contact.field.detailAddress'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.contact.field.detailAddress'),
        ]),
      },
    },
    {
      fieldName: 'contactNextTime',
      label: $t('crm.contact.field.contactNextTime'),
      component: 'DatePicker',
      componentProps: {
        showTime: true,
        format: 'YYYY-MM-DD HH:mm:ss',
        valueFormat: 'x',
        placeholder: $t('ui.placeholder.date', [
          $t('crm.contact.field.contactNextTime'),
        ]),
      },
    },
    {
      fieldName: 'remark',
      label: $t('crm.contact.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.contact.field.remark'),
        ]),
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'customerId',
      label: $t('crm.contact.field.customerName'),
      component: 'ApiSelect',
      componentProps: {
        api: () => getCustomerSimpleList(),
        fieldNames: {
          label: 'name',
          value: 'id',
        },
      },
    },
    {
      fieldName: 'name',
      label: $t('crm.contact.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('crm.contact.field.name')]),
      },
    },
    {
      fieldName: 'mobile',
      label: $t('crm.contact.field.mobile'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.contact.field.mobile'),
        ]),
      },
    },
    {
      fieldName: 'telephone',
      label: $t('crm.contact.field.telephone'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.contact.field.telephone'),
        ]),
      },
    },
    {
      fieldName: 'wechat',
      label: $t('crm.contact.field.wechat'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.contact.field.wechat'),
        ]),
      },
    },
    {
      fieldName: 'email',
      label: $t('crm.contact.field.email'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.contact.field.email'),
        ]),
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'name',
      title: $t('crm.contact.field.name'),
      fixed: 'left',
      slots: { default: 'name' },
    },
    {
      field: 'customerName',
      title: $t('crm.contact.field.customerName'),
      fixed: 'left',
      slots: { default: 'customerName' },
    },
    {
      field: 'sex',
      title: $t('crm.contact.field.sex'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_USER_SEX },
      },
    },
    {
      field: 'mobile',
      title: $t('crm.contact.field.mobile'),
    },
    {
      field: 'telephone',
      title: $t('crm.contact.field.telephone'),
    },
    {
      field: 'email',
      title: $t('crm.contact.field.email'),
    },
    {
      field: 'post',
      title: $t('crm.contact.field.post'),
    },
    {
      field: 'detailAddress',
      title: $t('crm.contact.field.areaName'),
    },
    {
      field: 'master',
      title: $t('crm.contact.field.master'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_BOOLEAN_STRING },
      },
    },
    {
      field: 'parentId',
      title: $t('crm.contact.field.parentId'),
      slots: { default: 'parentId' },
    },
    {
      field: 'ownerUserName',
      title: $t('crm.contact.field.ownerUserName'),
    },
    {
      field: 'ownerUserDeptName',
      title: $t('crm.contact.field.ownerUserDeptName'),
    },
    {
      field: 'contactNextTime',
      title: $t('crm.contact.field.contactNextTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'remark',
      title: $t('crm.contact.field.remark'),
    },
    {
      field: 'createTime',
      title: $t('crm.contact.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'updateTime',
      title: $t('crm.contact.field.updateTime'),
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 180,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
