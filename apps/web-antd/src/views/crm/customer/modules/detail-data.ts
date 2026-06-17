import type { DescriptionItemSchema } from '#/components/description';

import { h } from 'vue';

import { formatDateTime } from '@vben/utils';

import I18nDictTag from '#/components/i18n/i18n-dict-tag/i18n-dict-tag.vue';
import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

/** 详情页的字段 */
export function useDetailSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'level',
      label: $t('crm.customer.field.level'),
      content: (data) =>
        h(I18nDictTag, {
          type: DICT_TYPE.CRM_CUSTOMER_LEVEL,
          value: data?.level,
        }),
    },
    {
      field: 'dealStatus',
      label: $t('crm.customer.field.dealStatus'),
      content: (data) =>
        data.dealStatus
          ? $t('crm.customer.message.dealYes')
          : $t('crm.customer.message.dealNo'),
    },
    {
      field: 'createTime',
      label: $t('crm.customer.field.createTime'),
      content: (data) => formatDateTime(data?.createTime) as string,
    },
  ];
}

/** 详情页的基础字段 */
export function useDetailBaseSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'name',
      label: $t('crm.customer.field.name'),
    },
    {
      field: 'source',
      label: $t('crm.customer.field.source'),
      content: (data) =>
        h(I18nDictTag, {
          type: DICT_TYPE.CRM_CUSTOMER_SOURCE,
          value: data?.source,
        }),
    },
    {
      field: 'mobile',
      label: $t('crm.customer.field.mobile'),
    },
    {
      field: 'telephone',
      label: $t('crm.customer.field.telephone'),
    },
    {
      field: 'email',
      label: $t('crm.customer.field.email'),
    },
    {
      field: 'areaName',
      label: $t('crm.customer.field.areaName'),
    },
    {
      field: 'detailAddress',
      label: $t('crm.customer.field.detailAddress'),
    },
    {
      field: 'qq',
      label: $t('crm.customer.field.qq'),
    },
    {
      field: 'wechat',
      label: $t('crm.customer.field.wechat'),
    },
    {
      field: 'industryId',
      label: $t('crm.customer.field.industryId'),
      content: (data) =>
        h(I18nDictTag, {
          type: DICT_TYPE.CRM_CUSTOMER_INDUSTRY,
          value: data?.industryId,
        }),
    },
    {
      field: 'level',
      label: $t('crm.customer.field.level'),
      content: (data) =>
        h(I18nDictTag, {
          type: DICT_TYPE.CRM_CUSTOMER_LEVEL,
          value: data?.level,
        }),
    },
    {
      field: 'contactNextTime',
      label: $t('crm.customer.field.contactNextTime'),
      content: (data) => formatDateTime(data?.contactNextTime) as string,
    },
    {
      field: 'remark',
      label: $t('crm.customer.field.remark'),
    },
  ];
}
