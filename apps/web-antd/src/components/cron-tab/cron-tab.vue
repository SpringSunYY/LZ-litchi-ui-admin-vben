<script lang="ts" setup>
import type { PropType } from 'vue';

import type { CronData, CronValue, ShortcutsType } from './types';

import { computed, reactive, ref, watch, watchEffect } from 'vue';

import {
  Button,
  Form,
  Input,
  InputNumber,
  message,
  Modal,
  RadioButton,
  RadioGroup,
  Select,
  Tabs,
  Timeline,
} from 'ant-design-vue';
import { CronExpressionParser } from 'cron-parser';

import { $t } from '#/locales';

import { CronDataDefault, CronValueDefault } from './types';

defineOptions({ name: 'Crontab' });

const props = defineProps({
  modelValue: {
    type: String,
    default: '* * * * * ?',
  },
  shortcuts: {
    type: Array as PropType<ShortcutsType[]>,
    default: () => [],
  },
});

const emit = defineEmits(['update:modelValue']);

const PRESET_OPTIONS = computed(() => [
  { text: $t('ui.cron.presets.everySecond'), value: '0/1 * * * * ?' },
  { text: $t('ui.cron.presets.every5Seconds'), value: '0/5 * * * * ?' },
  { text: $t('ui.cron.presets.every10Seconds'), value: '0/10 * * * * ?' },
  { text: $t('ui.cron.presets.every30Seconds'), value: '0/30 * * * * ?' },
  { text: $t('ui.cron.presets.everyMinute'), value: '0 * * * * ?' },
  { text: $t('ui.cron.presets.every5Minutes'), value: '0 */5 * * * ?' },
  { text: $t('ui.cron.presets.every10Minutes'), value: '0 */10 * * * ?' },
  { text: $t('ui.cron.presets.every30Minutes'), value: '0 */30 * * * ?' },
  { text: $t('ui.cron.presets.everyHour'), value: '0 0 * * * ?' },
  { text: $t('ui.cron.presets.every2Hours'), value: '0 0 0/2 * * ?' },
  { text: $t('ui.cron.presets.daily0'), value: '0 0 0 * * ?' },
  { text: $t('ui.cron.presets.daily1'), value: '0 0 1 * * ?' },
  { text: $t('ui.cron.presets.daily2'), value: '0 0 2 * * ?' },
  { text: $t('ui.cron.presets.daily5'), value: '0 0 5 * * ?' },
  { text: $t('ui.cron.presets.daily8'), value: '0 0 8 * * ?' },
  { text: $t('ui.cron.presets.daily12'), value: '0 0 12 * * ?' },
  { text: $t('ui.cron.presets.daily18'), value: '0 0 18 * * ?' },
  { text: $t('ui.cron.presets.daily2359'), value: '0 59 23 * * ?' },
  { text: $t('ui.cron.presets.weeklyMon1'), value: '0 0 1 ? * MON' },
  { text: $t('ui.cron.presets.weeklyFri18'), value: '0 0 18 ? * FRI' },
  { text: $t('ui.cron.presets.weeklyMon0'), value: '0 0 0 ? * 2' },
  { text: $t('ui.cron.presets.weeklySun0'), value: '0 0 0 ? * 1' },
  { text: $t('ui.cron.presets.weeklyMonWedFri0'), value: '0 0 0 ? * 2,4,6' },
  { text: $t('ui.cron.presets.monthly1'), value: '0 0 0 1 * ?' },
  { text: $t('ui.cron.presets.monthly15'), value: '0 0 0 15 * ?' },
  { text: $t('ui.cron.presets.monthlyLast0'), value: '0 0 0 L * ?' },
  { text: $t('ui.cron.presets.monthlyLast23'), value: '0 0 23 L * ?' },
  { text: $t('ui.cron.presets.monthly1And15'), value: '0 0 0 1,15 * ?' },
  { text: $t('ui.cron.presets.yearlyJan1'), value: '0 0 0 1 1 ?' },
]);

function formatDateTime(date: Date): string {
  const pad = (n: number) => String(n).padStart(2, '0');
  return (
    `${date.getFullYear()}-${pad(date.getMonth() + 1)}-${pad(date.getDate())}` +
    ` ${pad(date.getHours())}:${pad(date.getMinutes())}:${pad(date.getSeconds())}`
  );
}

const defaultValue = ref('');
const dialogVisible = ref(false);

const cronValue = reactive<CronValue>(CronValueDefault);

const data = reactive<CronData>(CronDataDefault);
const value_second = computed(() => {
  const v = cronValue.second;
  switch (v.type) {
    case '0': {
      return '*';
    }
    case '1': {
      return `${v.range.start}-${v.range.end}`;
    }
    case '2': {
      return `${v.loop.start}/${v.loop.end}`;
    }
    case '3': {
      return v.appoint.length > 0 ? v.appoint.join(',') : '*';
    }
    default: {
      return '*';
    }
  }
});

