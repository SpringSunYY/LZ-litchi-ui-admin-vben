// @ts-nocheck 比较复杂
import type { Ref } from 'vue';

import type {
  ConditionGroup,
  HttpRequestParam,
  SimpleFlowNode,
} from './consts';

import type { BpmUserGroupApi } from '#/api/bpm/userGroup';
import type { SystemDeptApi } from '#/api/system/dept';
import type { SystemPostApi } from '#/api/system/post';
import type { SystemRoleApi } from '#/api/system/role';
import type { SystemUserApi } from '#/api/system/user';

import { inject, nextTick, ref, toRaw, unref, watch } from 'vue';

import { $t } from '#/locales';
import {
  BpmNodeTypeEnum,
  BpmTaskStatusEnum,
  ProcessVariableEnum,
} from '#/utils';

import {
  ApproveMethodType,
  AssignEmptyHandlerType,
  AssignStartUserHandlerType,
  CandidateStrategy,
  ConditionType,
  FieldPermissionType,
  RejectHandlerType,
} from './consts';
import { NODE_DEFAULT_NAME } from './locales/simple-process-design';

/**
 * 监听流程节点 props 变化，返回响应式 Ref。
 * 当父组件传入新的 flowNode 时，自动更新返回值。
 */
export function useWatchNode(props: {
  flowNode: SimpleFlowNode;
}): Ref<SimpleFlowNode> {
  const node = ref<SimpleFlowNode>(props.flowNode);
  watch(
    () => props.flowNode,
    (newValue) => {
      node.value = newValue;
    },
  );
  return node;
}

// ---------------------------------------------------------------------------
// 表单字段解析
// ---------------------------------------------------------------------------

/**
 * 解析 formCreate 生成的表单配置字符串数组，返回扁平化的字段列表。
 * @param formFields formCreate 生成的字段配置字符串数组（如 `[{field:'name',title:'姓名'}]`）
 */
function parseFormCreateFields(formFields?: string[]) {
  const result: Array<Record<string, any>>[] = [];
  if (formFields) {
    formFields.forEach((fieldStr: string) => {
      parseFormFields(JSON.parse(fieldStr), result);
    });
  }
  return result;
}

/**
 * 递归解析表单组件的 field / title / required 等字段。
 *
 * @param rule    组件生成规则，参考 https://www.form-create.com/v3/guide/rule
 * @param fields  解析后的字段输出数组（就地修改）
 * @param parentTitle  子表单场景下的父级标题，默认为空
 */
export const parseFormFields = (
  rule: Record<string, any>,
  fields: Array<Record<string, any>>[] = [],
  parentTitle: string = '',
) => {
  const { type, field, $required, title: tempTitle, children } = rule;
  if (field && tempTitle) {
    let title = tempTitle;
    if (parentTitle) {
      title = `${parentTitle}.${tempTitle}`;
    }
    let required = false;
    if ($required) {
      required = true;
    }
    fields.push({
      field,
      title,
      type,
      required,
    });
  }
  if (children && Array.isArray(children)) {
    children.forEach((rule) => {
      parseFormFields(rule, fields);
    });
  }
};

// ---------------------------------------------------------------------------
// 表单字段权限
// ---------------------------------------------------------------------------

/**
 * 表单数据权限配置 composable，用于发起人节点、审批节点、抄送节点。
 * 管理节点配置的表单字段权限（只读/可编辑/隐藏）。
 *
 * @param defaultPermission  默认权限（通常为只读 FieldPermissionType.READ）
 */
