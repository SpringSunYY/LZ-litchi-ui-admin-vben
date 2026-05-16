/**
 * Internationalization composable for simple-process-design component.
 * Provides reactive localized dictionaries for BPM process designer.
 *
 * Usage in <script setup>:
 *   const { NODE_DEFAULT_TEXT, CANDIDATE_STRATEGY } = useSimpleProcessDesignLocale();
 *
 * Usage in templates (via getLocale()):
 *   {{ getLocale().NODE_DEFAULT_TEXT.get(nodeType) }}
 *   {{ getLocale().CANDIDATE_STRATEGY[index].label }}
 *
 * Direct import in <script setup> (non-reactive, zh-CN fallback):
 *   import { NODE_DEFAULT_TEXT, ... } from './locales/simple-process-design'; // NOT i18n-aware
 */
import { computed } from 'vue';

import { $t } from '#/locales';
import { BpmNodeTypeEnum } from '#/utils';

import {
  ApproveMethodType,
  ApproveType,
  CandidateStrategy,
  ChildProcessMultiInstanceSourceTypeEnum,
  ChildProcessStartUserEmptyTypeEnum,
  ChildProcessStartUserTypeEnum,
  DelayTypeEnum,
  RejectHandlerType,
  TimeoutHandlerType,
  TimeUnitType,
} from '../consts';

/**
 * 通用字典项类型。
 * - label: 展示文本（由 i18n key 解析）
 * - value: 实际值（与后端枚举一一对应）
 */
export interface DictDataType {
  label: string;
  value: number | string;
}

// ---------------------------------------------------------------------------
// 构建函数（每个函数对应一种下拉字典或 Map，供 computed / synchronous 使用）
// ---------------------------------------------------------------------------

/**
 * 构建节点占位文本 Map。
 * 用于在流程设计器画布上，未配置节点时显示的占位提示文字。
 * key: 节点类型枚举值（BpmNodeTypeEnum）
 * value: 占位文本（如 "请配置审批人"）
 */
function buildNodeDefaultText() {
  const m = new Map<number, string>();
  m.set(
    BpmNodeTypeEnum.USER_TASK_NODE,
    $t('bpm.simpleProcessDesign.nodeText.userTask'),
  );
  m.set(
    BpmNodeTypeEnum.COPY_TASK_NODE,
    $t('bpm.simpleProcessDesign.nodeText.copyTask'),
  );
  m.set(
    BpmNodeTypeEnum.CONDITION_NODE,
    $t('bpm.simpleProcessDesign.nodeText.condition'),
  );
  m.set(
    BpmNodeTypeEnum.START_USER_NODE,
    $t('bpm.simpleProcessDesign.nodeText.startUser'),
  );
  m.set(
    BpmNodeTypeEnum.DELAY_TIMER_NODE,
    $t('bpm.simpleProcessDesign.nodeText.delayTimer'),
  );
  m.set(
    BpmNodeTypeEnum.ROUTER_BRANCH_NODE,
    $t('bpm.simpleProcessDesign.nodeText.routerBranch'),
  );
  m.set(
    BpmNodeTypeEnum.TRIGGER_NODE,
    $t('bpm.simpleProcessDesign.nodeText.trigger'),
  );
  m.set(
    BpmNodeTypeEnum.TRANSACTOR_NODE,
    $t('bpm.simpleProcessDesign.nodeText.transactor'),
  );
  m.set(
    BpmNodeTypeEnum.CHILD_PROCESS_NODE,
    $t('bpm.simpleProcessDesign.nodeText.childProcess'),
  );
  return m;
}

/**
 * 构建节点显示名称 Map。
 * 用于在流程设计器画布上显示的节点标题。
 * key: 节点类型枚举值
 * value: 显示名称（如 "审批人"、"抄送人"）
 */