const value_minute = computed(() => {
  const v = cronValue.minute;
  switch (v.type) {
    case '0': {
      return '*';
    }
    case '1': {
      return `${v.range.start}-${v.range.end}`;
    }
    case '2': {
      return `${v.loop.start}/${v.loop.end}`;
    }
    case '3': {
      return v.appoint.length > 0 ? v.appoint.join(',') : '*';
    }
    default: {
      return '*';
    }
  }
});

const value_hour = computed(() => {
  const v = cronValue.hour;
  switch (v.type) {
    case '0': {
      return '*';
    }
    case '1': {
      return `${v.range.start}-${v.range.end}`;
    }
    case '2': {
      return `${v.loop.start}/${v.loop.end}`;
    }
    case '3': {
      return v.appoint.length > 0 ? v.appoint.join(',') : '*';
    }
    default: {
      return '*';
    }
  }
});

const value_day = computed(() => {
  const v = cronValue.day;
  switch (v.type) {
    case '0': {
      return '*';
    }
    case '1': {
      return `${v.range.start}-${v.range.end}`;
    }
    case '2': {
      return `${v.loop.start}/${v.loop.end}`;
    }
    case '3': {
      return v.appoint.length > 0 ? v.appoint.join(',') : '*';
    }
    case '4': {
      return 'L';
    }
    case '5': {
      return '?';
    }
    default: {
      return '*';
    }
  }
});

const value_month = computed(() => {
  const v = cronValue.month;
  switch (v.type) {
    case '0': {
      return '*';
    }
    case '1': {
      return `${v.range.start}-${v.range.end}`;
    }
    case '2': {
      return `${v.loop.start}/${v.loop.end}`;
    }
    case '3': {
      return v.appoint.length > 0 ? v.appoint.join(',') : '*';
    }
    default: {
      return '*';
    }
  }
});

const value_week = computed(() => {
  const v = cronValue.week;
  switch (v.type) {
    case '0': {
      return '*';
    }
    case '1': {
      return `${v.range.start}-${v.range.end}`;
    }
    case '2': {
      return `${v.loop.end}#${v.loop.start}`;
    }
    case '3': {
      return v.appoint.length > 0 ? v.appoint.join(',') : '*';
    }
    case '4': {
      return `${v.last}L`;
    }
    case '5': {
      return '?';
    }
    default: {
      return '*';
    }
  }
});

const value_year = computed(() => {
  const v = cronValue.year;
  switch (v.type) {
    case '-1': {
      return '';
    }
    case '0': {
      return '*';
    }
    case '1': {
      return `${v.range.start}-${v.range.end}`;
    }
    case '2': {
      return `${v.loop.start}/${v.loop.end}`;
    }
    case '3': {
      return v.appoint.length > 0 ? v.appoint.join(',') : '';
    }
    default: {
      return '';
    }
  }
});

watch(
  () => cronValue.week.type,
  (val: string) => {
    if (val !== '5') {
      cronValue.day.type = '5';
    }
  },
);

watch(
  () => cronValue.day.type,
  (val: string) => {
    if (val !== '5') {
      cronValue.week.type = '5';
    }
  },
);

const select = ref<string>('custom');
const allOptions = computed(
  () =>
    [
      ...PRESET_OPTIONS.value,
      ...props.shortcuts,
    ] as typeof PRESET_OPTIONS.value,
);

watch(
  () => props.modelValue,
  (val) => {
    defaultValue.value = val;
    const matched = allOptions.value.find((o) => o.value === val);
    select.value = matched ? matched.value : 'custom';
  },
  { immediate: true },
);

function handleSelectChange(val: any) {
  if (!val || val === 'custom') return;
  defaultValue.value = String(val);
  emit('update:modelValue', String(val));
}

function handleCustomClick() {
  open();
}

function open() {
  set();
  dialogVisible.value = true;
}