export function useFormFieldsPermission(
  defaultPermission: FieldPermissionType,
) {
  const fieldsPermissionConfig = ref<Array<Record<string, any>>>([]);

  const formType = inject<Ref<number | undefined>>('formType', ref());
  const formFields = inject<Ref<string[]>>('formFields', ref([]));

  /**
   * 根据节点已有配置初始化字段权限。
   * 若节点无配置，则以表单全部字段生成默认只读权限。
   */
  function getNodeConfigFormFields(
    nodeFormFields?: Array<Record<string, string>>,
  ) {
    nodeFormFields = toRaw(nodeFormFields);
    fieldsPermissionConfig.value =
      !nodeFormFields || nodeFormFields.length === 0
        ? getDefaultFieldsPermission(unref(formFields))
        : mergeFieldsPermission(nodeFormFields, unref(formFields));
  }

  /**
   * 合并已有权限配置与当前表单字段。
   * 处理字段新增（新增字段默认只读）和字段删除（自动忽略已删除字段）两种情况。
   */
  function mergeFieldsPermission(
    formFieldsPermisson: Array<Record<string, string>>,
    formFields?: string[],
  ) {
    let mergedFieldsPermission: Array<Record<string, any>> = [];
    if (formFields) {
      mergedFieldsPermission = parseFormCreateFields(formFields).map((item) => {
        const found = formFieldsPermisson.find(
          (fieldPermission) => fieldPermission.field === item.field,
        );
        return {
          field: item.field,
          title: item.title,
          permission: found ? found.permission : defaultPermission,
        };
      });
    }
    return mergedFieldsPermission;
  }

  /**
   * 生成默认字段权限（所有字段统一设为 defaultPermission）。
   */
  function getDefaultFieldsPermission(formFields?: string[]) {
    let defaultFieldsPermission: Array<Record<string, any>> = [];
    if (formFields) {
      defaultFieldsPermission = parseFormCreateFields(formFields).map(
        (item) => {
          return {
            field: item.field,
            title: item.title,
            permission: defaultPermission,
          };
        },
      );
    }
    return defaultFieldsPermission;
  }

  const formFieldOptions = parseFormCreateFields(unref(formFields));

  return {
    formType,
    fieldsPermissionConfig,
    formFieldOptions,
    getNodeConfigFormFields,
  };
}

/**
 * 获取流程表单的字段列表（不含发起人字段）。
 */
export function useFormFields() {
  const formFields = inject<Ref<string[]>>('formFields', ref([]));
  return parseFormCreateFields(unref(formFields));
}

// TODO @芋艿：后续需要把各种类似 useFormFieldsPermission 的逻辑，抽成一个通用方法。

/**
 * 获取流程表单的字段列表，并在头部插入"发起人"字段选项。
 * 用于审批节点/抄送节点中，条件规则可选择发起人作为左值。
 */
export function useFormFieldsAndStartUser() {
  const injectFormFields = inject<Ref<string[]>>('formFields', ref([]));
  const formFields = parseFormCreateFields(unref(injectFormFields));
  // 在字段列表头部插入"发起人"字段
  formFields.unshift({
    field: ProcessVariableEnum.START_USER_ID,
    title: $t('bpm.simpleProcessDesign.action.startUserFieldTitle'),
    required: true,
  });
  return formFields;
}

// ---------------------------------------------------------------------------
// 类型定义
// ---------------------------------------------------------------------------

export type UserTaskFormType = {
  approveMethod: ApproveMethodType;
  approveRatio?: number;
  assignEmptyHandlerType?: AssignEmptyHandlerType;
  assignEmptyHandlerUserIds?: number[];
  assignStartUserHandlerType?: AssignStartUserHandlerType;
  buttonsSetting: any[];
  candidateStrategy: CandidateStrategy;
  deptIds?: number[];
  deptLevel?: number;
  expression?: string;
  formDept?: string;
  formUser?: string;
  maxRemindCount?: number;
  postIds?: number[];
  reasonRequire: boolean;
  rejectHandlerType?: RejectHandlerType;
  returnNodeId?: string;
  roleIds?: number[];
  signEnable: boolean;
  taskAssignListener?: {
    body: HttpRequestParam[];
    header: HttpRequestParam[];
  };
  taskAssignListenerEnable?: boolean;
  taskAssignListenerPath?: string;
  taskCompleteListener?: {
    body: HttpRequestParam[];
    header: HttpRequestParam[];
  };
  taskCompleteListenerEnable?: boolean;
  taskCompleteListenerPath?: string;
  taskCreateListener?: {
    body: HttpRequestParam[];
    header: HttpRequestParam[];
  };
  taskCreateListenerEnable?: boolean;
  taskCreateListenerPath?: string;
  timeDuration?: number;
  timeoutHandlerEnable?: boolean;
  timeoutHandlerType?: number;
  userGroups?: number[];
  userIds?: number[];
};

