import { $t } from '#/locales';
import { BpmNodeTypeEnum, BpmTaskStatusEnum } from '#/utils';

interface DictDataType {
  label: string;
  value: number | string;
}

// 用户任务的审批类型。 【参考飞书】
export enum ApproveType {
  /**
   * 自动通过
   */
  AUTO_APPROVE = 2,
  /**
   * 自动拒绝
   */
  AUTO_REJECT = 3,
  /**
   * 人工审批
   */
  USER = 1,
}

// 多人审批方式类型枚举 （ 用于审批节点 ）
export enum ApproveMethodType {
  /**
   * 多人或签(通过只需一人，拒绝只需一人)
   */
  ANY_APPROVE = 3,

  /**
   * 多人会签(按通过比例)
   */
  APPROVE_BY_RATIO = 2,

  /**
   * 随机挑选一人审批
   */
  RANDOM_SELECT_ONE_APPROVE = 1,
  /**
   * 多人依次审批
   */
  SEQUENTIAL_APPROVE = 4,
}

export enum NodeId {
  /**
   * 发起人节点 Id
   */
  END_EVENT_NODE_ID = 'EndEvent',

  /**
   * 发起人节点 Id
   */
  START_USER_NODE_ID = 'StartUserNode',
}

// 条件配置类型 （ 用于条件节点配置 ）
export enum ConditionType {
  /**
   * 条件表达式
   */
  EXPRESSION = 1,

  /**
   * 条件规则
   */
  RULE = 2,
}

// 操作按钮类型枚举 (用于审批节点)
export enum OperationButtonType {
  /**
   * 加签
   */
  ADD_SIGN = 5,
  /**
   * 通过
   */
  APPROVE = 1,
  /**
   * 抄送
   */
  COPY = 7,
  /**
   * 委派
   */
  DELEGATE = 4,
  /**
   * 拒绝
   */
  REJECT = 2,
  /**
   * 退回
   */
  RETURN = 6,
  /**
   * 转办
   */
  TRANSFER = 3,
}

// 审批拒绝类型枚举
export enum RejectHandlerType {
  /**
   * 结束流程
   */
  FINISH_PROCESS = 1,
  /**
   * 驳回到指定节点
   */
  RETURN_USER_TASK = 2,
}

// 用户任务超时处理类型枚举
export enum TimeoutHandlerType {
  /**
   * 自动同意
   */
  APPROVE = 2,
  /**
   * 自动拒绝
   */
  REJECT = 3,
  /**
   * 自动提醒
   */
  REMINDER = 1,
}

// 用户任务的审批人为空时，处理类型枚举
export enum AssignEmptyHandlerType {
  /**
   * 自动通过
   */
  APPROVE = 1,
  /**
   * 转交给流程管理员
   */
  ASSIGN_ADMIN = 4,
  /**
   * 指定人员审批
   */
  ASSIGN_USER = 3,
  /**
   * 自动拒绝
   */
  REJECT = 2,
}

// 用户任务的审批人与发起人相同时，处理类型枚举
export enum AssignStartUserHandlerType {
  /**
   * 转交给部门负责人审批
   */
  ASSIGN_DEPT_LEADER = 3,
  /**
   * 自动跳过【参考飞书】：1）如果当前节点还有其他审批人，则交由其他审批人进行审批；2）如果当前节点没有其他审批人，则该节点自动通过
   */
  SKIP = 2,
  /**
   * 由发起人对自己审批
   */
  START_USER_AUDIT = 1,
}

// 时间单位枚举
export enum TimeUnitType {
  /**
   * 天
   */
  DAY = 3,
  /**
   * 小时
   */
  HOUR = 2,
  /**
   * 分钟
   */
  MINUTE = 1,
}

/**
 * 表单权限的枚举
 */
export enum FieldPermissionType {
  /**
   * 隐藏
   */
  NONE = '3',
  /**
   * 只读
   */
  READ = '1',
  /**
   * 编辑
   */
  WRITE = '2',
}

/**
 * 延迟类型
 */
export enum DelayTypeEnum {
  /**
   * 固定日期时间
   */
  FIXED_DATE_TIME = 2,
  /**
   * 固定时长
   */
  FIXED_TIME_DURATION = 1,
}

/**
 * 触发器类型枚举
 */
export enum TriggerTypeEnum {
  /**
   * 表单数据删除触发器
   */
  FORM_DELETE = 11,
  /**
   * 表单数据更新触发器
   */
  FORM_UPDATE = 10,
  /**
   * 接收 HTTP 回调请求触发器
   */
  HTTP_CALLBACK = 2,
  /**
   * 发送 HTTP 请求触发器
   */
  HTTP_REQUEST = 1,
}

export enum ChildProcessStartUserTypeEnum {
  /**
   * 表单
   */
  FROM_FORM = 2,
  /**
   * 同主流程发起人
   */
  MAIN_PROCESS_START_USER = 1,
}