function set() {
  defaultValue.value = props.modelValue;
  let arr = (props.modelValue || '* * * * * ?').split(' ');
  // 简单检查
  if (arr.length < 6) {
    message.warning($t('ui.cron.expressionError'));
    arr = '* * * * * ?'.split(' ');
  }

  // 秒
  if (arr[0] === '*') {
    cronValue.second.type = '0';
  } else if (arr[0]?.includes('-')) {
    cronValue.second.type = '1';
    cronValue.second.range.start = Number(arr[0].split('-')[0]);
    cronValue.second.range.end = Number(arr[0].split('-')[1]);
  } else if (arr[0]?.includes('/')) {
    cronValue.second.type = '2';
    cronValue.second.loop.start = Number(arr[0].split('/')[0]);
    cronValue.second.loop.end = Number(arr[0].split('/')[1]);
  } else {
    cronValue.second.type = '3';
    cronValue.second.appoint = arr[0]?.split(',') || [];
  }

  // 分
  if (arr[1] === '*') {
    cronValue.minute.type = '0';
  } else if (arr[1]?.includes('-')) {
    cronValue.minute.type = '1';
    cronValue.minute.range.start = Number(arr[1].split('-')[0]);
    cronValue.minute.range.end = Number(arr[1].split('-')[1]);
  } else if (arr[1]?.includes('/')) {
    cronValue.minute.type = '2';
    cronValue.minute.loop.start = Number(arr[1].split('/')[0]);
    cronValue.minute.loop.end = Number(arr[1].split('/')[1]);
  } else {
    cronValue.minute.type = '3';
    cronValue.minute.appoint = arr[1]?.split(',') || [];
  }

  // 小时
  if (arr[2] === '*') {
    cronValue.hour.type = '0';
  } else if (arr[2]?.includes('-')) {
    cronValue.hour.type = '1';
    cronValue.hour.range.start = Number(arr[2].split('-')[0]);
    cronValue.hour.range.end = Number(arr[2].split('-')[1]);
  } else if (arr[2]?.includes('/')) {
    cronValue.hour.type = '2';
    cronValue.hour.loop.start = Number(arr[2].split('/')[0]);
    cronValue.hour.loop.end = Number(arr[2].split('/')[1]);
  } else {
    cronValue.hour.type = '3';
    cronValue.hour.appoint = arr[2]?.split(',') || [];
  }

  // 日
  switch (arr[3]) {
    case '*': {
      cronValue.day.type = '0';
      break;
    }
    case '?': {
      cronValue.day.type = '5';
      break;
    }
    case 'L': {
      cronValue.day.type = '4';
      break;
    }
    default: {
      if (arr[3]?.includes('-')) {
        cronValue.day.type = '1';
        cronValue.day.range.start = Number(arr[3].split('-')[0]);
        cronValue.day.range.end = Number(arr[3].split('-')[1]);
      } else if (arr[3]?.includes('/')) {
        cronValue.day.type = '2';
        cronValue.day.loop.start = Number(arr[3].split('/')[0]);
        cronValue.day.loop.end = Number(arr[3].split('/')[1]);
      } else {
        cronValue.day.type = '3';
        cronValue.day.appoint = arr[3]?.split(',') || [];
      }
    }
  }

  // 月
  if (arr[4] === '*') {
    cronValue.month.type = '0';
  } else if (arr[4]?.includes('-')) {
    cronValue.month.type = '1';
    cronValue.month.range.start = Number(arr[4].split('-')[0]);
    cronValue.month.range.end = Number(arr[4].split('-')[1]);
  } else if (arr[4]?.includes('/')) {
    cronValue.month.type = '2';
    cronValue.month.loop.start = Number(arr[4].split('/')[0]);
    cronValue.month.loop.end = Number(arr[4].split('/')[1]);
  } else {
    cronValue.month.type = '3';
    cronValue.month.appoint = arr[4]?.split(',') || [];
  }

  // 周
  if (arr[5] === '*') {
    cronValue.week.type = '0';
  } else if (arr[5] === '?') {
    cronValue.week.type = '5';
  } else if (arr[5]?.includes('-')) {
    cronValue.week.type = '1';
    cronValue.week.range.start = arr[5].split('-')[0] || '';
    cronValue.week.range.end = arr[5].split('-')[1] || '';
  } else if (arr[5]?.includes('#')) {
    cronValue.week.type = '2';
    cronValue.week.loop.start = Number(arr[5].split('#')[1]);
    cronValue.week.loop.end = arr[5].split('#')[0] || '';
  } else if (arr[5]?.includes('L')) {
    cronValue.week.type = '4';
    cronValue.week.last = arr[5].split('L')[0] || '';
  } else {
    cronValue.week.type = '3';
    cronValue.week.appoint = arr[5]?.split(',') || [];
  }

  // 年
  if (!arr[6]) {
    cronValue.year.type = '-1';
  } else if (arr[6] === '*') {
    cronValue.year.type = '0';
  } else if (arr[6]?.includes('-')) {
    cronValue.year.type = '1';
    cronValue.year.range.start = Number(arr[6].split('-')[0]);
    cronValue.year.range.end = Number(arr[6].split('-')[1]);
  } else if (arr[6]?.includes('/')) {
    cronValue.year.type = '2';
    cronValue.year.loop.start = Number(arr[6].split('/')[1]);
    cronValue.year.loop.end = Number(arr[6].split('/')[0]);
  } else {
    cronValue.year.type = '3';
    cronValue.year.appoint = arr[6]?.split(',') || [];
  }
}

