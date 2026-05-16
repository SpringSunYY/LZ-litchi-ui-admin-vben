<!-- eslint-disable -->
<script lang="ts" setup>
// @ts-nocheck
import type { FormInstance } from 'ant-design-vue';
import type { Rule } from 'ant-design-vue/es/form';

import type { BpmProcessInstanceApi } from '#/api/bpm/processInstance';

import { computed, reactive, ref, watch } from 'vue';
import { useRouter } from 'vue-router';

import { useVbenModal } from '@vben/common-ui';
import { IconifyIcon } from '@vben/icons';
import { useUserStore } from '@vben/stores';
import { isEmpty } from '@vben/utils';

import FormCreate from '@form-create/ant-design-vue';
import {
  Alert,
  Button,
  Card,
  Form,
  FormItem,
  Image,
  message,
  Popover,
  Select,
  SelectOption,
  Space,
  Textarea,
} from 'ant-design-vue';

import {
  cancelProcessInstanceByStartUser,
  getNextApprovalNodes,
} from '#/api/bpm/processInstance';
import * as TaskApi from '#/api/bpm/task';
import * as UserApi from '#/api/system/user';
import { $t } from '#/locales';
import {
  BpmCandidateStrategyEnum,
  BpmModelFormType,
  BpmNodeTypeEnum,
  BpmProcessInstanceStatus,
  BpmTaskOperationButtonTypeEnum,
  BpmTaskStatusEnum,
  setConfAndFields2,
} from '#/utils';

import Signature from './signature.vue';
import ProcessInstanceTimeline from './time-line.vue';

defineOptions({ name: 'ProcessInstanceBtnContainer' });

// 定义 success 事件，用于操作成功后的回调

const props = defineProps<{
  normalForm: any; // 流程表单 formCreate
  normalFormApi: any; // 流程表单 formCreate Api
  processDefinition: any; // 流程定义信息
  processInstance: any; // 流程实例信息
  userOptions: UserApi.SystemUserApi.User[];
  writableFields: string[]; // 流程表单可以编辑的字段
}>(); // 当前登录的编号
const emit = defineEmits(['success']);

const [SignatureModal, signatureModalApi] = useVbenModal({
  connectedComponent: Signature,
  destroyOnClose: true,
});

/** 创建流程表达式 */
function openSignatureModal() {
  signatureModalApi.setData(null).open();
}

const router = useRouter(); // 路由
const userStore = useUserStore();
const userId = userStore.userInfo?.id;
const formLoading = ref(false); // 表单加载中
const popOverVisible: any = ref({
  approve: false,
  reject: false,
  transfer: false,
  delegate: false,
  addSign: false,
  return: false,
  copy: false,
  cancel: false,
  deleteSign: false,
}); // 气泡卡是否展示
const returnList = ref([] as any); // 退回节点

// ========== 审批信息 ==========
const runningTask = ref<any>(); // 运行中的任务
const approveForm = ref<any>({}); // 审批通过时，额外的补充信息
const approveFormFApi = ref<any>({}); // approveForms 的 fAPi
const nodeTypeName = ref('bpm.operation.approver'); // 节点类型名称，对应 i18n key

// 审批通过意见表单
const reasonRequire = ref();
const approveFormRef = ref<FormInstance>();
const approveSignFormRef = ref();
const nextAssigneesActivityNode = ref<BpmProcessInstanceApi.ApprovalNodeInfo[]>(
  [],
); // 下一个审批节点信息
const approveReasonForm: any = reactive({
  reason: '',
  signPicUrl: '',
  nextAssignees: {},
});
const approveReasonRule: Record<string, any> = computed(() => {
  return {
    reason: [
      {
        required: reasonRequire.value,
        message: $t('bpm.operation.opinionCannotEmpty', [nodeTypeName.value]),
        trigger: 'blur',
      },
    ],
    signPicUrl: [
      {
        required: true,
        message: $t('bpm.operation.signatureCannotEmpty'),
        trigger: 'change',
      },
    ],
    nextAssignees: [
      {
        required: true,
        message: $t('bpm.operation.approverCannotEmpty'),
        trigger: 'blur',
      },
    ],
  };
});

// 拒绝表单
const rejectFormRef = ref<FormInstance>();
const rejectReasonForm = reactive({
  reason: '',
});
const rejectReasonRule: any = computed(() => {
  return {
    reason: [
      {
        required: reasonRequire.value,
        message: $t('bpm.operation.opinionCannotEmpty', [nodeTypeName.value]),
        trigger: 'blur',
      },
    ],
  } as Record<string, Rule[]>;
});

// 抄送表单
const copyFormRef = ref<FormInstance>();
const copyForm = reactive({
  copyUserIds: [],
  copyReason: '',
});
const copyFormRule: Record<string, Rule[]> = reactive({
  copyUserIds: [
    {
      required: true,
      message: $t('bpm.operation.copyUserCannotEmpty'),
      trigger: 'change',
    },
  ],
});