export enum ChildProcessStartUserEmptyTypeEnum {
  /**
   * 子流程管理员
   */
  CHILD_PROCESS_ADMIN = 2,
  /**
   * 主流程管理员
   */
  MAIN_PROCESS_ADMIN = 3,
  /**
   * 同主流程发起人
   */
  MAIN_PROCESS_START_USER = 1,
}

export enum ChildProcessMultiInstanceSourceTypeEnum {
  /**
   * 固定数量
   */
  FIXED_QUANTITY = 1,
  /**
   * 多选表单
   */
  MULTIPLE_FORM = 3,
  /**
   * 数字表单
   */
  NUMBER_FORM = 2,
}

// 候选人策略枚举 （ 用于审批节点。抄送节点 )
export enum CandidateStrategy {
  /**
   * 审批人自选
   */
  APPROVE_USER_SELECT = 34,
  /**
   * 部门的负责人
   */
  DEPT_LEADER = 21,
  /**
   * 部门成员
   */
  DEPT_MEMBER = 20,
  /**
   * 流程表达式
   */
  EXPRESSION = 60,
  /**
   * 表单内部门负责人
   */
  FORM_DEPT_LEADER = 51,
  /**
   * 表单内用户字段
   */
  FORM_USER = 50,
  /**
   * 连续多级部门的负责人
   */
  MULTI_LEVEL_DEPT_LEADER = 23,
  /**
   * 指定岗位
   */
  POST = 22,
  /**
   * 指定角色
   */
  ROLE = 10,
  /**
   * 发起人自己
   */
  START_USER = 36,
  /**
   * 发起人部门负责人
   */
  START_USER_DEPT_LEADER = 37,
  /**
   * 发起人连续多级部门的负责人
   */
  START_USER_MULTI_LEVEL_DEPT_LEADER = 38,
  /**
   * 发起人自选
   */
  START_USER_SELECT = 35,
  /**
   * 指定用户
   */
  USER = 30,
  /**
   * 指定用户组
   */
  USER_GROUP = 40,
}

export enum BpmHttpRequestParamTypeEnum {
  /**
   * 固定值
   */
  FIXED_VALUE = 1,
  /**
   * 表单
   */
  FROM_FORM = 2,
}

// 这里定义 HTTP 请求参数类型
export type HttpRequestParam = {
  key: string;
  type: number;
  value: string;
};

// 监听器结构定义
export type ListenerHandler = {
  body?: HttpRequestParam[];
  enable: boolean;
  header?: HttpRequestParam[];
  path?: string;
};

/**
 * 条件规则结构定义
 */
export type ConditionRule = {
  leftSide: string | undefined;
  opCode: string;
  rightSide: string | undefined;
};

/**
 * 条件结构定义
 */
export type Condition = {
  // 条件规则的逻辑关系是否为且
  and: boolean;
  rules: ConditionRule[];
};

/**
 * 条件组结构定义
 */
export type ConditionGroup = {
  // 条件组的逻辑关系是否为且
  and: boolean;
  // 条件数组
  conditions: Condition[];
};

/**
 * 条件节点设置结构定义，用于条件节点
 */
export type ConditionSetting = {
  // 条件表达式
  conditionExpression?: string;
  // 条件组
  conditionGroups?: ConditionGroup;
  // 条件类型
  conditionType?: ConditionType;
  // 是否默认的条件
  defaultFlow?: boolean;
};

/**
 * 审批拒绝结构定义
 */
export type RejectHandler = {
  // 退回节点 Id
  returnNodeId?: string;
  // 审批拒绝类型
  type: RejectHandlerType;
};

/**
 * 审批超时结构定义
 */
export type TimeoutHandler = {
  // 是否开启超时处理
  enable: boolean;
  // 执行动作是自动提醒, 最大提醒次数
  maxRemindCount?: number;
  // 超时时间设置
  timeDuration?: string;
  // 超时执行的动作
  type?: number;
};

/**
 * 审批人为空的结构定义
 */
export type AssignEmptyHandler = {
  // 审批人为空的处理类型
  type: AssignEmptyHandlerType;
  // 指定用户的编号数组
  userIds?: number[];
};

/**
 * 延迟设置
 */
export type DelaySetting = {
  // 延迟时间表达式
  delayTime: string;
  // 延迟类型
  delayType: number;
};

/**
 * 路由分支结构定义
 */
export type RouterSetting = {
  conditionExpression: string;
  conditionGroups: ConditionGroup;
  conditionType: ConditionType;
  nodeId: string | undefined;
};

/**
 * 操作按钮权限结构定义
 */
export type ButtonSetting = {
  displayName: string;
  enable: boolean;
  id: OperationButtonType;
};

/**
 * HTTP 请求触发器结构定义
 */
export type HttpRequestTriggerSetting = {
  // 请求体参数设置
  body?: HttpRequestParam[];
  // 请求头参数设置
  header?: HttpRequestParam[];
  // 请求响应设置
  response?: Record<string, string>[];
  // 请求 URL
  url: string;
};

