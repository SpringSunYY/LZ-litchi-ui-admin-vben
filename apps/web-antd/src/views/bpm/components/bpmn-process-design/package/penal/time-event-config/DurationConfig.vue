<script setup>
import { ref, watch } from 'vue';

import { Button, Input } from 'ant-design-vue';

import { $t } from '#/locales';

const props = defineProps({
  value: {
    type: String,
    default: '',
  },
});
const emit = defineEmits(['change']);

const units = [
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
const custom = ref({ Y: '', M: '', D: '', H: '', m: '', S: '' });
const isoString = ref('');

function setUnit(key, val) {
  if (!val || Number.isNaN(val)) {
    custom.value[key] = '';
    return;
  }
  custom.value[key] = val;
  updateIsoString();
}

function updateIsoString() {
  let str = 'P';
  if (custom.value.Y) str += `${custom.value.Y}Y`;
  if (custom.value.M) str += `${custom.value.M}M`;
  if (custom.value.D) str += `${custom.value.D}D`;
  if (custom.value.H || custom.value.m || custom.value.S) str += 'T';
  if (custom.value.H) str += `${custom.value.H}H`;
  if (custom.value.m) str += `${custom.value.m}M`;
  if (custom.value.S) str += `${custom.value.S}S`;
  isoString.value = str === 'P' ? '' : str;
  emit('change', isoString.value);
}

watch(
  () => props.value,
  (val) => {
    if (!val) return;
    // 解析ISO 8601字符串到custom
    const match = val.match(
      /^P(?:(\d+)Y)?(?:(\d+)M)?(?:(\d+)D)?(?:T(?:(\d+)H)?(?:(\d+)M)?(?:(\d+)S)?)?$/,
    );
    if (match) {
      custom.value.Y = match[1] || '';
      custom.value.M = match[2] || '';
      custom.value.D = match[3] || '';
      custom.value.H = match[4] || '';
      custom.value.m = match[5] || '';
      custom.value.S = match[6] || '';
      updateIsoString();
    }
  },
  { immediate: true },
);
</script>

<template>
  <div>
    <div class="mb-2.5">
      <!-- 当前选择 / Current Selection -->
      {{ $t('bpm.bpmnProcessDesign.timeEventConfig.currentSelection') }}：
      <Input v-model:value="isoString" readonly class="w-[300px]" />
    </div>
    <div v-for="unit in units" :key="unit.key" class="mb-2">
      <span>{{ unit.label }}：</span>
      <Button.Group>
        <Button
          v-for="val in unit.presets"
          :key="val"
          size="small"
          @click="setUnit(unit.key, val)"
        >
          {{ val }}
        </Button>
        <Input
          v-model:value="custom[unit.key]"
          size="small"
          class="ml-2 w-[60px]"
          :placeholder="$t('bpm.bpmnProcessDesign.timeEventConfig.custom')"
          @change="setUnit(unit.key, custom[unit.key])"
        />
      </Button.Group>
    </div>
  </div>
</template>
