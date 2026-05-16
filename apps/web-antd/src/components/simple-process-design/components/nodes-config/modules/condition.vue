<script setup lang="ts">
// @ts-nocheck

import type { Rule } from 'ant-design-vue/es/form';

import type { Ref } from 'vue';

import { computed, inject, reactive, ref } from 'vue';

import { IconifyIcon, Plus, Trash2 } from '@vben/icons';
import { cloneDeep } from '@vben/utils';

import {
  Card,
  Col,
  Form,
  FormItem,
  Input,
  Radio,
  RadioGroup,
  Row,
  Select,
  SelectOption,
  Space,
  Switch,
  Textarea,
  Tooltip,
} from 'ant-design-vue';

import { $t } from '#/locales';
import { BpmModelFormType } from '#/utils';

import {
  COMPARISON_OPERATORS,
  CONDITION_CONFIG_TYPES,
  ConditionType,
  DEFAULT_CONDITION_GROUP_VALUE,
} from '../../../consts';
import { useFormFieldsAndStartUser } from '../../../helpers';

defineOptions({
  name: 'Condition',
});

const props = defineProps({
  modelValue: {
    type: Object,
    required: true,
  },
});

const emit = defineEmits(['update:modelValue']);

const condition = computed({
  get() {
    return props.modelValue;
  },
  set(newValue) {
    emit('update:modelValue', newValue);
  },
});

const formType = inject<Ref<number>>('formType'); // 表单类型
/** 翻译后的比较操作符列表（供模板使用） */
const translatedOperators = computed(() =>
  COMPARISON_OPERATORS.map((op) => ({
    ...op,
    label: $t(op.label),
  })),
);
const conditionConfigTypes = computed(() => {
  return CONDITION_CONFIG_TYPES.filter((item) => {
    // 业务表单暂时去掉条件规则选项
    return !(
      formType?.value === BpmModelFormType.CUSTOM &&
      item.value === ConditionType.RULE
    );
  });
});

/** 条件规则可选择的表单字段 */
const fieldOptions = useFormFieldsAndStartUser();

// 表单校验规则
const formRules: Record<string, Rule[]> = reactive({
  conditionType: [
    {
      required: true,
      message: $t('bpm.simpleProcessDesign.condition.configMethodCannotEmpty'),
      trigger: 'change',
    },
  ],
  conditionExpression: [
    {
      required: true,
      message: $t(
        'bpm.simpleProcessDesign.condition.conditionExpressionCannotEmpty',
      ),
      trigger: ['blur', 'change'],
    },
  ],
});

const formRef = ref(); // 表单 Ref

/** 切换条件配置方式 */
function changeConditionType() {
  if (
    condition.value.conditionType === ConditionType.RULE &&
    !condition.value.conditionGroups
  ) {
    condition.value.conditionGroups = cloneDeep(DEFAULT_CONDITION_GROUP_VALUE);
  }
}

function deleteConditionGroup(conditions: any, index: number) {
  conditions.splice(index, 1);
}

function deleteConditionRule(condition: any, index: number) {
  condition.rules.splice(index, 1);
}

function addConditionRule(condition: any, index: number) {
  const rule = {
    opCode: '==',
    leftSide: undefined,
    rightSide: '',
  };
  condition.rules.splice(index + 1, 0, rule);
}

function addConditionGroup(conditions: any) {
  const condition = {
    and: true,
    rules: [
      {
        opCode: '==',
        leftSide: undefined,
        rightSide: '',
      },
    ],
  };
  conditions.push(condition);
}

async function validate() {
  if (!formRef.value) return false;
  return await formRef.value.validate();
}