/**
 * 流程表单触发器配置结构定义
 */
export type FormTriggerSetting = {
  // 条件表达式
  conditionExpression?: string;
  // 条件组
  conditionGroups?: ConditionGroup;
  // 条件类型
  conditionType?: ConditionType;
  // 删除表单字段配置
  deleteFields?: string[];
  // 更新表单字段配置
  updateFormFields?: Record<string, any>;
};

/**
 * 触发器节点结构定义
 */
export type TriggerSetting = {
  formSettings?: FormTriggerSetting[];
  httpRequestSetting?: HttpRequestTriggerSetting;
  type: TriggerTypeEnum;
};

export type IOParameter = {
  source: string;
  target: string;
};

export type StartUserSetting = {
  emptyType?: ChildProcessStartUserEmptyTypeEnum;
  formField?: string;
  type: ChildProcessStartUserTypeEnum;
};

export type TimeoutSetting = {
  enable: boolean;
  timeExpression?: string;
  type?: DelayTypeEnum;
};

export type MultiInstanceSetting = {
  approveRatio?: number;
  enable: boolean;
  sequential?: boolean;
  source?: string;
  sourceType?: ChildProcessMultiInstanceSourceTypeEnum;
};

/**
 * 子流程节点结构定义
 */
export type ChildProcessSetting = {
  async: boolean;
  calledProcessDefinitionKey: string;
  calledProcessDefinitionName: string;
  inVariables?: IOParameter[];
  multiInstanceSetting: MultiInstanceSetting;
  outVariables?: IOParameter[];
  skipStartUserNode: boolean;
  startUserSetting: StartUserSetting;
  timeoutSetting: TimeoutSetting;
};

/**
 *  节点结构定义
 */
export interface SimpleFlowNode {
  id: string;
  type: BpmNodeTypeEnum;
  name: string;
  showText?: string;
  // 孩子节点
  childNode?: SimpleFlowNode;
  // 条件节点
  conditionNodes?: SimpleFlowNode[];
  // 审批类型
  approveType?: ApproveType;
  // 候选人策略
  candidateStrategy?: number;
  // 候选人参数
  candidateParam?: string;
  // 多人审批方式
  approveMethod?: ApproveMethodType;
  // 通过比例
  approveRatio?: number;
  // 审批按钮设置
  buttonsSetting?: any[];
  // 表单权限
  fieldsPermission?: Array<Record<string, any>>;
  // 审批任务超时处理
  timeoutHandler?: TimeoutHandler;
  // 审批任务拒绝处理
  rejectHandler?: RejectHandler;
  // 审批人为空的处理
  assignEmptyHandler?: AssignEmptyHandler;
  // 审批节点的审批人与发起人相同时，对应的处理类型
  assignStartUserHandlerType?: number;
  // 创建任务监听器
  taskCreateListener?: ListenerHandler;
  // 创建任务监听器
  taskAssignListener?: ListenerHandler;
  // 创建任务监听器
  taskCompleteListener?: ListenerHandler;
  // 条件设置
  conditionSetting?: ConditionSetting;
  // 活动的状态，用于前端节点状态展示
  activityStatus?: BpmTaskStatusEnum;
  // 延迟设置
  delaySetting?: DelaySetting;
  // 路由分支
  routerGroups?: RouterSetting[];
  defaultFlowId?: string;
  // 签名
  signEnable?: boolean;
  // 审批意见
  reasonRequire?: boolean;
  // 跳过表达式
  skipExpression?: string;
  // 触发器设置
  triggerSetting?: TriggerSetting;
  // 子流程
  childProcessSetting?: ChildProcessSetting;
}

/**
 * 条件组默认值
 */
export const DEFAULT_CONDITION_GROUP_VALUE = {
  and: true,
  conditions: [
    {
      and: true,
      rules: [
        {
          opCode: '==',
          leftSide: undefined,
          rightSide: '',
        },
      ],
    },
  ],
};

