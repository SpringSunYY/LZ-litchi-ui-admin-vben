import type { VbenFormSchema } from '@vben/common-ui';

import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { handleTree } from '@vben/utils';

import { LimitConfType } from '#/api/crm/customer/limitConfig';
import { getSimpleDeptList } from '#/api/system/dept';
import { getSimpleUserList } from '#/api/system/user';
import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

/** 新增/修改的表单 */
export function useFormSchema(confType: LimitConfType): VbenFormSchema[] {
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
      fieldName: 'userIds',
      label: $t('crm.customerLimitConfig.field.userIds'),
      component: 'ApiSelect',
      componentProps: {
        api: getSimpleUserList,
        fieldNames: {
          label: 'nickname',
          value: 'id',
        },
        mode: 'tags',
        allowClear: true,
      },
      rules: 'required',
    },
    {
      fieldName: 'deptIds',
      label: $t('crm.customerLimitConfig.field.deptIds'),
      component: 'ApiTreeSelect',
      componentProps: {
        api: async () => {
          const data = await getSimpleDeptList();
          return handleTree(data);
        },
        multiple: true,
        fieldNames: { label: 'name', value: 'id', children: 'children' },
        placeholder: $t('ui.placeholder.select', [
          $t('crm.customerLimitConfig.field.deptIds'),
        ]),
        treeDefaultExpandAll: true,
      },
      rules: 'required',
    },
    {
      fieldName: 'maxCount',
      label:
        confType === LimitConfType.CUSTOMER_QUANTITY_LIMIT
          ? $t('crm.customerLimitConfig.field.ownerCustomerCountLimit')
          : $t('crm.customerLimitConfig.field.lockCustomerCountLimit'),
      component: 'InputNumber',
    },
    {
      fieldName: 'dealCountEnabled',
      label: $t('crm.customerLimitConfig.field.dealCountOccupied'),
      component: 'I18nRadioGroup',
      componentProps: {
        options: [
          { label: $t('crm.customerLimitConfig.field.yes'), value: true },
          { label: $t('crm.customerLimitConfig.field.no'), value: false },
        ],
      },
      dependencies: {
        triggerFields: [''],
        show: () => confType === LimitConfType.CUSTOMER_QUANTITY_LIMIT,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(
  confType: LimitConfType,
): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('crm.customerLimitConfig.field.id'),
      fixed: 'left',
    },
    {
      field: 'users',
      title: $t('crm.customerLimitConfig.field.userIds'),
      formatter: ({ cellValue }) => {
        return cellValue
          .map((user: any) => {
            return user.nickname;
          })
          .join(',');
      },
    },
    {
      field: 'depts',
      title: $t('crm.customerLimitConfig.field.deptIds'),
      formatter: ({ cellValue }) => {
        return cellValue
          .map((dept: any) => {
            return dept.name;
          })
          .join(',');
      },
    },
    {
      field: 'maxCount',
      title:
        confType === LimitConfType.CUSTOMER_QUANTITY_LIMIT
          ? $t('crm.customerLimitConfig.field.ownerCustomerCountLimit')
          : $t('crm.customerLimitConfig.field.lockCustomerCountLimit'),
    },
    {
      field: 'dealCountEnabled',
      title: $t('crm.customerLimitConfig.field.dealCountOccupied'),
      visible: confType === LimitConfType.CUSTOMER_QUANTITY_LIMIT,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.INFRA_BOOLEAN_STRING },
      },
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
