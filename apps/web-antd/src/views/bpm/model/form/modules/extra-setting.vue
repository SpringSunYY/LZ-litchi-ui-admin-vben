<script setup lang="ts">
import { computed, ref, watch } from 'vue';

import { CircleHelp } from '@vben/icons';

import {
  Checkbox,
  Col,
  Form,
  FormItem,
  Input,
  InputNumber,
  Mentions,
  Radio,
  RadioGroup,
  Row,
  Select,
  Switch,
  Tooltip,
  TypographyText,
} from 'ant-design-vue';
import dayjs from 'dayjs';

import * as FormApi from '#/api/bpm/form';
import {
  HttpRequestSetting,
  parseFormFields,
} from '#/components/simple-process-design';
import { $t } from '#/locales';
import {
  BpmAutoApproveType,
  BpmModelFormType,
  ProcessVariableEnum,
} from '#/utils';

const modelData = defineModel<any>();

const timeOptions = computed(() => [
  {
    value: '',
    label: $t('common.none'),
  },
  {
    value: 'DAY',
    label: $t('common.preciseToDay'),
  },
  {
    value: 'HOUR',
    label: $t('common.preciseToHour'),
  },
  {
    value: 'MINUTE',
    label: $t('common.preciseToMinute'),
  },
  {
    value: 'SECOND',
    label: $t('common.preciseToSecond'),
  },
]);
const numberExample = computed(() => {
  if (modelData.value.processIdRule.enable) {
    let infix = '';
    switch (modelData.value.processIdRule.infix) {
      case 'DAY': {
        infix = dayjs().format('YYYYMMDD');
        break;
      }
      case 'HOUR': {
        infix = dayjs().format('YYYYMMDDHH');
        break;
      }
      case 'MINUTE': {
        infix = dayjs().format('YYYYMMDDHHmm');
        break;
      }
      case 'SECOND': {
        infix = dayjs().format('YYYYMMDDHHmmss');
        break;
      }
      default: {
        break;
      }
    }
    return (
      modelData.value.processIdRule.prefix +
      infix +
      modelData.value.processIdRule.postfix +
      '1'.padStart(modelData.value.processIdRule.length - 1, '0')
    );
  } else {
    return '';
  }
});

/** 是否开启流程前置通知 */
const processBeforeTriggerEnable = ref(false);
function handleProcessBeforeTriggerEnableChange(
  val: boolean | number | string,
) {
  modelData.value.processBeforeTriggerSetting = val
    ? {
        url: '',
        header: [],
        body: [],
        response: [],
      }
    : null;
}

/** 是否开启流程后置通知 */
const processAfterTriggerEnable = ref(false);
function handleProcessAfterTriggerEnableChange(val: boolean | number | string) {
  modelData.value.processAfterTriggerSetting = val
    ? {
        url: '',
        header: [],
        body: [],
        response: [],
      }
    : null;
}

/** 是否开启任务前置通知 */
const taskBeforeTriggerEnable = ref(false);
function handleTaskBeforeTriggerEnableChange(val: boolean | number | string) {
  modelData.value.taskBeforeTriggerSetting = val
    ? {
        url: '',
        header: [],
        body: [],
        response: [],
      }
    : null;
}

/** 是否开启任务后置通知 */
const taskAfterTriggerEnable = ref(false);
function handleTaskAfterTriggerEnableChange(val: boolean | number | string) {
  modelData.value.taskAfterTriggerSetting = val
    ? {
        url: '',
        header: [],
        body: [],
        response: [],
      }
    : null;
}

/** 表单选项 */
const formField = ref<Array<{ field: string; title: string }>>([]);
const formFieldOptions4Title = computed(() => {
  const cloneFormField = formField.value.map((item) => {
    return {
      label: item.title,
      value: item.field,
    };
  });
  // 固定添加发起人 ID 字段
  cloneFormField.unshift({
    label: $t('bpm.model.field.name'),
    value: ProcessVariableEnum.PROCESS_DEFINITION_NAME,
  });
  cloneFormField.unshift({
    label: $t('common.startTime'),
    value: ProcessVariableEnum.START_TIME,
  });
  cloneFormField.unshift({
    label: $t('common.initiator'),
    value: ProcessVariableEnum.START_USER_ID,
  });
  return cloneFormField;
});
const formFieldOptions4Summary = computed(() => {
  return formField.value.map((item) => {
    return {
      label: item.title,
      value: item.field,
    };
  });
});

/** 兼容以前未配置更多设置的流程 */
function initData() {
  if (!modelData.value.processIdRule) {
    modelData.value.processIdRule = {
      enable: false,
      prefix: '',
      infix: '',
      postfix: '',
      length: 5,
    };
  }
  if (!modelData.value.autoApprovalType) {
    modelData.value.autoApprovalType = BpmAutoApproveType.NONE;
  }
  if (!modelData.value.titleSetting) {
    modelData.value.titleSetting = {
      enable: false,
      title: '',
    };
  }
  if (!modelData.value.summarySetting) {
    modelData.value.summarySetting = {
      enable: false,
      summary: [],
    };
  }
  if (modelData.value.processBeforeTriggerSetting) {
    processBeforeTriggerEnable.value = true;
  }
  if (modelData.value.processAfterTriggerSetting) {
    processAfterTriggerEnable.value = true;
  }
  if (modelData.value.taskBeforeTriggerSetting) {
    taskBeforeTriggerEnable.value = true;
  }
  if (modelData.value.taskAfterTriggerSetting) {
    taskAfterTriggerEnable.value = true;
  }
}