// 节点未配置时显示的默认提示文本（原文 → 国际化 key）
export const NODE_DEFAULT_TEXT = new Map<number, string>();
// 请配置审批人
NODE_DEFAULT_TEXT.set(
  BpmNodeTypeEnum.USER_TASK_NODE,
  $t('bpm.simpleProcessDesign.nodeText.userTask'),
);
// 请配置抄送人
NODE_DEFAULT_TEXT.set(
  BpmNodeTypeEnum.COPY_TASK_NODE,
  $t('bpm.simpleProcessDesign.nodeText.copyTask'),
);
// 请设置条件
NODE_DEFAULT_TEXT.set(
  BpmNodeTypeEnum.CONDITION_NODE,
  $t('bpm.simpleProcessDesign.nodeText.condition'),
);
// 请设置发起人
NODE_DEFAULT_TEXT.set(
  BpmNodeTypeEnum.START_USER_NODE,
  $t('bpm.simpleProcessDesign.nodeText.startUser'),
);
// 请设置延迟器
NODE_DEFAULT_TEXT.set(
  BpmNodeTypeEnum.DELAY_TIMER_NODE,
  $t('bpm.simpleProcessDesign.nodeText.delayTimer'),
);
// 请设置路由节点
NODE_DEFAULT_TEXT.set(
  BpmNodeTypeEnum.ROUTER_BRANCH_NODE,
  $t('bpm.simpleProcessDesign.nodeText.routerBranch'),
);
// 请设置触发器
NODE_DEFAULT_TEXT.set(
  BpmNodeTypeEnum.TRIGGER_NODE,
  $t('bpm.simpleProcessDesign.nodeText.trigger'),
);
// 请设置办理人
NODE_DEFAULT_TEXT.set(
  BpmNodeTypeEnum.TRANSACTOR_NODE,
  $t('bpm.simpleProcessDesign.nodeText.transactor'),
);
// 请设置子流程
NODE_DEFAULT_TEXT.set(
  BpmNodeTypeEnum.CHILD_PROCESS_NODE,
  $t('bpm.simpleProcessDesign.nodeText.childProcess'),
);

// 节点的默认名称（原文 → 国际化 key）
export const NODE_DEFAULT_NAME = new Map<number, string>();
// 审批人
NODE_DEFAULT_NAME.set(
  BpmNodeTypeEnum.USER_TASK_NODE,
  $t('bpm.simpleProcessDesign.node.userTask'),
);
// 抄送人
NODE_DEFAULT_NAME.set(
  BpmNodeTypeEnum.COPY_TASK_NODE,
  $t('bpm.simpleProcessDesign.node.copyTask'),
);
// 条件
NODE_DEFAULT_NAME.set(
  BpmNodeTypeEnum.CONDITION_NODE,
  $t('bpm.simpleProcessDesign.node.condition'),
);
// 发起人
NODE_DEFAULT_NAME.set(
  BpmNodeTypeEnum.START_USER_NODE,
  $t('bpm.simpleProcessDesign.node.startUser'),
);
// 延迟器
NODE_DEFAULT_NAME.set(
  BpmNodeTypeEnum.DELAY_TIMER_NODE,
  $t('bpm.simpleProcessDesign.node.delayTimer'),
);
// 路由分支
NODE_DEFAULT_NAME.set(
  BpmNodeTypeEnum.ROUTER_BRANCH_NODE,
  $t('bpm.simpleProcessDesign.node.routerBranch'),
);
// 触发器
NODE_DEFAULT_NAME.set(
  BpmNodeTypeEnum.TRIGGER_NODE,
  $t('bpm.simpleProcessDesign.node.trigger'),
);
// 办理人
NODE_DEFAULT_NAME.set(
  BpmNodeTypeEnum.TRANSACTOR_NODE,
  $t('bpm.simpleProcessDesign.node.transactor'),
);
// 子流程
NODE_DEFAULT_NAME.set(
  BpmNodeTypeEnum.CHILD_PROCESS_NODE,
  $t('bpm.simpleProcessDesign.node.childProcess'),
);

