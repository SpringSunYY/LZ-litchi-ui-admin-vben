<script lang="ts" setup>
import type { SimpleFlowNode } from '#/components/simple-process-design';

import { ref, watch } from 'vue';

import { SimpleProcessViewer } from '#/components/simple-process-design';
import { BpmNodeTypeEnum, BpmTaskStatusEnum } from '#/utils';

defineOptions({ name: 'ProcessInstanceSimpleViewer' });

const props = withDefaults(
  defineProps<{
    loading?: boolean;
    modelView?: any;
    simpleJson?: string;
  }>(),
  {
    loading: false,
    modelView: () => ({}),
    simpleJson: '',
  },
);

const simpleModel = ref<SimpleFlowNode | undefined>(undefined);
const tasks = ref([]);
const processInstance = ref();

watch(
  () => props.modelView,
  (newModelView) => {
    if (newModelView) {
      tasks.value = newModelView.tasks || [];
      processInstance.value = newModelView.processInstance;

      const rejectedTaskActivityIds: string[] =
        newModelView.rejectedTaskActivityIds || [];
      const unfinishedTaskActivityIds: string[] =
        newModelView.unfinishedTaskActivityIds || [];
      const finishedActivityIds: string[] =
        newModelView.finishedTaskActivityIds || [];
      const finishedSequenceFlowActivityIds: string[] =
        newModelView.finishedSequenceFlowActivityIds || [];

      setSimpleModelNodeTaskStatus(
        newModelView.simpleModel,
        newModelView.processInstance?.status,
        rejectedTaskActivityIds,
        unfinishedTaskActivityIds,
        finishedActivityIds,
        finishedSequenceFlowActivityIds,
      );
      simpleModel.value = newModelView.simpleModel || undefined;
    }
  },
  { immediate: true },
);

watch(
  () => props.simpleJson,
  (value) => {
    if (value) {
      simpleModel.value = JSON.parse(value);
    }
  },
);

function setSimpleModelNodeTaskStatus(
  simpleModel: SimpleFlowNode | undefined,
  processStatus: number,
  rejectedTaskActivityIds: string[],
  unfinishedTaskActivityIds: string[],
  finishedActivityIds: string[],
  finishedSequenceFlowActivityIds: string[],
) {
  if (!simpleModel) {
    return;
  }

  // 结束节点
  if (simpleModel.type === BpmNodeTypeEnum.END_EVENT_NODE) {
    simpleModel.activityStatus = finishedActivityIds.includes(simpleModel.id)
      ? processStatus
      : BpmTaskStatusEnum.NOT_START;
    return;
  }

  // 审批类节点：发起人 / 审批人 / 办理人 / 子流程
  if (
    simpleModel.type === BpmNodeTypeEnum.START_USER_NODE ||
    simpleModel.type === BpmNodeTypeEnum.USER_TASK_NODE ||
    simpleModel.type === BpmNodeTypeEnum.TRANSACTOR_NODE ||
    simpleModel.type === BpmNodeTypeEnum.CHILD_PROCESS_NODE
  ) {
    simpleModel.activityStatus = BpmTaskStatusEnum.NOT_START;
    if (rejectedTaskActivityIds.includes(simpleModel.id)) {
      simpleModel.activityStatus = BpmTaskStatusEnum.REJECT;
    } else if (unfinishedTaskActivityIds.includes(simpleModel.id)) {
      simpleModel.activityStatus = BpmTaskStatusEnum.RUNNING;
    } else if (finishedActivityIds.includes(simpleModel.id)) {
      simpleModel.activityStatus = BpmTaskStatusEnum.APPROVE;
    }
  }

  // 抄送节点：只有通过和未执行状态
  if (simpleModel.type === BpmNodeTypeEnum.COPY_TASK_NODE) {
    simpleModel.activityStatus = finishedActivityIds.includes(simpleModel.id)
      ? BpmTaskStatusEnum.APPROVE
      : BpmTaskStatusEnum.NOT_START;
  }

  // 延迟器节点：只有通过和未执行状态
  if (simpleModel.type === BpmNodeTypeEnum.DELAY_TIMER_NODE) {
    simpleModel.activityStatus = finishedActivityIds.includes(simpleModel.id)
      ? BpmTaskStatusEnum.APPROVE
      : BpmTaskStatusEnum.NOT_START;
  }

  // 触发器节点：只有通过和未执行状态
  if (simpleModel.type === BpmNodeTypeEnum.TRIGGER_NODE) {
    simpleModel.activityStatus = finishedActivityIds.includes(simpleModel.id)
      ? BpmTaskStatusEnum.APPROVE
      : BpmTaskStatusEnum.NOT_START;
  }

  // 条件节点（SequenceFlow）：只有通过和未执行状态
  if (simpleModel.type === BpmNodeTypeEnum.CONDITION_NODE) {
    simpleModel.activityStatus = finishedSequenceFlowActivityIds.includes(
      simpleModel.id,
    )
      ? BpmTaskStatusEnum.APPROVE
      : BpmTaskStatusEnum.NOT_START;
  }

  // 网关节点：条件分支 / 并行分支 / 包容分支 / 路由分支
  if (
    simpleModel.type === BpmNodeTypeEnum.CONDITION_BRANCH_NODE ||
    simpleModel.type === BpmNodeTypeEnum.PARALLEL_BRANCH_NODE ||
    simpleModel.type === BpmNodeTypeEnum.INCLUSIVE_BRANCH_NODE ||
    simpleModel.type === BpmNodeTypeEnum.ROUTER_BRANCH_NODE
  ) {
    simpleModel.activityStatus = finishedActivityIds.includes(simpleModel.id)
      ? BpmTaskStatusEnum.APPROVE
      : BpmTaskStatusEnum.NOT_START;
    simpleModel.conditionNodes?.forEach((node) => {
      setSimpleModelNodeTaskStatus(
        node,
        processStatus,
        rejectedTaskActivityIds,
        unfinishedTaskActivityIds,
        finishedActivityIds,
        finishedSequenceFlowActivityIds,
      );
    });
  }

  // 递归处理后续节点
  setSimpleModelNodeTaskStatus(
    simpleModel.childNode,
    processStatus,
    rejectedTaskActivityIds,
    unfinishedTaskActivityIds,
    finishedActivityIds,
    finishedSequenceFlowActivityIds,
  );
}
</script>

<template>
  <div v-loading="loading">
    <SimpleProcessViewer
      v-if="simpleModel"
      :flow-node="simpleModel"
      :tasks="tasks"
      :process-instance="processInstance"
    />
  </div>
</template>
