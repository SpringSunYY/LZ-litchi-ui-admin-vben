import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { getAreaTree } from '#/api/infra/area';
import { getSimpleUserList } from '#/api/system/user';
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
      fieldName: 'name',
      label: $t('crm.customer.field.name'),
      component: 'Input',
      rules: 'required',
    },
    {
      fieldName: 'source',
      label: $t('crm.customer.field.source'),
      component: 'I18nSelect',
      componentProps: {
        options: getDictOptions(DICT_TYPE.CRM_CUSTOMER_SOURCE),
      },
      rules: 'required',
    },
    {
      fieldName: 'mobile',
      label: $t('crm.customer.field.mobile'),
      component: 'Input',
    },
    {
      fieldName: 'ownerUserId',
      label: $t('crm.customer.field.ownerUserId'),
      component: 'ApiSelect',
      componentProps: {
        api: () => getSimpleUserList(),
        fieldNames: {
          label: 'nickname',
          value: 'id',
        },
      },
      rules: 'required',
    },
    {
      fieldName: 'telephone',
      label: $t('crm.customer.field.telephone'),
      component: 'Input',
    },
    {
      fieldName: 'email',
      label: $t('crm.customer.field.email'),
      component: 'Input',
    },
    {
      fieldName: 'wechat',
      label: $t('crm.customer.field.wechat'),
      component: 'Input',
    },
    {
      fieldName: 'qq',
      label: $t('crm.customer.field.qq'),
      component: 'Input',
    },
    {
      fieldName: 'industryId',
      label: $t('crm.customer.field.industryId'),
      component: 'I18nSelect',
      componentProps: {
        options: getDictOptions(DICT_TYPE.CRM_CUSTOMER_INDUSTRY),
      },
    },
    {
      fieldName: 'level',
      label: $t('crm.customer.field.level'),
      component: 'I18nSelect',
      componentProps: {
        options: getDictOptions(DICT_TYPE.CRM_CUSTOMER_LEVEL),
      },
    },
    {
      fieldName: 'areaCode',
      label: $t('crm.customer.field.areaCode'),
      component: 'ApiTreeSelect',
      componentProps: {
        api: () => getAreaTree(),
        fieldNames: { label: 'name', value: 'code', children: 'children' },
      },
    },
    {
      fieldName: 'detailAddress',
      label: $t('crm.customer.field.detailAddress'),
      component: 'Input',
    },
    {
      fieldName: 'contactNextTime',
      label: $t('crm.customer.field.contactNextTime'),
      component: 'DatePicker',
      componentProps: {
        showTime: true,
        format: 'YYYY-MM-DD HH:mm:ss',
        valueFormat: 'x',
      },
    },
    {
      fieldName: 'remark',
      label: $t('crm.customer.field.remark'),
      component: 'Textarea',
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('crm.customer.field.name'),
      component: 'Input',
    },
    {
      fieldName: 'mobile',
      label: $t('crm.customer.field.mobile'),
      component: 'Input',
    },
    {
      fieldName: 'telephone',
      label: $t('crm.customer.field.telephone'),
      component: 'Input',
    },
    {
      fieldName: 'createTime',
      label: $t('crm.customer.field.createTime'),
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
      field: 'name',
      title: $t('crm.customer.field.name'),
      fixed: 'left',
      slots: {
        default: 'name',
      },
    },
    {
      field: 'source',
      title: $t('crm.customer.field.source'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_CUSTOMER_SOURCE },
      },
    },
    {
      field: 'mobile',
      title: $t('crm.customer.field.mobile'),
    },
    {
      field: 'telephone',
      title: $t('crm.customer.field.telephone'),
    },
    {
      field: 'email',
      title: $t('crm.customer.field.email'),
    },
    {
      field: 'detailAddress',
      title: $t('crm.customer.field.detailAddress'),
    },
    {
      field: 'industryId',
      title: $t('crm.customer.field.industryId'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_CUSTOMER_INDUSTRY },
      },
    },
    {
      field: 'level',
      title: $t('crm.customer.field.level'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_CUSTOMER_LEVEL },
      },
    },
    {
      field: 'ownerUserName',
      title: $t('crm.customer.field.ownerUserName'),
    },
    {
      field: 'ownerUserDeptName',
      title: $t('crm.customer.field.ownerUserDeptName'),
    },
    {
      field: 'contactNextTime',
      title: $t('crm.customer.field.contactNextTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'contactLastTime',
      title: $t('crm.customer.field.contactLastTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'updateTime',
      title: $t('crm.customer.field.updateTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'createTime',
      title: $t('crm.customer.field.createTime'),
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