// 候选人策略。暂时不从字典中取。 后续可能调整。控制显示顺序
// 原文 → 国际化 key（bpm.simpleProcessDesign.candidateStrategy.*）
export const CANDIDATE_STRATEGY: DictDataType[] = [
  // 指定成员
  {
    label: $t('bpm.simpleProcessDesign.candidateStrategy.assignUser'),
    value: CandidateStrategy.USER as any,
  },
  // 指定角色
  {
    label: $t('bpm.simpleProcessDesign.candidateStrategy.assignRole'),
    value: CandidateStrategy.ROLE as any,
  },
  // 指定岗位
  {
    label: $t('bpm.simpleProcessDesign.candidateStrategy.assignPost'),
    value: CandidateStrategy.POST as any,
  },
  // 部门成员
  {
    label: $t('bpm.simpleProcessDesign.candidateStrategy.deptMember'),
    value: CandidateStrategy.DEPT_MEMBER as any,
  },
  // 部门负责人
  {
    label: $t('bpm.simpleProcessDesign.candidateStrategy.deptLeader'),
    value: CandidateStrategy.DEPT_LEADER as any,
  },
  // 连续多级部门负责人
  {
    label: $t('bpm.simpleProcessDesign.candidateStrategy.multiLevelDeptLeader'),
    value: CandidateStrategy.MULTI_LEVEL_DEPT_LEADER as any,
  },
  // 发起人自选
  {
    label: $t('bpm.simpleProcessDesign.candidateStrategy.startUserSelect'),
    value: CandidateStrategy.START_USER_SELECT as any,
  },
  // 审批人自选
  {
    label: $t('bpm.simpleProcessDesign.candidateStrategy.approveUserSelect'),
    value: CandidateStrategy.APPROVE_USER_SELECT as any,
  },
  // 发起人本人
  {
    label: $t('bpm.simpleProcessDesign.candidateStrategy.startUserSelf'),
    value: CandidateStrategy.START_USER as any,
  },
  // 发起人部门负责人
  {
    label: $t('bpm.simpleProcessDesign.candidateStrategy.startUserDeptLeader'),
    value: CandidateStrategy.START_USER_DEPT_LEADER as any,
  },
  // 发起人连续部门负责人
  {
    label: $t(
      'bpm.simpleProcessDesign.candidateStrategy.startUserMultiLevelDeptLeader',
    ),
    value: CandidateStrategy.START_USER_MULTI_LEVEL_DEPT_LEADER as any,
  },
  // 用户组
  {
    label: $t('bpm.simpleProcessDesign.candidateStrategy.userGroup'),
    value: CandidateStrategy.USER_GROUP as any,
  },
  // 表单内用户字段
  {
    label: $t('bpm.simpleProcessDesign.candidateStrategy.formUserField'),
    value: CandidateStrategy.FORM_USER as any,
  },
  // 表单内部门负责人
  {
    label: $t('bpm.simpleProcessDesign.candidateStrategy.formDeptLeader'),
    value: CandidateStrategy.FORM_DEPT_LEADER as any,
  },
  // 流程表达式
  {
    label: $t('bpm.simpleProcessDesign.candidateStrategy.processExpression'),
    value: CandidateStrategy.EXPRESSION as any,
  },
];
// 审批节点 的审批类型（原文 → bpm.simpleProcessDesign.approveType.*）
export const APPROVE_TYPE: DictDataType[] = [
  // 人工审批
  {
    label: $t('bpm.simpleProcessDesign.approveType.manual'),
    value: ApproveType.USER as any,
  },
  // 自动通过
  {
    label: $t('bpm.simpleProcessDesign.approveType.autoApprove'),
    value: ApproveType.AUTO_APPROVE as any,
  },
  // 自动拒绝
  {
    label: $t('bpm.simpleProcessDesign.approveType.autoReject'),
    value: ApproveType.AUTO_REJECT as any,
  },
];

// 多人审批方式（原文 → bpm.simpleProcessDesign.approveMethod.*）
// 注：原文中的 "会签（可同时审批，至少 % 人必须审批通过）" 中 % 为动态数字占位，i18n 使用 {0}% 表示
export const APPROVE_METHODS: DictDataType[] = [
  // 按顺序依次审批
  {
    label: $t('bpm.simpleProcessDesign.approveMethod.sequential'),
    value: ApproveMethodType.SEQUENTIAL_APPROVE as any,
  },
  // 会签（可同时审批，至少 % 人必须审批通过）
  {
    label: $t('bpm.simpleProcessDesign.approveMethod.counterSign', [100]),
    value: ApproveMethodType.APPROVE_BY_RATIO as any,
  },
  // 或签(可同时审批，有一人通过即可)
  {
    label: $t('bpm.simpleProcessDesign.approveMethod.orSign'),
    value: ApproveMethodType.ANY_APPROVE as any,
  },
  // 随机挑选一人审批
  {
    label: $t('bpm.simpleProcessDesign.approveMethod.randomOne'),
    value: ApproveMethodType.RANDOM_SELECT_ONE_APPROVE as any,
  },
];

// 条件配置类型（原文 → bpm.simpleProcessDesign.condition.*）
export const CONDITION_CONFIG_TYPES: DictDataType[] = [
  // 条件规则
  {
    label: $t('bpm.simpleProcessDesign.condition.rule'),
    value: ConditionType.RULE as any,
  },
  // 条件表达式
  {
    label: $t('bpm.simpleProcessDesign.condition.expression'),
    value: ConditionType.EXPRESSION as any,
  },
];

