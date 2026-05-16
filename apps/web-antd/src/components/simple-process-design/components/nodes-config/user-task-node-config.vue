<script setup lang="ts">
// @ts-nocheck
import type { Rule } from 'ant-design-vue/es/form';

import type { Ref } from 'vue';

import type { ButtonSetting, SimpleFlowNode } from '../../consts';
import type { UserTaskFormType } from '../../helpers';

import { computed, onMounted, reactive, ref } from 'vue';

import { useVbenDrawer } from '@vben/common-ui';
import { IconifyIcon } from '@vben/icons';
import { cloneDeep } from '@vben/utils';

import {
  Button,
  Col,
  Divider,
  Form,
  FormItem,
  Input,
  InputNumber,
  Radio,
  RadioButton,
  RadioGroup,
  Row,
  Select,
  SelectOption,
  Switch,
  TabPane,
  Tabs,
  Textarea,
  TreeSelect,
  TypographyText,
} from 'ant-design-vue';

import { getSimpleProcessDesignLocale } from '#/components/simple-process-design/locales/simple-process-design';
import { $t } from '#/locales';
import {
  BpmModelFormType,
  BpmNodeTypeEnum,
  ProcessVariableEnum,
} from '#/utils';

import {
  ApproveMethodType,
  ApproveType,
  AssignEmptyHandlerType,
  CandidateStrategy,
  FieldPermissionType,
  RejectHandlerType,
  TimeoutHandlerType,
  TimeUnitType,
} from '../../consts';
import {
  useFormFieldsPermission,
  useNodeForm,
  useNodeName,
  useWatchNode,
} from '../../helpers';
import UserTaskListener from './modules/user-task-listener.vue';
import { convertTimeUnit, getApproveTypeText } from './utils';

defineOptions({ name: 'UserTaskNodeConfig' });

const props = defineProps({
  flowNode: {
    type: Object as () => SimpleFlowNode,
    required: true,
  },
});

const emits = defineEmits<{
  findReturnTaskNodes: [nodeList: SimpleFlowNode[]];
}>();

// ========== Locale ==========
const locale = getSimpleProcessDesignLocale();

const deptLevelLabel = computed(() => {
  let label = $t('bpm.simpleProcessDesign.deptLeaderSource.default');
  if (
    configForm.value.candidateStrategy ===
    CandidateStrategy.MULTI_LEVEL_DEPT_LEADER
  ) {
    label = $t('bpm.simpleProcessDesign.deptLeaderSource.specifyDept');
  } else if (
    configForm.value.candidateStrategy === CandidateStrategy.FORM_DEPT_LEADER
  ) {
    label = $t('bpm.simpleProcessDesign.deptLeaderSource.formDept');
  } else {
    label = $t('bpm.simpleProcessDesign.deptLeaderSource.startUserDept');
  }
  return label;
});

// 监控节点的变化
const currentNode = useWatchNode(props);
// 抽屉配置
const [Drawer, drawerApi] = useVbenDrawer({
  header: true,
  closable: true,
  title: '',
  onConfirm() {
    saveConfig();
  },
});

// 节点名称配置
const { nodeName, showInput, clickIcon, changeNodeName, inputRef } =
  useNodeName(BpmNodeTypeEnum.USER_TASK_NODE);

// 激活的 Tab 标签页
const activeTabName = ref('user');

// 表单字段权限设置
const {
  formType,
  fieldsPermissionConfig,
  formFieldOptions,
  getNodeConfigFormFields,
} = useFormFieldsPermission(FieldPermissionType.READ);

// 表单内用户字段选项, 必须是必填和用户选择器
const userFieldOnFormOptions = computed(() => {
  return formFieldOptions.filter((item) => item.type === 'UserSelect');
});

// 表单内部门字段选项, 必须是必填和部门选择器
const deptFieldOnFormOptions = computed(() => {
  return formFieldOptions.filter((item) => item.type === 'DeptSelect');
});

// 操作按钮设置
const {
  buttonsSetting,
  btnDisplayNameEdit,
  changeBtnDisplayName,
  btnDisplayNameBlurEvent,
} = useButtonsSetting();

const approveType = ref(ApproveType.USER);