// 转办表单
const transferFormRef = ref<FormInstance>();
const transferForm = reactive({
  assigneeUserId: undefined,
  reason: '',
});
const transferFormRule: Record<string, Rule[]> = reactive({
  assigneeUserId: [
    {
      required: true,
      message: $t('bpm.operation.newApproverCannotEmpty'),
      trigger: 'change',
    },
  ],
  reason: [
    {
      required: true,
      message: $t('bpm.operation.transferReason'),
      trigger: 'blur',
    },
  ],
});

const delegateFormRef = ref<FormInstance>();
const delegateForm = reactive({
  delegateUserId: undefined,
  reason: '',
});
const delegateFormRule: Record<string, Rule[]> = reactive({
  delegateUserId: [
    {
      required: true,
      message: $t('bpm.operation.receiverCannotEmpty'),
      trigger: 'change',
    },
  ],
  reason: [
    {
      required: true,
      message: $t('bpm.operation.delegateReason'),
      trigger: 'blur',
    },
  ],
});

const addSignFormRef = ref<FormInstance>();
const addSignForm = reactive({
  addSignUserIds: undefined,
  reason: '',
});
const addSignFormRule: Record<string, Rule[]> = reactive({
  addSignUserIds: [
    {
      required: true,
      message: $t('bpm.operation.addSignHandlerCannotEmpty'),
      trigger: 'change',
    },
  ],
  reason: [
    {
      required: true,
      message: $t('bpm.operation.addSignReason'),
      trigger: 'blur',
    },
  ],
});

const deleteSignFormRef = ref<FormInstance>();
const deleteSignForm = reactive({
  deleteSignTaskId: undefined,
  reason: '',
});
const deleteSignFormRule: Record<string, Rule[]> = reactive({
  deleteSignTaskId: [
    {
      required: true,
      message: $t('bpm.operation.deleteSignUserCannotEmpty'),
      trigger: 'change',
    },
  ],
  reason: [
    {
      required: true,
      message: $t('bpm.operation.deleteSignReason'),
      trigger: 'blur',
    },
  ],
});

const returnFormRef = ref<FormInstance>();
const returnForm = reactive({
  targetTaskDefinitionKey: undefined,
  returnReason: '',
});
const returnFormRule: Record<string, Rule[]> = reactive({
  targetTaskDefinitionKey: [
    {
      required: true,
      message: $t('bpm.operation.returnNodeCannotEmpty'),
      trigger: 'change',
    },
  ],
  returnReason: [
    {
      required: true,
      message: $t('bpm.operation.returnReasonCannotEmpty'),
      trigger: 'blur',
    },
  ],
});

// 取消表单
const cancelFormRef = ref<FormInstance>();

const cancelForm = reactive({
  cancelReason: '',
});
const cancelFormRule: Record<string, Rule[]> = reactive({
  cancelReason: [
    {
      required: true,
      message: $t('bpm.operation.cancelReasonCannotEmpty'),
      trigger: 'blur',
    },
  ],
});

/** 监听 approveFormFApis，实现它对应的 form-create 初始化后，隐藏掉对应的表单提交按钮 */
watch(
  () => approveFormFApi.value,
  (val) => {
    val?.btn?.show(false);
    val?.resetBtn?.show(false);
  },
  {
    deep: true,
  },
);

/** 弹出气泡卡 */
async function openPopover(type: string) {
  if (type === 'approve') {
    // 校验流程表单
    const valid = await validateNormalForm();
    if (!valid) {
      message.warning($t('bpm.operation.formValidateFailed'));
      return;
    }
    initNextAssigneesFormField();
  }
  if (type === 'return') {
    // 获取退回节点
    returnList.value = await TaskApi.getTaskListByReturn(runningTask.value.id);
    if (returnList.value.length === 0) {
      message.warning($t('bpm.operation.noReturnNode'));
      return;
    }
  }
  Object.keys(popOverVisible.value).forEach((item) => {
    if (popOverVisible.value[item]) popOverVisible.value[item] = item === type;
  });
  // await nextTick()
  // formRef.value.resetFields()
}

/** 关闭气泡卡 */
function closePopover(type: string, formRef: any | FormInstance) {
  if (formRef) {
    formRef.resetFields();
  }
  if (popOverVisible.value[type]) popOverVisible.value[type] = false;
  nextAssigneesActivityNode.value = [];
}

/** 流程通过时，根据表单变量查询新的流程节点，判断下一个节点类型是否为自选审批人 */
async function initNextAssigneesFormField() {
  // 获取修改的流程变量, 暂时只支持流程表单
  const variables = getUpdatedProcessInstanceVariables();
  const data = await getNextApprovalNodes({
    processInstanceId: props.processInstance.id,
    taskId: runningTask.value.id,
    processVariablesStr: JSON.stringify(variables),
  });
  if (data && data.length > 0) {
    data.forEach((node: BpmProcessInstanceApi.ApprovalNodeInfo) => {
      if (
        // 情况一：当前节点没有审批人，并且是发起人自选
        (isEmpty(node.tasks) &&
          isEmpty(node.candidateUsers) &&
          BpmCandidateStrategyEnum.START_USER_SELECT ===
            node.candidateStrategy) ||
        // 情况二：当前节点是审批人自选
        BpmCandidateStrategyEnum.APPROVE_USER_SELECT === node.candidateStrategy
      ) {
        nextAssigneesActivityNode.value.push(node);
      }
    });
  }
}