const computedExpr = computed(
  () =>
    `${value_second.value} ${value_minute.value} ${value_hour.value} ${value_day.value} ${value_month.value} ${value_week.value}${value_year.value ? ` ${value_year.value}` : ''}`,
);

const nextTimes = ref<Date[]>([]);

watchEffect(() => {
  const expr = computedExpr.value;
  if (!expr || expr.includes('undefined')) {
    nextTimes.value = [];
    return;
  }
  try {
    const interval = CronExpressionParser.parse(expr, {
      currentDate: new Date(),
    });
    const times: Date[] = [];
    for (let i = 0; i < 5; i++) {
      const next = interval.next();
      times.push(next.toDate());
    }
    nextTimes.value = times;
  } catch {
    nextTimes.value = [];
  }
});

const manualExpr = ref('');
watch(
  () => computedExpr.value,
  (v) => {
    manualExpr.value = v;
  },
);

function onManualExprInput() {
  const expr = manualExpr.value.trim();
  if (!expr) return;
  emit('update:modelValue', expr);
  defaultValue.value = expr;
  parseExprToCronValue(expr);
}

function parseExprToCronValue(expr: string) {
  const arr = expr.split(' ').filter(Boolean);
  if (arr.length < 6) return;

  const parseType = (fieldExpr: string) => {
    if (!fieldExpr || fieldExpr === '*') return '0';
    if (fieldExpr.includes('-')) return '1';
    if (fieldExpr.includes('/')) return '2';
    return '3';
  };

  cronValue.second.type = parseType(arr[0] ?? '*');
  cronValue.minute.type = parseType(arr[1] ?? '*');
  cronValue.hour.type = parseType(arr[2] ?? '*');
  cronValue.month.type = parseType(arr[4] ?? '*');

  if (arr[3] === '?') cronValue.day.type = '5';
  else if (arr[3] === 'L') cronValue.day.type = '4';
  else cronValue.day.type = parseType(arr[3] ?? '*');

  cronValue.week.type = arr[5] === '?' ? '5' : parseType(arr[5] ?? '*');
}

function submit() {
  const year = value_year.value ? ` ${value_year.value}` : '';
  defaultValue.value = `${value_second.value} ${value_minute.value} ${
    value_hour.value
  } ${value_day.value} ${value_month.value} ${value_week.value}${year}`;
  emit('update:modelValue', defaultValue.value);
  dialogVisible.value = false;
}

function inputChange() {
  emit('update:modelValue', defaultValue.value);
}
</script>