// 审批人表单设置
const formRef = ref(); // 表单 Ref
// 表单校验规则
const formRules: Record<string, Rule[]> = reactive({
  candidateStrategy: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.action.approveStrategyCannotEmpty'),
      trigger: 'change',
    },
  ],
  userIds: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.action.userCannotEmpty'),
      trigger: 'change',
    },
  ],
  roleIds: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.action.roleCannotEmpty'),
      trigger: 'change',
    },
  ],
  deptIds: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.action.deptCannotEmpty'),
      trigger: 'change',
    },
  ],
  userGroups: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.action.userGroupCannotEmpty'),
      trigger: 'change',
    },
  ],
  formUser: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.action.formUserFieldCannotEmpty'),
      trigger: 'change',
    },
  ],
  formDept: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.action.formDeptFieldCannotEmpty'),
      trigger: 'change',
    },
  ],
  postIds: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.action.postCannotEmpty'),
      trigger: 'change',
    },
  ],
  expression: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.action.expressionCannotEmpty'),
      trigger: 'blur',
    },
  ],
  approveMethod: [
    {
      required: true,
      message: $t(
        'bpm.simpleProcessDesign.action.multiPersonMethodCannotEmpty',
      ),
      trigger: 'change',
    },
  ],
  approveRatio: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.action.approveRatioCannotEmpty'),
      trigger: 'blur',
    },
  ],
  returnNodeId: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.action.rejectNodeCannotEmpty'),
      trigger: 'change',
    },
  ],
  timeoutHandlerEnable: [{ required: true }],
  timeoutHandlerType: [{ required: true }],
  timeDuration: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.action.timeoutCannotEmpty'),
      trigger: 'blur',
    },
  ],
  maxRemindCount: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.action.remindCountCannotEmpty'),
      trigger: 'blur',
    },
  ],
  assignEmptyHandlerType: [{ required: true }],
  assignEmptyHandlerUserIds: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.action.userCannotEmpty'),
      trigger: 'change',
    },
  ],
  assignStartUserHandlerType: [{ required: true }],
});

const {
  configForm: tempConfigForm,
  roleOptions,
  postOptions,
  userOptions,
  userGroupOptions,
  deptTreeOptions,
  handleCandidateParam,
  parseCandidateParam,
  getShowText,
} = useNodeForm(currentNode.value.type);
const configForm = tempConfigForm as Ref<UserTaskFormType>;

// 改变审批人设置策略
function changeCandidateStrategy() {
  configForm.value.userIds = [];
  configForm.value.deptIds = [];
  configForm.value.roleIds = [];
  configForm.value.postIds = [];
  configForm.value.userGroups = [];
  configForm.value.deptLevel = 1;
  configForm.value.formUser = '';
  configForm.value.formDept = '';
  configForm.value.approveMethod = ApproveMethodType.SEQUENTIAL_APPROVE;
}

/** 审批方式改变 */
function approveMethodChanged() {
  configForm.value.rejectHandlerType = RejectHandlerType.FINISH_PROCESS;
  if (configForm.value.approveMethod === ApproveMethodType.APPROVE_BY_RATIO) {
    configForm.value.approveRatio = 100;
  }
  formRef.value.clearValidate('approveRatio');
}

// 审批拒绝 可退回的节点
const returnTaskList = ref<SimpleFlowNode[]>([]);
// 审批人超时未处理设置
const {
  timeoutHandlerChange,
  cTimeoutType,
  timeoutHandlerTypeChanged,
  timeUnit,
  timeUnitChange,
  isoTimeDuration,
  cTimeoutMaxRemindCount,
} = useTimeoutHandler();

const userTaskListenerRef = ref();

// ========== End of locale ==========

/** 校验节点配置 */
async function validateConfig() {
  if (!formRef.value) return false;
  if (!userTaskListenerRef.value) return false;

  // 先进行表单验证，记录验证结果
  const userFormValid = await formRef.value.validate().catch(() => false);
  const listenerValid = await userTaskListenerRef.value.validate().catch(() => {
    return false;
  });
  // 如果监听器有错误，切换到监听器Tab
  if (!listenerValid) {
    activeTabName.value = 'listener';
    return false;
  }
  // 如果审批人表单有错误，切换到审批人Tab
  if (!userFormValid) {
    activeTabName.value = 'user';
    return false;
  }

  const showText = getShowText();
  if (!showText) return false;

  return true;
}

