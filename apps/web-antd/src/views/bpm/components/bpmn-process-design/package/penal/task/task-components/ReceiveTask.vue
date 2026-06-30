<script lang="ts" setup>
import { nextTick, onBeforeUnmount, onMounted, ref, toRaw, watch } from 'vue';

import { useVbenModal } from '@vben/common-ui';
import { IconifyIcon } from '@vben/icons';

import { Button, message, Select, SelectOption } from 'ant-design-vue';

import { $t } from '#/locales';

import SignalMessageModal from '../../signal-message/SignalMessageModal.vue';

defineOptions({ name: 'ReceiveTask' });
const props = defineProps({
  id: { type: String, default: '' },
  type: { type: String, default: '' },
});

const bindMessageId = ref('');
const messageMap = ref<Record<string, any>>({});
const bpmnElement = ref<any>();
const bpmnMessageRefsMap = ref<Record<string, any>>();
const bpmnRootElements = ref<any>();

const bpmnInstances = () => (window as any).bpmnInstances;

const getBindMessage = () => {
  bpmnElement.value = bpmnInstances().bpmnElement;
  bindMessageId.value =
    bpmnElement.value.businessObject?.messageRef?.id || '-1';
};

/** 生成消息 ID */
const generateMessageId = (): string => {
  const timestamp = Date.now();
  const random = Math.random().toString(36).slice(2, 6).toUpperCase();
  return `Message_${timestamp}_${random}`;
};

/** 打开创建消息弹窗 */
const openCreateModal = () => {
  modalApi
    .setData({
      id: generateMessageId(),
      isEdit: false,
      name: '',
      type: 'message',
    })
    .open();
};

const handleConfirm = (formData: { id: string; name: string }) => {
  if (messageMap.value[formData.id]) {
    // 该消息已存在, 请修改id后重新保存 / Message already exists, please modify the id and save again
    message.error($t('bpm.bpmnProcessDesign.receiveTask.messageExists'));
    return;
  }
  const newMessage = bpmnInstances().moddle.create('bpmn:Message', formData);
  bpmnRootElements.value.push(newMessage);
  messageMap.value[formData.id] = formData.name;
  if (bpmnMessageRefsMap.value) {
    bpmnMessageRefsMap.value[formData.id] = newMessage;
  }
};

const [Modal, modalApi] = useVbenModal({
  connectedComponent: SignalMessageModal,
});
const updateTaskMessage = (messageId: string) => {
  if (messageId === '-1') {
    bpmnInstances().modeling.updateProperties(toRaw(bpmnElement.value), {
      messageRef: null,
    });
  } else {
    bpmnInstances().modeling.updateProperties(toRaw(bpmnElement.value), {
      messageRef: bpmnMessageRefsMap.value?.[messageId],
    });
  }
};

onMounted(() => {
  bpmnMessageRefsMap.value = Object.create(null);
  bpmnRootElements.value =
    bpmnInstances().modeler.getDefinitions().rootElements;
  bpmnRootElements.value
    .filter((el: any) => el.$type === 'bpmn:Message')
    .forEach((m: any) => {
      if (bpmnMessageRefsMap.value) {
        bpmnMessageRefsMap.value[m.id] = m;
      }
      messageMap.value[m.id] = m.name;
    });
  messageMap.value['-1'] = $t('bpm.bpmnProcessDesign.receiveTask.none'); // 无 / None
});

onBeforeUnmount(() => {
  bpmnElement.value = null;
});
watch(
  () => props.id,
  () => {
    nextTick(() => {
      getBindMessage();
    });
  },
  { immediate: true },
);
</script>

<template>
  <div class="mt-2">
    <div class="mb-2 flex justify-end">
      <Button type="link" size="small" class="p-0" @click="openCreateModal">
        <template #icon>
          <IconifyIcon class="size-4" icon="lucide:plus" />
        </template>
        {{ $t('bpm.bpmnProcessDesign.task.createNewMessage') }}
        <!-- 创建新消息 / Create New Message -->
      </Button>
    </div>
    <div class="mb-1 flex items-center">
      <!-- 消息实例 / Message Instance -->
      <span class="text-foreground w-20"
        >{{ $t('bpm.bpmnProcessDesign.task.messageInstance') }}:</span
      >
      <Select
        v-model:value="bindMessageId"
        class="w-full"
        @change="(value: any) => updateTaskMessage(value)"
      >
        <SelectOption
          v-for="key in Object.keys(messageMap)"
          :key="key"
          :value="key"
        >
          {{ messageMap[key] }}
        </SelectOption>
      </Select>
    </div>
    <Modal @confirm="handleConfirm" />
  </div>
</template>