export type CopyTaskFormType = {
  candidateStrategy: CandidateStrategy;
  deptIds?: number[];
  deptLevel?: number;
  expression?: string;
  formDept?: string;
  formUser?: string;
  postIds?: number[];
  roleIds?: number[];
  userGroups?: number[];
  userIds?: number[];
};

// ---------------------------------------------------------------------------
// 节点表单配置 composable
// ---------------------------------------------------------------------------

/**
 * 节点（审批节点 / 抄送节点）的候选人配置 composable。
 * 提供候选人选项、候选人参数序列化/反序列化，以及节点显示文本生成。
 *
 * @param nodeType 节点类型（用于判断是审批节点还是抄送节点）
 */
export function useNodeForm(nodeType: BpmNodeTypeEnum) {
  const roleOptions = inject<Ref<SystemRoleApi.Role[]>>('roleList', ref([]));
  const postOptions = inject<Ref<SystemPostApi.Post[]>>('postList', ref([]));
  const userOptions = inject<Ref<SystemUserApi.User[]>>('userList', ref([]));
  const deptOptions = inject<Ref<SystemDeptApi.Dept[]>>('deptList', ref([]));
  const userGroupOptions = inject<Ref<BpmUserGroupApi.UserGroupVO[]>>(
    'userGroupList',
    ref([]),
  );
  const deptTreeOptions = inject<Ref<SystemDeptApi.Dept[]>>(
    'deptTree',
    ref([]),
  );
  const formFields = inject<Ref<string[]>>('formFields', ref([]));
  const configForm = ref<any | CopyTaskFormType | UserTaskFormType>();

  if (
    nodeType === BpmNodeTypeEnum.USER_TASK_NODE ||
    nodeType === BpmNodeTypeEnum.TRANSACTOR_NODE
  ) {
    configForm.value = {
      candidateStrategy: CandidateStrategy.USER,
      approveMethod: ApproveMethodType.SEQUENTIAL_APPROVE,
      approveRatio: 100,
      rejectHandlerType: RejectHandlerType.FINISH_PROCESS,
      assignStartUserHandlerType: AssignStartUserHandlerType.START_USER_AUDIT,
      returnNodeId: '',
      timeoutHandlerEnable: false,
      timeoutHandlerType: 1,
      timeDuration: 6,
      maxRemindCount: 1,
      buttonsSetting: [],
    };
  }
  configForm.value = {
    candidateStrategy: CandidateStrategy.USER,
  };

  /**
   * 根据当前候选人策略和选项，生成节点显示文本。
   * 例如："指定成员：张三、李四" / "部门负责人：技术部" 等。
   */
  function getShowText(): string {
    let showText = '';

    if (
      configForm.value?.candidateStrategy === CandidateStrategy.USER &&
      configForm.value?.userIds?.length > 0
    ) {
      const candidateNames: string[] = [];
      userOptions?.value.forEach((item: any) => {
        if (configForm.value?.userIds?.includes(item.id)) {
          candidateNames.push(item.nickname);
        }
      });
      showText = `${$t('bpm.simpleProcessDesign.candidateStrategy.assignUser')}：${candidateNames.join(',')}`;
    }

    if (
      configForm.value?.candidateStrategy === CandidateStrategy.ROLE &&
      configForm.value.roleIds?.length > 0
    ) {
      const candidateNames: string[] = [];
      roleOptions?.value.forEach((item: any) => {
        if (configForm.value?.roleIds?.includes(item.id)) {
          candidateNames.push(item.name);
        }
      });
      showText = `${$t('bpm.simpleProcessDesign.candidateStrategy.assignRole')}：${candidateNames.join(',')}`;
    }

    if (
      (configForm.value?.candidateStrategy === CandidateStrategy.DEPT_MEMBER ||
        configForm.value?.candidateStrategy === CandidateStrategy.DEPT_LEADER ||
        configForm.value?.candidateStrategy ===
          CandidateStrategy.MULTI_LEVEL_DEPT_LEADER) &&
      configForm.value?.deptIds?.length > 0
    ) {
      const candidateNames: string[] = [];
      deptOptions?.value.forEach((item) => {
        if (configForm.value?.deptIds?.includes(item.id)) {
          candidateNames.push(item.name);
        }
      });
      if (
        configForm.value.candidateStrategy === CandidateStrategy.DEPT_MEMBER
      ) {
        showText = `${$t('bpm.simpleProcessDesign.candidateStrategy.deptMember')}：${candidateNames.join(',')}`;
      } else if (
        configForm.value.candidateStrategy === CandidateStrategy.DEPT_LEADER
      ) {
        showText = `${$t('bpm.simpleProcessDesign.candidateStrategy.deptLeader')}：${candidateNames.join(',')}`;
      } else {
        showText = `${$t('bpm.simpleProcessDesign.candidateStrategy.multiLevelDeptLeader')}：${candidateNames.join(',')}`;
      }
    }

    if (
      configForm.value?.candidateStrategy === CandidateStrategy.POST &&
      configForm.value.postIds?.length > 0
    ) {
      const candidateNames: string[] = [];
      postOptions?.value.forEach((item) => {
        if (configForm.value?.postIds?.includes(item.id)) {
          candidateNames.push(item.name);
        }
      });
      showText = `${$t('bpm.simpleProcessDesign.candidateStrategy.assignPost')}：${candidateNames.join(',')}`;
    }

    if (
      configForm.value?.candidateStrategy === CandidateStrategy.USER_GROUP &&
      configForm.value?.userGroups?.length > 0
    ) {
      const candidateNames: string[] = [];
      userGroupOptions?.value.forEach((item) => {
        if (configForm.value?.userGroups?.includes(item.id)) {
          candidateNames.push(item.name);
        }
      });
      showText = `${$t('bpm.simpleProcessDesign.candidateStrategy.userGroup')}：${candidateNames.join(',')}`;
    }

    if (configForm.value?.candidateStrategy === CandidateStrategy.FORM_USER) {
      const formFieldOptions = parseFormCreateFields(unref(formFields));
      const item = formFieldOptions.find(
        (item) => item.field === configForm.value?.formUser,
      );
      showText = $t('bpm.simpleProcessDesign.action.formUser', [
        item?.title ?? '',
      ]);
    }

    if (
      configForm.value?.candidateStrategy === CandidateStrategy.FORM_DEPT_LEADER
    ) {
      showText = $t('bpm.simpleProcessDesign.action.formDeptLeader');
    }

    if (
      configForm.value?.candidateStrategy ===
      CandidateStrategy.APPROVE_USER_SELECT
    ) {
      showText = $t('bpm.simpleProcessDesign.action.approveUserSelect');
    }

    if (
      configForm.value?.candidateStrategy ===
      CandidateStrategy.START_USER_SELECT
    ) {
      showText = $t('bpm.simpleProcessDesign.action.startUserSelect');
    }

    if (configForm.value?.candidateStrategy === CandidateStrategy.START_USER) {
      showText = $t('bpm.simpleProcessDesign.action.startUserSelf');
    }

    if (
      configForm.value?.candidateStrategy ===
      CandidateStrategy.START_USER_DEPT_LEADER
    ) {
      showText = $t('bpm.simpleProcessDesign.action.startUserDeptLeader');
    }

    if (
      configForm.value?.candidateStrategy ===
      CandidateStrategy.START_USER_MULTI_LEVEL_DEPT_LEADER
    ) {
      showText = $t(
        'bpm.simpleProcessDesign.action.startUserMultiLevelDeptLeader',
      );
    }

    if (configForm.value?.candidateStrategy === CandidateStrategy.EXPRESSION) {
      showText = `${$t('bpm.simpleProcessDesign.action.expression')}：${configForm.value.expression}`;
    }

    return showText;
  }

  /**
   * 将 configForm 中的候选人参数（userIds / deptIds 等）序列化为字符串，
   * 写入 candidateParam 字段，供后端解析。
   */
  function handleCandidateParam() {
    let candidateParam: string | undefined;
    if (!configForm.value) {
      return candidateParam;
    }
    switch (configForm.value.candidateStrategy) {
      case CandidateStrategy.DEPT_LEADER:
      case CandidateStrategy.DEPT_MEMBER: {
        candidateParam = configForm.value.deptIds?.join(',');
        break;
      }
      case CandidateStrategy.EXPRESSION: {
        candidateParam = configForm.value.expression;
        break;
      }
      case CandidateStrategy.FORM_DEPT_LEADER: {
        const deptFieldOnForm = configForm.value.formDept;
        candidateParam = deptFieldOnForm?.concat(
          `|${configForm.value.deptLevel}`,
        );
        break;
      }
      case CandidateStrategy.FORM_USER: {
        candidateParam = configForm.value?.formUser;
        break;
      }
      case CandidateStrategy.MULTI_LEVEL_DEPT_LEADER: {
        const deptIds = configForm.value.deptIds?.join(',');
        candidateParam = deptIds?.concat(`|${configForm.value.deptLevel}`);
        break;
      }
      case CandidateStrategy.POST: {
        candidateParam = configForm.value.postIds?.join(',');
        break;
      }
      case CandidateStrategy.ROLE: {
        candidateParam = configForm.value.roleIds?.join(',');
        break;
      }
      case CandidateStrategy.START_USER_DEPT_LEADER:
      case CandidateStrategy.START_USER_MULTI_LEVEL_DEPT_LEADER: {
        candidateParam = `${configForm.value.deptLevel}`;
        break;
      }
      case CandidateStrategy.USER: {
        candidateParam = configForm.value.userIds?.join(',');
        break;
      }
      case CandidateStrategy.USER_GROUP: {
        candidateParam = configForm.value.userGroups?.join(',');
        break;
      }
      default: {
        break;
      }
    }
    return candidateParam;
  }

  /**
   * 将后端返回的 candidateParam 字符串反序列化，写回 configForm。
   * 用于编辑已有节点时还原候选人配置。
   */
  function parseCandidateParam(
    candidateStrategy: CandidateStrategy,
    candidateParam: string | undefined,
  ) {
    if (!configForm.value || !candidateParam) {
      return;
    }
    switch (candidateStrategy) {
      case CandidateStrategy.DEPT_LEADER:
      case CandidateStrategy.DEPT_MEMBER: {
        configForm.value.deptIds = candidateParam
          .split(',')
          .map((item) => +item);
        break;
      }
      case CandidateStrategy.EXPRESSION: {
        configForm.value.expression = candidateParam;
        break;
      }
      case CandidateStrategy.FORM_DEPT_LEADER: {
        const paramArray = candidateParam.split('|');
        if (paramArray.length > 1) {
          configForm.value.formDept = paramArray[0];
          if (paramArray[1]) configForm.value.deptLevel = +paramArray[1];
        }
        break;
      }
      case CandidateStrategy.FORM_USER: {
        configForm.value.formUser = candidateParam;
        break;
      }
      case CandidateStrategy.MULTI_LEVEL_DEPT_LEADER: {
        const paramArray = candidateParam.split('|') as string[];
        if (paramArray.length > 1) {
          configForm.value.deptIds = paramArray[0]
            ?.split(',')
            .map((item) => +item);
          if (paramArray[1]) configForm.value.deptLevel = +paramArray[1];
        }
        break;
      }
      case CandidateStrategy.POST: {
        configForm.value.postIds = candidateParam
          .split(',')
          .map((item) => +item);
        break;
      }
      case CandidateStrategy.ROLE: {
        configForm.value.roleIds = candidateParam
          .split(',')
          .map((item) => +item);
        break;
      }
      case CandidateStrategy.START_USER_DEPT_LEADER:
      case CandidateStrategy.START_USER_MULTI_LEVEL_DEPT_LEADER: {
        configForm.value.deptLevel = +candidateParam;
        break;
      }
      case CandidateStrategy.USER: {
        configForm.value.userIds = candidateParam
          .split(',')
          .map((item) => +item);
        break;
      }
      case CandidateStrategy.USER_GROUP: {
        configForm.value.userGroups = candidateParam
          .split(',')
          .map((item) => +item);
        break;
      }
      default: {
        break;
      }
    }
  }
  return {
    configForm,
    roleOptions,
    postOptions,
    userOptions,
    userGroupOptions,
    deptTreeOptions,
    handleCandidateParam,
    parseCandidateParam,
    getShowText,
  };
}

