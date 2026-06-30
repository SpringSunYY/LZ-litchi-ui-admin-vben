import { $t } from '#/locales';

import BoundaryEventTimer from './components/BoundaryEventTimer.vue';
import UserTaskCustomConfig from './components/UserTaskCustomConfig.vue';

// 用户任务
// User Task
export const CustomConfigMap = {
  UserTask: {
    name: $t('bpm.bpmnProcessDesign.customConfig.userTask'),
    component: UserTaskCustomConfig,
  },
  // 定时边界事件(非中断)
  // Timer Boundary Event (Non-Interrupting)
  BoundaryEventTimerEventDefinition: {
    name: $t('bpm.bpmnProcessDesign.customConfig.boundaryEventTimer'),
    component: BoundaryEventTimer,
  },
};
