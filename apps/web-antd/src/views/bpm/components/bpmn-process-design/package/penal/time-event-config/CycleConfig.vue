<script setup>
import { ref, watch } from 'vue';

import {
  Button,
  Checkbox,
  DatePicker,
  Input,
  InputNumber,
  Radio,
  TabPane,
  Tabs,
} from 'ant-design-vue';
import dayjs from 'dayjs';

import { $t } from '#/locales';

const props = defineProps({
  value: {
    type: String,
    default: '',
  },
});
const emit = defineEmits(['change']);

const tab = ref('cron');
const cronStr = ref(props.value || '* * * * * ?');
const fields = ref({
  second: '*',
  minute: '*',
  hour: '*',
  day: '*',
  month: '*',
  week: '?',
  year: '',
});
const cronFieldList = [
  {
    key: 'second',
    label: $t('bpm.bpmnProcessDesign.timeEventConfig.second'),
    min: 0,
    max: 59,
  }, // 秒 / Second
  {
    key: 'minute',
    label: $t('bpm.bpmnProcessDesign.timeEventConfig.minute'),
    min: 0,
    max: 59,
  }, // 分 / Minute
  {
    key: 'hour',
    label: $t('bpm.bpmnProcessDesign.timeEventConfig.hour'),
    min: 0,
    max: 23,
  }, // 时 / Hour
  {
    key: 'day',
    label: $t('bpm.bpmnProcessDesign.timeEventConfig.day'),
    min: 1,
    max: 31,
  }, // 天 / Day
  {
    key: 'month',
    label: $t('bpm.bpmnProcessDesign.timeEventConfig.month'),
    min: 1,
    max: 12,
  }, // 月 / Month
  {
    key: 'week',
    label: $t('bpm.bpmnProcessDesign.timeEventConfig.week'),
    min: 1,
    max: 7,
  }, // 周 / Week
  {
    key: 'year',
    label: $t('bpm.bpmnProcessDesign.timeEventConfig.year'),
    min: 1970,
    max: 2099,
  }, // 年 / Year
];
const activeField = ref('second');
const cronMode = ref({
  second: 'every',
  minute: 'every',
  hour: 'every',
  day: 'every',
  month: 'every',
  week: 'every',
  year: 'every',
});
const cronAppoint = ref({
  second: [],
  minute: [],
  hour: [],
  day: [],
  month: [],
  week: [],
  year: [],
});
const cronRange = ref({
  second: [0, 1],
  minute: [0, 1],
  hour: [0, 1],
  day: [1, 2],
  month: [1, 2],
  week: [1, 2],
  year: [1970, 1971],
});
const cronStep = ref({
  second: [1, 1],
  minute: [1, 1],
  hour: [1, 1],
  day: [1, 1],
  month: [1, 1],
  week: [1, 1],
  year: [1970, 1],
});

function pad(n) {
  return n < 10 ? `0${n}` : `${n}`;
}

watch(
  [fields, cronMode, cronAppoint, cronRange, cronStep],
  () => {
    // 组装cron表达式
    const arr = cronFieldList.map((f) => {
      if (cronMode.value[f.key] === 'every') return '*';
      if (cronMode.value[f.key] === 'appoint')
        return cronAppoint.value[f.key].join(',') || '*';
      if (cronMode.value[f.key] === 'range')
        return `${cronRange.value[f.key][0]}-${cronRange.value[f.key][1]}`;
      if (cronMode.value[f.key] === 'step')
        return `${cronStep.value[f.key][0]}/${cronStep.value[f.key][1]}`;
      return fields.value[f.key] || '*';
    });
    // week和year特殊处理
    arr[5] = arr[5] || '?';
    cronStr.value = arr.join(' ');
    if (tab.value === 'cron') emit('change', cronStr.value);
  },
  { deep: true },
);

