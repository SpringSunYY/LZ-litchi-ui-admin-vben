<script setup lang="ts">
import type { Rule } from 'ant-design-vue/es/form';

import type { IOParameter, SimpleFlowNode } from '../../../consts';

import { computed, onMounted, reactive, ref } from 'vue';

import { useVbenDrawer } from '@vben/common-ui';
import { IconifyIcon } from '@vben/icons';

import {
  Button,
  Col,
  DatePicker,
  Divider,
  Form,
  FormItem,
  Input,
  InputNumber,
  Radio,
  RadioButton,
  RadioGroup,
  Row,
  Select,
  SelectOption,
  Switch,
} from 'ant-design-vue';

import { getFormDetail } from '#/api/bpm/form';
import { getModelList } from '#/api/bpm/model';
import { parseFormFields } from '#/components/form-create';
import { $t } from '#/locales';
import { BpmNodeTypeEnum } from '#/utils';

import {
  CHILD_PROCESS_MULTI_INSTANCE_SOURCE_TYPE,
  CHILD_PROCESS_START_USER_EMPTY_TYPE,
  CHILD_PROCESS_START_USER_TYPE,
  ChildProcessMultiInstanceSourceTypeEnum,
  ChildProcessStartUserEmptyTypeEnum,
  ChildProcessStartUserTypeEnum,
  DELAY_TYPE,
  DelayTypeEnum,
  TIME_UNIT_TYPES,
  TimeUnitType,
} from '../../../consts';
import { useFormFields, useNodeName, useWatchNode } from '../../helpers';
import { convertTimeUnit } from './utils';

defineOptions({ name: 'ChildProcessNodeConfig' });

const props = defineProps<{
  flowNode: SimpleFlowNode;
}>();

const [Drawer, drawerApi] = useVbenDrawer({
  header: true,
  closable: true,
  title: '',
  onConfirm() {
    saveConfig();
  },
});

// 当前节点
const currentNode = useWatchNode(props);
/** 节点名称配置 */
const { nodeName, showInput, clickIcon, changeNodeName, inputRef } =
  useNodeName(BpmNodeTypeEnum.CHILD_PROCESS_NODE);
// 激活的 Tab 标签页
const activeTabName = ref('child');
// 子流程表单配置
const formRef = ref(); // 表单 Ref
// 表单校验规则
const formRules: Record<string, Rule[]> = reactive({
  async: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.childProcess.asyncCannotEmpty'),
      trigger: 'change',
    },
  ],
  calledProcessDefinitionKey: [
    {
      required: true,
      message: $t(
        'bpm.simpleProcessDesign.childProcess.childProcessCannotEmpty',
      ),
      trigger: 'change',
    },
  ],
  skipStartUserNode: [
    {
      required: true,
      message: $t(
        'bpm.simpleProcessDesign.childProcess.skipStartNodeCannotEmpty',
      ),
      trigger: 'change',
    },
  ],
  startUserType: [
    {
      required: true,
      message: $t(
        'bpm.simpleProcessDesign.childProcess.childProcessInitiatorCannotEmpty',
      ),
      trigger: 'change',
    },
  ],
  startUserEmptyType: [
    {
      required: true,
      message: $t(
        'bpm.simpleProcessDesign.childProcess.whenChildEmptyCannotEmpty',
      ),
      trigger: 'change',
    },
  ],
  startUserFormField: [
    {
      required: true,
      message: $t(
        'bpm.simpleProcessDesign.childProcess.childFormUserFieldCannotEmpty',
      ),
      trigger: 'change',
    },
  ],
  timeoutEnable: [
    {
      required: true,
      message: $t(
        'bpm.simpleProcessDesign.childProcess.timeoutEnableCannotEmpty',
      ),
      trigger: 'change',
    },
  ],
  timeoutType: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.childProcess.timeoutCannotEmpty'),
      trigger: 'change',
    },
  ],
  timeDuration: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.childProcess.timeoutCannotEmpty'),
      trigger: 'change',
    },
  ],
  dateTime: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.childProcess.timeoutCannotEmpty'),
      trigger: 'change',
    },
  ],
  multiInstanceEnable: [
    {
      required: true,
      message: $t(
        'bpm.simpleProcessDesign.childProcess.multiInstanceEnableCannotEmpty',
      ),
      trigger: 'change',
    },
  ],
  sequential: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.childProcess.sequentialCannotEmpty'),
      trigger: 'change',
    },
  ],
  multiInstanceSourceType: [
    {
      required: true,
      message: $t(
        'bpm.simpleProcessDesign.childProcess.instanceQuantityCannotEmpty',
      ),
      trigger: 'change',
    },
  ],
  approveRatio: [
    {
      required: true,
      message: $t(
        'bpm.simpleProcessDesign.childProcess.completeRatioCannotEmpty',
      ),
      trigger: 'change',
    },
  ],
});

