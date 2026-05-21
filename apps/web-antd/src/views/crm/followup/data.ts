import type { DescriptionItemSchema } from '#/components/description';

import { formatDateTime } from '@vben/utils';

import { $t } from '#/locales';

/** 详情页的系统字段 */
export function useFollowUpDetailSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'ownerUserName',
      label: $t('crm.followup.field.ownerUserName'),
    },
    {
      field: 'contactLastContent',
      label: $t('crm.followup.field.contactLastContent'),
    },
    {
      field: 'contactLastTime',
      label: $t('crm.followup.field.contactLastTime'),
      content: (data) => formatDateTime(data?.contactLastTime) as string,
    },
    {
      field: 'creatorName',
      label: $t('crm.followup.field.creator'),
    },
    {
      field: 'createTime',
      label: $t('crm.followup.field.createTime'),
      content: (data) => formatDateTime(data?.createTime) as string,
    },
    {
      field: 'updateTime',
      label: $t('crm.followup.field.updateTime'),
      content: (data) => formatDateTime(data?.updateTime) as string,
    },
  ];
}
