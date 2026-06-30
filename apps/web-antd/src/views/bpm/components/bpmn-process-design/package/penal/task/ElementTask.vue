<script lang="ts" setup>
import { ref, watch } from 'vue';

import { Checkbox, Form, FormItem } from 'ant-design-vue';

import { $t } from '#/locales';

import { installedComponent } from './data';

defineOptions({ name: 'ElementTaskConfig' });

const props = defineProps({
  id: {
    type: String,
    default: '',
  },
  type: {
    type: String,
    default: '',
  },
});
const taskConfigForm = ref({
  asyncAfter: false,
  asyncBefore: false,
  exclusive: false,
});
const witchTaskComponent = ref();

const bpmnElement = ref();

const bpmnInstances = () => (window as any).bpmnInstances;
const changeTaskAsync = () => {
  if (!taskConfigForm.value.asyncBefore && !taskConfigForm.value.asyncAfter) {
    taskConfigForm.value.exclusive = false;
  }
  bpmnInstances().modeling.updateProperties(bpmnInstances().bpmnElement, {
    ...taskConfigForm.value,
  });
};

watch(
  () => props.id,
  () => {
    bpmnElement.value = bpmnInstances().bpmnElement;
    taskConfigForm.value.asyncBefore =
      bpmnElement.value?.businessObject?.asyncBefore;
    taskConfigForm.value.asyncAfter =
      bpmnElement.value?.businessObject?.asyncAfter;
    taskConfigForm.value.exclusive =
      bpmnElement.value?.businessObject?.exclusive;
  },
  { immediate: true },
);
watch(
  () => props.type,
  () => {
    if (props.type) {
      // @ts-expect-error: installed task component map is indexed dynamically
      witchTaskComponent.value = installedComponent[props.type].component;
    }
  },
  { immediate: true },
);
</script>

<template>
  <div class="panel-tab__content">
    <Form>
      <!-- add by 芋艿：由于「异步延续」暂时用不到，所以这里 display 为 none -->
      <!-- 异步延续 / Async Continue -->
      <FormItem
        :label="$t('bpm.bpmnProcessDesign.task.asyncContinue')"
        class="hidden"
      >
        <Checkbox
          v-model:checked="taskConfigForm.asyncBefore"
          @change="changeTaskAsync"
        >
          <!-- 异步前 / Async Before -->
          {{ $t('bpm.bpmnProcessDesign.task.asyncBefore') }}
        </Checkbox>
        <Checkbox
          v-model:checked="taskConfigForm.asyncAfter"
          @change="changeTaskAsync"
        >
          <!-- 异步后 / Async After -->
          {{ $t('bpm.bpmnProcessDesign.task.asyncAfter') }}
        </Checkbox>
        <Checkbox
          v-model:checked="taskConfigForm.exclusive"
          v-if="taskConfigForm.asyncAfter || taskConfigForm.asyncBefore"
          @change="changeTaskAsync"
        >
          <!-- 排除 / Exclusive -->
          {{ $t('bpm.bpmnProcessDesign.task.exclusive') }}
        </Checkbox>
      </FormItem>
      <component :is="witchTaskComponent" v-bind="$props" />
    </Form>
  </div>
</template>