function buildNodeDefaultName() {
  const m = new Map<number, string>();
  m.set(
    BpmNodeTypeEnum.USER_TASK_NODE,
    $t('bpm.simpleProcessDesign.node.userTask'),
  );
  m.set(
    BpmNodeTypeEnum.COPY_TASK_NODE,
    $t('bpm.simpleProcessDesign.node.copyTask'),
  );
  m.set(
    BpmNodeTypeEnum.CONDITION_NODE,
    $t('bpm.simpleProcessDesign.node.condition'),
  );
  m.set(
    BpmNodeTypeEnum.START_USER_NODE,
    $t('bpm.simpleProcessDesign.node.startUser'),
  );
  m.set(
    BpmNodeTypeEnum.DELAY_TIMER_NODE,
    $t('bpm.simpleProcessDesign.node.delayTimer'),
  );
  m.set(
    BpmNodeTypeEnum.ROUTER_BRANCH_NODE,
    $t('bpm.simpleProcessDesign.node.routerBranch'),
  );
  m.set(
    BpmNodeTypeEnum.TRIGGER_NODE,
    $t('bpm.simpleProcessDesign.node.trigger'),
  );
  m.set(
    BpmNodeTypeEnum.TRANSACTOR_NODE,
    $t('bpm.simpleProcessDesign.node.transactor'),
  );
  m.set(
    BpmNodeTypeEnum.CHILD_PROCESS_NODE,
    $t('bpm.simpleProcessDesign.node.childProcess'),
  );
  return m;
}

/**
 * 构建审批候选人策略下拉选项。
 * 描述审批节点由谁来处理任务。
 * - 指定用户 / 指定角色 / 指定岗位 / 部门成员 / 部门负责人 /
 *   连续多级部门负责人 / 发起人自选 / 审批人自选 / 发起人本人 /
 *   发起人部门负责人 / 发起人连续部门负责人 / 用户组 /
 *   表单内用户字段 / 表单内部门负责人 / 流程表达式
 */
function buildCandidateStrategy(): DictDataType[] {
  return [
    {
      label: $t('bpm.simpleProcessDesign.candidateStrategy.assignUser'),
      value: CandidateStrategy.USER as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.candidateStrategy.assignRole'),
      value: CandidateStrategy.ROLE as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.candidateStrategy.assignPost'),
      value: CandidateStrategy.POST as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.candidateStrategy.deptMember'),
      value: CandidateStrategy.DEPT_MEMBER as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.candidateStrategy.deptLeader'),
      value: CandidateStrategy.DEPT_LEADER as any,
    },
    {
      label: $t(
        'bpm.simpleProcessDesign.candidateStrategy.multiLevelDeptLeader',
      ),
      value: CandidateStrategy.MULTI_LEVEL_DEPT_LEADER as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.candidateStrategy.startUserSelect'),
      value: CandidateStrategy.START_USER_SELECT as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.candidateStrategy.approveUserSelect'),
      value: CandidateStrategy.APPROVE_USER_SELECT as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.candidateStrategy.startUserSelf'),
      value: CandidateStrategy.START_USER as any,
    },
    {
      label: $t(
        'bpm.simpleProcessDesign.candidateStrategy.startUserDeptLeader',
      ),
      value: CandidateStrategy.START_USER_DEPT_LEADER as any,
    },
    {
      label: $t(
        'bpm.simpleProcessDesign.candidateStrategy.startUserMultiLevelDeptLeader',
      ),
      value: CandidateStrategy.START_USER_MULTI_LEVEL_DEPT_LEADER as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.candidateStrategy.userGroup'),
      value: CandidateStrategy.USER_GROUP as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.candidateStrategy.formUserField'),
      value: CandidateStrategy.FORM_USER as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.candidateStrategy.formDeptLeader'),
      value: CandidateStrategy.FORM_DEPT_LEADER as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.candidateStrategy.processExpression'),
      value: CandidateStrategy.EXPRESSION as any,
    },
  ];
}

/**
 * 构建审批类型下拉选项。
 * - 人工审批: 由人工选择是否通过
 * - 自动通过: 系统自动同意该节点
 * - 自动拒绝: 系统自动拒绝该节点
 */
function buildApproveType(): DictDataType[] {
  return [
    {
      label: $t('bpm.simpleProcessDesign.approveType.manual'),
      value: ApproveType.USER as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.approveType.autoApprove'),
      value: ApproveType.AUTO_APPROVE as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.approveType.autoReject'),
      value: ApproveType.AUTO_REJECT as any,
    },
  ];
}

/**
 * 构建多人审批方式下拉选项。
 * - 依次审批: 多人按顺序依次处理
 * - 会签: 可同时审批，需达到指定比例才通过
 * - 或签: 可同时审批，任何一人通过即可
 * - 随机一人: 从多人中随机选取一人处理
 */
