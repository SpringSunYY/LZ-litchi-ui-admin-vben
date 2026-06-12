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
      label: $t('crm.clue.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('crm.clue.field.name')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'source',
      label: $t('crm.clue.field.customerSource'),
      component: 'I18nSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('crm.clue.field.customerSource'),
        ]),
        options: getDictOptions(DICT_TYPE.CRM_CUSTOMER_SOURCE, 'number'),
      },
      rules: 'required',
    },
    {
      fieldName: 'mobile',
      label: $t('crm.clue.field.mobile'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('crm.clue.field.mobile')]),
      },
    },
    {
      fieldName: 'ownerUserId',
      label: $t('crm.clue.field.ownerUserId'),
      component: 'ApiSelect',
      componentProps: {
        api: getSimpleUserList,
        labelField: 'nickname',
        valueField: 'id',
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('crm.clue.field.ownerUserId'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'telephone',
      label: $t('crm.clue.field.telephone'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.clue.field.telephone'),
        ]),
      },
    },
    {
      fieldName: 'email',
      label: $t('crm.clue.field.email'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('crm.clue.field.email')]),
      },
    },
    {
      fieldName: 'wechat',
      label: $t('crm.clue.field.wechat'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('crm.clue.field.wechat')]),
      },
    },
    {
      fieldName: 'qq',
      label: $t('crm.clue.field.qq'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('crm.clue.field.qq')]),
      },
    },
    {
      fieldName: 'industryId',
      label: $t('crm.clue.field.industryId'),
      component: 'I18nSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('crm.clue.field.industryId'),
        ]),
        options: getDictOptions(DICT_TYPE.CRM_CUSTOMER_INDUSTRY, 'number'),
      },
    },
    {
      fieldName: 'level',
      label: $t('crm.clue.field.level'),
      component: 'I18nSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [$t('crm.clue.field.level')]),
        options: getDictOptions(DICT_TYPE.CRM_CUSTOMER_LEVEL, 'number'),
      },
    },
    {
      fieldName: 'areaCode',
      label: $t('crm.clue.field.areaCode'),
      component: 'ApiTreeSelect',
      componentProps: {
        api: () => getAreaTree(),
        fieldNames: { label: 'name', value: 'code', children: 'children' },
        placeholder: $t('ui.placeholder.select', [
          $t('crm.clue.field.areaCode'),
        ]),
      },
    },
    {
      fieldName: 'detailAddress',
      label: $t('crm.clue.field.detailAddress'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.clue.field.detailAddress'),
        ]),
      },
    },
    {
      fieldName: 'contactNextTime',
      label: $t('crm.clue.field.contactNextTime'),
      component: 'DatePicker',
      componentProps: {
        showTime: true,
        format: 'YYYY-MM-DD HH:mm:ss',
        valueFormat: 'x',
        placeholder: $t('ui.placeholder.date', [
          $t('crm.clue.field.contactNextTime'),
        ]),
      },
    },
    {
      fieldName: 'remark',
      label: $t('crm.clue.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('crm.clue.field.remark')]),
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('crm.clue.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('crm.clue.field.name')]),
      },
    },
    {
      fieldName: 'transformStatus',
      label: $t('crm.clue.field.transformStatus'),
      component: 'I18nSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('crm.clue.field.transformStatus'),
        ]),
        options: [
          { label: $t('crm.clue.option.transformNo'), value: false },
          { label: $t('crm.clue.option.transformYes'), value: true },
        ],
      },
    },
    {
      fieldName: 'mobile',
      label: $t('crm.clue.field.mobile'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('crm.clue.field.mobile')]),
      },
    },
    {
      fieldName: 'telephone',
      label: $t('crm.clue.field.telephone'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('crm.clue.field.telephone'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('crm.clue.field.createTime'),
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
      title: $t('crm.clue.field.name'),
      fixed: 'left',
      slots: {
        default: 'name',
      },
    },
    {
      field: 'source',
      title: $t('crm.clue.field.source'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_CUSTOMER_SOURCE },
      },
    },
    {
      field: 'mobile',
      title: $t('crm.clue.field.mobile'),
    },
    {
      field: 'telephone',
      title: $t('crm.clue.field.telephone'),
    },
    {
      field: 'email',
      title: $t('crm.clue.field.email'),
    },
    {
      field: 'detailAddress',
      title: $t('crm.clue.field.areaName'),
    },
    {
      field: 'industryId',
      title: $t('crm.clue.field.industryId'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_CUSTOMER_INDUSTRY },
      },
    },
    {
      field: 'level',
      title: $t('crm.clue.field.level'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.CRM_CUSTOMER_LEVEL },
      },
    },
    {
      field: 'ownerUserName',
      title: $t('crm.clue.field.ownerUserName'),
    },
    {
      field: 'ownerUserDeptName',
      title: $t('crm.clue.field.ownerUserDeptName'),
    },
    {
      field: 'contactNextTime',
      title: $t('crm.clue.field.contactNextTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'contactLastTime',
      title: $t('crm.clue.field.contactLastTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'updateTime',
      title: $t('crm.clue.field.updateTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'createTime',
      title: $t('crm.clue.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      field: 'creatorName',
      title: $t('crm.clue.field.creatorName'),
    },
    {
      title: $t('common.operation'),
      width: 140,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