defineExpose({ validate });
</script>
<template>
  <Form
    ref="formRef"
    :model="condition"
    :rules="formRules"
    :label-col="{ span: 24 }"
    :wrapper-col="{ span: 24 }"
  >
    <FormItem
      :label="$t('bpm.simpleProcessDesign.condition.configMethod')"
      name="conditionType"
    >
      <RadioGroup
        v-model:value="condition.conditionType"
        @change="changeConditionType"
      >
        <Radio
          v-for="(dict, indexConditionType) in conditionConfigTypes"
          :key="indexConditionType"
          :value="dict.value"
        >
          {{ dict.label }}
        </Radio>
      </RadioGroup>
    </FormItem>
    <FormItem
      v-if="
        condition.conditionType === ConditionType.RULE &&
        condition.conditionGroups
      "
    >
      <div class="mb-5 flex w-full justify-between">
        <div class="flex items-center">
          <div class="mr-4">
            {{ $t('bpm.simpleProcessDesign.condition.conditionGroupRelation') }}
          </div>
          <Switch
            v-model:checked="condition.conditionGroups.and"
            :checked-children="$t('bpm.simpleProcessDesign.condition.and')"
            :un-checked-children="$t('bpm.simpleProcessDesign.condition.or')"
          />
        </div>
      </div>
      <Space direction="vertical" size="small" class="w-11/12 pl-1">
        <template #split>
          {{
            condition.conditionGroups.and
              ? $t('bpm.simpleProcessDesign.condition.and')
              : $t('bpm.simpleProcessDesign.condition.or')
          }}
        </template>
        <Card
          class="group relative w-full hover:border-[#1890ff]"
          v-for="(equation, cIdx) in condition.conditionGroups.conditions"
          :key="cIdx"
        >
          <div
            class="absolute left-0 top-0 z-[1] flex cursor-pointer opacity-0 group-hover:opacity-100"
            v-if="condition.conditionGroups.conditions.length > 1"
          >
            <IconifyIcon
              color="#0089ff"
              icon="ep:circle-close-filled"
              class="size-4"
              @click="
                deleteConditionGroup(condition.conditionGroups.conditions, cIdx)
              "
            />
          </div>
          <template #extra>
            <div class="flex items-center justify-between">
              <div>
                {{ $t('bpm.simpleProcessDesign.condition.conditionGroup') }}
              </div>
              <div class="flex">
                <div class="mr-4">
                  {{ $t('bpm.simpleProcessDesign.condition.ruleRelation') }}
                </div>
                <Switch
                  v-model:checked="equation.and"
                  :checked-children="
                    $t('bpm.simpleProcessDesign.condition.and')
                  "
                  :un-checked-children="
                    $t('bpm.simpleProcessDesign.condition.or')
                  "
                />
              </div>
            </div>
          </template>

          <Row
            :gutter="8"
            class="mb-2"
            v-for="(rule, rIdx) in equation.rules"
            :key="rIdx"
          >
            <Col :span="8">
              <FormItem
                :name="[
                  'conditionGroups',
                  'conditions',
                  cIdx,
                  'rules',
                  rIdx,
                  'leftSide',
                ]"
                :rules="{
                  required: true,
                  message: $t(
                    'bpm.simpleProcessDesign.condition.leftSideCannotEmpty',
                  ),
                  trigger: 'change',
                }"
              >
                <Select
                  v-model:value="rule.leftSide"
                  allow-clear
                  :placeholder="
                    $t(
                      'bpm.simpleProcessDesign.condition.leftSideSelectPlaceholder',
                    )
                  "
                >
                  <SelectOption
                    v-for="(field, fIdx) in fieldOptions"
                    :key="fIdx"
                    :label="field.title"
                    :value="field.field"
                    :disabled="!field.required"
                  >
                    <Tooltip
                      :title="
                        $t(
                          'bpm.simpleProcessDesign.condition.formFieldNotRequiredTip',
                        )
                      "
                      placement="right"
                      v-if="!field.required"
                    >
                      <span>{{ field.title }}</span>
                    </Tooltip>
                    <template v-else>{{ field.title }}</template>
                  </SelectOption>
                </Select>
              </FormItem>
            </Col>
            <Col :span="6">
              <Select
                v-model:value="rule.opCode"
                :placeholder="
                  $t('bpm.simpleProcessDesign.condition.selectOperator')
                "
              >
                <SelectOption
                  v-for="operator in translatedOperators"
                  :key="operator.value"
                  :label="operator.label"
                  :value="operator.value"
                >
                  {{ operator.label }}
                </SelectOption>
              </Select>
            </Col>
            <Col :span="7">
              <FormItem
                :name="[
                  'conditionGroups',
                  'conditions',
                  cIdx,
                  'rules',
                  rIdx,
                  'rightSide',
                ]"
                :rules="{
                  required: true,
                  message: $t(
                    'bpm.simpleProcessDesign.condition.rightSideCannotEmpty',
                  ),
                  trigger: ['blur', 'change'],
                }"
              >
                <Input
                  v-model:value="rule.rightSide"
                  :placeholder="
                    $t('bpm.simpleProcessDesign.condition.rightSidePlaceholder')
                  "
                />
              </FormItem>
            </Col>
            <Col :span="3">
              <div class="flex h-[32px] items-center">
                <Trash2
                  v-if="equation.rules.length > 1"
                  class="mr-2 size-4 cursor-pointer text-red-500"
                  @click="deleteConditionRule(equation, rIdx)"
                />
                <Plus
                  class="size-4 cursor-pointer text-blue-500"
                  @click="addConditionRule(equation, rIdx)"
                />
              </div>
            </Col>
          </Row>
        </Card>
      </Space>
      <div
        :title="$t('bpm.simpleProcessDesign.condition.addConditionGroup')"
        class="mt-4 cursor-pointer"
      >
        <Plus
          class="size-[24px] text-blue-500"
          @click="addConditionGroup(condition.conditionGroups?.conditions)"
        />
      </div>
    </FormItem>
    <FormItem
      v-if="condition.conditionType === ConditionType.EXPRESSION"
      :label="$t('bpm.simpleProcessDesign.condition.expression')"
      name="conditionExpression"
    >
      <Textarea
        v-model:value="condition.conditionExpression"
        :placeholder="
          $t('bpm.simpleProcessDesign.condition.expressionPlaceholder')
        "
        allow-clear
        :auto-size="{ minRows: 3, maxRows: 6 }"
      />
    </FormItem>
  </Form>
</template>