function buildApproveMethods(): DictDataType[] {
  return [
    {
      label: $t('bpm.simpleProcessDesign.approveMethod.sequential'),
      value: ApproveMethodType.SEQUENTIAL_APPROVE as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.approveMethod.counterSign'),
      value: ApproveMethodType.APPROVE_BY_RATIO as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.approveMethod.orSign'),
      value: ApproveMethodType.ANY_APPROVE as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.approveMethod.randomOne'),
      value: ApproveMethodType.RANDOM_SELECT_ONE_APPROVE as any,
    },
  ];
}

/**
 * 构建审批拒绝处理方式下拉选项。
 * - 终止流程: 拒绝后直接结束整个流程
 * - 驳回到指定节点: 驳回到用户指定的某个历史节点重新审批
 */
function buildRejectHandlerTypes(): DictDataType[] {
  return [
    {
      label: $t('bpm.simpleProcessDesign.rejectHandlerType.finishProcess'),
      value: RejectHandlerType.FINISH_PROCESS as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.rejectHandlerType.returnNode'),
      value: RejectHandlerType.RETURN_USER_TASK as any,
    },
  ];
}

/**
 * 构建审批超时处理方式下拉选项。
 * - 自动提醒: 到达超时时间后自动发送提醒
 * - 自动同意: 到达超时时间后系统自动通过
 * - 自动拒绝: 到达超时时间后系统自动拒绝
 */
function buildTimeoutHandlerTypes(): DictDataType[] {
  return [
    {
      label: $t('bpm.simpleProcessDesign.timeoutHandlerType.autoRemind'),
      value: TimeoutHandlerType.REMINDER,
    },
    {
      label: $t('bpm.simpleProcessDesign.timeoutHandlerType.autoApprove'),
      value: TimeoutHandlerType.APPROVE,
    },
    {
      label: $t('bpm.simpleProcessDesign.timeoutHandlerType.autoReject'),
      value: TimeoutHandlerType.REJECT,
    },
  ];
}

/**
 * 构建审批人为空时的处理方式下拉选项。
 * 当找不到有效审批人时如何处理。
 */
function buildAssignEmptyHandlerTypes(): DictDataType[] {
  return [
    {
      label: $t('bpm.simpleProcessDesign.assignEmptyHandlerType.autoApprove'),
      value: 1,
    },
    {
      label: $t('bpm.simpleProcessDesign.assignEmptyHandlerType.autoReject'),
      value: 2,
    },
    {
      label: $t('bpm.simpleProcessDesign.assignEmptyHandlerType.assignUser'),
      value: 3,
    },
    {
      label: $t('bpm.simpleProcessDesign.assignEmptyHandlerType.transferAdmin'),
      value: 4,
    },
  ];
}

/**
 * 构建审批人与发起人相同时的处理方式下拉选项。
 * 参考飞书：自己不能审批自己的申请。
 */
function buildAssignStartUserHandlerTypes(): DictDataType[] {
  return [
    {
      label: $t(
        'bpm.simpleProcessDesign.assignStartUserHandlerType.selfApprove',
      ),
      value: 1,
    },
    {
      label: $t('bpm.simpleProcessDesign.assignStartUserHandlerType.autoSkip'),
      value: 2,
    },
    {
      label: $t(
        'bpm.simpleProcessDesign.assignStartUserHandlerType.transferDeptLeader',
      ),
      value: 3,
    },
  ];
}

/**
 * 构建时间单位下拉选项。
 * 用于延迟器节点、审批超时时间等单位选择。
 */
function buildTimeUnitTypes(): DictDataType[] {
  return [
    {
      label: $t('bpm.simpleProcessDesign.timeUnit.minute'),
      value: TimeUnitType.MINUTE as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.timeUnit.hour'),
      value: TimeUnitType.HOUR as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.timeUnit.day'),
      value: TimeUnitType.DAY as any,
    },
  ];
}

/**
 * 构建连续多级部门负责人选项。
 * 生成 1-15 级部门的选项，用于发起人部门向上 N 级的审批人查找。
 */
function buildMultiLevelDept(): DictDataType[] {
  return Array.from({ length: 15 }, (_, i) => ({
    label: $t(`bpm.simpleProcessDesign.deptLevel.level${i + 1}`),
    value: i + 1,
  }));
}

/**
 * 构建操作按钮名称 Map。
 * 用于在任务详情页显示审批/拒绝/转办/委派/加签/退回/抄送按钮。
 * key: 按钮类型编号（1-7）
 * value: 按钮显示名称
 */
