import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { DescriptionItemSchema } from '#/components/description';

import { h } from 'vue';

import { formatDateTime } from '@vben/utils';

import I18nDictTag from '#/components/i18n/i18n-dict-tag/i18n-dict-tag.vue';
import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

/** 详情页的头部字段 */
export function useDetailSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'customerName',
      label: $t('crm.contact.field.customerName'),
    },
    {
      field: 'post',
      label: $t('crm.contact.field.post'),
    },
    {
      field: 'mobile',
      label: $t('crm.contact.field.mobile'),
    },
    {
      field: 'contactNextTime',
      label: $t('crm.contact.field.contactNextTime'),
      content: (data) => formatDateTime(data?.contactNextTime) as string,
    },
  ];
}

/** 详情页的基本信息字段 */
export function useDetailBaseSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'name',
      label: $t('crm.contact.field.name'),
    },
    {
      field: 'customerName',
      label: $t('crm.contact.field.customerName'),
    },
    {
      field: 'mobile',
      label: $t('crm.contact.field.mobile'),
    },
    {
      field: 'telephone',
      label: $t('crm.contact.field.telephone'),
    },
    {
      field: 'email',
      label: $t('crm.contact.field.email'),
    },
    {
      field: 'qq',
      label: $t('crm.contact.field.qq'),
    },
    {
      field: 'wechat',
      label: $t('crm.contact.field.wechat'),
    },
    {
      field: 'areaName',
      label: $t('crm.contact.field.areaName'),
    },
    {
      field: 'detailAddress',
      label: $t('crm.contact.field.detailAddress'),
    },
    {
      field: 'post',
      label: $t('crm.contact.field.post'),
    },
    {
      field: 'parentName',
      label: $t('crm.contact.field.parentName'),
    },
    {
      field: 'master',
      label: $t('crm.contact.field.master'),
      content: (data) =>
        h(I18nDictTag, {
          type: DICT_TYPE.INFRA_BOOLEAN_STRING,
          value: data?.master,
        }),
    },
    {
      field: 'sex',
      label: $t('crm.contact.field.sex'),
      content: (data) =>
        h(I18nDictTag, { type: DICT_TYPE.SYSTEM_USER_SEX, value: data?.sex }),
    },
    {
      field: 'contactNextTime',
      label: $t('crm.contact.field.contactNextTime'),
      content: (data) => formatDateTime(data?.contactNextTime) as string,
    },
    {
      field: 'remark',
      label: $t('crm.contact.field.remark'),
    },
  ];
}

/** 详情列表的字段 */
export function useDetailListColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      type: 'checkbox',
      width: 50,
      fixed: 'left',
    },
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
        name: 'CellI18nDict',
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
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.INFRA_BOOLEAN_STRING },
      },
    },
  ];
}
