import { $t } from '#/locales';

import { APPROVE_TYPE, ApproveType, TimeUnitType } from '../../consts';

/** 获取条件节点默认的名称 */
export function getDefaultConditionNodeName(
  index: number,
  defaultFlow: boolean | undefined,
): string {
  if (defaultFlow) {
    return $t('bpm.simpleProcessDesign.action.conditionDefaultOther');
  }
  return `${$t('bpm.simpleProcessDesign.action.conditionRulePrefix').replace('：', '')}${index + 1}`;
}

/** 获取包容分支条件节点默认的名称 */
export function getDefaultInclusiveConditionNodeName(
  index: number,
  defaultFlow: boolean | undefined,
): string {
  if (defaultFlow) {
    return $t('bpm.simpleProcessDesign.action.conditionDefaultOther');
  }
  return $t('bpm.simpleProcessDesign.action.conditionInclusiveOther', [
    String(index + 1),
  ]);
}

/** 转换时间单位字符串为枚举值 */
export function convertTimeUnit(strTimeUnit: string) {
  if (strTimeUnit === 'M') {
    return TimeUnitType.MINUTE;
  }
  if (strTimeUnit === 'H') {
    return TimeUnitType.HOUR;
  }
  if (strTimeUnit === 'D') {
    return TimeUnitType.DAY;
  }
  return TimeUnitType.HOUR;
}

/**
 * 根据审批类型获取对应的 i18n key label。
 * 调用方负责通过 $t 翻译为用户可见文本。
 */
export function getApproveTypeText(approveType: ApproveType): string {
  const item = APPROVE_TYPE.find((opt) => opt.value === approveType);
  return item?.label ?? '';
}