function buildOperationButtonName() {
  const m = new Map<number, string>();
  m.set(1, $t('bpm.simpleProcessDesign.operation.approve'));
  m.set(2, $t('bpm.simpleProcessDesign.operation.reject'));
  m.set(3, $t('bpm.simpleProcessDesign.operation.transfer'));
  m.set(4, $t('bpm.simpleProcessDesign.operation.delegate'));
  m.set(5, $t('bpm.simpleProcessDesign.operation.addSign'));
  m.set(6, $t('bpm.simpleProcessDesign.operation.return'));
  m.set(7, $t('bpm.simpleProcessDesign.operation.copy'));
  return m;
}

/**
 * 构建审批节点的默认按钮设置。
 * 新建审批节点时默认开启的按钮：审批、拒绝、转办、委派、加签、退回。
 */
function buildDefaultButtonSetting() {
  return [
    {
      id: 1 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.approve'),
      enable: true,
    },
    {
      id: 2 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.reject'),
      enable: true,
    },
    {
      id: 3 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.transfer'),
      enable: true,
    },
    {
      id: 4 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.delegate'),
      enable: true,
    },
    {
      id: 5 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.addSign'),
      enable: true,
    },
    {
      id: 6 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.return'),
      enable: true,
    },
  ];
}

/**
 * 构建办理人节点的默认按钮设置。
 * 办理人节点默认只有"办理"按钮开启，其余均关闭。
 */
function buildTransactorDefaultButtonSetting() {
  return [
    {
      id: 1 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.handle'),
      enable: true,
    },
    {
      id: 2 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.reject'),
      enable: false,
    },
    {
      id: 3 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.transfer'),
      enable: false,
    },
    {
      id: 4 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.delegate'),
      enable: false,
    },
    {
      id: 5 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.addSign'),
      enable: false,
    },
    {
      id: 6 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.return'),
      enable: false,
    },
  ];
}

/**
 * 构建发起人节点的默认按钮设置。
 * 发起人节点默认只有"提交"按钮开启。
 */
function buildStartUserButtonSetting() {
  return [
    {
      id: 1 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.submit'),
      enable: true,
    },
    {
      id: 2 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.reject'),
      enable: false,
    },
    {
      id: 3 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.transfer'),
      enable: false,
    },
    {
      id: 4 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.delegate'),
      enable: false,
    },
    {
      id: 5 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.addSign'),
      enable: false,
    },
    {
      id: 6 as any,
      displayName: $t('bpm.simpleProcessDesign.operation.return'),
      enable: false,
    },
  ];
}

/**
 * 构建延迟类型下拉选项。
 * - 固定时长: 指定多少分钟后执行（如 30 分钟后）
 * - 固定日期: 指定具体日期时间执行
 */
function buildDelayType(): DictDataType[] {
  return [
    {
      label: $t('bpm.simpleProcessDesign.delayType.fixedDuration'),
      value: DelayTypeEnum.FIXED_TIME_DURATION,
    },
    {
      label: $t('bpm.simpleProcessDesign.delayType.fixedDate'),
      value: DelayTypeEnum.FIXED_DATE_TIME,
    },
  ];
}

/**
 * 构建触发器类型下拉选项。
 * - 发送 HTTP 请求: 节点到达时向后端服务发起 POST 请求
 * - 接收 HTTP 回调: 节点等待外部回调后继续流程
 * - 修改表单数据: 更新流程表单中某些字段的值
 * - 删除表单数据: 删除流程表单中的某些字段
 */
function buildTriggerTypes(): DictDataType[] {
  return [
    {
      label: $t('bpm.simpleProcessDesign.trigger.httpRequest'),
      value: 1 as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.trigger.httpCallback'),
      value: 2 as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.trigger.formUpdate'),
      value: 10 as any,
    },
    {
      label: $t('bpm.simpleProcessDesign.trigger.formDelete'),
      value: 11 as any,
    },
  ];
}

/**
 * 构建子流程发起人来源下拉选项。
 * - 同主流程发起人: 子流程的发起人与主流程相同
 * - 表单字段: 从主流程表单中指定字段获取子流程发起人
 */
function buildChildProcessStartUserType(): DictDataType[] {
  return [
    {
      label: $t('bpm.simpleProcessDesign.childProcess.sameAsMain'),
      value: ChildProcessStartUserTypeEnum.MAIN_PROCESS_START_USER,
    },
    {
      label: $t('bpm.simpleProcessDesign.childProcess.fromForm'),
      value: ChildProcessStartUserTypeEnum.FROM_FORM,
    },
  ];
}