/** 保存配置 */
async function saveConfig() {
  // 如果不是人工审批，不执行校验，直接返回
  if (approveType.value !== ApproveType.USER) {
    currentNode.value.name = nodeName.value!;
    currentNode.value.approveType = approveType.value;
    currentNode.value.showText = $t(getApproveTypeText(approveType.value));
    drawerApi.close();
    return true;
  }
  // 执行校验
  if (!(await validateConfig())) {
    return false;
  }
  // 设置审批节点名称
  currentNode.value.name = nodeName.value!;
  // 设置审批类型
  currentNode.value.approveType = approveType.value;
  // 设置审批人设置策略
  currentNode.value.candidateStrategy = configForm.value.candidateStrategy;
  // 处理 candidateParam 参数
  currentNode.value.candidateParam = handleCandidateParam();
  // 设置审批方式
  currentNode.value.approveMethod = configForm.value.approveMethod;
  if (configForm.value.approveMethod === ApproveMethodType.APPROVE_BY_RATIO) {
    currentNode.value.approveRatio = configForm.value.approveRatio;
  }
  // 设置拒绝处理
  currentNode.value.rejectHandler = {
    type: configForm.value.rejectHandlerType!,
    returnNodeId: configForm.value.returnNodeId,
  };
  // 设置超时处理
  currentNode.value.timeoutHandler = {
    enable: configForm.value.timeoutHandlerEnable!,
    type: cTimeoutType.value,
    timeDuration: isoTimeDuration.value,
    maxRemindCount: cTimeoutMaxRemindCount.value,
  };
  // 设置审批人为空时
  currentNode.value.assignEmptyHandler = {
    type: configForm.value.assignEmptyHandlerType!,
    userIds:
      configForm.value.assignEmptyHandlerType ===
      AssignEmptyHandlerType.ASSIGN_USER
        ? configForm.value.assignEmptyHandlerUserIds
        : undefined,
  };
  // 设置审批人与发起人相同时
  currentNode.value.assignStartUserHandlerType =
    configForm.value.assignStartUserHandlerType;
  // 设置表单权限
  currentNode.value.fieldsPermission = fieldsPermissionConfig.value;
  // 设置按钮权限
  currentNode.value.buttonsSetting = buttonsSetting.value;
  // 创建任务监听器
  currentNode.value.taskCreateListener = {
    enable: configForm.value.taskCreateListenerEnable ?? false,
    path: configForm.value.taskCreateListenerPath,
    header: configForm.value.taskCreateListener?.header,
    body: configForm.value.taskCreateListener?.body,
  };
  // 指派任务监听器
  currentNode.value.taskAssignListener = {
    enable: configForm.value.taskAssignListenerEnable ?? false,
    path: configForm.value.taskAssignListenerPath,
    header: configForm.value.taskAssignListener?.header,
    body: configForm.value.taskAssignListener?.body,
  };
  // 完成任务监听器
  currentNode.value.taskCompleteListener = {
    enable: configForm.value.taskCompleteListenerEnable ?? false,
    path: configForm.value.taskCompleteListenerPath,
    header: configForm.value.taskCompleteListener?.header,
    body: configForm.value.taskCompleteListener?.body,
  };
  // 签名
  currentNode.value.signEnable = configForm.value.signEnable;
  // 审批意见
  currentNode.value.reasonRequire = configForm.value.reasonRequire;

  currentNode.value.showText = getShowText();
  drawerApi.close();
  return true;
}

/** 显示审批节点配置， 由父组件传过来 */
function showUserTaskNodeConfig(node: SimpleFlowNode) {
  nodeName.value = node.name;
  // 1 审批类型
  approveType.value =
    node?.approveType === undefined ? ApproveType.USER : node.approveType;
  // 如果审批类型不是人工审批返回
  if (approveType.value !== ApproveType.USER) {
    drawerApi.open();
    return;
  }

  // 2.1 审批人设置
  configForm.value.candidateStrategy = node.candidateStrategy!;
  // 解析候选人参数
  parseCandidateParam(node.candidateStrategy!, node?.candidateParam);
  // 2.2 设置审批方式
  configForm.value.approveMethod = node.approveMethod!;
  if (node.approveMethod === ApproveMethodType.APPROVE_BY_RATIO) {
    configForm.value.approveRatio = node.approveRatio!;
  }
  // 2.3 设置审批拒绝处理
  configForm.value.rejectHandlerType = node.rejectHandler?.type;
  configForm.value.returnNodeId = node.rejectHandler?.returnNodeId;
  const matchNodeList: SimpleFlowNode[] = [];
  emits('findReturnTaskNodes', matchNodeList);
  returnTaskList.value = matchNodeList;
  // 2.4 设置审批超时处理
  configForm.value.timeoutHandlerEnable = node.timeoutHandler?.enable;
  if (node.timeoutHandler?.enable && node.timeoutHandler?.timeDuration) {
    const strTimeDuration = node.timeoutHandler.timeDuration;
    const parseTime = strTimeDuration.slice(2, -1);
    const parseTimeUnit = strTimeDuration.slice(-1);
    configForm.value.timeDuration = Number.parseInt(parseTime);
    timeUnit.value = convertTimeUnit(parseTimeUnit);
  }
  configForm.value.timeoutHandlerType = node.timeoutHandler?.type;
  configForm.value.maxRemindCount = node.timeoutHandler?.maxRemindCount;
  // 2.5 设置审批人为空时
  configForm.value.assignEmptyHandlerType = node.assignEmptyHandler?.type;
  configForm.value.assignEmptyHandlerUserIds = node.assignEmptyHandler?.userIds;
  // 2.6 设置用户任务的审批人与发起人相同时
  configForm.value.assignStartUserHandlerType = node.assignStartUserHandlerType;
  // 3. 操作按钮设置
  buttonsSetting.value =
    cloneDeep(node.buttonsSetting) ||
    (node.type === BpmNodeTypeEnum.TRANSACTOR_NODE
      ? locale.TRANSACTOR_DEFAULT_BUTTON_SETTING
      : locale.DEFAULT_BUTTON_SETTING);
  // 4. 表单字段权限配置
  getNodeConfigFormFields(node.fieldsPermission);
  // 5. 监听器
  // 5.1 创建任务
  configForm.value.taskCreateListenerEnable = node.taskCreateListener?.enable;
  configForm.value.taskCreateListenerPath = node.taskCreateListener?.path;
  configForm.value.taskCreateListener = {
    header: node.taskCreateListener?.header ?? [],
    body: node.taskCreateListener?.body ?? [],
  };
  // 5.2 指派任务
  configForm.value.taskAssignListenerEnable = node.taskAssignListener?.enable;
  configForm.value.taskAssignListenerPath = node.taskAssignListener?.path;
  configForm.value.taskAssignListener = {
    header: node.taskAssignListener?.header ?? [],
    body: node.taskAssignListener?.body ?? [],
  };
  // 5.3 完成任务
  configForm.value.taskCompleteListenerEnable =
    node.taskCompleteListener?.enable;
  configForm.value.taskCompleteListenerPath = node.taskCompleteListener?.path;
  configForm.value.taskCompleteListener = {
    header: node.taskCompleteListener?.header ?? [],
    body: node.taskCompleteListener?.body ?? [],
  };
  // 6. 签名
  configForm.value.signEnable = node?.signEnable ?? false;
  // 7. 审批意见
  configForm.value.reasonRequire = node?.reasonRequire ?? false;

  drawerApi.open();
}

