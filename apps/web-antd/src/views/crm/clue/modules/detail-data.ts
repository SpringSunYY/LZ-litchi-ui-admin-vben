import type { DescriptionItemSchema } from '#/components/description';

import { h } from 'vue';

import { formatDateTime } from '@vben/utils';

import { DictTag } from '#/components/dict-tag';
import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

/** 详情头部的配置 */
export function useDetailSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'source',
      label: $t('crm.clue.field.source'),
      content: (data) =>
        h(DictTag, {
          type: DICT_TYPE.CRM_CUSTOMER_SOURCE,
          value: data?.source,
        }),
    },
    {
      field: 'mobile',
      label: $t('crm.clue.field.mobile'),
    },
    {
      field: 'ownerUserName',
      label: $t('crm.clue.field.ownerUserName'),
    },
    {
      field: 'createTime',
      label: $t('crm.clue.field.createTime'),
      content: (data) => formatDateTime(data?.createTime) as string,
    },
  ];
}

/** 详情基本信息的配置 */
export function useDetailBaseSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'name',
      label: $t('crm.clue.field.name'),
    },
    {
      field: 'source',
      label: $t('crm.clue.field.customerSource'),
      content: (data) =>
        h(DictTag, {
          type: DICT_TYPE.CRM_CUSTOMER_SOURCE,
          value: data?.source,
        }),
    },
    {
      field: 'mobile',
      label: $t('crm.clue.field.mobile'),
    },
    {
      field: 'telephone',
      label: $t('crm.clue.field.telephone'),
    },
    {
      field: 'email',
      label: $t('crm.clue.field.email'),
    },
    {
      field: 'areaName',
      label: $t('crm.clue.field.areaName'),
      content: (data) => data?.areaName + data?.detailAddress,
    },
    {
      field: 'qq',
      label: $t('crm.clue.field.qq'),
    },
    {
      field: 'wechat',
      label: $t('crm.clue.field.wechat'),
    },
    {
      field: 'industryId',
      label: $t('crm.clue.field.industryId'),
      content: (data) =>
        h(DictTag, {
          type: DICT_TYPE.CRM_CUSTOMER_INDUSTRY,
          value: data?.industryId,
        }),
    },
    {
      field: 'level',
      label: $t('crm.clue.field.level'),
      content: (data) =>
        h(DictTag, {
          type: DICT_TYPE.CRM_CUSTOMER_LEVEL,
          value: data?.level,
        }),
    },
    {
      field: 'contactNextTime',
      label: $t('crm.clue.field.contactNextTime'),
      content: (data) => formatDateTime(data?.contactNextTime) as string,
    },
    {
      field: 'remark',
      label: $t('crm.clue.field.remark'),
    },
  ];
}