/** 监听表单 ID 变化，加载表单数据 */
watch(
  () => modelData.value.formId,
  async (newFormId) => {
    if (newFormId && modelData.value.formType === BpmModelFormType.NORMAL) {
      const data = await FormApi.getFormDetail(newFormId);
      const result: Array<{ field: string; title: string }> = [];
      if (data.fields) {
        data.fields.forEach((fieldStr: string) => {
          // @ts-ignore
          parseFormFields(JSON.parse(fieldStr), result);
        });
      }
      formField.value = result;
    } else {
      formField.value = [];
    }
  },
  { immediate: true },
);
// 表单引用
const formRef = ref();
/** 表单校验 */
async function validate() {
  await formRef.value?.validate();
}

defineExpose({ initData, validate });
</script>
<template>
  <Form
    ref="formRef"
    :model="modelData"
    :label-col="{ span: 4 }"
    :wrapper-col="{ span: 20 }"
    class="mt-5 px-5"
  >
    <FormItem class="mb-5" :label="$t('bpm.model.extra.submitterPermission')">
      <div class="mt-1 flex flex-col">
        <Checkbox v-model:checked="modelData.allowCancelRunningProcess">
          {{ $t('bpm.model.extra.allowCancel') }}
        </Checkbox>
        <div class="ml-6">
          <TypographyText type="warning">
            {{ $t('bpm.model.extra.allowCancelTip') }}
          </TypographyText>
        </div>
      </div>
    </FormItem>
    <FormItem
      v-if="modelData.processIdRule"
      class="mb-5"
      :label="$t('bpm.model.extra.processCode')"
    >
      <Row :gutter="8" align="middle">
        <Col :span="1">
          <Checkbox v-model:checked="modelData.processIdRule.enable" />
        </Col>
        <Col :span="5">
          <Input
            v-model:value="modelData.processIdRule.prefix"
            :placeholder="$t('bpm.model.extra.prefix')"
            :disabled="!modelData.processIdRule.enable"
          />
        </Col>
        <Col :span="6">
          <Select
            v-model:value="modelData.processIdRule.infix"
            allow-clear
            :placeholder="$t('bpm.model.extra.infix')"
            :disabled="!modelData.processIdRule.enable"
            :options="timeOptions"
          />
        </Col>
        <Col :span="4">
          <Input
            v-model:value="modelData.processIdRule.postfix"
            :placeholder="$t('bpm.model.extra.postfix')"
            :disabled="!modelData.processIdRule.enable"
          />
        </Col>
        <Col :span="4">
          <InputNumber
            v-model:value="modelData.processIdRule.length"
            :min="5"
            :disabled="!modelData.processIdRule.enable"
          />
        </Col>
      </Row>
      <div class="ml-6 mt-2" v-if="modelData.processIdRule.enable">
        <TypographyText type="success">
          {{ $t('bpm.model.extra.codeExample', [numberExample]) }}
        </TypographyText>
      </div>
    </FormItem>
    <FormItem class="mb-5" :label="$t('bpm.model.extra.dedup')">
      <div class="mt-1">
        <TypographyText class="mb-2 block">
          {{ $t('bpm.model.extra.dedupTip') }}
        </TypographyText>
        <RadioGroup v-model:value="modelData.autoApprovalType">
          <Row :gutter="[0, 8]">
            <Col :span="24">
              <Radio :value="0">{{ $t('bpm.model.extra.noAutoPass') }}</Radio>
            </Col>
            <Col :span="24">
              <Radio :value="1">
                {{ $t('bpm.model.extra.passOnce') }}
              </Radio>
            </Col>
            <Col :span="24">
              <Radio :value="2">
                {{ $t('bpm.model.extra.passConsecutive') }}
              </Radio>
            </Col>
          </Row>
        </RadioGroup>
      </div>
    </FormItem>
    <FormItem
      v-if="modelData.titleSetting"
      class="mb-5"
      :label="$t('bpm.model.extra.titleSetting')"
    >
      <div class="mt-1">
        <RadioGroup v-model:value="modelData.titleSetting.enable">
          <Row :gutter="[0, 8]">
            <Col :span="24">
              <Radio :value="false">
                {{ $t('bpm.model.extra.systemDefault') }}
                <TypographyText type="success">
                  {{ $t('bpm.model.extra.showProcessName') }}
                </TypographyText>
              </Radio>
            </Col>
            <Col :span="24">
              <Radio :value="true">
                <div class="inline-flex items-center">
                  {{ $t('bpm.model.extra.customTitle') }}
                  <Tooltip
                    :title="$t('bpm.model.extra.insertFieldTip')"
                    placement="top"
                  >
                    <CircleHelp class="ml-1 size-4 text-gray-500" />
                  </Tooltip>
                </div>
              </Radio>
            </Col>
          </Row>
        </RadioGroup>
        <div class="mt-2">
          <Mentions
            v-if="modelData.titleSetting.enable"
            v-model:value="modelData.titleSetting.title"
            style="width: 100%; max-width: 600px"
            type="textarea"
            prefix="{"
            split="}"
            :options="formFieldOptions4Title"
            :placeholder="$t('bpm.model.extra.insertFieldPlaceholder')"
          />
        </div>
      </div>
    </FormItem>
    <FormItem
      v-if="
        modelData.summarySetting &&
        modelData.formType === BpmModelFormType.NORMAL
      "
      class="mb-5"
      :label="$t('bpm.model.extra.summarySetting')"
    >
      <div class="mt-1">
        <RadioGroup v-model:value="modelData.summarySetting.enable">
          <Row :gutter="[0, 8]">
            <Col :span="24">
              <Radio :value="false">
                {{ $t('bpm.model.extra.systemDefault') }}
                <TypographyText type="secondary">
                  {{ $t('bpm.model.extra.showFirst3Fields') }}
                </TypographyText>
              </Radio>
            </Col>
            <Col :span="24">
              <Radio :value="true">
                {{ $t('bpm.model.extra.customSummary') }}
              </Radio>
            </Col>
          </Row>
        </RadioGroup>
        <div class="mt-2">
          <Select
            v-if="modelData.summarySetting.enable"
            v-model:value="modelData.summarySetting.summary"
            mode="multiple"
            :placeholder="$t('bpm.model.extra.selectFieldsTip')"
            :options="formFieldOptions4Summary"
          />
        </div>
      </div>
    </FormItem>
    <FormItem class="mb-5" :label="$t('bpm.model.extra.beforeProcessNotice')">
      <Row class="mt-1">
        <Col :span="24">
          <div class="flex items-center">
            <Switch
              v-model:checked="processBeforeTriggerEnable"
              @change="handleProcessBeforeTriggerEnableChange"
            />
            <span class="ml-4">{{
              $t('bpm.model.extra.processStartedNotice')
            }}</span>
          </div>
        </Col>
      </Row>
      <Row v-if="processBeforeTriggerEnable">
        <Col :span="24" class="mt-6">
          <HttpRequestSetting
            v-model:setting="modelData.processBeforeTriggerSetting"
            :response-enable="true"
            form-item-prefix="processBeforeTriggerSetting"
          />
        </Col>
      </Row>
    </FormItem>
    <FormItem class="mb-5" :label="$t('bpm.model.extra.afterProcessNotice')">
      <Row class="mt-1">
        <Col :span="24">
          <div class="flex items-center">
            <Switch
              v-model:checked="processAfterTriggerEnable"
              @change="handleProcessAfterTriggerEnableChange"
            />
            <span class="ml-4">{{
              $t('bpm.model.extra.processEndedNotice')
            }}</span>
          </div>
        </Col>
      </Row>
      <Row v-if="processAfterTriggerEnable" class="mt-2">
        <Col :span="24">
          <HttpRequestSetting
            v-model:setting="modelData.processAfterTriggerSetting"
            :response-enable="true"
            form-item-prefix="processAfterTriggerSetting"
          />
        </Col>
      </Row>
    </FormItem>
    <FormItem class="mb-5" :label="$t('bpm.model.extra.beforeTaskNotice')">
      <Row class="mt-1">
        <Col :span="24">
          <div class="flex items-center">
            <Switch
              v-model:checked="taskBeforeTriggerEnable"
              @change="handleTaskBeforeTriggerEnableChange"
            />
            <span class="ml-4">{{
              $t('bpm.model.extra.taskExecutingNotice')
            }}</span>
          </div>
        </Col>
      </Row>
      <Row v-if="taskBeforeTriggerEnable" class="mt-2">
        <Col :span="24">
          <HttpRequestSetting
            v-model:setting="modelData.taskBeforeTriggerSetting"
            :response-enable="true"
            form-item-prefix="taskBeforeTriggerSetting"
          />
        </Col>
      </Row>
    </FormItem>
    <FormItem class="mb-5" :label="$t('bpm.model.extra.afterTaskNotice')">
      <Row class="mt-1">
        <Col :span="24">
          <div class="flex items-center">
            <Switch
              v-model:checked="taskAfterTriggerEnable"
              @change="handleTaskAfterTriggerEnableChange"
            />
            <span class="ml-4">{{
              $t('bpm.model.extra.taskEndedNotice')
            }}</span>
          </div>
        </Col>
      </Row>
      <Row v-if="taskAfterTriggerEnable" class="mt-2">
        <Col :span="24">
          <HttpRequestSetting
            v-model:setting="modelData.taskAfterTriggerSetting"
            :response-enable="true"
            form-item-prefix="taskAfterTriggerSetting"
          />
        </Col>
      </Row>
    </FormItem>
  </Form>
</template>