/** 选择下一个节点的审批人 */
function selectNextAssigneesConfirm(id: string, userList: any[]) {
  approveReasonForm.nextAssignees[id] = userList?.map((item: any) => item.id);
}
/** 审批通过时，校验每个自选审批人的节点是否都已配置了审批人 */
function validateNextAssignees() {
  if (Object.keys(nextAssigneesActivityNode.value).length === 0) {
    return true;
  }
  // 如果需要自选审批人，则校验每个节点是否都已配置审批人
  for (const item of nextAssigneesActivityNode.value) {
    if (isEmpty(approveReasonForm.nextAssignees[item.id])) {
      message.warning($t('bpm.operation.nextApproverEmpty'));
      return false;
    }
  }
  return true;
}

/** 处理审批通过和不通过的操作 */
async function handleAudit(pass: boolean, formRef: FormInstance | undefined) {
  formLoading.value = true;
  try {
    // 校验表单
    if (!formRef) return;
    await formRef?.validate();
    // 校验流程表单必填字段
    const valid = await validateNormalForm();
    if (!valid) {
      message.warning($t('bpm.operation.formValidateFailed'));
      return;
    }

    if (pass) {
      const nextAssigneesValid = validateNextAssignees();
      if (!nextAssigneesValid) return;
      const variables = getUpdatedProcessInstanceVariables();
      // 审批通过数据
      const data = {
        id: runningTask.value.id,
        reason: approveReasonForm.reason,
        variables, // 审批通过, 把修改的字段值赋于流程实例变量
        nextAssignees: approveReasonForm.nextAssignees, // 下个自选节点选择的审批人信息
      } as any;
      // 签名
      if (runningTask.value.signEnable) {
        data.signPicUrl = approveReasonForm.signPicUrl;
      }
      // 多表单处理，并且有额外的 approveForm 表单，需要校验 + 拼接到 data 表单里提交
      // TODO 芋艿 任务有多表单这里要如何处理，会和可编辑的字段冲突
      const formCreateApi = approveFormFApi.value;
      if (Object.keys(formCreateApi)?.length > 0) {
        await formCreateApi.validate();
        // @ts-ignore
        data.variables = approveForm.value.value;
      }
      await TaskApi.approveTask(data);
      popOverVisible.value.approve = false;
      nextAssigneesActivityNode.value = [];
      message.success($t('bpm.operation.approveSuccess'));
    } else {
      // 审批不通过数据
      const data = {
        id: runningTask.value.id,
        reason: rejectReasonForm.reason,
      };
      await TaskApi.rejectTask(data);
      popOverVisible.value.reject = false;
      message.success($t('bpm.operation.rejectSuccess'));
    }
    // 重置表单
    formRef.resetFields();
    // 加载最新数据
    reload();
  } finally {
    formLoading.value = false;
  }
}

/** 处理抄送 */
async function handleCopy() {
  formLoading.value = true;
  try {
    // 1. 校验表单
    if (!copyFormRef.value) return;
    await copyFormRef.value.validate();
    // 2. 提交抄送
    const data = {
      id: runningTask.value.id,
      reason: copyForm.copyReason,
      copyUserIds: copyForm.copyUserIds,
    };
    await TaskApi.copyTask(data);
    copyFormRef.value.resetFields();
    popOverVisible.value.copy = false;
    message.success($t('bpm.operation.copySuccess'));
  } finally {
    formLoading.value = false;
  }
}

/** 处理转交 */
async function handleTransfer() {
  formLoading.value = true;
  try {
    // 1.1 校验表单
    if (!transferFormRef.value) return;
    await transferFormRef.value.validate();
    // 1.2 提交转交
    const data = {
      id: runningTask.value.id,
      reason: transferForm.reason,
      assigneeUserId: transferForm.assigneeUserId,
    };
    await TaskApi.transferTask(data);
    transferFormRef.value.resetFields();
    popOverVisible.value.transfer = false;
    message.success($t('bpm.operation.transferSuccess'));
    // 2. 加载最新数据
    reload();
  } finally {
    formLoading.value = false;
  }
}

/** 处理委派 */
async function handleDelegate() {
  formLoading.value = true;
  try {
    // 1.1 校验表单
    if (!delegateFormRef.value) return;
    await delegateFormRef.value.validate();
    // 1.2 处理委派
    const data = {
      id: runningTask.value.id,
      reason: delegateForm.reason,
      delegateUserId: delegateForm.delegateUserId,
    };

    await TaskApi.delegateTask(data);
    popOverVisible.value.delegate = false;
    delegateFormRef.value.resetFields();
    message.success($t('bpm.operation.delegateSuccess'));
    // 2. 加载最新数据
    reload();
  } finally {
    formLoading.value = false;
  }
}

/** 处理加签 */
async function handlerAddSign(type: string) {
  formLoading.value = true;
  try {
    // 1.1 校验表单
    if (!addSignFormRef.value) return;
    await addSignFormRef.value.validate();
    // 1.2 提交加签
    const data = {
      id: runningTask.value.id,
      type,
      reason: addSignForm.reason,
      userIds: addSignForm.addSignUserIds,
    };
    await TaskApi.signCreateTask(data);
    message.success($t('bpm.operation.addSignSuccess'));
    addSignFormRef.value.resetFields();
    popOverVisible.value.addSign = false;
    // 2 加载最新数据
    reload();
  } finally {
    formLoading.value = false;
  }
}