<template>
  <Input
    v-model:value="defaultValue"
    class="input-with-select"
    v-bind="$attrs"
    @input="inputChange"
  >
    <template #addonAfter>
      <Select
        v-model:value="select"
        :placeholder="$t('ui.cron.generator')"
        class="w-50"
        @change="handleSelectChange"
      >
        <Select.Option value="custom" @mousedown.prevent="handleCustomClick">
          {{ $t('ui.cron.custom') }}
        </Select.Option>
        <Select.Option
          v-for="item in allOptions"
          :key="item.value"
          :value="item.value"
        >
          {{ item.text }}
        </Select.Option>
      </Select>
    </template>
  </Input>

  <Modal
    v-model:open="dialogVisible"
    :width="720"
    destroy-on-close
    :title="$t('ui.cron.modalTitle')"
  >
    <div class="sc-cron">
      <div class="sc-cron-expr-input">
        <Input
          v-model:value="manualExpr"
          :placeholder="$t('ui.cron.manualPlaceholder')"
          @input="onManualExprInput"
        />
        <div class="sc-cron-expr-preview">
          {{ $t('ui.cron.currentExpr') }}{{ computedExpr }}
        </div>
      </div>
      <Tabs>
        <Tabs.TabPane key="second">
          <template #tab>
            <div class="sc-cron-num">
              <h2>{{ $t('ui.cron.second') || 'Second' }}</h2>
              <h4>{{ value_second }}</h4>
            </div>
          </template>
          <Form>
            <Form.Item :label="$t('ui.cron.type')">
              <RadioGroup v-model:value="cronValue.second.type">
                <RadioButton value="0">
                  {{ $t('ui.cron.any') || 'Any' }}
                </RadioButton>
                <RadioButton value="1">{{ $t('ui.cron.range') }}</RadioButton>
                <RadioButton value="2">
                  {{ $t('ui.cron.interval') }}
                </RadioButton>
                <RadioButton value="3">{{ $t('ui.cron.appoint') }}</RadioButton>
              </RadioGroup>
            </Form.Item>
            <Form.Item
              v-if="cronValue.second.type === '1'"
              :label="$t('ui.cron.range')"
            >
              <InputNumber
                v-model:value="cronValue.second.range.start"
                :max="59"
                :min="0"
                controls-position="right"
              />
              <span style="padding: 0 15px">-</span>
              <InputNumber
                v-model:value="cronValue.second.range.end"
                :max="59"
                :min="0"
                controls-position="right"
              />
            </Form.Item>
            <Form.Item
              v-if="cronValue.second.type === '2'"
              :label="$t('ui.cron.interval')"
            >
              <InputNumber
                v-model:value="cronValue.second.loop.start"
                :max="59"
                :min="0"
                controls-position="right"
              />
              {{ $t('ui.cron.from') }}
              <InputNumber
                v-model:value="cronValue.second.loop.end"
                :max="59"
                :min="0"
                controls-position="right"
              />
              {{ $t('ui.cron.unitSecond') }}
            </Form.Item>
            <Form.Item
              v-if="cronValue.second.type === '3'"
              :label="$t('ui.cron.appoint')"
            >
              <Select
                v-model:value="cronValue.second.appoint"
                mode="multiple"
                style="width: 100%"
              >
                <Select.Option
                  v-for="(item, index) in data.second"
                  :key="index"
                  :label="item"
                  :value="item"
                />
              </Select>
            </Form.Item>
          </Form>
        </Tabs.TabPane>

        <Tabs.TabPane key="minute">
          <template #tab>
            <div class="sc-cron-num">
              <h2>{{ $t('ui.cron.minute') }}</h2>
              <h4>{{ value_minute }}</h4>
            </div>
          </template>
          <Form>
            <Form.Item :label="$t('ui.cron.type')">
              <RadioGroup v-model:value="cronValue.minute.type">
                <RadioButton value="0">{{ $t('ui.cron.any') }}</RadioButton>
                <RadioButton value="1">{{ $t('ui.cron.range') }}</RadioButton>
                <RadioButton value="2">
                  {{ $t('ui.cron.interval') }}
                </RadioButton>
                <RadioButton value="3">{{ $t('ui.cron.appoint') }}</RadioButton>
              </RadioGroup>
            </Form.Item>
            <Form.Item
              v-if="cronValue.minute.type === '1'"
              :label="$t('ui.cron.range')"
            >
              <InputNumber
                v-model:value="cronValue.minute.range.start"
                :max="59"
                :min="0"
                controls-position="right"
              />
              <span style="padding: 0 15px">-</span>
              <InputNumber
                v-model:value="cronValue.minute.range.end"
                :max="59"
                :min="0"
                controls-position="right"
              />
            </Form.Item>
            <Form.Item
              v-if="cronValue.minute.type === '2'"
              :label="$t('ui.cron.interval')"
            >
              <InputNumber
                v-model:value="cronValue.minute.loop.start"
                :max="59"
                :min="0"
                controls-position="right"
              />
              {{ $t('ui.cron.from') }}
              <InputNumber
                v-model:value="cronValue.minute.loop.end"
                :max="59"
                :min="0"
                controls-position="right"
              />
              {{ $t('ui.cron.unitMinute') }}
            </Form.Item>
            <Form.Item
              v-if="cronValue.minute.type === '3'"
              :label="$t('ui.cron.appoint')"
            >
              <Select
                v-model:value="cronValue.minute.appoint"
                mode="multiple"
                style="width: 100%"
              >
                <Select.Option
                  v-for="(item, index) in data.minute"
                  :key="index"
                  :label="item"
                  :value="item"
                />
              </Select>
            </Form.Item>
          </Form>
        </Tabs.TabPane>

        <Tabs.TabPane key="hour">
          <template #tab>
            <div class="sc-cron-num">
              <h2>{{ $t('ui.cron.hour') }}</h2>
              <h4>{{ value_hour }}</h4>
            </div>
          </template>
          <Form>
            <Form.Item :label="$t('ui.cron.type')">
              <RadioGroup v-model:value="cronValue.hour.type">
                <RadioButton value="0">{{ $t('ui.cron.any') }}</RadioButton>
                <RadioButton value="1">{{ $t('ui.cron.range') }}</RadioButton>
                <RadioButton value="2">
                  {{ $t('ui.cron.interval') }}
                </RadioButton>
                <RadioButton value="3">{{ $t('ui.cron.appoint') }}</RadioButton>
              </RadioGroup>
            </Form.Item>
            <Form.Item
              v-if="cronValue.hour.type === '1'"
              :label="$t('ui.cron.range')"
            >
              <InputNumber
                v-model:value="cronValue.hour.range.start"
                :max="23"
                :min="0"
                controls-position="right"
              />
              <span style="padding: 0 15px">-</span>
              <InputNumber
                v-model:value="cronValue.hour.range.end"
                :max="23"
                :min="0"
                controls-position="right"
              />
            </Form.Item>
            <Form.Item
              v-if="cronValue.hour.type === '2'"
              :label="$t('ui.cron.interval')"
            >
              <InputNumber
                v-model:value="cronValue.hour.loop.start"
                :max="23"
                :min="0"
                controls-position="right"
              />
              {{ $t('ui.cron.from') }}
              <InputNumber
                v-model:value="cronValue.hour.loop.end"
                :max="23"
                :min="0"
                controls-position="right"
              />
              {{ $t('ui.cron.unitHour') }}
            </Form.Item>
            <Form.Item
              v-if="cronValue.hour.type === '3'"
              :label="$t('ui.cron.appoint')"
            >
              <Select
                v-model:value="cronValue.hour.appoint"
                mode="multiple"
                style="width: 100%"
              >
                <Select.Option
                  v-for="(item, index) in data.hour"
                  :key="index"
                  :label="item"
                  :value="item"
                />
              </Select>
            </Form.Item>
          </Form>
        </Tabs.TabPane>

        <Tabs.TabPane key="day">
          <template #tab>
            <div class="sc-cron-num">
              <h2>{{ $t('ui.cron.day') }}</h2>
              <h4>{{ value_day }}</h4>
            </div>
          </template>
          <Form>
            <Form.Item :label="$t('ui.cron.type')">
              <RadioGroup v-model:value="cronValue.day.type">
                <RadioButton value="0">{{ $t('ui.cron.any') }}</RadioButton>
                <RadioButton value="1">{{ $t('ui.cron.range') }}</RadioButton>
                <RadioButton value="2">
                  {{ $t('ui.cron.interval') }}
                </RadioButton>
                <RadioButton value="3">{{ $t('ui.cron.appoint') }}</RadioButton>
                <RadioButton value="4">{{ $t('ui.cron.lastDay') }}</RadioButton>
                <RadioButton value="5">
                  {{ $t('ui.cron.unspecified') }}
                </RadioButton>
              </RadioGroup>
            </Form.Item>
            <Form.Item
              v-if="cronValue.day.type === '1'"
              :label="$t('ui.cron.range')"
            >
              <InputNumber
                v-model:value="cronValue.day.range.start"
                :max="31"
                :min="1"
                controls-position="right"
              />
              <span style="padding: 0 15px">-</span>
              <InputNumber
                v-model:value="cronValue.day.range.end"
                :max="31"
                :min="1"
                controls-position="right"
              />
            </Form.Item>
            <Form.Item
              v-if="cronValue.day.type === '2'"
              :label="$t('ui.cron.interval')"
            >
              <InputNumber
                v-model:value="cronValue.day.loop.start"
                :max="31"
                :min="1"
                controls-position="right"
              />
              {{ $t('ui.cron.from') }}
              <InputNumber
                v-model:value="cronValue.day.loop.end"
                :max="31"
                :min="1"
                controls-position="right"
              />
              {{ $t('ui.cron.unitDay') }}
            </Form.Item>
            <Form.Item
              v-if="cronValue.day.type === '3'"
              :label="$t('ui.cron.appoint')"
            >
              <Select
                v-model:value="cronValue.day.appoint"
                mode="multiple"
                style="width: 100%"
              >
                <Select.Option
                  v-for="(item, index) in data.day"
                  :key="index"
                  :label="item"
                  :value="item"
                />
              </Select>
            </Form.Item>
          </Form>
        </Tabs.TabPane>

        <Tabs.TabPane key="month">
          <template #tab>
            <div class="sc-cron-num">
              <h2>{{ $t('ui.cron.month') }}</h2>
              <h4>{{ value_month }}</h4>
            </div>
          </template>
          <Form>
            <Form.Item :label="$t('ui.cron.type')">
              <RadioGroup v-model:value="cronValue.month.type">
                <RadioButton value="0">{{ $t('ui.cron.any') }}</RadioButton>
                <RadioButton value="1">{{ $t('ui.cron.range') }}</RadioButton>
                <RadioButton value="2">
                  {{ $t('ui.cron.interval') }}
                </RadioButton>
                <RadioButton value="3">{{ $t('ui.cron.appoint') }}</RadioButton>
              </RadioGroup>
            </Form.Item>
            <Form.Item
              v-if="cronValue.month.type === '1'"
              :label="$t('ui.cron.range')"
            >
              <InputNumber
                v-model:value="cronValue.month.range.start"
                :max="12"
                :min="1"
                controls-position="right"
              />
              <span style="padding: 0 15px">-</span>
              <InputNumber
                v-model:value="cronValue.month.range.end"
                :max="12"
                :min="1"
                controls-position="right"
              />
            </Form.Item>
            <Form.Item
              v-if="cronValue.month.type === '2'"
              :label="$t('ui.cron.interval')"
            >
              <InputNumber
                v-model:value="cronValue.month.loop.start"
                :max="12"
                :min="1"
                controls-position="right"
              />
              {{ $t('ui.cron.from') }}
              <InputNumber
                v-model:value="cronValue.month.loop.end"
                :max="12"
                :min="1"
                controls-position="right"
              />
              {{ $t('ui.cron.unitMonth') }}
            </Form.Item>
            <Form.Item
              v-if="cronValue.month.type === '3'"
              :label="$t('ui.cron.appoint')"
            >
              <Select
                v-model:value="cronValue.month.appoint"
                mode="multiple"
                style="width: 100%"
              >
                <Select.Option
                  v-for="(item, index) in data.month"
                  :key="index"
                  :label="item"
                  :value="item"
                />
              </Select>
            </Form.Item>
          </Form>
        </Tabs.TabPane>

        <Tabs.TabPane key="week">
          <template #tab>
            <div class="sc-cron-num">
              <h2>{{ $t('ui.cron.week') }}</h2>
              <h4>{{ value_week }}</h4>
            </div>
          </template>
          <Form>
            <Form.Item :label="$t('ui.cron.type')">
              <RadioGroup v-model:value="cronValue.week.type">
                <RadioButton value="0">{{ $t('ui.cron.any') }}</RadioButton>
                <RadioButton value="1">{{ $t('ui.cron.range') }}</RadioButton>
                <RadioButton value="2">
                  {{ $t('ui.cron.interval') }}
                </RadioButton>
                <RadioButton value="3">{{ $t('ui.cron.appoint') }}</RadioButton>
                <RadioButton value="4">
                  {{ $t('ui.cron.lastWeek') }}
                </RadioButton>
                <RadioButton value="5">
                  {{ $t('ui.cron.unspecified') }}
                </RadioButton>
              </RadioGroup>
            </Form.Item>
            <Form.Item
              v-if="cronValue.week.type === '1'"
              :label="$t('ui.cron.range')"
            >
              <Select v-model:value="cronValue.week.range.start">
                <Select.Option
                  v-for="(item, index) in data.week"
                  :key="index"
                  :label="item.label"
                  :value="item.value"
                />
              </Select>
              <span style="padding: 0 15px">-</span>
              <Select v-model:value="cronValue.week.range.end">
                <Select.Option
                  v-for="(item, index) in data.week"
                  :key="index"
                  :label="item.label"
                  :value="item.value"
                />
              </Select>
            </Form.Item>
            <Form.Item
              v-if="cronValue.week.type === '2'"
              :label="$t('ui.cron.interval')"
            >
              <InputNumber
                v-model:value="cronValue.week.loop.start"
                :max="4"
                :min="1"
                controls-position="right"
              />
              {{ $t('ui.cron.theNthWeek', [cronValue.week.loop.start]) }}
              <Select v-model:value="cronValue.week.loop.end">
                <Select.Option
                  v-for="(item, index) in data.week"
                  :key="index"
                  :label="item.label"
                  :value="item.value"
                />
              </Select>
            </Form.Item>
            <Form.Item
              v-if="cronValue.week.type === '3'"
              :label="$t('ui.cron.appoint')"
            >
              <Select
                v-model:value="cronValue.week.appoint"
                mode="multiple"
                style="width: 100%"
              >
                <Select.Option
                  v-for="(item, index) in data.week"
                  :key="index"
                  :label="item.label"
                  :value="item.value"
                />
              </Select>
            </Form.Item>
            <Form.Item
              v-if="cronValue.week.type === '4'"
              :label="$t('ui.cron.lastWeekday')"
            >
              <Select v-model:value="cronValue.week.last">
                <Select.Option
                  v-for="(item, index) in data.week"
                  :key="index"
                  :label="item.label"
                  :value="item.value"
                />
              </Select>
            </Form.Item>
          </Form>
        </Tabs.TabPane>

        <Tabs.TabPane key="year">
          <template #tab>
            <div class="sc-cron-num">
              <h2>{{ $t('ui.cron.year') }}</h2>
              <h4>{{ value_year }}</h4>
            </div>
          </template>
          <Form>
            <Form.Item :label="$t('ui.cron.type')">
              <RadioGroup v-model:value="cronValue.year.type">
                <RadioButton value="-1">{{ $t('ui.cron.ignore') }}</RadioButton>
                <RadioButton value="0">{{ $t('ui.cron.any') }}</RadioButton>
                <RadioButton value="1">{{ $t('ui.cron.range') }}</RadioButton>
                <RadioButton value="2">
                  {{ $t('ui.cron.interval') }}
                </RadioButton>
                <RadioButton value="3">{{ $t('ui.cron.appoint') }}</RadioButton>
              </RadioGroup>
            </Form.Item>
            <Form.Item
              v-if="cronValue.year.type === '1'"
              :label="$t('ui.cron.range')"
            >
              <InputNumber
                v-model:value="cronValue.year.range.start"
                controls-position="right"
              />
              <span style="padding: 0 15px">-</span>
              <InputNumber
                v-model:value="cronValue.year.range.end"
                controls-position="right"
              />
            </Form.Item>
            <Form.Item
              v-if="cronValue.year.type === '2'"
              :label="$t('ui.cron.interval')"
            >
              <InputNumber
                v-model:value="cronValue.year.loop.start"
                controls-position="right"
              />
              {{ $t('ui.cron.from') }}
              <InputNumber
                v-model:value="cronValue.year.loop.end"
                :min="1"
                controls-position="right"
              />
              {{ $t('ui.cron.unitYear') }}
            </Form.Item>
            <Form.Item
              v-if="cronValue.year.type === '3'"
              :label="$t('ui.cron.appoint')"
            >
              <Select
                v-model:value="cronValue.year.appoint"
                mode="multiple"
                style="width: 100%"
              >
                <Select.Option
                  v-for="(item, index) in data.year"
                  :key="index"
                  :label="item"
                  :value="item"
                />
              </Select>
            </Form.Item>
          </Form>
        </Tabs.TabPane>
      </Tabs>
    </div>

    <template #footer>
      <div class="sc-cron-footer">
        <div class="sc-cron-next-label">{{ $t('ui.cron.nextTimes') }}</div>
        <div class="sc-cron-next-times">
          <template v-if="nextTimes.length > 0">
            <Timeline class="sc-cron-timeline">
              <Timeline.Item v-for="(time, idx) in nextTimes" :key="idx">
                {{ formatDateTime(time) }}
              </Timeline.Item>
            </Timeline>
          </template>
          <span v-else class="sc-cron-no-time">—</span>
        </div>
        <div class="sc-cron-footer-btns">
          <Button @click="dialogVisible = false">
            {{ $t('ui.cron.cancel') }}
          </Button>
          <Button type="primary" @click="submit()">
            {{ $t('ui.cron.confirm') }}
          </Button>
        </div>
      </div>
    </template>
  </Modal>
