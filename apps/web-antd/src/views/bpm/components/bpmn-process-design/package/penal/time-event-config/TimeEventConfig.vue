<script lang="ts" setup>
import type { Dayjs } from 'dayjs';

import type { Ref } from 'vue';

import { computed, nextTick, onMounted, ref, toRaw, watch } from 'vue';

import { useVbenModal } from '@vben/common-ui';
import { IconifyIcon } from '@vben/icons';

import { Button, DatePicker, Input, Tooltip } from 'ant-design-vue';

import { $t } from '#/locales';

import CycleConfig from './CycleConfig.vue';
import DurationConfig from './DurationConfig.vue';

const props = defineProps({
  businessObject: {
    type: Object,
    default: () => ({}),
  },
});

const bpmnInstances = () => (window as any).bpmnInstances;
const type: Ref<string> = ref('time');
const condition: Ref<string> = ref('');
const valid: Ref<boolean> = ref(false);
const dateValue = ref<Dayjs>();

const placeholder = computed<string>(() => {
  // 请输入时间 / Please input time
  if (type.value === 'time')
    return $t('bpm.bpmnProcessDesign.timeEventConfig.pleaseInputTime');
  // 请输入持续时长 / Please input duration
  if (type.value === 'duration')
    return $t('bpm.bpmnProcessDesign.timeEventConfig.pleaseInputDuration');
  // 请输入循环表达式 / Please input cycle expression
  if (type.value === 'cycle')
    return $t('bpm.bpmnProcessDesign.timeEventConfig.pleaseInputCycle');
  return '';
});
const helpText = computed<string>(() => {
  // 选择具体时间 / Select specific time
  if (type.value === 'time')
    return $t('bpm.bpmnProcessDesign.timeEventConfig.selectSpecificTime');
  // ISO 8601格式，如PT1H / ISO 8601 format, e.g. PT1H
  if (type.value === 'duration')
    return $t('bpm.bpmnProcessDesign.timeEventConfig.iso8601Duration');
  // CRON表达式或ISO 8601周期 / CRON expression or ISO 8601 cycle
  if (type.value === 'cycle')
    return $t('bpm.bpmnProcessDesign.timeEventConfig.cronOrIsoCycle');
  return '';
});
const helpHtml = computed<string>(() => {
  if (type.value === 'duration') {
    // 指定定时器之前要等待多长时间... / Specifies how long to wait before the timer...
    return $t('bpm.bpmnProcessDesign.timeEventConfig.durationFormatHelp');
  }
  if (type.value === 'cycle') {
    // 支持CRON表达式... / Supports CRON expression...
    return $t('bpm.bpmnProcessDesign.timeEventConfig.cronHelp');
  }
  if (type.value === 'time') {
    // 支持ISO 8601格式的时间... / Supports ISO 8601 time format...
    return $t('bpm.bpmnProcessDesign.timeEventConfig.isoTimeFormat');
  }
  return '';
});

// 初始化和监听
function syncFromBusinessObject(): void {
  if (props.businessObject) {
    const timerDef = (props.businessObject.eventDefinitions || [])[0];
    if (timerDef) {
      if (timerDef.timeDate) {
        type.value = 'time';
        condition.value = timerDef.timeDate.body;
      } else if (timerDef.timeDuration) {
        type.value = 'duration';
        condition.value = timerDef.timeDuration.body;
      } else if (timerDef.timeCycle) {
        type.value = 'cycle';
        condition.value = timerDef.timeCycle.body;
      }
    }
  }
}
onMounted(syncFromBusinessObject);

// 切换类型
function setType(t: string) {
  type.value = t;
  condition.value = '';
  updateNode();
}

// 输入校验
watch([type, condition], () => {
  valid.value = validate();
});

function validate(): boolean {
  if (type.value === 'time') {
    return !!condition.value && !Number.isNaN(Date.parse(condition.value));
  }
  if (type.value === 'duration') {
    return /^P.*$/.test(condition.value);
  }
  if (type.value === 'cycle') {
    // 支持CRON表达式或ISO 8601周期格式：R{n}/P... 或 R{n}/{date}/P...
    return /^(?:[0-9*/?, ]+|R\d+(?:\/[^/]+)*\/P.*)$/.test(condition.value);
  }
  return true;
}

