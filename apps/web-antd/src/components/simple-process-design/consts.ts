import { BpmNodeTypeEnum, BpmTaskStatusEnum } from '#/utils';

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

/**
 * 审批类型下拉选项。
 * label 为 i18n key（供 Vue 组件通过 $t 翻译），value 为 ApproveType 枚举值。
 */
export const APPROVE_TYPE: Array<{ label: string; value: number }> = [
  {
    label: 'bpm.simpleProcessDesign.approveType.manual',
    value: ApproveType.USER,
  },
  {
    label: 'bpm.simpleProcessDesign.approveType.autoApprove',
    value: ApproveType.AUTO_APPROVE,
  },
  {
    label: 'bpm.simpleProcessDesign.approveType.autoReject',
    value: ApproveType.AUTO_REJECT,
  },
];

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

/**
 * HTTP 请求参数类型的下拉选项（固定值 / 表单）。
 */

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

/**
 * 条件节点配置类型的下拉选项（表达式 / 条件规则）。
 * label 为 i18n key，value 为 ConditionType 枚举值。
 */
export const CONDITION_CONFIG_TYPES: Array<{ label: string; value: number }> = [
  {
    label: 'bpm.simpleProcessDesign.condition.rule',
    value: ConditionType.RULE,
  },
  {
    label: 'bpm.simpleProcessDesign.condition.expression',
    value: ConditionType.EXPRESSION,
  },
];

/**
 * 条件比较操作符枚举（用于条件节点的条件规则配置）
 * 用作前端下拉选择器的选项，与后端 opCode 字符串一一对应。
 */
export enum ComparisonOperatorEnum {
  /** 包含（字符串） */
  CONTAINS = 'contains',
  /** 等于 */
  EQ = '==',
  /** 大于 */
  GT = '>',
  /** 大于等于 */
  GTE = '>=',
  /** 为空 */
  IS_EMPTY = 'isEmpty',
  /** 不为空 */
  IS_NOT_EMPTY = 'isNotEmpty',
  /** 小于 */
  LT = '<',
  /** 小于等于 */
  LTE = '<=',
  /** 不等于 */
  NE = '!=',
  /** 不包含（字符串） */
  NOT_CONTAINS = 'notContains',
}

/**
 * 比较操作符下拉选项（用于条件规则的操作符选择）。
 * label 为 i18n key 前缀（实际渲染时由 Vue 组件做 $t 转换），
 * value 为后端 opCode 字符串，直接参与条件表达式求值。
 */
export const COMPARISON_OPERATORS: Array<{ label: string; value: string }> = [
  {
    label: 'bpm.simpleProcessDesign.condition.opEq',
    value: ComparisonOperatorEnum.EQ,
  },
  {
    label: 'bpm.simpleProcessDesign.condition.opNe',
    value: ComparisonOperatorEnum.NE,
  },
  {
    label: 'bpm.simpleProcessDesign.condition.opLt',
    value: ComparisonOperatorEnum.LT,
  },
  {
    label: 'bpm.simpleProcessDesign.condition.opLte',
    value: ComparisonOperatorEnum.LTE,
  },
  {
    label: 'bpm.simpleProcessDesign.condition.opGt',
    value: ComparisonOperatorEnum.GT,
  },
  {
    label: 'bpm.simpleProcessDesign.condition.opGte',
    value: ComparisonOperatorEnum.GTE,
  },
  {
    label: 'bpm.simpleProcessDesign.condition.opContains',
    value: ComparisonOperatorEnum.CONTAINS,
  },
  {
    label: 'bpm.simpleProcessDesign.condition.opNotContains',
    value: ComparisonOperatorEnum.NOT_CONTAINS,
  },
  {
    label: 'bpm.simpleProcessDesign.condition.opIsEmpty',
    value: ComparisonOperatorEnum.IS_EMPTY,
  },
  {
    label: 'bpm.simpleProcessDesign.condition.opIsNotEmpty',
    value: ComparisonOperatorEnum.IS_NOT_EMPTY,
  },
];

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

/**
 * 触发器类型下拉选项。
 * label 为 i18n key，value 为 TriggerTypeEnum 枚举值。
 */
export const TRIGGER_TYPES: Array<{ label: string; value: number }> = [
  {
    label: 'bpm.simpleProcessDesign.trigger.httpRequest',
    value: TriggerTypeEnum.HTTP_REQUEST,
  },
  {
    label: 'bpm.simpleProcessDesign.trigger.httpCallback',
    value: TriggerTypeEnum.HTTP_CALLBACK,
  },
  {
    label: 'bpm.simpleProcessDesign.trigger.formUpdate',
    value: TriggerTypeEnum.FORM_UPDATE,
  },
  {
    label: 'bpm.simpleProcessDesign.trigger.formDelete',
    value: TriggerTypeEnum.FORM_DELETE,
  },
];

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

/**
 * HTTP 请求参数类型的下拉选项（固定值 / 表单）。
 * label 为 i18n key，value 为 BpmHttpRequestParamTypeEnum 枚举值。
 */
export const BPM_HTTP_REQUEST_PARAM_TYPES: Array<{
  label: string;
  value: number;
}> = [
  {
    label: 'bpm.simpleProcessDesign.httpRequest.fixedValue',
    value: BpmHttpRequestParamTypeEnum.FIXED_VALUE,
  },
  {
    label: 'bpm.simpleProcessDesign.httpRequest.fromForm',
    value: BpmHttpRequestParamTypeEnum.FROM_FORM,
  },
];

// HTTP 请求参数类型结构定义
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