</template>

<style scoped>
.sc-cron :deep(.ant-tabs-tab) {
  height: auto;
  padding: 0 7px;
  line-height: 1;
  vertical-align: bottom;
}

.sc-cron-num {
  width: 100%;
  margin-bottom: 15px;
  text-align: center;
}

.sc-cron-num h2 {
  margin-bottom: 15px;
  font-size: 12px;
  font-weight: normal;
}

.sc-cron-num h4 {
  display: block;
  width: 100%;
  height: 32px;
  padding: 0 15px;
  font-size: 12px;
  line-height: 30px;
  background: hsl(var(--primary) / 10%);
  border-radius: 4px;
}

.sc-cron :deep(.ant-tabs-tab.ant-tabs-tab-active) .sc-cron-num h4 {
  color: #fff;
  background: hsl(var(--primary));
}

[data-theme='dark'] .sc-cron-num h4 {
  background: hsl(var(--white));
}

.input-with-select .ant-input-group-addon {
  background-color: hsl(var(--muted));
}

.sc-cron-expr-input {
  margin-bottom: 12px;
}

.sc-cron-expr-preview {
  margin-top: 6px;
  font-family: monospace;
  font-size: 12px;
  color: hsl(var(--muted-foreground));
  word-break: break-all;
}

.sc-cron-footer {
  display: flex;
  flex-direction: column;
  gap: 8px;
  padding: 12px 0 4px;
}

.sc-cron-next-label {
  font-size: 12px;
  font-weight: 500;
  color: hsl(var(--muted-foreground));
}

.sc-cron-timeline {
  padding-left: 2px;
  margin: 0;
}

.sc-cron-timeline :deep(.ant-timeline-item-content) {
  font-size: 12px;
  color: hsl(var(--foreground));
}

.sc-cron-no-time {
  font-size: 12px;
  color: hsl(var(--muted-foreground));
}

.sc-cron-footer-btns {
  display: flex;
  gap: 8px;
  justify-content: flex-end;
  padding-top: 8px;
  margin-top: 4px;
  border-top: 1px solid hsl(var(--border));
}
</style>