// 时间单位类型（原文 → bpm.simpleProcessDesign.timeUnit.*）
export const TIME_UNIT_TYPES: DictDataType[] = [
  // 分钟
  {
    label: $t('bpm.simpleProcessDesign.timeUnit.minute'),
    value: TimeUnitType.MINUTE as any,
  },
  // 小时
  {
    label: $t('bpm.simpleProcessDesign.timeUnit.hour'),
    value: TimeUnitType.HOUR as any,
  },
  // 天
  {
    label: $t('bpm.simpleProcessDesign.timeUnit.day'),
    value: TimeUnitType.DAY as any,
  },
];
// 超时处理执行动作类型（原文 → bpm.simpleProcessDesign.timeoutHandlerType.*）
export const TIMEOUT_HANDLER_TYPES: DictDataType[] = [
  // 自动提醒
  {
    label: $t('bpm.simpleProcessDesign.timeoutHandlerType.autoRemind'),
    value: 1,
  },
  // 自动同意
  {
    label: $t('bpm.simpleProcessDesign.timeoutHandlerType.autoApprove'),
    value: 2,
  },
  // 自动拒绝
  {
    label: $t('bpm.simpleProcessDesign.timeoutHandlerType.autoReject'),
    value: 3,
  },
];
// 审批驳回处理类型（原文 → bpm.simpleProcessDesign.rejectHandlerType.*）
export const REJECT_HANDLER_TYPES: DictDataType[] = [
  // 终止流程
  {
    label: $t('bpm.simpleProcessDesign.rejectHandlerType.finishProcess'),
    value: RejectHandlerType.FINISH_PROCESS as any,
  },
  // 驳回到指定节点
  {
    label: $t('bpm.simpleProcessDesign.rejectHandlerType.returnNode'),
    value: RejectHandlerType.RETURN_USER_TASK as any,
  },
  // { label: '结束任务', value: RejectHandlerType.FINISH_TASK }
];
// 审批人为空的处理类型（原文 → bpm.simpleProcessDesign.assignEmptyHandlerType.*）
export const ASSIGN_EMPTY_HANDLER_TYPES: DictDataType[] = [
  // 自动通过
  {
    label: $t('bpm.simpleProcessDesign.assignEmptyHandlerType.autoApprove'),
    value: 1,
  },
  // 自动拒绝
  {
    label: $t('bpm.simpleProcessDesign.assignEmptyHandlerType.autoReject'),
    value: 2,
  },
  // 指定成员审批
  {
    label: $t('bpm.simpleProcessDesign.assignEmptyHandlerType.assignUser'),
    value: 3,
  },
  // 转交给流程管理员
  {
    label: $t('bpm.simpleProcessDesign.assignEmptyHandlerType.transferAdmin'),
    value: 4,
  },
];
// 审批人与发起人相同的处理类型（原文 → bpm.simpleProcessDesign.assignStartUserHandlerType.*）
export const ASSIGN_START_USER_HANDLER_TYPES: DictDataType[] = [
  // 由发起人对自己审批
  {
    label: $t('bpm.simpleProcessDesign.assignStartUserHandlerType.selfApprove'),
    value: 1,
  },
  // 自动跳过
  {
    label: $t('bpm.simpleProcessDesign.assignStartUserHandlerType.autoSkip'),
    value: 2,
  },
  // 转交给部门负责人审批
  {
    label: $t(
      'bpm.simpleProcessDesign.assignStartUserHandlerType.transferDeptLeader',
    ),
    value: 3,
  },
];

// 比较运算符（原文 → bpm.simpleProcessDesign.condition.op*）
export const COMPARISON_OPERATORS: DictDataType[] = [
  // 等于
  {
    value: '==',
    label: $t('bpm.simpleProcessDesign.condition.opEq'),
  },
  // 不等于
  {
    value: '!=',
    label: $t('bpm.simpleProcessDesign.condition.opNe'),
  },
  // 大于
  {
    value: '>',
    label: $t('bpm.simpleProcessDesign.condition.opGt'),
  },
  // 大于等于
  {
    value: '>=',
    label: $t('bpm.simpleProcessDesign.condition.opGte'),
  },
  // 小于
  {
    value: '<',
    label: $t('bpm.simpleProcessDesign.condition.opLt'),
  },
  // 小于等于
  {
    value: '<=',
    label: $t('bpm.simpleProcessDesign.condition.opLte'),
  },
  // 包含
  {
    value: 'contain',
    label: $t('bpm.simpleProcessDesign.condition.opContains'),
  },
  // 不包含
  {
    value: '!contain',
    label: $t('bpm.simpleProcessDesign.condition.opNotContains'),
  },
];
// 审批操作按钮名称（原文 → bpm.simpleProcessDesign.operation.*）
export const OPERATION_BUTTON_NAME = new Map<number, string>();
// 通过
OPERATION_BUTTON_NAME.set(
  OperationButtonType.APPROVE,
  $t('bpm.simpleProcessDesign.operation.approve'),
);
// 拒绝
OPERATION_BUTTON_NAME.set(
  OperationButtonType.REJECT,
  $t('bpm.simpleProcessDesign.operation.reject'),
);
// 转办
OPERATION_BUTTON_NAME.set(
  OperationButtonType.TRANSFER,
  $t('bpm.simpleProcessDesign.operation.transfer'),
);
// 委派
OPERATION_BUTTON_NAME.set(
  OperationButtonType.DELEGATE,
  $t('bpm.simpleProcessDesign.operation.delegate'),
);
// 加签
OPERATION_BUTTON_NAME.set(
  OperationButtonType.ADD_SIGN,
  $t('bpm.simpleProcessDesign.operation.addSign'),
);
// 退回
OPERATION_BUTTON_NAME.set(
  OperationButtonType.RETURN,
  $t('bpm.simpleProcessDesign.operation.return'),
);
// 抄送
OPERATION_BUTTON_NAME.set(
  OperationButtonType.COPY,
  $t('bpm.simpleProcessDesign.operation.copy'),
);