// 选择时间 Modal / Date Selection Modal
const [DateModal, dateModalApi] = useVbenModal({
  // 选择时间 / Select Time
  title: $t('bpm.bpmnProcessDesign.timeEventConfig.selectTime'),
  class: 'w-[400px]',
  onConfirm: onDateConfirm,
});

function onDateChange(val: any) {
  dateValue.value = val || undefined;
}
function onDateConfirm(): void {
  if (dateValue.value) {
    condition.value = dateValue.value.toISOString();
    dateModalApi.close();
    updateNode();
  }
}

// 持续时长 Modal / Duration Modal
const [DurationModal, durationModalApi] = useVbenModal({
  // 时间配置 / Time Configuration
  title: $t('bpm.bpmnProcessDesign.timeEventConfig.timeConfig'),
  class: 'w-[600px]',
  onConfirm: onDurationConfirm,
});

function onDurationChange(val: string) {
  condition.value = val;
}
function onDurationConfirm(): void {
  durationModalApi.close();
  updateNode();
}

// 循环配置 Modal / Cycle Modal
const [CycleModal, cycleModalApi] = useVbenModal({
  // 时间配置 / Time Configuration
  title: $t('bpm.bpmnProcessDesign.timeEventConfig.timeConfig'),
  class: 'w-[800px]',
  onConfirm: onCycleConfirm,
});

function onCycleChange(val: string) {
  condition.value = val;
}
function onCycleConfirm(): void {
  cycleModalApi.close();
  updateNode();
}

// 帮助说明 Modal / Help Modal
const [HelpModal, helpModalApi] = useVbenModal({
  class: 'w-[600px]',
  // 格式说明 / Format Description
  title: $t('bpm.bpmnProcessDesign.timeEventConfig.formatDescription'),
  showCancelButton: false,
  // 关闭 / Close
  confirmText: $t('bpm.bpmnProcessDesign.common.close'),
  onConfirm: () => helpModalApi.close(),
});

// 点击输入框时弹窗
function handleInputClick(): void {
  if (type.value === 'time') dateModalApi.open();
  if (type.value === 'duration') durationModalApi.open();
  if (type.value === 'cycle') cycleModalApi.open();
}

// 同步到节点
function updateNode(): void {
  const moddle = (window.bpmnInstances as any)?.moddle;
  const modeling = (window.bpmnInstances as any)?.modeling;
  const elementRegistry = (window.bpmnInstances as any)?.elementRegistry;
  if (!moddle || !modeling || !elementRegistry) return;

  // 获取元素
  if (!props.businessObject || !props.businessObject.id) return;
  const element = elementRegistry.get(props.businessObject.id);
  if (!element) return;

  // 1. 复用原有 timerDef，或新建
  let timerDef =
    element.businessObject.eventDefinitions &&
    element.businessObject.eventDefinitions[0];
  if (!timerDef) {
    timerDef = bpmnInstances().bpmnFactory.create(
      'bpmn:TimerEventDefinition',
      {},
    );
    modeling.updateProperties(element, {
      eventDefinitions: [timerDef],
    });
  }

  // 2. 清空原有
  delete timerDef.timeDate;
  delete timerDef.timeDuration;
  delete timerDef.timeCycle;

  // 3. 设置新的
  if (type.value === 'time' && condition.value) {
    timerDef.timeDate = bpmnInstances().bpmnFactory.create(
      'bpmn:FormalExpression',
      {
        body: condition.value,
      },
    );
  } else if (type.value === 'duration' && condition.value) {
    timerDef.timeDuration = bpmnInstances().bpmnFactory.create(
      'bpmn:FormalExpression',
      {
        body: condition.value,
      },
    );
  } else if (type.value === 'cycle' && condition.value) {
    timerDef.timeCycle = bpmnInstances().bpmnFactory.create(
      'bpmn:FormalExpression',
      {
        body: condition.value,
      },
    );
  }

  bpmnInstances().modeling.updateProperties(toRaw(element), {
    eventDefinitions: [timerDef],
  });
}