type ChildProcessFormType = {
  approveRatio: number;
  async: boolean;
  calledProcessDefinitionKey: string;
  dateTime: string;
  inVariables?: IOParameter[];
  multiInstanceEnable: boolean;
  multiInstanceSource: string;
  multiInstanceSourceType: ChildProcessMultiInstanceSourceTypeEnum;
  outVariables?: IOParameter[];
  sequential: boolean;
  skipStartUserNode: boolean;
  startUserEmptyType: ChildProcessStartUserEmptyTypeEnum;
  startUserFormField: string;
  startUserType: ChildProcessStartUserTypeEnum;
  timeDuration: number;
  timeoutEnable: boolean;
  timeoutType: DelayTypeEnum;
  timeUnit: TimeUnitType;
};

const configForm = ref<ChildProcessFormType>({
  async: false,
  calledProcessDefinitionKey: '',
  skipStartUserNode: false,
  inVariables: [],
  outVariables: [],
  startUserType: ChildProcessStartUserTypeEnum.MAIN_PROCESS_START_USER,
  startUserEmptyType:
    ChildProcessStartUserEmptyTypeEnum.MAIN_PROCESS_START_USER,
  startUserFormField: '',
  timeoutEnable: false,
  timeoutType: DelayTypeEnum.FIXED_TIME_DURATION,
  timeDuration: 1,
  timeUnit: TimeUnitType.HOUR,
  dateTime: '',
  multiInstanceEnable: false,
  sequential: false,
  approveRatio: 100,
  multiInstanceSourceType:
    ChildProcessMultiInstanceSourceTypeEnum.FIXED_QUANTITY,
  multiInstanceSource: '',
});

const childProcessOptions = ref<any[]>([]);
// 主流程表单字段选项
const formFieldOptions = useFormFields();
/** 子流程发起人表单可选项 : 只有用户选择组件字段才能被选择 */
const startUserFormFieldOptions = computed(() => {
  return formFieldOptions.filter((item) => item.type === 'UserSelect');
});
// 数字表单字段选项
const digitalFormFieldOptions = computed(() => {
  return formFieldOptions.filter((item) => item.type === 'inputNumber');
});
// 多选表单字段选项
const multiFormFieldOptions = computed(() => {
  return formFieldOptions.filter(
    (item) => item.type === 'select' || item.type === 'checkbox',
  );
});
const childFormFieldOptions = ref<any[]>([]);