/** 处理退回 */
async function handleReturn() {
  formLoading.value = true;
  try {
    // 1.1 校验表单
    if (!returnFormRef.value) return;
    await returnFormRef.value.validate();
    // 1.2 提交退回
    const data = {
      id: runningTask.value.id,
      reason: returnForm.returnReason,
      targetTaskDefinitionKey: returnForm.targetTaskDefinitionKey,
    };

    await TaskApi.returnTask(data);
    popOverVisible.value.return = false;
    returnFormRef.value.resetFields();
    message.success($t('bpm.operation.returnSuccess'));
    // 2 重新加载数据
    reload();
  } finally {
    formLoading.value = false;
  }
}

/** 处理取消 */
async function handleCancel() {
  formLoading.value = true;
  try {
    // 1.1 校验表单
    if (!cancelFormRef.value) return;
    await cancelFormRef.value.validate();
    // 1.2 提交取消
    await cancelProcessInstanceByStartUser(
      props.processInstance.id,
      cancelForm.cancelReason,
    );
    popOverVisible.value.return = false;
    message.success($t('bpm.operation.cancelSuccess'));
    cancelFormRef.value.resetFields();
    // 2 重新加载数据
    reload();
  } finally {
    formLoading.value = false;
  }
}

/** 处理再次提交 */
async function handleReCreate() {
  // 跳转发起流程界面
  await router.push({
    path: '/bpm/task/create',
    query: { processInstanceId: props.processInstance?.id },
  });
  // router.push('/bpm/task/my');
}

/** 获取减签人员标签 */
function getDeleteSignUserLabel(task: any): string {
  const deptName = task?.assigneeUser?.deptName || task?.ownerUser?.deptName;
  const nickname = task?.assigneeUser?.nickname || task?.ownerUser?.nickname;
  return `${nickname} ( ${$t('bpm.operation.deptLabel', [deptName])} )`;
}
/** 处理减签 */
async function handlerDeleteSign() {
  formLoading.value = true;
  try {
    // 1.1 校验表单
    if (!deleteSignFormRef.value) return;
    await deleteSignFormRef.value?.validate();
    // 1.2 提交减签
    const data = {
      id: deleteSignForm.deleteSignTaskId,
      reason: deleteSignForm.reason,
    };
    await TaskApi.signDeleteTask(data);
    message.success($t('bpm.operation.deleteSignSuccess'));
    deleteSignFormRef.value.resetFields();
    popOverVisible.value.deleteSign = false;
    // 2 加载最新数据
    reload();
  } finally {
    formLoading.value = false;
  }
}
/** 重新加载数据 */
function reload() {
  emit('success');
}

/** 任务是否为处理中状态 */
function isHandleTaskStatus() {
  let canHandle = false;
  if (BpmTaskStatusEnum.RUNNING === runningTask.value?.status) {
    canHandle = true;
  }
  return canHandle;
}

/** 流程状态是否为结束状态 */
function isEndProcessStatus(status: number) {
  let isEndStatus = false;
  if (
    BpmProcessInstanceStatus.APPROVE === status ||
    BpmProcessInstanceStatus.REJECT === status ||
    BpmProcessInstanceStatus.CANCEL === status
  ) {
    isEndStatus = true;
  }
  return isEndStatus;
}

/** 是否显示按钮 */
function isShowButton(btnType: BpmTaskOperationButtonTypeEnum): boolean {
  let isShow = true;
  if (
    runningTask.value?.buttonsSetting &&
    runningTask.value?.buttonsSetting[btnType]
  ) {
    isShow = runningTask.value.buttonsSetting[btnType].enable;
  }
  return isShow;
}

function loadTodoTask(task: any) {
  approveForm.value = {};
  runningTask.value = task;
  approveFormFApi.value = {};
  reasonRequire.value = task?.reasonRequire ?? false;
  nodeTypeName.value =
    task?.nodeType === BpmNodeTypeEnum.TRANSACTOR_NODE
      ? $t('bpm.operation.transactor')
      : $t('bpm.operation.approver');
  // 处理 approve 表单.
  if (task && task.formId && task.formConf) {
    const tempApproveForm = {};
    setConfAndFields2(
      tempApproveForm,
      task.formConf,
      task.formFields,
      task.formVariables,
    );
    approveForm.value = tempApproveForm;
  } else {
    approveForm.value = {}; // 占位，避免为空
  }
}

/** 校验流程表单 */
async function validateNormalForm() {
  if (props.processDefinition?.formType === BpmModelFormType.NORMAL) {
    let valid = true;
    try {
      await props.normalFormApi?.validate();
    } catch {
      valid = false;
    }
    return valid;
  } else {
    return true;
  }
}