defineExpose({ showUserTaskNodeConfig }); // 暴露方法给父组件

/** 操作按钮设置 */
function useButtonsSetting() {
  const buttonsSetting = ref<ButtonSetting[]>();
  // 操作按钮显示名称可编辑
  const btnDisplayNameEdit = ref<boolean[]>([]);
  const changeBtnDisplayName = (index: number) => {
    btnDisplayNameEdit.value[index] = true;
  };
  const btnDisplayNameBlurEvent = (index: number) => {
    btnDisplayNameEdit.value[index] = false;
    const buttonItem = buttonsSetting.value![index];
    if (buttonItem)
      buttonItem.displayName =
        buttonItem.displayName ||
        locale.OPERATION_BUTTON_NAME.get(buttonItem.id)!;
  };
  return {
    buttonsSetting,
    btnDisplayNameEdit,
    changeBtnDisplayName,
    btnDisplayNameBlurEvent,
  };
}

/** 审批人超时未处理配置 */
function useTimeoutHandler() {
  // 时间单位
  const timeUnit = ref(TimeUnitType.HOUR);

  // 超时开关改变
  const timeoutHandlerChange = () => {
    if (configForm.value.timeoutHandlerEnable) {
      timeUnit.value = 2;
      configForm.value.timeDuration = 6;
      configForm.value.timeoutHandlerType = 1;
      configForm.value.maxRemindCount = 1;
    }
  };
  // 超时执行的动作
  const cTimeoutType = computed(() => {
    if (!configForm.value.timeoutHandlerEnable) {
      return undefined;
    }
    return configForm.value.timeoutHandlerType;
  });

  // 超时处理动作改变
  const timeoutHandlerTypeChanged = () => {
    if (configForm.value.timeoutHandlerType === TimeoutHandlerType.REMINDER) {
      configForm.value.maxRemindCount = 1; // 超时提醒次数，默认为1
    }
  };

  // 时间单位改变
  const timeUnitChange = () => {
    // 分钟，默认是 60 分钟
    if (timeUnit.value === TimeUnitType.MINUTE) {
      configForm.value.timeDuration = 60;
    }
    // 小时，默认是 6 个小时
    if (timeUnit.value === TimeUnitType.HOUR) {
      configForm.value.timeDuration = 6;
    }
    // 天， 默认 1天
    if (timeUnit.value === TimeUnitType.DAY) {
      configForm.value.timeDuration = 1;
    }
  };
  // 超时时间的 ISO 表示
  const isoTimeDuration = computed(() => {
    if (!configForm.value.timeoutHandlerEnable) {
      return undefined;
    }
    let strTimeDuration = 'PT';
    if (timeUnit.value === TimeUnitType.MINUTE) {
      strTimeDuration += `${configForm.value.timeDuration}M`;
    }
    if (timeUnit.value === TimeUnitType.HOUR) {
      strTimeDuration += `${configForm.value.timeDuration}H`;
    }
    if (timeUnit.value === TimeUnitType.DAY) {
      strTimeDuration += `${configForm.value.timeDuration}D`;
    }
    return strTimeDuration;
  });

  // 超时最大提醒次数
  const cTimeoutMaxRemindCount = computed(() => {
    if (!configForm.value.timeoutHandlerEnable) {
      return undefined;
    }
    if (configForm.value.timeoutHandlerType !== TimeoutHandlerType.REMINDER) {
      return undefined;
    }
    return configForm.value.maxRemindCount;
  });

  return {
    timeoutHandlerChange,
    cTimeoutType,
    timeoutHandlerTypeChanged,
    timeUnit,
    timeUnitChange,
    isoTimeDuration,
    cTimeoutMaxRemindCount,
  };
}

/** 批量更新权限 */
function updatePermission(type: string) {
  fieldsPermissionConfig.value.forEach((field) => {
    if (type === 'READ') {
      field.permission = FieldPermissionType.READ;
    } else if (type === 'WRITE') {
      field.permission = FieldPermissionType.WRITE;
    } else {
      field.permission = FieldPermissionType.NONE;
    }
  });
}