/** 保存配置 */
const saveConfig = async () => {
  activeTabName.value = 'child';
  if (!formRef.value) return false;
  const valid = await formRef.value.validate().catch(() => false);
  if (!valid) return false;

  const childInfo = childProcessOptions.value.find(
    (option) => option.key === configForm.value.calledProcessDefinitionKey,
  );

  currentNode.value.name = nodeName.value!;
  if (currentNode.value.childProcessSetting) {
    // 1. 是否异步
    currentNode.value.childProcessSetting.async = configForm.value.async;
    // 2. 调用流程
    currentNode.value.childProcessSetting.calledProcessDefinitionKey =
      childInfo.key;
    currentNode.value.childProcessSetting.calledProcessDefinitionName =
      childInfo.name;
    // 3. 是否跳过发起人
    currentNode.value.childProcessSetting.skipStartUserNode =
      configForm.value.skipStartUserNode;
    // 4. 主->子变量
    currentNode.value.childProcessSetting.inVariables =
      configForm.value.inVariables;
    // 5. 子->主变量
    currentNode.value.childProcessSetting.outVariables =
      configForm.value.outVariables;
    // 6. 发起人设置
    currentNode.value.childProcessSetting.startUserSetting.type =
      configForm.value.startUserType;
    currentNode.value.childProcessSetting.startUserSetting.emptyType =
      configForm.value.startUserEmptyType;
    currentNode.value.childProcessSetting.startUserSetting.formField =
      configForm.value.startUserFormField;
    // 7. 超时设置
    currentNode.value.childProcessSetting.timeoutSetting = {
      enable: configForm.value.timeoutEnable,
    };
    if (configForm.value.timeoutEnable) {
      currentNode.value.childProcessSetting.timeoutSetting.type =
        configForm.value.timeoutType;
      if (configForm.value.timeoutType === DelayTypeEnum.FIXED_TIME_DURATION) {
        currentNode.value.childProcessSetting.timeoutSetting.timeExpression =
          getIsoTimeDuration();
      }
      if (configForm.value.timeoutType === DelayTypeEnum.FIXED_DATE_TIME) {
        currentNode.value.childProcessSetting.timeoutSetting.timeExpression =
          configForm.value.dateTime;
      }
    }
    // 8. 多实例设置
    currentNode.value.childProcessSetting.multiInstanceSetting = {
      enable: configForm.value.multiInstanceEnable,
    };
    if (configForm.value.multiInstanceEnable) {
      currentNode.value.childProcessSetting.multiInstanceSetting.sequential =
        configForm.value.sequential;
      currentNode.value.childProcessSetting.multiInstanceSetting.approveRatio =
        configForm.value.approveRatio;
      currentNode.value.childProcessSetting.multiInstanceSetting.sourceType =
        configForm.value.multiInstanceSourceType;
      currentNode.value.childProcessSetting.multiInstanceSetting.source =
        configForm.value.multiInstanceSource;
    }
  }

  currentNode.value.showText = $t(
    'bpm.simpleProcessDesign.childProcess.callSubProcess',
    [childInfo.name],
  );
  drawerApi.close();
  return true;
};