// 默认的按钮权限设置（displayName 原文 → bpm.simpleProcessDesign.operation.*）
export const DEFAULT_BUTTON_SETTING: ButtonSetting[] = [
  // 通过
  {
    id: OperationButtonType.APPROVE,
    displayName: $t('bpm.simpleProcessDesign.operation.approve'),
    enable: true,
  },
  // 拒绝
  {
    id: OperationButtonType.REJECT,
    displayName: $t('bpm.simpleProcessDesign.operation.reject'),
    enable: true,
  },
  // 转办
  {
    id: OperationButtonType.TRANSFER,
    displayName: $t('bpm.simpleProcessDesign.operation.transfer'),
    enable: true,
  },
  // 委派
  {
    id: OperationButtonType.DELEGATE,
    displayName: $t('bpm.simpleProcessDesign.operation.delegate'),
    enable: true,
  },
  // 加签
  {
    id: OperationButtonType.ADD_SIGN,
    displayName: $t('bpm.simpleProcessDesign.operation.addSign'),
    enable: true,
  },
  // 退回
  {
    id: OperationButtonType.RETURN,
    displayName: $t('bpm.simpleProcessDesign.operation.return'),
    enable: true,
  },
];

// 办理人默认的按钮权限设置（displayName 原文 → bpm.simpleProcessDesign.operation.*）
export const TRANSACTOR_DEFAULT_BUTTON_SETTING: ButtonSetting[] = [
  // 办理
  {
    id: OperationButtonType.APPROVE,
    displayName: $t('bpm.simpleProcessDesign.operation.handle'),
    enable: true,
  },
  // 拒绝
  {
    id: OperationButtonType.REJECT,
    displayName: $t('bpm.simpleProcessDesign.operation.reject'),
    enable: false,
  },
  // 转办
  {
    id: OperationButtonType.TRANSFER,
    displayName: $t('bpm.simpleProcessDesign.operation.transfer'),
    enable: false,
  },
  // 委派
  {
    id: OperationButtonType.DELEGATE,
    displayName: $t('bpm.simpleProcessDesign.operation.delegate'),
    enable: false,
  },
  // 加签
  {
    id: OperationButtonType.ADD_SIGN,
    displayName: $t('bpm.simpleProcessDesign.operation.addSign'),
    enable: false,
  },
  // 退回
  {
    id: OperationButtonType.RETURN,
    displayName: $t('bpm.simpleProcessDesign.operation.return'),
    enable: false,
  },
];

// 发起人的按钮权限。暂时定死，不可以编辑（displayName 原文 → bpm.simpleProcessDesign.operation.*）
export const START_USER_BUTTON_SETTING: ButtonSetting[] = [
  // 提交
  {
    id: OperationButtonType.APPROVE,
    displayName: $t('bpm.simpleProcessDesign.operation.submit'),
    enable: true,
  },
  // 拒绝
  {
    id: OperationButtonType.REJECT,
    displayName: $t('bpm.simpleProcessDesign.operation.reject'),
    enable: false,
  },
  // 转办
  {
    id: OperationButtonType.TRANSFER,
    displayName: $t('bpm.simpleProcessDesign.operation.transfer'),
    enable: false,
  },
  // 委派
  {
    id: OperationButtonType.DELEGATE,
    displayName: $t('bpm.simpleProcessDesign.operation.delegate'),
    enable: false,
  },
  // 加签
  {
    id: OperationButtonType.ADD_SIGN,
    displayName: $t('bpm.simpleProcessDesign.operation.addSign'),
    enable: false,
  },
  // 退回
  {
    id: OperationButtonType.RETURN,
    displayName: $t('bpm.simpleProcessDesign.operation.return'),
    enable: false,
  },
];

// 多级部门等级（原文 → bpm.simpleProcessDesign.deptLevel.levelN）
export const MULTI_LEVEL_DEPT: DictDataType[] = [
  // 第 1 级部门
  { label: $t('bpm.simpleProcessDesign.deptLevel.level1'), value: 1 },
  // 第 2 级部门
  { label: $t('bpm.simpleProcessDesign.deptLevel.level2'), value: 2 },
  // 第 3 级部门
  { label: $t('bpm.simpleProcessDesign.deptLevel.level3'), value: 3 },
  // 第 4 级部门
  { label: $t('bpm.simpleProcessDesign.deptLevel.level4'), value: 4 },
  // 第 5 级部门
  { label: $t('bpm.simpleProcessDesign.deptLevel.level5'), value: 5 },
  // 第 6 级部门
  { label: $t('bpm.simpleProcessDesign.deptLevel.level6'), value: 6 },
  // 第 7 级部门
  { label: $t('bpm.simpleProcessDesign.deptLevel.level7'), value: 7 },
  // 第 8 级部门
  { label: $t('bpm.simpleProcessDesign.deptLevel.level8'), value: 8 },
  // 第 9 级部门
  { label: $t('bpm.simpleProcessDesign.deptLevel.level9'), value: 9 },
  // 第 10 级部门
  { label: $t('bpm.simpleProcessDesign.deptLevel.level10'), value: 10 },
  // 第 11 级部门
  { label: $t('bpm.simpleProcessDesign.deptLevel.level11'), value: 11 },
  // 第 12 级部门
  { label: $t('bpm.simpleProcessDesign.deptLevel.level12'), value: 12 },
  // 第 13 级部门
  { label: $t('bpm.simpleProcessDesign.deptLevel.level13'), value: 13 },
  // 第 14 级部门
  { label: $t('bpm.simpleProcessDesign.deptLevel.level14'), value: 14 },
  // 第 15 级部门
  { label: $t('bpm.simpleProcessDesign.deptLevel.level15'), value: 15 },
];