// 在组件初始化时记录初始位置
onMounted(() => {
  // 固定添加发起人ID字段
  formFieldOptions.unshift({
    field: ProcessVariableEnum.START_USER_ID,
    title: $t('bpm.simpleProcessDesign.node.startUser'),
    type: 'UserSelect',
    required: true,
  });
});
</script>
<template>
  <Drawer class="w-[580px]">
    <template #title>
      <div class="config-header">
        <Input
          v-if="showInput"
          ref="inputRef"
          type="text"
          class="config-editable-input"
          @blur="changeNodeName()"
          @press-enter="changeNodeName()"
          v-model:value="nodeName"
          :placeholder="nodeName"
        />
        <div v-else class="node-name">
          {{ nodeName }}
          <IconifyIcon class="ml-1" icon="ep:edit-pen" @click="clickIcon()" />
        </div>
      </div>
    </template>
    <div
      v-if="currentNode.type === BpmNodeTypeEnum.USER_TASK_NODE"
      class="mb-3 flex items-center"
    >
      <span class="mr-3 text-[16px]"> {{ locale.action.approveType }} : </span>
      <RadioGroup v-model:value="approveType">
        <RadioButton
          v-for="(item, index) in locale.APPROVE_TYPE"
          :key="index"
          :value="item.value"
          :label="item.value"
        >
          {{ item.label }}
        </RadioButton>
      </RadioGroup>
    </div>
    <Tabs
      v-model:active-key="activeTabName"
      v-if="approveType === ApproveType.USER"
    >
      <TabPane
        :tab="`${locale.node.userTask}/${locale.node.transactor}`"
        key="user"
      >
        <div>
          <Form
            ref="formRef"
            :model="configForm"
            :label-wrap="true"
            :label-col="{ span: 24 }"
            :wrapper-col="{ span: 24 }"
            :rules="formRules"
          >
            <!-- 审批/办理 人设置 -->
            <FormItem
              :label="`${locale.node.userTask}/${locale.node.transactor}`"
              name="candidateStrategy"
            >
              <RadioGroup
                v-model:value="configForm.candidateStrategy"
                @change="changeCandidateStrategy"
              >
                <Row :gutter="[0, 8]">
                  <Col
                    v-for="(dict, index) in locale.CANDIDATE_STRATEGY"
                    :key="index"
                    :span="8"
                  >
                    <Radio :value="dict.value" :label="dict.value">
                      {{ dict.label }}
                    </Radio>
                  </Col>
                </Row>
              </RadioGroup>
            </FormItem>
            <FormItem
              v-if="configForm.candidateStrategy === CandidateStrategy.ROLE"
              :label="locale.action.role"
              name="roleIds"
            >
              <Select
                v-model:value="configForm.roleIds"
                clearable
                mode="multiple"
              >
                <SelectOption
                  v-for="item in roleOptions"
                  :key="item.id"
                  :label="item.name"
                  :value="item.id"
                >
                  {{ item.name }}
                </SelectOption>
              </Select>
            </FormItem>
            <FormItem
              v-if="
                configForm.candidateStrategy ===
                  CandidateStrategy.DEPT_MEMBER ||
                configForm.candidateStrategy ===
                  CandidateStrategy.DEPT_LEADER ||
                configForm.candidateStrategy ===
                  CandidateStrategy.MULTI_LEVEL_DEPT_LEADER
              "
              :label="locale.action.dept"
              name="deptIds"
            >
              <TreeSelect
                v-model:value="configForm.deptIds"
                :tree-data="deptTreeOptions"
                :field-names="{
                  label: 'name',
                  value: 'id',
                  children: 'children',
                }"
                empty-text="locale.toolbar.loading"
                multiple
                :check-strictly="true"
                allow-clear
                tree-checkable
              />
            </FormItem>
            <FormItem
              v-if="configForm.candidateStrategy === CandidateStrategy.POST"
              :label="locale.action.post"
              name="postIds"
            >
              <Select
                v-model:value="configForm.postIds"
                clearable
                mode="multiple"
              >
                <SelectOption
                  v-for="item in postOptions"
                  :key="item.id"
                  :label="item.name"
                  :value="item.id!"
                >
                  {{ item.name }}
                </SelectOption>
              </Select>
            </FormItem>
            <FormItem
              v-if="configForm.candidateStrategy === CandidateStrategy.USER"
              :label="locale.action.user"
              name="userIds"
            >
              <Select
                v-model:value="configForm.userIds"
                clearable
                mode="multiple"
              >
                <SelectOption
                  v-for="item in userOptions"
                  :key="item.id"
                  :label="item.nickname"
                  :value="item.id"
                >
                  {{ item.nickname }}
                </SelectOption>
              </Select>
            </FormItem>
            <FormItem
              v-if="
                configForm.candidateStrategy === CandidateStrategy.USER_GROUP
              "
              :label="locale.action.userGroup"
              name="userGroups"
            >
              <Select
                v-model:value="configForm.userGroups"
                clearable
                mode="multiple"
              >
                <SelectOption
                  v-for="item in userGroupOptions"
                  :key="item.id"
                  :label="item.name"
                  :value="item.id"
                >
                  {{ item.name }}
                </SelectOption>
              </Select>
            </FormItem>
            <FormItem
              v-if="
                configForm.candidateStrategy === CandidateStrategy.FORM_USER
              "
              :label="locale.action.formUserField"
              name="formUser"
            >
              <Select v-model:value="configForm.formUser" clearable>
                <SelectOption
                  v-for="(item, idx) in userFieldOnFormOptions"
                  :key="idx"
                  :label="item.title"
                  :value="item.field"
                  :disabled="!item.required"
                >
                  {{ item.title }}
                </SelectOption>
              </Select>
            </FormItem>
            <FormItem
              v-if="
                configForm.candidateStrategy ===
                CandidateStrategy.FORM_DEPT_LEADER
              "
              :label="locale.action.formDeptField"
              name="formDept"
            >
              <Select v-model:value="configForm.formDept" clearable>
                <SelectOption
                  v-for="(item, idx) in deptFieldOnFormOptions"
                  :key="idx"
                  :label="item.title"
                  :value="item.field"
                  :disabled="!item.required"
                >
                  {{ item.title }}
                </SelectOption>
              </Select>
            </FormItem>
            <FormItem
              v-if="
                configForm.candidateStrategy ===
                  CandidateStrategy.MULTI_LEVEL_DEPT_LEADER ||
                configForm.candidateStrategy ===
                  CandidateStrategy.START_USER_DEPT_LEADER ||
                configForm.candidateStrategy ===
                  CandidateStrategy.START_USER_MULTI_LEVEL_DEPT_LEADER ||
                configForm.candidateStrategy ===
                  CandidateStrategy.FORM_DEPT_LEADER
              "
              :label="deptLevelLabel!"
              name="deptLevel"
            >
              <Select v-model:value="configForm.deptLevel" clearable>
                <SelectOption
                  v-for="(item, index) in locale.MULTI_LEVEL_DEPT"
                  :key="index"
                  :label="item.label"
                  :value="item.value"
                >
                  {{ item.label }}
                </SelectOption>
              </Select>
            </FormItem>
            <!-- TODO @jason：后续要支持选择已经存好的表达式 -->
            <FormItem
              v-if="
                configForm.candidateStrategy === CandidateStrategy.EXPRESSION
              "
              :label="locale.action.expression"
              name="expression"
            >
              <Textarea v-model:value="configForm.expression" clearable />
            </FormItem>
            <!-- 多人审批/办理 方式 -->
            <FormItem
              :label="
                $t('bpm.simpleProcessDesign.action.multiPersonMethod', [
                  locale.node.userTask,
                ])
              "
              name="approveMethod"
            >
              <RadioGroup
                v-model:value="configForm.approveMethod"
                @change="approveMethodChanged"
              >
                <Row :gutter="[0, 8]">
                  <Col
                    :span="24"
                    v-for="(item, index) in locale.APPROVE_METHODS"
                    :key="index"
                  >
                    <div class="flex items-center">
                      <Radio :value="item.value" :label="item.value">
                        {{ item.label }}
                      </Radio>
                      <InputNumber
                        v-if="
                          item.value === ApproveMethodType.APPROVE_BY_RATIO &&
                          configForm.approveMethod ===
                            ApproveMethodType.APPROVE_BY_RATIO
                        "
                        v-model:value="configForm.approveRatio"
                        :min="10"
                        :max="100"
                        :step="10"
                        size="small"
                      />
                    </div>
                  </Col>
                </Row>
              </RadioGroup>
            </FormItem>

            <div v-if="currentNode.type === BpmNodeTypeEnum.USER_TASK_NODE">
              <Divider content-position="left">
                {{ locale.action.rejectHandler }}
              </Divider>
              <FormItem name="rejectHandlerType">
                <RadioGroup
                  v-model:value="configForm.rejectHandlerType"
                  class="w-full"
                >
                  <Row :gutter="24">
                    <Col
                      :span="8"
                      v-for="(item, index) in locale.REJECT_HANDLER_TYPES"
                      :key="index"
                    >
                      <Radio :value="item.value" :label="item.label">
                        {{ item.label }}
                      </Radio>
                    </Col>
                  </Row>
                </RadioGroup>
              </FormItem>

              <FormItem
                v-if="
                  configForm.rejectHandlerType ===
                  RejectHandlerType.RETURN_USER_TASK
                "
                :label="locale.action.rejectNode"
                name="returnNodeId"
              >
                <Select v-model:value="configForm.returnNodeId" clearable>
                  <SelectOption
                    v-for="item in returnTaskList"
                    :key="item.id"
                    :label="item.name"
                    :value="item.id"
                  >
                    {{ item.name }}
                  </SelectOption>
                </Select>
              </FormItem>
            </div>

            <div v-if="currentNode.type === BpmNodeTypeEnum.USER_TASK_NODE">
              <Divider content-position="left">
                {{ locale.action.timeout }}
              </Divider>
              <FormItem
                :label="locale.action.enableSwitch"
                name="timeoutHandlerEnable"
                label-align="left"
                :label-col="{ span: 6 }"
                :wrapper-col="{ span: 4 }"
              >
                <Switch
                  v-model:checked="configForm.timeoutHandlerEnable"
                  :checked-children="locale.switch.on"
                  :un-checked-children="locale.switch.off"
                  @change="timeoutHandlerChange"
                />
              </FormItem>
              <FormItem
                :label="locale.action.executeAction"
                name="timeoutHandlerType"
                v-if="configForm.timeoutHandlerEnable"
                label-align="left"
                :label-col="{ span: 6 }"
                :wrapper-col="{ span: 18 }"
              >
                <RadioGroup
                  v-model:value="configForm.timeoutHandlerType"
                  @change="timeoutHandlerTypeChanged"
                >
                  <RadioButton
                    v-for="item in locale.TIMEOUT_HANDLER_TYPES"
                    :key="item.value"
                    :value="item.value"
                    :label="item.label"
                  >
                    {{ item.label }}
                  </RadioButton>
                </RadioGroup>
              </FormItem>
              <FormItem
                :label="locale.action.timeoutSetting"
                v-if="configForm.timeoutHandlerEnable"
                label-align="left"
                class="h-[32px]"
                :label-col="{ span: 6 }"
                :wrapper-col="{ span: 18 }"
              >
                <Row>
                  <Col>
                    <TypographyText class="mr-2 mt-2 inline-flex text-sm">
                      {{ locale.action.overTime }}
                    </TypographyText>
                  </Col>
                  <Col>
                    <FormItem name="timeDuration">
                      <InputNumber
                        class="mr-2 mt-0.5"
                        v-model:value="configForm.timeDuration"
                        :min="1"
                        controls-position="right"
                      />
                    </FormItem>
                  </Col>
                  <Col>
                    <Select
                      v-model:value="timeUnit"
                      class="mr-2"
                      :style="{ width: '100px' }"
                      @change="timeUnitChange"
                    >
                      <SelectOption
                        v-for="item in locale.TIME_UNIT_TYPES"
                        :key="item.value"
                        :label="item.label"
                        :value="item.value"
                      >
                        {{ item.label }}
                      </SelectOption>
                    </Select>
                    <TypographyText class="mr-2 mt-2 inline-flex text-sm">
                      {{ locale.action.notProcessed }}
                    </TypographyText>
                  </Col>
                </Row>
              </FormItem>
              <FormItem
                :label="locale.action.maxRemindCount"
                name="maxRemindCount"
                v-if="
                  configForm.timeoutHandlerEnable &&
                  configForm.timeoutHandlerType === 1
                "
                label-align="left"
                :label-col="{ span: 6 }"
                :wrapper-col="{ span: 18 }"
              >
                <InputNumber
                  v-model:value="configForm.maxRemindCount"
                  :min="1"
                  :max="10"
                />
              </FormItem>
            </div>

            <Divider content-position="left">
              {{
                $t('bpm.simpleProcessDesign.action.emptyHandler', [
                  locale.node.userTask,
                ])
              }}
            </Divider>
            <FormItem name="assignEmptyHandlerType">
              <RadioGroup v-model:value="configForm.assignEmptyHandlerType">
                <Row :gutter="[0, 16]">
                  <Col
                    :span="24"
                    v-for="(item, index) in locale.ASSIGN_EMPTY_HANDLER_TYPES"
                    :key="index"
                  >
                    <Radio :value="item.value" :label="item.label">
                      {{ item.label }}
                    </Radio>
                  </Col>
                </Row>
              </RadioGroup>
            </FormItem>
            <FormItem
              v-if="
                configForm.assignEmptyHandlerType ===
                AssignEmptyHandlerType.ASSIGN_USER
              "
              :label="locale.action.user"
              name="assignEmptyHandlerUserIds"
            >
              <Select
                v-model:value="configForm.assignEmptyHandlerUserIds"
                clearable
                mode="multiple"
              >
                <SelectOption
                  v-for="item in userOptions"
                  :key="item.id"
                  :label="item.nickname"
                  :value="item.id"
                >
                  {{ item.nickname }}
                </SelectOption>
              </Select>
            </FormItem>

            <div v-if="currentNode.type === BpmNodeTypeEnum.USER_TASK_NODE">
              <Divider content-position="left">
                {{ locale.action.sameAsSubmitter }}
              </Divider>
              <FormItem name="assignStartUserHandlerType">
                <RadioGroup
                  v-model:value="configForm.assignStartUserHandlerType"
                >
                  <Row :gutter="[0, 16]">
                    <Col
                      :span="24"
                      v-for="(
                        item, index
                      ) in locale.ASSIGN_START_USER_HANDLER_TYPES"
                      :key="index"
                    >
                      <Radio :value="item.value" :label="item.label">
                        {{ item.label }}
                      </Radio>
                    </Col>
                  </Row>
                </RadioGroup>
              </FormItem>
            </div>

            <div v-if="currentNode.type === BpmNodeTypeEnum.USER_TASK_NODE">
              <Divider content-position="left">
                {{ locale.action.needSign }}
              </Divider>
              <FormItem name="signEnable">
                <Switch
                  v-model:checked="configForm.signEnable"
                  :checked-children="locale.switch.yes"
                  :un-checked-children="locale.switch.no"
                />
              </FormItem>
            </div>

            <div v-if="currentNode.type === BpmNodeTypeEnum.USER_TASK_NODE">
              <Divider content-position="left">
                {{ locale.action.needOpinion }}
              </Divider>
              <FormItem name="reasonRequire">
                <Switch
                  v-model:checked="configForm.reasonRequire"
                  :checked-children="locale.switch.required"
                  :un-checked-children="locale.switch.notRequired"
                />
              </FormItem>
            </div>
          </Form>
        </div>
      </TabPane>
      <TabPane
        :tab="locale.action.operationButtons"
        v-if="currentNode.type === BpmNodeTypeEnum.USER_TASK_NODE"
        key="buttons"
      >
        <div class="p-1">
          <div class="mb-4 text-[16px] font-bold">
            {{ locale.action.buttonName }}
          </div>

          <!-- 表头 -->
          <Row class="border border-gray-200 px-4 py-3">
            <Col :span="8" class="font-bold">
              {{ locale.action.buttonName }}
            </Col>
            <Col :span="12" class="font-bold">
              {{ locale.action.displayName }}
            </Col>
            <Col :span="4" class="flex items-center justify-center font-bold">
              {{ locale.action.enable }}
            </Col>
          </Row>

          <!-- 表格内容 -->
          <div v-for="(item, index) in buttonsSetting" :key="index">
            <Row class="border border-t-0 border-gray-200 px-4 py-2">
              <Col :span="8" class="flex items-center truncate">
                {{ locale.OPERATION_BUTTON_NAME.get(item.id) }}
              </Col>
              <Col :span="12" class="flex items-center">
                <!-- TODO  v-mountedFocus 自动聚集需要迁移 -->
                <Input
                  v-if="btnDisplayNameEdit[index]"
                  type="text"
                  class="input-edit max-w-[130px]"
                  @blur="btnDisplayNameBlurEvent(index)"
                  v-model:value="item.displayName"
                  :placeholder="item.displayName"
                />
                <Button v-else text @click="changeBtnDisplayName(index)">
                  <div class="flex items-center">
                    {{ item.displayName }}
                    <IconifyIcon icon="ep:edit" class="ml-2" />
                  </div>
                </Button>
              </Col>
              <Col :span="4" class="flex items-center justify-center">
                <Switch v-model:checked="item.enable" />
              </Col>
            </Row>
          </div>
        </div>
      </TabPane>
      <TabPane
        :tab="locale.action.formFieldPermission"
        key="fields"
        v-if="formType === BpmModelFormType.NORMAL"
      >
        <div class="p-1">
          <div class="mb-4 text-[16px] font-bold">
            {{ locale.action.permission }}
          </div>

          <!-- 表头 -->
          <Row class="border border-gray-200 px-4 py-3">
            <Col :span="8" class="font-bold">{{ locale.action.fieldName }}</Col>
            <Col :span="16">
              <Row>
                <Col :span="8" class="flex items-center justify-center">
                  <span
                    class="cursor-pointer font-bold"
                    @click="updatePermission('READ')"
                  >
                    {{ locale.action.readOnly }}
                  </span>
                </Col>
                <Col :span="8" class="flex items-center justify-center">
                  <span
                    class="cursor-pointer font-bold"
                    @click="updatePermission('WRITE')"
                  >
                    {{ locale.action.editable }}
                  </span>
                </Col>
                <Col :span="8" class="flex items-center justify-center">
                  <span
                    class="cursor-pointer font-bold"
                    @click="updatePermission('NONE')"
                  >
                    {{ locale.action.hidden }}
                  </span>
                </Col>
              </Row>
            </Col>
          </Row>

          <!-- 表格内容 -->
          <div v-for="(item, index) in fieldsPermissionConfig" :key="index">
            <Row class="border border-t-0 border-gray-200 px-4 py-2">
              <Col :span="8" class="flex items-center truncate">
                {{ item.title }}
              </Col>
              <Col :span="16">
                <RadioGroup v-model:value="item.permission" class="w-full">
                  <Row>
                    <Col :span="8" class="flex items-center justify-center">
                      <Radio
                        :value="FieldPermissionType.READ"
                        size="large"
                        :label="FieldPermissionType.READ"
                      />
                    </Col>
                    <Col :span="8" class="flex items-center justify-center">
                      <Radio
                        :value="FieldPermissionType.WRITE"
                        size="large"
                        :label="FieldPermissionType.WRITE"
                      />
                    </Col>
                    <Col :span="8" class="flex items-center justify-center">
                      <Radio
                        :value="FieldPermissionType.NONE"
                        size="large"
                        :label="FieldPermissionType.NONE"
                      />
                    </Col>
                  </Row>
                </RadioGroup>
              </Col>
            </Row>
          </div>
        </div>
      </TabPane>
      <TabPane
        :tab="locale.action.listener"
        key="listener"
        :force-render="true"
      >
        <UserTaskListener
          ref="userTaskListenerRef"
          v-model="configForm"
          :form-field-options="formFieldOptions"
        />
      </TabPane>
    </Tabs>
  </Drawer>
</template>
<style lang="scss" scoped>
.input-edit {
  &:focus {
    outline: 0;
    border-color: #40a9ff;
    box-shadow: 0 0 0 2px rgb(24 144 255 / 20%);
  }
}
</style>