/**
 * 构建子流程发起人为空时的处理方式下拉选项。
 */
function buildChildProcessStartUserEmptyType(): DictDataType[] {
  return [
    {
      label: $t('bpm.simpleProcessDesign.childProcess.sameAsMain'),
      value: ChildProcessStartUserEmptyTypeEnum.MAIN_PROCESS_START_USER,
    },
    {
      label: $t('bpm.simpleProcessDesign.childProcess.childAdmin'),
      value: ChildProcessStartUserEmptyTypeEnum.CHILD_PROCESS_ADMIN,
    },
    {
      label: $t('bpm.simpleProcessDesign.childProcess.mainAdmin'),
      value: ChildProcessStartUserEmptyTypeEnum.MAIN_PROCESS_ADMIN,
    },
  ];
}

/**
 * 构建子流程多实例数据来源下拉选项。
 * - 固定数量: 指定次数的并行子流程
 * - 数字表单: 从表单字段（数字）读取并行数量
 * - 多选表单: 从表单字段（多选）读取并行流程的办理人列表
 */
function buildChildProcessMultiInstanceSourceType(): DictDataType[] {
  return [
    {
      label: $t('bpm.simpleProcessDesign.childProcess.fixedQuantity'),
      value: ChildProcessMultiInstanceSourceTypeEnum.FIXED_QUANTITY,
    },
    {
      label: $t('bpm.simpleProcessDesign.childProcess.numberForm'),
      value: ChildProcessMultiInstanceSourceTypeEnum.NUMBER_FORM,
    },
    {
      label: $t('bpm.simpleProcessDesign.childProcess.multiForm'),
      value: ChildProcessMultiInstanceSourceTypeEnum.MULTIPLE_FORM,
    },
  ];
}

/**
 * 构建 HTTP 请求参数类型下拉选项。
 * 用于 HTTP 请求触发器的请求头/请求体参数配置。
 * - 固定值: 参数值为写死的字符串
 * - 表单: 参数值来自流程表单中的某个字段
 */
function buildBpmHttpRequestParamTypes(): DictDataType[] {
  return [
    { label: $t('bpm.simpleProcessDesign.httpRequest.fixedValue'), value: 1 },
    { label: $t('bpm.simpleProcessDesign.httpRequest.fromForm'), value: 2 },
  ];
}

// ---------------------------------------------------------------------------
// Reactive composable — 随语言切换自动更新
// ---------------------------------------------------------------------------

/**
 * 流程设计器国际化字典 composable。
 * 返回响应式 computed 对象，语言切换后自动更新。
 *
 * @example
 * const { CANDIDATE_STRATEGY, APPROVE_METHODS } = useSimpleProcessDesignLocale();
 * // 在模板中：{{ CANDIDATE_STRATEGY.value[index].label }}
 */
