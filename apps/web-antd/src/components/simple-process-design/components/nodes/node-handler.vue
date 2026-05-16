<script setup lang="ts">
import type { SimpleFlowNode } from '../../consts';

import { inject, ref } from 'vue';

import { IconifyIcon } from '@vben/icons';
import { cloneDeep, buildShortUUID as generateUUID } from '@vben/utils';

import { message, Popover } from 'ant-design-vue';

import { NODE_DEFAULT_NAME } from '#/components/simple-process-design/locales/simple-process-design';
import { $t } from '#/locales';
import { BpmNodeTypeEnum } from '#/utils';

import {
  ApproveMethodType,
  AssignEmptyHandlerType,
  AssignStartUserHandlerType,
  ConditionType,
  DEFAULT_CONDITION_GROUP_VALUE,
  RejectHandlerType,
} from '../../consts';

defineOptions({
  name: 'NodeHandler',
});

const props = defineProps({
  childNode: {
    type: Object as () => SimpleFlowNode,
    default: null,
  },
  currentNode: {
    type: Object as () => SimpleFlowNode,
    required: true,
  },
});

const emits = defineEmits(['update:childNode']);
const popoverShow = ref(false);
const readonly = inject<Boolean>('readonly'); // 是否只读

function addNode(type: number) {
  // 校验：条件分支、包容分支后面，不允许直接添加并行分支
  if (
    type === BpmNodeTypeEnum.PARALLEL_BRANCH_NODE &&
    [
      BpmNodeTypeEnum.CONDITION_BRANCH_NODE,
      BpmNodeTypeEnum.INCLUSIVE_BRANCH_NODE,
    ].includes(props.currentNode?.type)
  ) {
    message.error(
      $t('bpm.simpleProcessDesign.default.notAllowAddParallelAfterCondition'),
    );
    return;
  }

  popoverShow.value = false;
  if (
    type === BpmNodeTypeEnum.USER_TASK_NODE ||
    type === BpmNodeTypeEnum.TRANSACTOR_NODE
  ) {
    const id = `Activity_${generateUUID()}`;
    const data: SimpleFlowNode = {
      id,
      name: NODE_DEFAULT_NAME.get(type) as string,
      showText: '',
      type,
      approveMethod: ApproveMethodType.SEQUENTIAL_APPROVE,
      // 超时处理
      rejectHandler: {
        type: RejectHandlerType.FINISH_PROCESS,
      },
      timeoutHandler: {
        enable: false,
      },
      assignEmptyHandler: {
        type: AssignEmptyHandlerType.APPROVE,
      },
      assignStartUserHandlerType: AssignStartUserHandlerType.START_USER_AUDIT,
      childNode: props.childNode,
      taskCreateListener: {
        enable: false,
      },
      taskAssignListener: {
        enable: false,
      },
      taskCompleteListener: {
        enable: false,
      },
    };
    emits('update:childNode', data);
  }
  if (type === BpmNodeTypeEnum.COPY_TASK_NODE) {
    const data: SimpleFlowNode = {
      id: `Activity_${generateUUID()}`,
      name: NODE_DEFAULT_NAME.get(BpmNodeTypeEnum.COPY_TASK_NODE) as string,
      showText: '',
      type: BpmNodeTypeEnum.COPY_TASK_NODE,
      childNode: props.childNode,
    };
    emits('update:childNode', data);
  }
  if (type === BpmNodeTypeEnum.CONDITION_BRANCH_NODE) {
    const data: SimpleFlowNode = {
      name: $t('bpm.simpleProcessDesign.default.conditionBranch'),
      type: BpmNodeTypeEnum.CONDITION_BRANCH_NODE,
      id: `GateWay_${generateUUID()}`,
      childNode: props.childNode,
      conditionNodes: [
        {
          id: `Flow_${generateUUID()}`,
          name: $t('bpm.simpleProcessDesign.default.condition1'),
          showText: '',
          type: BpmNodeTypeEnum.CONDITION_NODE,
          childNode: undefined,
          conditionSetting: {
            defaultFlow: false,
            conditionType: ConditionType.RULE,
            conditionGroups: cloneDeep(DEFAULT_CONDITION_GROUP_VALUE),
          },
        },
        {
          id: `Flow_${generateUUID()}`,
          name: $t('bpm.simpleProcessDesign.default.otherCondition'),
          showText: $t('bpm.simpleProcessDesign.default.otherConditionTip'),
          type: BpmNodeTypeEnum.CONDITION_NODE,
          childNode: undefined,
          conditionSetting: {
            defaultFlow: true,
          },
        },
      ],
    };
    emits('update:childNode', data);
  }
  if (type === BpmNodeTypeEnum.PARALLEL_BRANCH_NODE) {
    const data: SimpleFlowNode = {
      name: $t('bpm.simpleProcessDesign.default.parallelBranch'),
      type: BpmNodeTypeEnum.PARALLEL_BRANCH_NODE,
      id: `GateWay_${generateUUID()}`,
      childNode: props.childNode,
      conditionNodes: [
        {
          id: `Flow_${generateUUID()}`,
          name: $t('bpm.simpleProcessDesign.default.parallel1'),
          showText: $t(
            'bpm.simpleProcessDesign.default.noConditionConcurrentExecute',
          ),
          type: BpmNodeTypeEnum.CONDITION_NODE,
          childNode: undefined,
        },
        {
          id: `Flow_${generateUUID()}`,
          name: $t('bpm.simpleProcessDesign.default.parallel2'),
          showText: $t(
            'bpm.simpleProcessDesign.default.noConditionConcurrentExecute',
          ),
          type: BpmNodeTypeEnum.CONDITION_NODE,
          childNode: undefined,
        },
      ],
    };
    emits('update:childNode', data);
  }
  if (type === BpmNodeTypeEnum.INCLUSIVE_BRANCH_NODE) {
    const data: SimpleFlowNode = {
      name: $t('bpm.simpleProcessDesign.default.inclusiveBranch'),
      type: BpmNodeTypeEnum.INCLUSIVE_BRANCH_NODE,
      id: `GateWay_${generateUUID()}`,
      childNode: props.childNode,
      conditionNodes: [
        {
          id: `Flow_${generateUUID()}`,
          name: $t('bpm.simpleProcessDesign.default.inclusiveCondition', [1]),
          showText: '',
          type: BpmNodeTypeEnum.CONDITION_NODE,
          childNode: undefined,
          conditionSetting: {
            defaultFlow: false,
            conditionType: ConditionType.RULE,
            conditionGroups: cloneDeep(DEFAULT_CONDITION_GROUP_VALUE),
          },
        },
        {
          id: `Flow_${generateUUID()}`,
          name: $t('bpm.simpleProcessDesign.default.otherCondition'),
          showText: $t('bpm.simpleProcessDesign.default.otherConditionTip'),
          type: BpmNodeTypeEnum.CONDITION_NODE,
          childNode: undefined,
          conditionSetting: {
            defaultFlow: true,
          },
        },
      ],
    };
    emits('update:childNode', data);
  }
  if (type === BpmNodeTypeEnum.DELAY_TIMER_NODE) {
    const data: SimpleFlowNode = {
      id: `Activity_${generateUUID()}`,
      name: NODE_DEFAULT_NAME.get(BpmNodeTypeEnum.DELAY_TIMER_NODE) as string,
      showText: '',
      type: BpmNodeTypeEnum.DELAY_TIMER_NODE,
      childNode: props.childNode,
    };
    emits('update:childNode', data);
  }
  if (type === BpmNodeTypeEnum.ROUTER_BRANCH_NODE) {
    const data: SimpleFlowNode = {
      id: `GateWay_${generateUUID()}`,
      name: NODE_DEFAULT_NAME.get(BpmNodeTypeEnum.ROUTER_BRANCH_NODE) as string,
      showText: '',
      type: BpmNodeTypeEnum.ROUTER_BRANCH_NODE,
      childNode: props.childNode,
    };
    emits('update:childNode', data);
  }
  if (type === BpmNodeTypeEnum.TRIGGER_NODE) {
    const data: SimpleFlowNode = {
      id: `Activity_${generateUUID()}`,
      name: NODE_DEFAULT_NAME.get(BpmNodeTypeEnum.TRIGGER_NODE) as string,
      showText: '',
      type: BpmNodeTypeEnum.TRIGGER_NODE,
      childNode: props.childNode,
    };
    emits('update:childNode', data);
  }
  if (type === BpmNodeTypeEnum.CHILD_PROCESS_NODE) {
    const data: SimpleFlowNode = {
      id: `Activity_${generateUUID()}`,
      name: NODE_DEFAULT_NAME.get(BpmNodeTypeEnum.CHILD_PROCESS_NODE) as string,
      showText: '',
      type: BpmNodeTypeEnum.CHILD_PROCESS_NODE,
      childNode: props.childNode,
      childProcessSetting: {
        calledProcessDefinitionKey: '',
        calledProcessDefinitionName: '',
        async: false,
        skipStartUserNode: false,
        startUserSetting: {
          type: 1,
        },
        timeoutSetting: {
          enable: false,
        },
        multiInstanceSetting: {
          enable: false,
        },
      },
    };
    emits('update:childNode', data);
  }
}
</script>
<template>
  <div class="node-handler-wrapper">
    <div class="node-handler">
      <Popover trigger="hover" placement="right" width="auto" v-if="!readonly">
        <template #content>
          <div class="handler-item-wrapper">
            <div
              class="handler-item"
              @click="addNode(BpmNodeTypeEnum.USER_TASK_NODE)"
            >
              <div class="approve handler-item-icon">
                <span class="iconfont icon-approve icon-size"></span>
              </div>
              <div class="handler-item-text">
                {{ $t('bpm.simpleProcessDesign.handlerMenu.userTask') }}
              </div>
            </div>
            <div
              class="handler-item"
              @click="addNode(BpmNodeTypeEnum.TRANSACTOR_NODE)"
            >
              <div class="transactor handler-item-icon">
                <span class="iconfont icon-transactor icon-size"></span>
              </div>
              <div class="handler-item-text">
                {{ $t('bpm.simpleProcessDesign.handlerMenu.transactor') }}
              </div>
            </div>
            <div
              class="handler-item"
              @click="addNode(BpmNodeTypeEnum.COPY_TASK_NODE)"
            >
              <div class="handler-item-icon copy">
                <span class="iconfont icon-size icon-copy"></span>
              </div>
              <div class="handler-item-text">
                {{ $t('bpm.simpleProcessDesign.handlerMenu.copyTask') }}
              </div>
            </div>
            <div
              class="handler-item"
              @click="addNode(BpmNodeTypeEnum.CONDITION_BRANCH_NODE)"
            >
              <div class="handler-item-icon condition">
                <span class="iconfont icon-size icon-exclusive"></span>
              </div>
              <div class="handler-item-text">
                {{ $t('bpm.simpleProcessDesign.handlerMenu.conditionBranch') }}
              </div>
            </div>
            <div
              class="handler-item"
              @click="addNode(BpmNodeTypeEnum.PARALLEL_BRANCH_NODE)"
            >
              <div class="handler-item-icon parallel">
                <span class="iconfont icon-size icon-parallel"></span>
              </div>
              <div class="handler-item-text">
                {{ $t('bpm.simpleProcessDesign.handlerMenu.parallelBranch') }}
              </div>
            </div>
            <div
              class="handler-item"
              @click="addNode(BpmNodeTypeEnum.INCLUSIVE_BRANCH_NODE)"
            >
              <div class="handler-item-icon inclusive">
                <span class="iconfont icon-size icon-inclusive"></span>
              </div>
              <div class="handler-item-text">
                {{ $t('bpm.simpleProcessDesign.handlerMenu.inclusiveBranch') }}
              </div>
            </div>
            <div
              class="handler-item"
              @click="addNode(BpmNodeTypeEnum.DELAY_TIMER_NODE)"
            >
              <div class="handler-item-icon delay">
                <span class="iconfont icon-size icon-delay"></span>
              </div>
              <div class="handler-item-text">
                {{ $t('bpm.simpleProcessDesign.handlerMenu.delayTimer') }}
              </div>
            </div>
            <div
              class="handler-item"
              @click="addNode(BpmNodeTypeEnum.ROUTER_BRANCH_NODE)"
            >
              <div class="handler-item-icon router">
                <span class="iconfont icon-size icon-router"></span>
              </div>
              <div class="handler-item-text">
                {{ $t('bpm.simpleProcessDesign.handlerMenu.routerBranch') }}
              </div>
            </div>
            <div
              class="handler-item"
              @click="addNode(BpmNodeTypeEnum.TRIGGER_NODE)"
            >
              <div class="handler-item-icon trigger">
                <span class="iconfont icon-size icon-trigger"></span>
              </div>
              <div class="handler-item-text">
                {{ $t('bpm.simpleProcessDesign.handlerMenu.trigger') }}
              </div>
            </div>
            <div
              class="handler-item"
              @click="addNode(BpmNodeTypeEnum.CHILD_PROCESS_NODE)"
            >
              <div class="handler-item-icon child-process">
                <span class="iconfont icon-size icon-child-process"></span>
              </div>
              <div class="handler-item-text">
                {{ $t('bpm.simpleProcessDesign.handlerMenu.childProcess') }}
              </div>
            </div>
          </div>
        </template>
        <div class="add-icon"><IconifyIcon icon="ep:plus" /></div>
      </Popover>
    </div>
  </div>
</template>
