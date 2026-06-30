import { $t } from '#/locales';

import CallActivity from './task-components/CallActivity.vue';
import ReceiveTask from './task-components/ReceiveTask.vue';
import ScriptTask from './task-components/ScriptTask.vue';
import ServiceTask from './task-components/ServiceTask.vue';
import UserTask from './task-components/UserTask.vue';

// 用户任务
// User Task
export const installedComponent = {
  UserTask: {
    name: $t('bpm.bpmnProcessDesign.task.userTask'),
    component: UserTask,
  },
  // 服务任务
  // Service Task
  ServiceTask: {
    name: $t('bpm.bpmnProcessDesign.task.serviceTask'),
    component: ServiceTask,
  },
  // 脚本任务
  // Script Task
  ScriptTask: {
    name: $t('bpm.bpmnProcessDesign.task.scriptTask'),
    component: ScriptTask,
  },
  // 接收任务
  // Receive Task
  ReceiveTask: {
    name: $t('bpm.bpmnProcessDesign.task.receiveTask'),
    component: ReceiveTask,
  },
  // 调用活动
  // Call Activity
  CallActivity: {
    name: $t('bpm.bpmnProcessDesign.task.callActivity'),
    component: CallActivity,
  },
};

export const getTaskCollapseItemName = (
  elementType: keyof typeof installedComponent,
) => {
  return installedComponent[elementType].name;
};

export const isTaskCollapseItemShow = (
  elementType: keyof typeof installedComponent,
) => {
  return installedComponent[elementType];
};