// 显示子流程节点配置， 由父组件传过来
const showChildProcessNodeConfig = (node: SimpleFlowNode) => {
  nodeName.value = node.name;
  if (node.childProcessSetting) {
    // 1. 是否异步
    configForm.value.async = node.childProcessSetting.async;
    // 2. 调用流程
    configForm.value.calledProcessDefinitionKey =
      node.childProcessSetting?.calledProcessDefinitionKey;
    // 3. 是否跳过发起人
    configForm.value.skipStartUserNode =
      node.childProcessSetting.skipStartUserNode;
    // 4. 主->子变量
    configForm.value.inVariables = node.childProcessSetting.inVariables ?? [];
    // 5. 子->主变量
    configForm.value.outVariables = node.childProcessSetting.outVariables ?? [];
    // 6. 发起人设置
    configForm.value.startUserType =
      node.childProcessSetting.startUserSetting.type;
    configForm.value.startUserEmptyType =
      node.childProcessSetting.startUserSetting.emptyType ??
      ChildProcessStartUserEmptyTypeEnum.MAIN_PROCESS_START_USER;
    configForm.value.startUserFormField =
      node.childProcessSetting.startUserSetting.formField ?? '';
    // 7. 超时设置
    configForm.value.timeoutEnable =
      node.childProcessSetting.timeoutSetting.enable ?? false;
    if (configForm.value.timeoutEnable) {
      configForm.value.timeoutType =
        node.childProcessSetting.timeoutSetting.type ??
        DelayTypeEnum.FIXED_TIME_DURATION;
      // 固定时长
      if (configForm.value.timeoutType === DelayTypeEnum.FIXED_TIME_DURATION) {
        const strTimeDuration =
          node.childProcessSetting.timeoutSetting.timeExpression ?? '';
        const parseTime = strTimeDuration.slice(2, -1);
        const parseTimeUnit = strTimeDuration.slice(-1);
        configForm.value.timeDuration = Number.parseInt(parseTime);
        configForm.value.timeUnit = convertTimeUnit(parseTimeUnit);
      }
      // 固定日期时间
      if (configForm.value.timeoutType === DelayTypeEnum.FIXED_DATE_TIME) {
        configForm.value.dateTime =
          node.childProcessSetting.timeoutSetting.timeExpression ?? '';
      }
    }
    // 8. 多实例设置
    configForm.value.multiInstanceEnable =
      node.childProcessSetting.multiInstanceSetting.enable ?? false;
    if (configForm.value.multiInstanceEnable) {
      configForm.value.sequential =
        node.childProcessSetting.multiInstanceSetting.sequential ?? false;
      configForm.value.approveRatio =
        node.childProcessSetting.multiInstanceSetting.approveRatio ?? 100;
      configForm.value.multiInstanceSourceType =
        node.childProcessSetting.multiInstanceSetting.sourceType ??
        ChildProcessMultiInstanceSourceTypeEnum.FIXED_QUANTITY;
      configForm.value.multiInstanceSource =
        node.childProcessSetting.multiInstanceSetting.source ?? '';
    }
  }
  loadFormInfo();
  drawerApi.open();
};

/** 暴露方法给父组件 */
defineExpose({ showChildProcessNodeConfig });

const addVariable = (arr?: IOParameter[]) => {
  arr?.push({
    source: '',
    target: '',
  });
};

const deleteVariable = (index: number, arr?: IOParameter[]) => {
  arr?.splice(index, 1);
};

const handleCalledElementChange = () => {
  configForm.value.inVariables = [];
  configForm.value.outVariables = [];
  loadFormInfo();
};

const loadFormInfo = async () => {
  const childInfo = childProcessOptions.value.find(
    (option) => option.key === configForm.value.calledProcessDefinitionKey,
  );
  if (!childInfo) return;

  const formInfo = await getFormDetail(childInfo.formId);
  childFormFieldOptions.value = [];
  if (formInfo.fields) {
    formInfo.fields.forEach((fieldStr: string) => {
      parseFormFields(JSON.parse(fieldStr), childFormFieldOptions.value);
    });
  }
};

const getIsoTimeDuration = () => {
  let strTimeDuration = 'PT';
  if (configForm.value.timeUnit === TimeUnitType.MINUTE) {
    strTimeDuration += `${configForm.value.timeDuration}M`;
  }
  if (configForm.value.timeUnit === TimeUnitType.HOUR) {
    strTimeDuration += `${configForm.value.timeDuration}H`;
  }
  if (configForm.value.timeUnit === TimeUnitType.DAY) {
    strTimeDuration += `${configForm.value.timeDuration}D`;
  }
  return strTimeDuration;
};

const handleMultiInstanceSourceTypeChange = () => {
  configForm.value.multiInstanceSource = '';
};

onMounted(async () => {
  try {
    childProcessOptions.value = await getModelList(undefined);
  } catch (error) {
    // 获取模型列表失败
    console.error($t('bpm.simpleProcessDesign.childProcess.loadFailed'), error);
  }
});
</script>

