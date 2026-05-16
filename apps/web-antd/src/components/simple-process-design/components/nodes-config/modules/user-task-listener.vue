<script setup lang="ts">
import { computed, ref } from 'vue';

import {
  Alert,
  Divider,
  Form,
  FormItem,
  Input,
  Switch,
  TypographyText,
} from 'ant-design-vue';

import { getSimpleProcessDesignLocale } from '#/components/simple-process-design/locales/simple-process-design';
import { $t } from '#/locales';

import HttpRequestParamSetting from './http-request-param-setting.vue';

const props = defineProps({
  modelValue: {
    type: Object,
    required: true,
  },
  formFieldOptions: {
    type: Object,
    required: true,
  },
});

const emit = defineEmits(['update:modelValue']);

const listenerFormRef = ref();

const configForm = computed({
  get() {
    return props.modelValue;
  },
  set(newValue) {
    emit('update:modelValue', newValue);
  },
});

const locale = getSimpleProcessDesignLocale();

const taskListener = ref([
  {
    name: $t('bpm.simpleProcessDesign.action.listenerCreate'),
    type: 'Create',
  },
  {
    name: $t('bpm.simpleProcessDesign.action.listenerAssign'),
    type: 'Assign',
  },
  {
    name: $t('bpm.simpleProcessDesign.action.listenerComplete'),
    type: 'Complete',
  },
]);

async function validate() {
  if (!listenerFormRef.value) return false;
  return await listenerFormRef.value.validate();
}

defineExpose({ validate });
</script>
<template>
  <Form ref="listenerFormRef" :model="configForm" :label-col="{ span: 24 }">
    <div
      v-for="(listener, listenerIdx) in taskListener"
      :key="listenerIdx"
      class="pl-2"
    >
      <Divider orientation="left">
        <TypographyText tag="b" size="large">
          {{ listener.name }}
        </TypographyText>
      </Divider>
      <FormItem>
        <Switch
          v-model:checked="configForm[`task${listener.type}ListenerEnable`]"
          :checked-children="locale.switch.on"
          :un-checked-children="locale.switch.off"
        />
      </FormItem>
      <div v-if="configForm[`task${listener.type}ListenerEnable`]">
        <FormItem>
          <Alert
            :message="$t('bpm.simpleProcessDesign.trigger.onlySupportPost')"
            type="warning"
            show-icon
            :closable="false"
          />
        </FormItem>
        <FormItem
          :label="$t('bpm.simpleProcessDesign.placeholder.requestAddress')"
          :name="`task${listener.type}ListenerPath`"
          :rules="{
            required: true,
            message: $t(
              'bpm.simpleProcessDesign.placeholder.requestAddressCannotEmpty',
            ),
            trigger: ['blur', 'change'],
          }"
        >
          <Input
            v-model:value="configForm[`task${listener.type}ListenerPath`]"
          />
        </FormItem>
        <HttpRequestParamSetting
          :header="configForm[`task${listener.type}Listener`].header"
          :body="configForm[`task${listener.type}Listener`].body"
          :bind="`task${listener.type}Listener`"
        />
      </div>
    </div>
  </Form>
</template>