watch(
  () => props.businessObject,
  (val) => {
    if (val) {
      nextTick(() => {
        syncFromBusinessObject();
      });
    }
  },
  { immediate: true },
);
</script>

<template>
  <div class="panel-tab__content">
    <div class="mt-2 flex items-center">
      <!-- 类型：/ Type: -->
      <span class="w-14">{{
        $t('bpm.bpmnProcessDesign.timeEventConfig.type')
      }}</span>
      <Button.Group>
        <Button
          size="small"
          :type="type === 'time' ? 'primary' : 'default'"
          @click="setType('time')"
        >
          {{ $t('bpm.bpmnProcessDesign.timeEventConfig.time') }}
          <!-- 时间 / Time -->
        </Button>
        <Button
          size="small"
          :type="type === 'duration' ? 'primary' : 'default'"
          @click="setType('duration')"
        >
          {{ $t('bpm.bpmnProcessDesign.timeEventConfig.duration') }}
          <!-- 持续 / Duration -->
        </Button>
        <Button
          size="small"
          :type="type === 'cycle' ? 'primary' : 'default'"
          @click="setType('cycle')"
        >
          {{ $t('bpm.bpmnProcessDesign.timeEventConfig.cycle') }}
          <!-- 循环 / Cycle -->
        </Button>
      </Button.Group>
      <IconifyIcon
        icon="ant-design:check-circle-filled"
        v-if="valid"
        class="ml-2 text-green-500"
      />
    </div>
    <div class="mt-2 flex items-center gap-1">
      <!-- 条件：/ Condition: -->
      <span class="w-14">{{
        $t('bpm.bpmnProcessDesign.timeEventConfig.condition')
      }}</span>
      <Input
        v-model:value="condition"
        :placeholder="placeholder"
        class="w-full"
        :readonly="type !== 'duration' && type !== 'cycle'"
        @click="handleInputClick"
        @blur="updateNode"
      >
        <template #suffix>
          <!-- 格式错误 / Format Error -->
          <Tooltip
            v-if="!valid"
            :title="$t('bpm.bpmnProcessDesign.timeEventConfig.formatError')"
            placement="top"
          >
            <IconifyIcon
              icon="ant-design:exclamation-circle-filled"
              class="text-orange-400"
            />
          </Tooltip>
          <Tooltip :title="helpText" placement="top">
            <IconifyIcon
              icon="ant-design:question-circle-filled"
              class="cursor-pointer text-[#409eff]"
              @click="helpModalApi.open()"
            />
          </Tooltip>
          <Button
            v-if="type === 'time'"
            @click="dateModalApi.open()"
            class="ml-1 flex items-center justify-center"
            shape="circle"
            size="small"
          >
            <IconifyIcon icon="ep:calendar" />
          </Button>
          <Button
            v-if="type === 'duration'"
            @click="durationModalApi.open()"
            class="ml-1 flex items-center justify-center"
            shape="circle"
            size="small"
          >
            <IconifyIcon icon="ep:timer" />
          </Button>
          <Button
            v-if="type === 'cycle'"
            @click="cycleModalApi.open()"
            class="ml-1 flex items-center justify-center"
            shape="circle"
            size="small"
          >
            <IconifyIcon icon="ep:setting" />
          </Button>
        </template>
      </Input>
    </div>

    <!-- 时间选择器 / Date Picker -->
    <DateModal>
      <DatePicker
        v-model:value="dateValue"
        show-time
        :placeholder="
          $t('bpm.bpmnProcessDesign.timeEventConfig.selectDateTime')
        "
        class="w-full"
        @change="onDateChange"
      />
    </DateModal>

    <!-- 持续时长选择器 -->
    <DurationModal>
      <DurationConfig :value="condition" @change="onDurationChange" />
    </DurationModal>

    <!-- 循环配置器 -->
    <CycleModal>
      <CycleConfig :value="condition" @change="onCycleChange" />
    </CycleModal>

    <!-- 帮助说明 -->
    <HelpModal>
      <!-- eslint-disable-next-line vue/no-v-html -->
      <div v-html="helpHtml"></div>
    </HelpModal>
  </div>
</template>