// ---------------------------------------------------------------------------
// 抽屉控制
// ---------------------------------------------------------------------------

/**
 * 节点配置抽屉的显示/隐藏控制 composable。
 */
export function useDrawer() {
  const settingVisible = ref(false);
  function closeDrawer() {
    settingVisible.value = false;
  }
  function openDrawer() {
    settingVisible.value = true;
  }
  return {
    settingVisible,
    closeDrawer,
    openDrawer,
  };
}

// ---------------------------------------------------------------------------
// 节点名称编辑
// ---------------------------------------------------------------------------

/**
 * 节点名称编辑 composable，支持点击图标显示输入框并自动聚焦。
 *
 * @param nodeType 节点类型，用于获取默认名称
 */
export function useNodeName(nodeType: BpmNodeTypeEnum) {
  const nodeName = ref<string>();
  const showInput = ref(false);
  const inputRef = ref<HTMLInputElement | null>(null);

  function clickIcon() {
    showInput.value = true;
  }

  function changeNodeName() {
    showInput.value = false;
    nodeName.value =
      nodeName.value || (NODE_DEFAULT_NAME.get(nodeType) as string);
  }

  watch(showInput, (value) => {
    if (value) {
      nextTick(() => {
        inputRef.value?.focus();
      });
    }
  });

  return {
    nodeName,
    showInput,
    inputRef,
    clickIcon,
    changeNodeName,
  };
}