// 标准格式
const isoStr = ref('');
const repeat = ref(1);
const isoDate = ref('');
const durationUnits = [
  {
    key: 'Y',
    label: $t('bpm.bpmnProcessDesign.timeEventConfig.year'),
    presets: [1, 2, 3, 4],
  }, // 年 / Year
  {
    key: 'M',
    label: $t('bpm.bpmnProcessDesign.timeEventConfig.month'),
    presets: [1, 2, 3, 4],
  }, // 月 / Month
  {
    key: 'D',
    label: $t('bpm.bpmnProcessDesign.timeEventConfig.day'),
    presets: [1, 2, 3, 4],
  }, // 天 / Day
  {
    key: 'H',
    label: $t('bpm.bpmnProcessDesign.timeEventConfig.hour'),
    presets: [4, 8, 12, 24],
  }, // 时 / Hour
  {
    key: 'm',
    label: $t('bpm.bpmnProcessDesign.timeEventConfig.minute'),
    presets: [5, 10, 30, 50],
  }, // 分 / Minute
  {
    key: 'S',
    label: $t('bpm.bpmnProcessDesign.timeEventConfig.second'),
    presets: [5, 10, 30, 50],
  }, // 秒 / Second
];
const durationCustom = ref({ Y: '', M: '', D: '', H: '', m: '', S: '' });
const isoDuration = ref('');

function setDuration(key, val) {
  durationCustom.value[key] = !val || Number.isNaN(val) ? '' : val;
  updateDurationStr();
}

function updateDurationStr() {
  let str = 'P';
  str += durationCustom.value.Y ? `${durationCustom.value.Y}Y` : '';
  str += durationCustom.value.M ? `${durationCustom.value.M}M` : '';
  str += durationCustom.value.D ? `${durationCustom.value.D}D` : '';
  str +=
    durationCustom.value.H || durationCustom.value.m || durationCustom.value.S
      ? 'T'
      : '';
  str += durationCustom.value.H ? `${durationCustom.value.H}H` : '';
  str += durationCustom.value.m ? `${durationCustom.value.m}M` : '';
  str += durationCustom.value.S ? `${durationCustom.value.S}S` : '';
  isoDuration.value = str === 'P' ? '' : str;
  updateIsoStr();
}