/** 从可以编辑的流程表单字段，获取需要修改的流程实例的变量 */
function getUpdatedProcessInstanceVariables() {
  const variables: any = {};
  props.writableFields.forEach((field: string) => {
    if (field) {
      const value = props.normalFormApi?.getValue(field);
      // 检查字段值是否存在（不为 undefined 和 null）
      if (value !== undefined && value !== null) {
        variables[field] = value;
      }
    }
  });
  return variables;
}

/** 处理签名完成 */
function handleSignFinish(url: string) {
  approveReasonForm.signPicUrl = url;
  approveFormRef.value?.validateFields(['signPicUrl']);
}

/** 处理弹窗可见性 */
function handlePopoverVisible(visible: boolean) {
  if (!visible) {
    // 拦截关闭事件
    popOverVisible.value.approve = true;
  }
}

defineExpose({ loadTodoTask });
</script>
<template>
  <!--@ts-nocheck-->
  <div class="flex items-center">
    <!-- <div>是否处理中 {{ !!isHandleTaskStatus() }}</div> -->

    <!-- 【通过】按钮 -->
    <!-- z-index 设置为300 避免覆盖签名弹窗 -->
    <Space size="middle">
      <Popover
        v-model:open="popOverVisible.approve"
        placement="top"
        :overlay-style="{ minWidth: '400px', zIndex: 300 }"
        trigger="click"
        @open-change="handlePopoverVisible"
        v-if="
          runningTask &&
          isHandleTaskStatus() &&
          isShowButton(BpmTaskOperationButtonTypeEnum.APPROVE)
        "
      >
        <Button ghost type="primary" @click="openPopover('approve')">
          <IconifyIcon icon="icon-park-outline:check" />
          {{ $t('bpm.operation.approve') }}
        </Button>
        <template #content>
          <!-- 办理表单 -->
          <div
            class="flex flex-1 flex-col px-[20px] pt-[20px]"
            v-loading="formLoading"
          >
            <Form
              layout="vertical"
              class="mb-auto"
              ref="approveFormRef"
              :model="approveReasonForm"
              :rules="approveReasonRule"
              label-width="100px"
            >
              <Card
                v-if="runningTask?.formId > 0"
                class="!-mt-[10px] mb-[15px]"
              >
                <template #title>
                  <span class="el-icon-picture-outline">
                    {{ $t('bpm.operation.fillForm', [runningTask?.formName]) }}
                  </span>
                </template>
                <FormCreate
                  v-model:value="approveForm.value"
                  v-model:api="approveFormFApi"
                  :option="approveForm.option"
                  :rule="approveForm.rule"
                />
              </Card>

              <FormItem
                :label="$t('bpm.operation.nextNodeApprover')"
                name="nextAssignees"
                v-if="nextAssigneesActivityNode.length > 0"
              >
                <div class="-mb-[35px] -mt-[15px] ml-[10px]">
                  <ProcessInstanceTimeline
                    :activity-nodes="nextAssigneesActivityNode"
                    :show-status-icon="false"
                    @select-user-confirm="selectNextAssigneesConfirm"
                  />
                </div>
              </FormItem>
              <FormItem
                v-if="runningTask.signEnable"
                :label="$t('bpm.operation.signature')"
                name="signPicUrl"
                ref="approveSignFormRef"
              >
                <Button @click="openSignatureModal" type="primary">
                  {{
                    approveReasonForm.signPicUrl
                      ? $t('bpm.operation.reSign')
                      : $t('bpm.operation.clickToSign')
                  }}
                </Button>

                <div class="mt-2">
                  <Image
                    style="float: left; width: 326px; height: 150px"
                    v-if="approveReasonForm.signPicUrl"
                    :src="approveReasonForm.signPicUrl"
                  />
                </div>
              </FormItem>

              <FormItem
                :label="$t('bpm.operation.reason', [nodeTypeName])"
                name="reason"
              >
                <Textarea
                  v-model:value="approveReasonForm.reason"
                  :placeholder="
                    $t('bpm.operation.reasonPlaceholder', [nodeTypeName])
                  "
                  :rows="4"
                />
              </FormItem>

              <FormItem>
                <Space>
                  <Button
                    :disabled="formLoading"
                    type="primary"
                    @click="handleAudit(true, approveFormRef)"
                  >
                    {{ $t('bpm.operation.approve') }}
                  </Button>
                  <Button @click="closePopover('approve', approveFormRef)">
                    {{ $t('common.cancel') }}
                  </Button>
                </Space>
              </FormItem>
            </Form>
          </div>
        </template>
      </Popover>

      <!-- 【拒绝】按钮 -->
      <Popover
        v-model:open="popOverVisible.reject"
        placement="top"
        :overlay-style="{ minWidth: '400px' }"
        trigger="click"
        v-if="
          runningTask &&
          isHandleTaskStatus() &&
          isShowButton(BpmTaskOperationButtonTypeEnum.REJECT)
        "
      >
        <Button ghost danger type="primary" @click="openPopover('reject')">
          <IconifyIcon icon="lucide:x" />
          {{ $t('bpm.operation.reject') }}
        </Button>
        <template #content>
          <!-- 审批表单 -->
          <div
            class="pt-20px px-20px flex flex-1 flex-col"
            v-loading="formLoading"
          >
            <Form
              layout="vertical"
              class="mb-auto"
              ref="rejectFormRef"
              :model="rejectReasonForm"
              :rules="rejectReasonRule"
              label-width="100px"
            >
              <FormItem
                :label="$t('bpm.task.done.field.approvalSuggestion')"
                name="reason"
              >
                <Textarea
                  v-model:value="rejectReasonForm.reason"
                  :placeholder="
                    $t('bpm.operation.placeholder.opinion', [nodeTypeName])
                  "
                  :rows="4"
                />
              </FormItem>
              <FormItem>
                <Button
                  :disabled="formLoading"
                  danger
                  type="primary"
                  @click="handleAudit(false, rejectFormRef)"
                >
                  {{ $t('bpm.operation.reject') }}
                </Button>
                <Button
                  class="ml-2"
                  @click="closePopover('reject', rejectFormRef)"
                >
                  {{ $t('common.cancel') }}
                </Button>
              </FormItem>
            </Form>
          </div>
        </template>
      </Popover>

      <!-- 【抄送】按钮 -->
      <Popover
        v-model:open="popOverVisible.copy"
        placement="top"
        :overlay-style="{ width: '400px' }"
        trigger="click"
        v-if="
          runningTask &&
          isHandleTaskStatus() &&
          isShowButton(BpmTaskOperationButtonTypeEnum.COPY)
        "
      >
        <Button type="dashed" @click="openPopover('copy')">
          <IconifyIcon icon="lucide:copy" />
          {{ $t('bpm.operation.copy') }}
        </Button>
        <template #content>
          <div
            class="pt-20px px-20px flex flex-1 flex-col"
            v-loading="formLoading"
          >
            <Form
              layout="vertical"
              class="mb-auto"
              ref="copyFormRef"
              :model="copyForm"
              :rules="copyFormRule"
              label-width="100px"
            >
              <FormItem
                :label="$t('bpm.operation.copyForm.copier')"
                name="copyUserIds"
              >
                <Select
                  v-model:value="copyForm.copyUserIds"
                  :allow-clear="true"
                  style="width: 100%"
                  mode="multiple"
                  :placeholder="$t('bpm.operation.placeholder.selectCopyUser')"
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
                :label="$t('bpm.operation.copyForm.copyReason')"
                name="copyReason"
              >
                <Textarea
                  v-model:value="copyForm.copyReason"
                  :placeholder="$t('bpm.operation.placeholder.inputCopyReason')"
                  :rows="3"
                />
              </FormItem>
              <FormItem>
                <Space>
                  <Button
                    :disabled="formLoading"
                    type="primary"
                    @click="handleCopy"
                  >
                    {{ $t('bpm.operation.copy') }}
                  </Button>
                  <Button @click="closePopover('copy', copyFormRef)">
                    {{ $t('common.cancel') }}
                  </Button>
                </Space>
              </FormItem>
            </Form>
          </div>
        </template>
      </Popover>

      <!-- 【转办】按钮 -->
      <Popover
        v-model:open="popOverVisible.transfer"
        placement="top"
        :overlay-style="{ width: '400px' }"
        trigger="click"
        v-if="
          runningTask &&
          isHandleTaskStatus() &&
          isShowButton(BpmTaskOperationButtonTypeEnum.TRANSFER)
        "
      >
        <Button type="dashed" @click="openPopover('transfer')">
          <IconifyIcon icon="icon-park-outline:share-two" />
          {{ $t('bpm.operation.transfer') }}
        </Button>
        <template #content>
          <div
            class="pt-20px px-20px flex flex-1 flex-col"
            v-loading="formLoading"
          >
            <Form
              layout="vertical"
              class="mb-auto"
              ref="transferFormRef"
              :model="transferForm"
              :rules="transferFormRule"
              label-width="100px"
            >
              <FormItem
                :label="$t('bpm.operation.transfer')"
                name="assigneeUserId"
              >
                <Select
                  v-model:value="transferForm.assigneeUserId"
                  :allow-clear="true"
                  style="width: 100%"
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
                :label="$t('bpm.task.done.field.approvalSuggestion')"
                name="reason"
              >
                <Textarea
                  v-model:value="transferForm.reason"
                  clearable
                  :placeholder="$t('bpm.operation.placeholder.transferReason')"
                  :rows="3"
                />
              </FormItem>
              <FormItem>
                <Space>
                  <Button
                    :disabled="formLoading"
                    type="primary"
                    @click="handleTransfer()"
                  >
                    {{ $t('bpm.operation.transfer') }}
                  </Button>
                  <Button @click="closePopover('transfer', transferFormRef)">
                    {{ $t('common.cancel') }}
                  </Button>
                </Space>
              </FormItem>
            </Form>
          </div>
        </template>
      </Popover>

      <!-- 【委派】按钮 -->
      <Popover
        v-model:open="popOverVisible.delegate"
        placement="top"
        :overlay-style="{ width: '400px' }"
        trigger="click"
        v-if="
          runningTask &&
          isHandleTaskStatus() &&
          isShowButton(BpmTaskOperationButtonTypeEnum.DELEGATE)
        "
      >
        <Button type="dashed" @click="openPopover('delegate')">
          <IconifyIcon :size="14" icon="icon-park-outline:user-positioning" />
          {{ $t('bpm.operation.delegate') }}
        </Button>
        <template #content>
          <div
            class="pt-20px px-20px flex flex-1 flex-col"
            v-loading="formLoading"
          >
            <Form
              layout="vertical"
              class="mb-auto"
              ref="delegateFormRef"
              :model="delegateForm"
              :rules="delegateFormRule"
              label-width="100px"
            >
              <FormItem
                :label="$t('bpm.operation.delegate')"
                name="delegateUserId"
              >
                <Select
                  v-model:value="delegateForm.delegateUserId"
                  :allow-clear="true"
                  style="width: 100%"
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
                :label="$t('bpm.task.done.field.approvalSuggestion')"
                name="reason"
              >
                <Textarea
                  v-model:value="delegateForm.reason"
                  clearable
                  :placeholder="$t('bpm.operation.placeholder.delegateReason')"
                  :rows="3"
                />
              </FormItem>
              <FormItem>
                <Space>
                  <Button
                    :disabled="formLoading"
                    type="primary"
                    @click="handleDelegate()"
                  >
                    {{ $t('bpm.operation.delegate') }}
                  </Button>
                  <Button @click="closePopover('delegate', delegateFormRef)">
                    {{ $t('common.cancel') }}
                  </Button>
                </Space>
              </FormItem>
            </Form>
          </div>
        </template>
      </Popover>

      <!-- 【加签】按钮 当前任务审批人为A，向前加签选了一个C，则需要C先审批，然后再是A审批，向后加签B，A审批完，需要B再审批完，才算完成这个任务节点 -->
      <Popover
        v-model:open="popOverVisible.addSign"
        placement="top"
        :overlay-style="{ width: '400px' }"
        trigger="click"
        v-if="
          runningTask &&
          isHandleTaskStatus() &&
          isShowButton(BpmTaskOperationButtonTypeEnum.ADD_SIGN)
        "
      >
        <Button type="dashed" @click="openPopover('addSign')">
          <IconifyIcon :size="14" icon="icon-park-outline:plus" />
          {{ $t('bpm.operation.addSign') }}
        </Button>
        <template #content>
          <div
            class="pt-20px px-20px flex flex-1 flex-col"
            v-loading="formLoading"
          >
            <Form
              layout="vertical"
              class="mb-auto"
              ref="addSignFormRef"
              :model="addSignForm"
              :rules="addSignFormRule"
              label-width="100px"
            >
              <FormItem
                :label="$t('bpm.operation.addSign')"
                name="addSignUserIds"
              >
                <Select
                  v-model:value="addSignForm.addSignUserIds"
                  :allow-clear="true"
                  mode="multiple"
                  style="width: 100%"
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
                :label="$t('bpm.task.done.field.approvalSuggestion')"
                name="reason"
              >
                <Textarea
                  v-model:value="addSignForm.reason"
                  clearable
                  :placeholder="$t('bpm.operation.placeholder.addSignReason')"
                  :rows="3"
                />
              </FormItem>
              <FormItem>
                <Space>
                  <Button
                    :disabled="formLoading"
                    type="primary"
                    @click="handlerAddSign('before')"
                  >
                    {{
                      $t('bpm.operation.forward') + $t('bpm.operation.addSign')
                    }}
                  </Button>
                  <Button
                    :disabled="formLoading"
                    type="primary"
                    @click="handlerAddSign('after')"
                  >
                    {{
                      $t('bpm.operation.backward') + $t('bpm.operation.addSign')
                    }}
                  </Button>
                  <Button @click="closePopover('addSign', addSignFormRef)">
                    {{ $t('common.cancel') }}
                  </Button>
                </Space>
              </FormItem>
            </Form>
          </div>
        </template>
      </Popover>

      <!-- 【减签】按钮 -->
      <Popover
        v-model:open="popOverVisible.deleteSign"
        placement="top"
        :overlay-style="{ width: '400px' }"
        trigger="click"
        v-if="runningTask?.children.length > 0"
      >
        <Button type="dashed" @click="openPopover('deleteSign')">
          <IconifyIcon :size="14" icon="icon-park-outline:minus" />
          {{ $t('bpm.operation.deleteSign') }}
        </Button>
        <template #content>
          <div
            class="pt-20px px-20px flex flex-1 flex-col"
            v-loading="formLoading"
          >
            <Form
              layout="vertical"
              class="mb-auto"
              ref="deleteSignFormRef"
              :model="deleteSignForm"
              :rules="deleteSignFormRule"
              label-width="100px"
            >
              <FormItem
                :label="$t('bpm.operation.deleteSign')"
                name="deleteSignTaskId"
              >
                <Select
                  v-model:value="deleteSignForm.deleteSignTaskId"
                  :allow-clear="true"
                  style="width: 100%"
                >
                  <SelectOption
                    v-for="item in runningTask.children"
                    :key="item.id"
                    :label="getDeleteSignUserLabel(item)"
                    :value="item.id"
                  >
                    {{ getDeleteSignUserLabel(item) }}
                  </SelectOption>
                </Select>
              </FormItem>
              <FormItem
                :label="$t('bpm.task.done.field.approvalSuggestion')"
                name="reason"
              >
                <Textarea
                  v-model:value="deleteSignForm.reason"
                  clearable
                  :placeholder="
                    $t('bpm.operation.placeholder.deleteSignReason')
                  "
                  :rows="3"
                />
              </FormItem>
              <FormItem>
                <Space>
                  <Button
                    :disabled="formLoading"
                    type="primary"
                    @click="handlerDeleteSign()"
                  >
                    {{ $t('bpm.operation.deleteSign') }}
                  </Button>
                  <Button
                    @click="closePopover('deleteSign', deleteSignFormRef)"
                  >
                    {{ $t('common.cancel') }}
                  </Button>
                </Space>
              </FormItem>
            </Form>
          </div>
        </template>
      </Popover>

      <!-- 【退回】按钮 -->
      <Popover
        v-model:open="popOverVisible.return"
        placement="top"
        :overlay-style="{ width: '400px' }"
        trigger="click"
        v-if="
          runningTask &&
          isHandleTaskStatus() &&
          isShowButton(BpmTaskOperationButtonTypeEnum.RETURN)
        "
      >
        <Button type="dashed" @click="openPopover('return')">
          <IconifyIcon :size="14" icon="ep:back" />
          {{ $t('bpm.operation.return') }}
        </Button>
        <template #content>
          <div
            class="pt-20px px-20px flex flex-1 flex-col"
            v-loading="formLoading"
          >
            <Form
              layout="vertical"
              class="mb-auto"
              ref="returnFormRef"
              :model="returnForm"
              :rules="returnFormRule"
              label-width="100px"
            >
              <FormItem
                :label="$t('bpm.operation.return')"
                name="targetTaskDefinitionKey"
              >
                <Select
                  v-model:value="returnForm.targetTaskDefinitionKey"
                  :allow-clear="true"
                  style="width: 100%"
                >
                  <SelectOption
                    v-for="item in returnList"
                    :key="item.taskDefinitionKey"
                    :label="item.name"
                    :value="item.taskDefinitionKey"
                  >
                    {{ item.name }}
                  </SelectOption>
                </Select>
              </FormItem>
              <FormItem :label="$t('bpm.operation.return')" name="returnReason">
                <Textarea
                  v-model:value="returnForm.returnReason"
                  clearable
                  :placeholder="$t('bpm.operation.placeholder.returnReason')"
                  :rows="3"
                />
              </FormItem>
              <FormItem>
                <Space>
                  <Button
                    :disabled="formLoading"
                    type="primary"
                    @click="handleReturn()"
                  >
                    {{ $t('bpm.operation.return') }}
                  </Button>
                  <Button @click="closePopover('return', returnFormRef)">
                    {{ $t('common.cancel') }}
                  </Button>
                </Space>
              </FormItem>
            </Form>
          </div>
        </template>
      </Popover>

      <!--【取消】按钮 这个对应发起人的取消, 只有发起人可以取消 -->
      <Popover
        v-model:open="popOverVisible.cancel"
        placement="top"
        :width="500"
        trigger="click"
        v-if="
          userId === processInstance?.startUser?.id &&
          !isEndProcessStatus(processInstance?.status)
        "
      >
        <Button type="dashed" @click="openPopover('cancel')">
          <IconifyIcon :size="14" icon="icon-park-outline:back" />
          {{ $t('bpm.operation.cancel') }}
        </Button>
        <template #content>
          <div
            class="pt-20px px-20px flex w-[400px] flex-1 flex-col"
            v-loading="formLoading"
          >
            <Form
              layout="vertical"
              class="mb-auto"
              ref="cancelFormRef"
              :model="cancelForm"
              :rules="cancelFormRule"
              label-width="100px"
            >
              <FormItem :label="$t('bpm.operation.cancel')" name="cancelReason">
                <Alert
                  class="text-12px mb-2"
                  type="warning"
                  size="small"
                  show-icon
                  :message="$t('bpm.operation.cancelTip')"
                />
                <Textarea
                  v-model:value="cancelForm.cancelReason"
                  clearable
                  :placeholder="$t('bpm.operation.placeholder.cancelReason')"
                  :rows="3"
                />
              </FormItem>
              <FormItem :wrapper-col="{ span: 18, offset: 0 }">
                <Space>
                  <Button
                    :disabled="formLoading"
                    type="primary"
                    @click="handleCancel()"
                  >
                    {{ $t('common.confirm') }}
                  </Button>

                  <Button @click="closePopover('cancel', cancelFormRef)">
                    {{ $t('common.cancel') }}
                  </Button>
                </Space>
              </FormItem>
            </Form>
          </div>
        </template>
      </Popover>
      <!-- 【再次提交】 按钮-->
      <Button
        type="dashed"
        @click="handleReCreate()"
        v-if="
          userId === processInstance?.startUser?.id &&
          isEndProcessStatus(processInstance?.status) &&
          processDefinition?.formType === 10
        "
      >
        <IconifyIcon :size="14" icon="icon-park-outline:refresh" />
        {{ $t('bpm.operation.reSubmit') }}
      </Button>
    </Space>
  </div>

  <!-- 签名弹窗 -->
  <SignatureModal @success="handleSignFinish" />
</template>