export function useSimpleProcessDesignLocale() {
  const NODE_DEFAULT_TEXT = computed(() => buildNodeDefaultText());
  const NODE_DEFAULT_NAME = computed(() => buildNodeDefaultName());
  const CANDIDATE_STRATEGY = computed(() => buildCandidateStrategy());
  const APPROVE_TYPE = computed(() => buildApproveType());
  const APPROVE_METHODS = computed(() => buildApproveMethods());
  const REJECT_HANDLER_TYPES = computed(() => buildRejectHandlerTypes());
  const TIMEOUT_HANDLER_TYPES = computed(() => buildTimeoutHandlerTypes());
  const ASSIGN_EMPTY_HANDLER_TYPES = computed(() =>
    buildAssignEmptyHandlerTypes(),
  );
  const ASSIGN_START_USER_HANDLER_TYPES = computed(() =>
    buildAssignStartUserHandlerTypes(),
  );
  const TIME_UNIT_TYPES = computed(() => buildTimeUnitTypes());
  const MULTI_LEVEL_DEPT = computed(() => buildMultiLevelDept());
  const OPERATION_BUTTON_NAME = computed(() => buildOperationButtonName());
  const DEFAULT_BUTTON_SETTING = computed(() => buildDefaultButtonSetting());
  const TRANSACTOR_DEFAULT_BUTTON_SETTING = computed(() =>
    buildTransactorDefaultButtonSetting(),
  );
  const START_USER_BUTTON_SETTING = computed(() =>
    buildStartUserButtonSetting(),
  );
  const DELAY_TYPE = computed(() => buildDelayType());
  const TRIGGER_TYPES = computed(() => buildTriggerTypes());
  const CHILD_PROCESS_START_USER_TYPE = computed(() =>
    buildChildProcessStartUserType(),
  );
  const CHILD_PROCESS_START_USER_EMPTY_TYPE = computed(() =>
    buildChildProcessStartUserEmptyType(),
  );
  const CHILD_PROCESS_MULTI_INSTANCE_SOURCE_TYPE = computed(() =>
    buildChildProcessMultiInstanceSourceType(),
  );
  const BPM_HTTP_REQUEST_PARAM_TYPES = computed(() =>
    buildBpmHttpRequestParamTypes(),
  );

  return {
    NODE_DEFAULT_TEXT,
    NODE_DEFAULT_NAME,
    CANDIDATE_STRATEGY,
    APPROVE_TYPE,
    APPROVE_METHODS,
    REJECT_HANDLER_TYPES,
    TIMEOUT_HANDLER_TYPES,
    ASSIGN_EMPTY_HANDLER_TYPES,
    ASSIGN_START_USER_HANDLER_TYPES,
    TIME_UNIT_TYPES,
    MULTI_LEVEL_DEPT,
    OPERATION_BUTTON_NAME,
    DEFAULT_BUTTON_SETTING,
    TRANSACTOR_DEFAULT_BUTTON_SETTING,
    START_USER_BUTTON_SETTING,
    DELAY_TYPE,
    TRIGGER_TYPES,
    CHILD_PROCESS_START_USER_TYPE,
    CHILD_PROCESS_START_USER_EMPTY_TYPE,
    CHILD_PROCESS_MULTI_INSTANCE_SOURCE_TYPE,
    BPM_HTTP_REQUEST_PARAM_TYPES,
  };
}

// ---------------------------------------------------------------------------
// 同步导出（非响应式，适合在 plain JS/非 Vue setup 场景使用）
// ---------------------------------------------------------------------------

/** 同步导出的节点占位文本 Map（非响应式，语言切换后需重新调用或手动刷新）。 */
export const NODE_DEFAULT_TEXT = buildNodeDefaultText();
/** 同步导出的节点显示名称 Map（非响应式）。 */
export const NODE_DEFAULT_NAME = buildNodeDefaultName();

// ---------------------------------------------------------------------------
// Synchronous locale object for Vue templates
// ---------------------------------------------------------------------------

/**
 * 同步locale对象 — 适合在 Vue 模板中直接使用。
 * 在 setup() 中调用一次，将结果暴露给模板。
 *
 * @example
 * const locale = getSimpleProcessDesignLocale();
 * return { ...locale };
 *
 * 模板中使用：
 * {{ locale.NODE_DEFAULT_TEXT.get(nodeType) }}
 * {{ locale.CANDIDATE_STRATEGY[index].label }}
 */