/**
 * 节点名称编辑 composable，支持点击标题直接进入编辑状态。
 *
 * @param node        节点的响应式引用
 * @param nodeType    节点类型
 */
export function useNodeName2(
  node: Ref<SimpleFlowNode>,
  nodeType: BpmNodeTypeEnum,
) {
  const showInput = ref(false);
  const inputRef = ref<HTMLInputElement | null>(null);

  watch(showInput, (value) => {
    if (value) {
      nextTick(() => {
        inputRef.value?.focus();
      });
    }
  });

  function changeNodeName() {
    showInput.value = false;
    node.value.name =
      node.value.name || (NODE_DEFAULT_NAME.get(nodeType) as string);
  }

  function clickTitle() {
    showInput.value = true;
  }

  return {
    showInput,
    inputRef,
    clickTitle,
    changeNodeName,
  };
}

// ---------------------------------------------------------------------------
// 任务状态样式
// ---------------------------------------------------------------------------

/**
 * 根据节点任务状态返回对应的 CSS class 名称。
 * 用于在流程图上以不同颜色/样式区分任务状态。
 *
 * @param taskStatus 任务状态枚举
 */
export function useTaskStatusClass(
  taskStatus: BpmTaskStatusEnum | undefined,
): string {
  if (!taskStatus) return '';
  if (taskStatus === BpmTaskStatusEnum.APPROVE) return 'status-pass';
  if (taskStatus === BpmTaskStatusEnum.RUNNING) return 'status-running';
  if (taskStatus === BpmTaskStatusEnum.REJECT) return 'status-reject';
  if (taskStatus === BpmTaskStatusEnum.CANCEL) return 'status-cancel';
  return '';
}