// 延迟类型（原文 → bpm.simpleProcessDesign.delayType.*）
export const DELAY_TYPE = [
  // 固定时长
  {
    label: $t('bpm.simpleProcessDesign.delayType.fixedDuration'),
    value: DelayTypeEnum.FIXED_TIME_DURATION,
  },
  // 固定日期
  {
    label: $t('bpm.simpleProcessDesign.delayType.fixedDate'),
    value: DelayTypeEnum.FIXED_DATE_TIME,
  },
];

// HTTP 请求参数来源类型（原文 → bpm.simpleProcessDesign.httpRequest.*）
export const BPM_HTTP_REQUEST_PARAM_TYPES = [
  // 固定值
  {
    value: 1,
    label: $t('bpm.simpleProcessDesign.httpRequest.fixedValue'),
  },
  // 表单
  {
    value: 2,
    label: $t('bpm.simpleProcessDesign.httpRequest.fromForm'),
  },
];

// 触发器类型（原文 → bpm.simpleProcessDesign.trigger.*）
export const TRIGGER_TYPES: DictDataType[] = [
  // 发送 HTTP 请求
  {
    label: $t('bpm.simpleProcessDesign.trigger.httpRequest'),
    value: TriggerTypeEnum.HTTP_REQUEST as any,
  },
  // 接收 HTTP 回调
  {
    label: $t('bpm.simpleProcessDesign.trigger.httpCallback'),
    value: TriggerTypeEnum.HTTP_CALLBACK as any,
  },
  // 修改表单数据
  {
    label: $t('bpm.simpleProcessDesign.trigger.formUpdate'),
    value: TriggerTypeEnum.FORM_UPDATE as any,
  },
  // 删除表单数据
  {
    label: $t('bpm.simpleProcessDesign.trigger.formDelete'),
    value: TriggerTypeEnum.FORM_DELETE as any,
  },
];

// 子流程发起人类型（原文 → bpm.simpleProcessDesign.childProcess.sameAsMain / fromForm）
export const CHILD_PROCESS_START_USER_TYPE = [
  // 同主流程发起人
  {
    label: $t('bpm.simpleProcessDesign.childProcess.sameAsMain'),
    value: ChildProcessStartUserTypeEnum.MAIN_PROCESS_START_USER,
  },
  // 从表单中获取
  {
    label: $t('bpm.simpleProcessDesign.childProcess.fromFormUser'),
    value: ChildProcessStartUserTypeEnum.FROM_FORM,
  },
];

// 子流程发起人为空的处理类型（原文 → bpm.simpleProcessDesign.childProcess.*）
export const CHILD_PROCESS_START_USER_EMPTY_TYPE = [
  // 同主流程发起人
  {
    label: $t('bpm.simpleProcessDesign.childProcess.sameAsMain'),
    value: ChildProcessStartUserEmptyTypeEnum.MAIN_PROCESS_START_USER,
  },
  // 子流程管理员
  {
    label: $t('bpm.simpleProcessDesign.childProcess.childAdmin'),
    value: ChildProcessStartUserEmptyTypeEnum.CHILD_PROCESS_ADMIN,
  },
  // 主流程管理员
  {
    label: $t('bpm.simpleProcessDesign.childProcess.mainAdmin'),
    value: ChildProcessStartUserEmptyTypeEnum.MAIN_PROCESS_ADMIN,
  },
];

// 子流程多实例来源类型（原文 → bpm.simpleProcessDesign.childProcess.*）
export const CHILD_PROCESS_MULTI_INSTANCE_SOURCE_TYPE = [
  // 固定数量
  {
    label: $t('bpm.simpleProcessDesign.childProcess.fixedQuantity'),
    value: ChildProcessMultiInstanceSourceTypeEnum.FIXED_QUANTITY,
  },
  // 数字表单
  {
    label: $t('bpm.simpleProcessDesign.childProcess.numberForm'),
    value: ChildProcessMultiInstanceSourceTypeEnum.NUMBER_FORM,
  },
  // 多选表单
  {
    label: $t('bpm.simpleProcessDesign.childProcess.multiForm'),
    value: ChildProcessMultiInstanceSourceTypeEnum.MULTIPLE_FORM,
  },
];
