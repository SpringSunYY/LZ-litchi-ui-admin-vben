<script lang="ts" setup>
import { computed, ref } from 'vue';

import { useVbenModal } from '@vben/common-ui';

import { Form, FormItem, Input } from 'ant-design-vue';

import { $t } from '#/locales';

defineOptions({ name: 'SignalMessageModal' });

const emit = defineEmits<{
  confirm: [data: { id: string; name: string }];
}>();

const formRef = ref();
const form = ref<{ id: string; name: string }>({ id: '', name: '' });
const modelType = ref<'message' | 'signal'>('message');
const isEdit = ref(false);

const config = computed(() => {
  return modelType.value === 'message'
    ? {
        // 编辑消息 / Edit Message | 创建消息 / Create Message
        title: isEdit.value
          ? $t('bpm.bpmnProcessDesign.signalMessage.editMessage')
          : $t('bpm.bpmnProcessDesign.signalMessage.createMessage'),
        // 消息 ID / Message ID
        idLabel: $t('bpm.bpmnProcessDesign.signalMessage.messageId'),
        // 消息名称 / Message Name
        nameLabel: $t('bpm.bpmnProcessDesign.signalMessage.messageName'),
      }
    : {
        // 编辑信号 / Edit Signal | 创建信号 / Create Signal
        title: isEdit.value
          ? $t('bpm.bpmnProcessDesign.signalMessage.editSignal')
          : $t('bpm.bpmnProcessDesign.signalMessage.createSignal'),
        // 信号 ID / Signal ID
        idLabel: $t('bpm.bpmnProcessDesign.signalMessage.signalId'),
        // 信号名称 / Signal Name
        nameLabel: $t('bpm.bpmnProcessDesign.signalMessage.signalName'),
      };
});

const [Modal, modalApi] = useVbenModal({
  onOpenChange(isOpen) {
    if (isOpen) {
      const data = modalApi.getData<{
        id?: string;
        isEdit?: boolean;
        name?: string;
        type: 'message' | 'signal';
      }>();
      modelType.value = data?.type || 'message';
      isEdit.value = data?.isEdit || false;
      form.value = {
        id: data?.id || '',
        name: data?.name || '',
      };
      // 清除校验
      setTimeout(() => {
        formRef.value?.clearValidate();
      }, 50);
    }
  },
  async onConfirm() {
    try {
      await formRef.value?.validate();
      emit('confirm', { ...form.value });
      modalApi.close();
    } catch {
      // 校验未通过
    }
  },
});
</script>

<template>
  <Modal :title="config.title" class="w-3/5">
    <Form
      ref="formRef"
      :model="form"
      :label-col="{ span: 4 }"
      :wrapper-col="{ span: 18 }"
    >
      <FormItem
        :label="config.idLabel"
        name="id"
        :rules="[
          {
            required: true,
            message: $t('bpm.bpmnProcessDesign.validation.pleaseEnterId'),
          },
        ]"
      >
        <Input v-model:value="form.id" allow-clear />
      </FormItem>
      <FormItem
        :label="config.nameLabel"
        name="name"
        :rules="[
          {
            required: true,
            message: $t('bpm.bpmnProcessDesign.validation.pleaseEnterName'),
          },
        ]"
      >
        <Input v-model:value="form.name" allow-clear />
      </FormItem>
    </Form>
  </Modal>
</template>