// ---------------------------------------------------------------------------
// 条件节点展示文本
// ---------------------------------------------------------------------------

/**
 * 生成条件节点在流程图上的展示文本。
 *
 * @param conditionType       条件类型（表达式 / 规则）
 * @param conditionExpression 条件表达式字符串（表达式模式）
 * @param conditionGroups    条件组结构（规则模式）
 * @param fieldOptions       表单字段选项（用于解析左值字段名）
 */
export function getConditionShowText(
  conditionType: ConditionType | undefined,
  conditionExpression: string | undefined,
  conditionGroups: ConditionGroup | undefined,
  fieldOptions: Array<Record<string, any>>,
) {
  let showText: string | undefined;
  if (conditionType === ConditionType.EXPRESSION && conditionExpression) {
    showText = `${$t('bpm.simpleProcessDesign.action.conditionRulePrefix')}${conditionExpression}`;
  }
  if (conditionType === ConditionType.RULE) {
    const groupAnd = conditionGroups?.and;
    let warningMessage: string | undefined;
    const conditionGroup = conditionGroups?.conditions.map((item) => {
      return `( ${item.rules
        .map((rule) => {
          if (rule.leftSide && rule.rightSide) {
            return `${getFormFieldTitle(
              fieldOptions,
              rule.leftSide,
            )} ${getOpName(rule.opCode)} ${rule.rightSide}`;
          } else {
            warningMessage = $t(
              'bpm.simpleProcessDesign.action.conditionRuleIncomplete',
            );
            return '';
          }
        })
        .join(
          ` ${item.and ? $t('bpm.simpleProcessDesign.action.conditionRuleAnd') : $t('bpm.simpleProcessDesign.action.conditionRuleOr')} `,
        )} ) `;
    });
    showText = warningMessage
      ? ''
      : conditionGroup?.join(
          ` ${groupAnd ? $t('bpm.simpleProcessDesign.action.conditionRuleAnd') : $t('bpm.simpleProcessDesign.action.conditionRuleOr')} `,
        );
  }
  return showText;
}