function updateIsoStr() {
  let str = `R${repeat.value}`;
  if (isoDate.value) {
    const dateStr =
      typeof isoDate.value === 'string'
        ? isoDate.value
        : isoDate.value.toISOString();
    str += `/${dateStr}`;
  }
  if (isoDuration.value) str += `/${isoDuration.value}`;
  isoStr.value = str;
  if (tab.value === 'iso') emit('change', isoStr.value);
}
watch([repeat, isoDate], updateIsoStr);
watch(durationCustom, updateDurationStr, { deep: true });
watch(
  () => props.value,
  (val) => {
    if (!val) return;
    // 自动检测格式：以R开头的是ISO 8601格式，否则是CRON表达式
    if (val.startsWith('R')) {
      tab.value = 'iso';
      isoStr.value = val;
      // 解析ISO格式：R{repeat}/{date}/{duration}
      const parts = val.split('/');
      if (parts[0]) {
        const repeatMatch = parts[0].match(/^R(\d+)$/);
        if (repeatMatch) repeat.value = Number.parseInt(repeatMatch[1], 10);
      }
      // 解析date部分（ISO 8601日期时间格式）
      const datePart = parts.find(
        (p) => p.includes('T') && !p.startsWith('P') && !p.startsWith('R'),
      );
      if (datePart) {
        isoDate.value = dayjs(datePart);
      }
      // 解析duration部分
      const durationPart = parts.find((p) => p.startsWith('P'));
      if (durationPart) {
        const match = durationPart.match(
          /^P(?:(\d+)Y)?(?:(\d+)M)?(?:(\d+)D)?(?:T(?:(\d+)H)?(?:(\d+)M)?(?:(\d+)S)?)?$/,
        );
        if (match) {
          durationCustom.value.Y = match[1] || '';
          durationCustom.value.M = match[2] || '';
          durationCustom.value.D = match[3] || '';
          durationCustom.value.H = match[4] || '';
          durationCustom.value.m = match[5] || '';
          durationCustom.value.S = match[6] || '';
          isoDuration.value = durationPart;
        }
      }
    } else {
      tab.value = 'cron';
      cronStr.value = val;
    }
  },
  { immediate: true },
);
</script>
<template>
  <Tabs v-model:active-key="tab">
    <!-- CRON表达式 / CRON Expression -->
    <TabPane
      key="cron"
      :tab="$t('bpm.bpmnProcessDesign.timeEventConfig.cronExpression')"
    >
      <div class="mb-2.5">
        <Input
          v-model:value="cronStr"
          readonly
          class="w-[400px] font-bold"
          key="cronStr"
        />
      </div>
      <div class="mb-2 flex gap-2">
        <!-- 秒 / Second -->
        <Input
          v-model:value="fields.second"
          :placeholder="$t('bpm.bpmnProcessDesign.timeEventConfig.second')"
          class="w-20"
          key="second"
        />
        <!-- 分 / Minute -->
        <Input
          v-model:value="fields.minute"
          :placeholder="$t('bpm.bpmnProcessDesign.timeEventConfig.minute')"
          class="w-20"
          key="minute"
        />
        <!-- 时 / Hour -->
        <Input
          v-model:value="fields.hour"
          :placeholder="$t('bpm.bpmnProcessDesign.timeEventConfig.hour')"
          class="w-20"
          key="hour"
        />
        <!-- 天 / Day -->
        <Input
          v-model:value="fields.day"
          :placeholder="$t('bpm.bpmnProcessDesign.timeEventConfig.day')"
          class="w-20"
          key="day"
        />
        <!-- 月 / Month -->
        <Input
          v-model:value="fields.month"
          :placeholder="$t('bpm.bpmnProcessDesign.timeEventConfig.month')"
          class="w-20"
          key="month"
        />
        <!-- 周 / Week -->
        <Input
          v-model:value="fields.week"
          :placeholder="$t('bpm.bpmnProcessDesign.timeEventConfig.week')"
          class="w-20"
          key="week"
        />
        <!-- 年 / Year -->
        <Input
          v-model:value="fields.year"
          :placeholder="$t('bpm.bpmnProcessDesign.timeEventConfig.year')"
          class="w-20"
          key="year"
        />
      </div>
      <Tabs v-model:active-key="activeField" type="card" class="mb-2">
        <Tabs.TabPane v-for="f in cronFieldList" :key="f.key" :tab="f.label">
          <div class="mb-2">
            <Radio.Group
              v-model:value="cronMode[f.key]"
              :key="`radio-${f.key}`"
            >
              <Radio value="every" :key="`every-${f.key}`">
                {{ $t('bpm.bpmnProcessDesign.timeEventConfig.every') }}
                {{ f.label }}
                <!-- 每{unit} / Every {unit} -->
              </Radio>
              <Radio value="range" :key="`range-${f.key}`">
                {{ $t('bpm.bpmnProcessDesign.timeEventConfig.from') }}
                <!-- 从 / From -->
                <InputNumber
                  v-model:value="cronRange[f.key][0]"
                  :min="f.min"
                  :max="f.max"
                  size="small"
                  class="w-[60px]"
                  :key="`range0-${f.key}`"
                />
                {{ $t('bpm.bpmnProcessDesign.timeEventConfig.to') }}
                <!-- 到 / To -->
                <InputNumber
                  v-model:value="cronRange[f.key][1]"
                  :min="f.min"
                  :max="f.max"
                  size="small"
                  class="w-[60px]"
                  :key="`range1-${f.key}`"
                />
                {{ $t('bpm.bpmnProcessDesign.timeEventConfig.betweenEvery') }}
                {{ f.label }}
                <!-- 之间每{unit} / Every {unit} between -->
              </Radio>
              <Radio value="step" :key="`step-${f.key}`">
                {{ $t('bpm.bpmnProcessDesign.timeEventConfig.startFrom') }}
                <!-- 从第 / Start from -->
                <InputNumber
                  v-model:value="cronStep[f.key][0]"
                  :min="f.min"
                  :max="f.max"
                  size="small"
                  class="w-[60px]"
                  :key="`step0-${f.key}`"
                />
                {{ $t('bpm.bpmnProcessDesign.timeEventConfig.startEvery') }}
                <!-- 开始每 / Start every -->
                <InputNumber
                  v-model:value="cronStep[f.key][1]"
                  :min="1"
                  :max="f.max"
                  size="small"
                  class="w-[60px]"
                  :key="`step1-${f.key}`"
                />
                {{ f.label }}
              </Radio>
              <Radio value="appoint" :key="`appoint-${f.key}`">
                {{ $t('bpm.bpmnProcessDesign.timeEventConfig.specify') }}
              </Radio>
              <!-- 指定 / Specify -->
            </Radio.Group>
          </div>
          <div v-if="cronMode[f.key] === 'appoint'">
            <Checkbox.Group
              v-model:value="cronAppoint[f.key]"
              :key="`group-${f.key}`"
            >
              <Checkbox
                v-for="n in f.max + 1"
                :key="`cb-${f.key}-${n - 1}`"
                :value="pad(n - 1)"
              >
                {{ pad(n - 1) }}
              </Checkbox>
            </Checkbox.Group>
          </div>
        </Tabs.TabPane>
      </Tabs>
    </TabPane>
    <!-- 标准格式 / Standard Format -->
    <TabPane
      key="iso"
      :tab="$t('bpm.bpmnProcessDesign.timeEventConfig.standardFormat')"
    >
      <div class="mb-2.5">
        <Input
          v-model:value="isoStr"
          :placeholder="
            $t('bpm.bpmnProcessDesign.timeEventConfig.isoPlaceholder')
          "
          class="w-[400px] font-bold"
          key="isoStr"
        />
      </div>
      <!-- 循环次数 / Repeat Count -->
      <div class="mb-2.5">
        {{ $t('bpm.bpmnProcessDesign.timeEventConfig.repeatCount') }}：
        <InputNumber
          v-model:value="repeat"
          :min="1"
          class="w-[100px]"
          key="repeat"
        />
      </div>
      <!-- 开始时间 / Start Time -->
      <div class="mb-2.5">
        {{ $t('bpm.bpmnProcessDesign.timeEventConfig.startTime') }}：
        <DatePicker
          v-model:value="isoDate"
          show-time
          :placeholder="
            $t('bpm.bpmnProcessDesign.timeEventConfig.selectStartTime')
          "
          class="w-[200px]"
          key="isoDate"
        />
      </div>
      <!-- 间隔时长 / Interval Duration -->
      <div class="mb-2.5">
        {{ $t('bpm.bpmnProcessDesign.timeEventConfig.intervalDuration') }}：
        <Input
          v-model:value="isoDuration"
          readonly
          :placeholder="
            $t('bpm.bpmnProcessDesign.timeEventConfig.intervalPlaceholder')
          "
          class="w-[200px]"
          key="isoDuration"
        />
        <!-- 如P3DT30M30S / E.g. P3DT30M30S -->
      </div>
      <div>
        <div v-for="unit in durationUnits" :key="unit.key" class="mb-2">
          <span>{{ unit.label }}：</span>
          <Button.Group>
            <Button
              v-for="val in unit.presets"
              :key="val"
              size="small"
              @click="setDuration(unit.key, val)"
            >
              {{ val }}
            </Button>
            <Input
              v-model:value="durationCustom[unit.key]"
              size="small"
              class="ml-2 w-[60px]"
              :placeholder="$t('bpm.bpmnProcessDesign.timeEventConfig.custom')"
              @change="setDuration(unit.key, durationCustom[unit.key])"
            />
          </Button.Group>
        </div>
      </div>
    </TabPane>
  </Tabs>
</template>