<template>
  <Drawer class="w-1/3">
    <template #title>
      <div class="config-header">
        <Input
          v-if="showInput"
          ref="inputRef"
          type="text"
          class="focus:border-blue-500 focus:shadow-[0_0_0_2px_rgba(24,144,255,0.2)] focus:outline-none"
          @blur="changeNodeName()"
          @press-enter="changeNodeName()"
          v-model:value="nodeName"
          :placeholder="nodeName"
        />
        <div v-else class="node-name">
          {{ nodeName }}
          <IconifyIcon class="ml-1" icon="lucide:edit-3" @click="clickIcon()" />
        </div>
      </div>
    </template>

    <div>
      <Form
        ref="formRef"
        :model="configForm"
        :label-wrap="true"
        :label-col="{ span: 24 }"
        :wrapper-col="{ span: 24 }"
        :rules="formRules"
      >
        <FormItem
          :label="$t('bpm.simpleProcessDesign.childProcess.asyncExecute')"
          name="async"
          label-align="left"
          :label-col="{ span: 8 }"
          :wrapper-col="{ span: 4 }"
        >
          <Switch
            v-model:checked="configForm.async"
            :checked-children="$t('bpm.simpleProcessDesign.switch.yes')"
            :un-checked-children="$t('bpm.simpleProcessDesign.switch.no')"
          />
        </FormItem>
        <FormItem
          :label="$t('bpm.simpleProcessDesign.action.selectChildProcess')"
          name="calledProcessDefinitionKey"
        >
          <Select
            v-model:value="configForm.calledProcessDefinitionKey"
            allow-clear
            @change="handleCalledElementChange"
          >
            <SelectOption
              v-for="(item, index) in childProcessOptions"
              :key="index"
              :value="item.key"
            >
              {{ item.name }}
            </SelectOption>
          </Select>
        </FormItem>
        <FormItem
          :label="$t('bpm.simpleProcessDesign.childProcess.skipStartNode')"
          name="skipStartUserNode"
          label-align="left"
          :label-col="{ span: 12 }"
          :wrapper-col="{ span: 4 }"
        >
          <Switch
            v-model:checked="configForm.skipStartUserNode"
            :checked-children="$t('bpm.simpleProcessDesign.action.skip')"
            :un-checked-children="$t('bpm.simpleProcessDesign.action.notSkip')"
          />
        </FormItem>
        <FormItem
          :label="$t('bpm.simpleProcessDesign.action.mainToChildVariable')"
          name="inVariables"
        >
          <div
            class="flex"
            v-for="(item, index) in configForm.inVariables"
            :key="index"
          >
            <div class="mr-2">
              <FormItem
                :name="['inVariables', index, 'source']"
                :rules="{
                  required: true,
                  message: $t(
                    'bpm.simpleProcessDesign.childProcess.variableCannotEmpty',
                  ),
                  trigger: 'blur',
                }"
              >
                <Select class="!w-40" v-model:value="item.source">
                  <SelectOption
                    v-for="(field, fIdx) in formFieldOptions"
                    :key="fIdx"
                    :value="field.field"
                  >
                    {{ field.title }}
                  </SelectOption>
                </Select>
              </FormItem>
            </div>
            <div class="mr-2">
              <FormItem
                :name="['inVariables', index, 'target']"
                :rules="{
                  required: true,
                  message: $t(
                    'bpm.simpleProcessDesign.childProcess.variableCannotEmpty',
                  ),
                  trigger: 'blur',
                }"
              >
                <Select class="!w-40" v-model:value="item.target">
                  <SelectOption
                    v-for="(field, fIdx) in childFormFieldOptions"
                    :key="fIdx"
                    :value="field.field"
                  >
                    {{ field.title }}
                  </SelectOption>
                </Select>
              </FormItem>
            </div>
            <div class="mr-1 flex h-8 items-center">
              <IconifyIcon
                icon="lucide:trash-2"
                :size="18"
                class="cursor-pointer text-red-500"
                @click="deleteVariable(index, configForm.inVariables)"
              />
            </div>
          </div>
          <Button
            type="link"
            @click="addVariable(configForm.inVariables)"
            class="flex items-center"
          >
            <template #icon>
              <IconifyIcon class="size-4" icon="lucide:plus" />
            </template>
            <!-- 添加一行 -->
            {{ $t('bpm.simpleProcessDesign.childProcess.addRow') }}
          </Button>
        </FormItem>
        <FormItem
          v-if="configForm.async === false"
          :label="$t('bpm.simpleProcessDesign.action.childToMainVariable')"
          name="outVariables"
        >
          <div
            class="flex"
            v-for="(item, index) in configForm.outVariables"
            :key="index"
          >
            <div class="mr-2">
              <FormItem
                :name="['outVariables', index, 'source']"
                :rules="{
                  required: true,
                  message: $t(
                    'bpm.simpleProcessDesign.childProcess.variableCannotEmpty',
                  ),
                  trigger: 'blur',
                }"
              >
                <Select class="!w-40" v-model:value="item.source">
                  <SelectOption
                    v-for="(field, fIdx) in childFormFieldOptions"
                    :key="fIdx"
                    :value="field.field"
                  >
                    {{ field.title }}
                  </SelectOption>
                </Select>
              </FormItem>
            </div>
            <div class="mr-2">
              <FormItem
                :name="['outVariables', index, 'target']"
                :rules="{
                  required: true,
                  message: $t(
                    'bpm.simpleProcessDesign.childProcess.variableCannotEmpty',
                  ),
                  trigger: 'blur',
                }"
              >
                <Select class="!w-40" v-model:value="item.target">
                  <SelectOption
                    v-for="(field, fIdx) in formFieldOptions"
                    :key="fIdx"
                    :value="field.field"
                  >
                    {{ field.title }}
                  </SelectOption>
                </Select>
              </FormItem>
            </div>
            <div class="mr-1 flex h-8 items-center">
              <IconifyIcon
                icon="lucide:trash-2"
                :size="18"
                class="cursor-pointer text-red-500"
                @click="deleteVariable(index, configForm.outVariables)"
              />
            </div>
          </div>
          <Button
            type="link"
            @click="addVariable(configForm.outVariables)"
            class="flex items-center"
          >
            <template #icon>
              <IconifyIcon class="size-4" icon="lucide:plus" />
            </template>
            <!-- 添加一行 -->
            {{ $t('bpm.simpleProcessDesign.childProcess.addRow') }}
          </Button>
        </FormItem>
        <FormItem
          :label="$t('bpm.simpleProcessDesign.action.childProcessInitiator')"
          name="startUserType"
        >
          <RadioGroup v-model:value="configForm.startUserType">
            <Radio
              v-for="item in CHILD_PROCESS_START_USER_TYPE"
              :key="item.value"
              :value="item.value"
            >
              {{ item.label }}
            </Radio>
          </RadioGroup>
        </FormItem>
        <FormItem
          v-if="
            configForm.startUserType === ChildProcessStartUserTypeEnum.FROM_FORM
          "
          :label="$t('bpm.simpleProcessDesign.action.childFormUserField')"
          name="startUserFormField"
        >
          <Select v-model:value="configForm.startUserFormField" allow-clear>
            <SelectOption
              v-for="(field, fIdx) in startUserFormFieldOptions"
              :key="fIdx"
              :label="field.title"
              :value="field.field"
            >
              {{ field.title }}
            </SelectOption>
          </Select>
        </FormItem>
        <FormItem
          v-if="
            configForm.startUserType === ChildProcessStartUserTypeEnum.FROM_FORM
          "
          :label="$t('bpm.simpleProcessDesign.action.whenChildEmpty')"
          name="startUserEmptyType"
        >
          <RadioGroup v-model:value="configForm.startUserEmptyType">
            <Radio
              v-for="item in CHILD_PROCESS_START_USER_EMPTY_TYPE"
              :key="item.value"
              :value="item.value"
            >
              {{ item.label }}
            </Radio>
          </RadioGroup>
        </FormItem>

        <Divider>
          {{ $t('bpm.simpleProcessDesign.childProcess.timeoutSetting') }}
        </Divider>
        <FormItem
          :label="$t('bpm.simpleProcessDesign.action.enableSwitch')"
          name="timeoutEnable"
          label-align="left"
          :label-col="{ span: 5 }"
          :wrapper-col="{ span: 4 }"
        >
          <Switch
            v-model:checked="configForm.timeoutEnable"
            :checked-children="$t('bpm.simpleProcessDesign.action.open')"
            :un-checked-children="$t('bpm.simpleProcessDesign.action.close')"
          />
        </FormItem>
        <div v-if="configForm.timeoutEnable">
          <FormItem name="timeoutType">
            <RadioGroup v-model:value="configForm.timeoutType">
              <RadioButton
                v-for="item in DELAY_TYPE"
                :key="item.value"
                :value="item.value"
              >
                {{ item.label }}
              </RadioButton>
            </RadioGroup>
          </FormItem>
          <FormItem
            v-if="configForm.timeoutType === DelayTypeEnum.FIXED_TIME_DURATION"
          >
            <Row :gutter="8">
              <Col>
                <!-- 当超过 -->
                <span class="inline-flex h-8 items-center">{{
                  $t('bpm.simpleProcessDesign.action.overTime')
                }}</span>
              </Col>
              <Col>
                <FormItem name="timeDuration">
                  <InputNumber
                    class="w-24"
                    v-model:value="configForm.timeDuration"
                    :min="1"
                    controls-position="right"
                  />
                </FormItem>
              </Col>
              <Col>
                <Select v-model:value="configForm.timeUnit" class="w-24">
                  <SelectOption
                    v-for="item in TIME_UNIT_TYPES"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value"
                  >
                    {{ item.label }}
                  </SelectOption>
                </Select>
              </Col>
              <Col>
                <!-- 后进入下一节点 -->
                <span class="inline-flex h-8 items-center">{{
                  $t('bpm.simpleProcessDesign.delayType.afterEnterNextNode')
                }}</span>
              </Col>
            </Row>
          </FormItem>
          <FormItem
            v-if="configForm.timeoutType === DelayTypeEnum.FIXED_DATE_TIME"
            name="dateTime"
          >
            <Row :gutter="8">
              <Col>
                <DatePicker
                  class="mr-2"
                  v-model:value="configForm.dateTime"
                  type="date"
                  show-time
                  :placeholder="
                    $t('bpm.simpleProcessDesign.placeholder.selectTime')
                  "
                  value-format="YYYY-MM-DDTHH:mm:ss"
                />
              </Col>
              <Col>
                <!-- 后进入下一节点 -->
                <span class="inline-flex h-8 items-center">
                  {{
                    $t('bpm.simpleProcessDesign.delayType.afterEnterNextNode')
                  }}
                </span>
              </Col>
            </Row>
          </FormItem>
        </div>

        <!-- 多实例设置 -->
        <Divider>
          {{ $t('bpm.simpleProcessDesign.action.multiInstanceSetting') }}
        </Divider>
        <FormItem
          :label="$t('bpm.simpleProcessDesign.action.enableSwitch')"
          label-align="left"
          name="multiInstanceEnable"
          :label-col="{ span: 5 }"
          :wrapper-col="{ span: 4 }"
        >
          <Switch
            v-model:checked="configForm.multiInstanceEnable"
            :checked-children="$t('bpm.simpleProcessDesign.action.open')"
            :un-checked-children="$t('bpm.simpleProcessDesign.action.close')"
          />
        </FormItem>
        <div v-if="configForm.multiInstanceEnable">
          <FormItem
            name="sequential"
            :label="$t('bpm.simpleProcessDesign.childProcess.serial')"
            label-align="left"
            :label-col="{ span: 5 }"
            :wrapper-col="{ span: 4 }"
          >
            <Switch
              v-model:checked="configForm.sequential"
              :checked-children="$t('bpm.simpleProcessDesign.switch.yes')"
              :un-checked-children="$t('bpm.simpleProcessDesign.switch.no')"
            />
          </FormItem>
          <FormItem
            name="approveRatio"
            :label="$t('bpm.simpleProcessDesign.childProcess.completeRatioTip')"
            label-align="left"
            :label-col="{ span: 6 }"
            :wrapper-col="{ span: 4 }"
          >
            <InputNumber
              v-model:value="configForm.approveRatio"
              :min="10"
              :max="100"
              :step="10"
            />
          </FormItem>
          <FormItem
            name="multiInstanceSourceType"
            :label="$t('bpm.simpleProcessDesign.childProcess.instanceQuantity')"
            label-align="left"
            :label-col="{ span: 6 }"
            :wrapper-col="{ span: 12 }"
          >
            <Select
              v-model:value="configForm.multiInstanceSourceType"
              @change="handleMultiInstanceSourceTypeChange"
            >
              <SelectOption
                v-for="item in CHILD_PROCESS_MULTI_INSTANCE_SOURCE_TYPE"
                :key="item.value"
                :label="item.label"
                :value="item.value"
              >
                {{ item.label }}
              </SelectOption>
            </Select>
          </FormItem>
          <FormItem
            v-if="
              configForm.multiInstanceSourceType ===
              ChildProcessMultiInstanceSourceTypeEnum.FIXED_QUANTITY
            "
            name="multiInstanceSource"
            :label="$t('bpm.simpleProcessDesign.childProcess.fixedQuantity')"
            label-align="left"
            :label-col="{ span: 6 }"
            :wrapper-col="{ span: 12 }"
            :rules="{
              required: true,
              message: $t(
                'bpm.simpleProcessDesign.childProcess.fixedQuantityCannotEmpty',
              ),
              trigger: 'change',
            }"
          >
            <InputNumber
              v-model:value="configForm.multiInstanceSource"
              :min="1"
            />
          </FormItem>
          <FormItem
            v-if="
              configForm.multiInstanceSourceType ===
              ChildProcessMultiInstanceSourceTypeEnum.NUMBER_FORM
            "
            name="multiInstanceSource"
            :label="$t('bpm.simpleProcessDesign.childProcess.numberForm')"
            label-align="left"
            :label-col="{ span: 6 }"
            :wrapper-col="{ span: 12 }"
            :rules="{
              required: true,
              message: $t(
                'bpm.simpleProcessDesign.childProcess.numberFormCannotEmpty',
              ),
              trigger: 'change',
            }"
          >
            <Select v-model:value="configForm.multiInstanceSource">
              <SelectOption
                v-for="(field, fIdx) in digitalFormFieldOptions"
                :key="fIdx"
                :label="field.title"
                :value="field.field"
              >
                {{ field.title }}
              </SelectOption>
            </Select>
          </FormItem>
          <FormItem
            v-if="
              configForm.multiInstanceSourceType ===
              ChildProcessMultiInstanceSourceTypeEnum.MULTIPLE_FORM
            "
            name="multiInstanceSource"
            :label="$t('bpm.simpleProcessDesign.childProcess.multiForm')"
            label-align="left"
            :label-col="{ span: 6 }"
            :wrapper-col="{ span: 12 }"
            :rules="{
              required: true,
              message: $t(
                'bpm.simpleProcessDesign.childProcess.multiFormCannotEmpty',
              ),
              trigger: 'change',
            }"
          >
            <Select v-model:value="configForm.multiInstanceSource">
              <SelectOption
                v-for="(field, fIdx) in multiFormFieldOptions"
                :key="fIdx"
                :label="field.title"
                :value="field.field"
              >
                {{ field.title }}
              </SelectOption>
            </Select>
          </FormItem>
        </div>
      </Form>
    </div>
  </Drawer>
</template>

<style scoped></style>