/** 根据字段 field 值在字段选项列表中查找对应的 title。 */
function getFormFieldTitle(
  fieldOptions: Array<Record<string, any>>,
  field: string,
) {
  const item = fieldOptions.find((item) => item.field === field);
  return item?.title;
}

/**
 * 将后端 opCode 字符串翻译为用户可见的操作符文本。
 *
 * @param opCode 后端返回的操作符代码（如 "=="、"!="、"contains" 等）
 */
function getOpName(opCode: string): string {
  const opCodeMap: Record<string, string> = {
    '==': 'bpm.simpleProcessDesign.condition.opEq',
    '!=': 'bpm.simpleProcessDesign.condition.opNe',
    '<': 'bpm.simpleProcessDesign.condition.opLt',
    '<=': 'bpm.simpleProcessDesign.condition.opLte',
    '>': 'bpm.simpleProcessDesign.condition.opGt',
    '>=': 'bpm.simpleProcessDesign.condition.opGte',
    contains: 'bpm.simpleProcessDesign.condition.opContains',
    notContains: 'bpm.simpleProcessDesign.condition.opNotContains',
    isEmpty: 'bpm.simpleProcessDesign.condition.opIsEmpty',
    isNotEmpty: 'bpm.simpleProcessDesign.condition.opIsNotEmpty',
  };

  const key =
    opCodeMap[opCode] || 'bpm.simpleProcessDesign.condition.opIsNotEmpty';
  return $t(key);
}

// ---------------------------------------------------------------------------
// 条件节点默认名称
// ---------------------------------------------------------------------------

/**
 * 获取条件节点（排他分支）的默认显示名称。
 *
 * @param index      节点序号（从 0 开始）
 * @param defaultFlow 是否为"其它情况"默认分支
 */
export function getDefaultConditionNodeName(
  index: number,
  defaultFlow: boolean | undefined,
): string {
  if (defaultFlow) {
    return $t('bpm.simpleProcessDesign.action.conditionDefaultOther');
  }
  return `${$t('bpm.simpleProcessDesign.action.conditionRulePrefix').replace('：', '')}${index + 1}`;
}

/**
 * 获取包容分支节点的默认显示名称。
 *
 * @param index      节点序号（从 0 开始）
 * @param defaultFlow 是否为"其它情况"默认分支
 */
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
