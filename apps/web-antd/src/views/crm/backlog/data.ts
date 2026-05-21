import type { Ref } from 'vue';

import { $t } from '#/locales';

export interface LeftSideItem {
  name: string;
  menu: string;
  count: Ref<number>;
}

export const useFollowUpStatusOptions = () => [
  { label: $t('crm.backlog.option.followUpPending'), value: false },
  { label: $t('crm.backlog.option.followUpDone'), value: true },
];

export const useSceneTypeOptions = () => [
  { label: $t('crm.backlog.option.myResponsible'), value: 1 },
  { label: $t('crm.backlog.option.myParticipant'), value: 2 },
  { label: $t('crm.backlog.option.subordinateResponsible'), value: 3 },
];

export const useContactStatusOptions = () => [
  { label: $t('crm.backlog.option.todayToContact'), value: 1 },
  { label: $t('crm.backlog.option.overdue'), value: 2 },
  { label: $t('crm.backlog.option.contacted'), value: 3 },
];

export const useAuditStatusOptions = () => [
  { label: $t('crm.backlog.option.pendingApproval'), value: 10 },
  { label: $t('crm.backlog.option.approvalPassed'), value: 20 },
  { label: $t('crm.backlog.option.approvalRejected'), value: 30 },
];

export const useReceivableRemindTypeOptions = () => [
  { label: $t('crm.backlog.option.pendingReceivable'), value: 1 },
  { label: $t('crm.backlog.option.overdue'), value: 2 },
  { label: $t('crm.backlog.option.received'), value: 3 },
];

export const useContractExpiryTypeOptions = () => [
  { label: $t('crm.backlog.option.expiringSoon'), value: 1 },
  { label: $t('crm.backlog.option.expired'), value: 2 },
];

export const useLeftSides = (
  customerTodayContactCount: Ref<number>,
  clueFollowCount: Ref<number>,
  customerFollowCount: Ref<number>,
  customerPutPoolRemindCount: Ref<number>,
  contractAuditCount: Ref<number>,
  contractRemindCount: Ref<number>,
  receivableAuditCount: Ref<number>,
  receivablePlanRemindCount: Ref<number>,
): LeftSideItem[] => {
  return [
    {
      name: $t('crm.backlog.menu.customerTodayContact'),
      menu: 'customerTodayContact',
      count: customerTodayContactCount,
    },
    {
      name: $t('crm.backlog.menu.clueFollow'),
      menu: 'clueFollow',
      count: clueFollowCount,
    },
    {
      name: $t('crm.backlog.menu.customerFollow'),
      menu: 'customerFollow',
      count: customerFollowCount,
    },
    {
      name: $t('crm.backlog.menu.customerPutPoolRemind'),
      menu: 'customerPutPoolRemind',
      count: customerPutPoolRemindCount,
    },
    {
      name: $t('crm.backlog.menu.contractAudit'),
      menu: 'contractAudit',
      count: contractAuditCount,
    },
    {
      name: $t('crm.backlog.menu.receivableAudit'),
      menu: 'receivableAudit',
      count: receivableAuditCount,
    },
    {
      name: $t('crm.backlog.menu.receivablePlanRemind'),
      menu: 'receivablePlanRemind',
      count: receivablePlanRemindCount,
    },
    {
      name: $t('crm.backlog.menu.contractRemind'),
      menu: 'contractRemind',
      count: contractRemindCount,
    },
  ];
};