export function getSimpleProcessDesignLocale() {
  return {
    node: {
      userTask: $t('bpm.simpleProcessDesign.node.userTask'),
      copyTask: $t('bpm.simpleProcessDesign.node.copyTask'),
      condition: $t('bpm.simpleProcessDesign.node.condition'),
      startUser: $t('bpm.simpleProcessDesign.node.startUser'),
      delayTimer: $t('bpm.simpleProcessDesign.node.delayTimer'),
      routerBranch: $t('bpm.simpleProcessDesign.node.routerBranch'),
      trigger: $t('bpm.simpleProcessDesign.node.trigger'),
      transactor: $t('bpm.simpleProcessDesign.node.transactor'),
      childProcess: $t('bpm.simpleProcessDesign.node.childProcess'),
    },
    action: {
      person: $t('bpm.simpleProcessDesign.action.person'),
      user: $t('bpm.simpleProcessDesign.action.user'),
      role: $t('bpm.simpleProcessDesign.action.role'),
      dept: $t('bpm.simpleProcessDesign.action.dept'),
      post: $t('bpm.simpleProcessDesign.action.post'),
      userGroup: $t('bpm.simpleProcessDesign.action.userGroup'),
      formUserField: $t('bpm.simpleProcessDesign.action.formUserField'),
      formDeptField: $t('bpm.simpleProcessDesign.action.formDeptField'),
      expression: $t('bpm.simpleProcessDesign.action.expression'),
      formFieldPermission: $t(
        'bpm.simpleProcessDesign.action.formFieldPermission',
      ),
      fieldName: $t('bpm.simpleProcessDesign.action.fieldName'),
      readOnly: $t('bpm.simpleProcessDesign.action.readOnly'),
      editable: $t('bpm.simpleProcessDesign.action.editable'),
      hidden: $t('bpm.simpleProcessDesign.action.hidden'),
      permission: $t('bpm.simpleProcessDesign.action.permission'),
      approveType: $t('bpm.simpleProcessDesign.action.approveType'),
      rejectHandler: $t('bpm.simpleProcessDesign.action.rejectHandler'),
      rejectNode: $t('bpm.simpleProcessDesign.action.rejectNode'),
      timeout: $t('bpm.simpleProcessDesign.action.timeout'),
      enableSwitch: $t('bpm.simpleProcessDesign.action.enableSwitch'),
      executeAction: $t('bpm.simpleProcessDesign.action.executeAction'),
      timeoutSetting: $t('bpm.simpleProcessDesign.action.timeoutSetting'),
      overTime: $t('bpm.simpleProcessDesign.action.overTime'),
      notProcessed: $t('bpm.simpleProcessDesign.action.notProcessed'),
      maxRemindCount: $t('bpm.simpleProcessDesign.action.maxRemindCount'),
      sameAsSubmitter: $t('bpm.simpleProcessDesign.action.sameAsSubmitter'),
      needSign: $t('bpm.simpleProcessDesign.action.needSign'),
      needOpinion: $t('bpm.simpleProcessDesign.action.needOpinion'),
      operationButtons: $t('bpm.simpleProcessDesign.action.operationButtons'),
      buttonName: $t('bpm.simpleProcessDesign.action.buttonName'),
      displayName: $t('bpm.simpleProcessDesign.action.displayName'),
      enable: $t('bpm.simpleProcessDesign.action.enable'),
      listener: $t('bpm.simpleProcessDesign.action.listener'),
    },
    switch: {
      on: $t('bpm.simpleProcessDesign.switch.on'),
      off: $t('bpm.simpleProcessDesign.switch.off'),
      yes: $t('bpm.simpleProcessDesign.switch.yes'),
      no: $t('bpm.simpleProcessDesign.switch.no'),
      required: $t('bpm.simpleProcessDesign.switch.required'),
      notRequired: $t('bpm.simpleProcessDesign.switch.notRequired'),
    },
    toolbar: {
      loading: $t('bpm.simpleProcessDesign.toolbar.loading'),
    },
    NODE_DEFAULT_TEXT,
    NODE_DEFAULT_NAME,
    CANDIDATE_STRATEGY: buildCandidateStrategy(),
    APPROVE_TYPE: buildApproveType(),
    APPROVE_METHODS: buildApproveMethods(),
    REJECT_HANDLER_TYPES: buildRejectHandlerTypes(),
    TIMEOUT_HANDLER_TYPES: buildTimeoutHandlerTypes(),
    ASSIGN_EMPTY_HANDLER_TYPES: buildAssignEmptyHandlerTypes(),
    ASSIGN_START_USER_HANDLER_TYPES: buildAssignStartUserHandlerTypes(),
    TIME_UNIT_TYPES: buildTimeUnitTypes(),
    MULTI_LEVEL_DEPT: buildMultiLevelDept(),
    OPERATION_BUTTON_NAME: buildOperationButtonName(),
    DEFAULT_BUTTON_SETTING: buildDefaultButtonSetting(),
    TRANSACTOR_DEFAULT_BUTTON_SETTING: buildTransactorDefaultButtonSetting(),
    START_USER_BUTTON_SETTING: buildStartUserButtonSetting(),
    DELAY_TYPE: buildDelayType(),
    TRIGGER_TYPES: buildTriggerTypes(),
    CHILD_PROCESS_START_USER_TYPE: buildChildProcessStartUserType(),
    CHILD_PROCESS_START_USER_EMPTY_TYPE: buildChildProcessStartUserEmptyType(),
    CHILD_PROCESS_MULTI_INSTANCE_SOURCE_TYPE:
      buildChildProcessMultiInstanceSourceType(),
    BPM_HTTP_REQUEST_PARAM_TYPES: buildBpmHttpRequestParamTypes(),
  };
}
