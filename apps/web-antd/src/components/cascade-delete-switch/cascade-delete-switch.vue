<script lang="ts" setup>
import type { CascadeDeleteSwitchProps } from './typing';

import { Tooltip } from 'ant-design-vue';

import { $t } from '#/locales';

defineProps<CascadeDeleteSwitchProps>();
const emit = defineEmits<{
  'update:modelValue': [value: boolean];
}>();
</script>

<template>
  <div class="ml-4 flex items-center gap-2">
    <Tooltip
      :title="
        modelValue
          ? $t('ui.actionMessage.cascadeDeleteTip')
          : $t('ui.actionMessage.cascadeDeleteTipOff')
      "
    >
      <a-switch
        :checked="modelValue"
        size="small"
        @change="(val: boolean) => emit('update:modelValue', val)"
      />
    </Tooltip>
    <span class="text-muted-foreground cursor-default text-sm">
      {{ $t('ui.actionMessage.cascadeDelete') }}
    </span>
  </div>
</template>
