<script lang="ts" setup>
import { nextTick, onBeforeUnmount, ref, toRaw, watch } from 'vue';

import { Textarea } from 'ant-design-vue';

import { $t } from '#/locales';

defineOptions({ name: 'ElementOtherConfig' });

const props = defineProps({
  id: {
    type: String,
    default: '',
  },
});

const documentation = ref('');
const bpmnElement = ref();

const bpmnInstances = () => (window as any).bpmnInstances;

const updateDocumentation = () => {
  (bpmnElement.value && bpmnElement.value.id === props.id) ||
    (bpmnElement.value = bpmnInstances().elementRegistry.get(props.id));
  const documentations = bpmnInstances().bpmnFactory.create(
    'bpmn:Documentation',
    {
      text: documentation.value,
    },
  );
  bpmnInstances().modeling.updateProperties(toRaw(bpmnElement.value), {
    documentation: [documentations],
  });
};

onBeforeUnmount(() => {
  bpmnElement.value = null;
});

watch(
  () => props.id,
  (id) => {
    if (id && id.length > 0) {
      nextTick(() => {
        const documentations =
          bpmnInstances().bpmnElement.businessObject?.documentation;
        documentation.value =
          documentations && documentations.length > 0
            ? documentations[0].text
            : '';
      });
    } else {
      documentation.value = '';
    }
  },
  { immediate: true },
);
</script>

<template>
  <div class="px-2 py-1">
    <div class="flex items-start gap-2">
      <!-- 元素文档 / Element Documentation -->
      <div class="w-20 pt-1 text-sm text-gray-700">
        {{ $t('bpm.bpmnProcessDesign.other.elementDocumentation') }}：
      </div>
      <div class="flex-1">
        <Textarea
          v-model:value="documentation"
          :auto-size="{ minRows: 2, maxRows: 4 }"
          @change="updateDocumentation"
          @blur="updateDocumentation"
        />
      </div>
    </div>
  </div>
</template>
