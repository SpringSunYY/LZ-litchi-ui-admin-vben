<script lang="ts" setup>
import type { Rule } from 'ant-design-vue/es/form';

import type { BpmFormApi } from '#/api/bpm/form';

import { ref, watch } from 'vue';

import { CircleHelp } from '@vben/icons';

import FormCreate from '@form-create/ant-design-vue';
import {
  Form,
  FormItem,
  Input,
  Radio,
  RadioGroup,
  Select,
  SelectOption,
  Tooltip,
} from 'ant-design-vue';

import { getFormDetail } from '#/api/bpm/form';
import { $t } from '#/locales';
import {
  BpmModelFormType,
  DICT_TYPE,
  getDictOptions,
  setConfAndFields2,
} from '#/utils';

const props = defineProps({
  formList: {
    type: Array<BpmFormApi.FormVO>,
    required: true,
  },
});

const formRef = ref();

// 创建本地数据副本
const modelData = defineModel<any>();

// 表单预览数据
const formPreview = ref({
  formData: {} as any,
  rule: [],
  option: {
    submitBtn: false,
    resetBtn: false,
    formData: {},
  },
});

/** 监听表单ID变化，加载表单数据 */
watch(
  () => modelData.value.formId,
  async (newFormId) => {
    if (newFormId && modelData.value.formType === BpmModelFormType.NORMAL) {
      const data = await getFormDetail(newFormId);
      setConfAndFields2(formPreview.value, data.conf, data.fields);
      // 设置只读
      formPreview.value.rule.forEach((item: any) => {
        item.props = { ...item.props, disabled: true };
      });
    } else {
      formPreview.value.rule = [];
    }
  },
  { immediate: true },
);

const rules: Record<string, Rule[]> = {
  formType: [
    {
      required: true,
      message: $t('bpm.model.basic.formTypeEmpty'),
      trigger: 'blur',
    },
  ],
  formId: [
    {
      required: true,
      message: $t('bpm.model.basic.processFormEmpty'),
      trigger: 'blur',
    },
  ],
  formCustomCreatePath: [
    {
      required: true,
      message: $t('bpm.model.basic.formSubmitRouteEmpty'),
      trigger: 'blur',
    },
  ],
  formCustomViewPath: [
    {
      required: true,
      message: $t('bpm.model.basic.formViewRouteEmpty'),
      trigger: 'blur',
    },
  ],
};

/** 表单校验 */
async function validate() {
  await formRef.value?.validate();
}

defineExpose({ validate });
</script>
<template>
  <Form
    ref="formRef"
    :model="modelData"
    :rules="rules"
    :label-col="{ span: 3 }"
    :wrapper-col="{ span: 21 }"
    class="mt-5"
  >
    <FormItem
      :label="$t('bpm.model.basic.formType')"
      name="formType"
      class="mb-5"
    >
      <RadioGroup v-model:value="modelData.formType">
        <Radio
          v-for="dict in getDictOptions(
            DICT_TYPE.BPM_MODEL_FORM_TYPE,
            'number',
          )"
          :key="dict.value as string"
          :value="dict.value"
        >
          {{ dict.label }}
        </Radio>
      </RadioGroup>
    </FormItem>
    <FormItem
      v-if="modelData.formType === BpmModelFormType.NORMAL"
      :label="$t('bpm.model.basic.processForm')"
      name="formId"
      class="mb-5"
    >
      <Select v-model:value="modelData.formId" clearable>
        <SelectOption
          v-for="form in props.formList"
          :key="form.id"
          :value="form.id"
        >
          {{ form.name }}
        </SelectOption>
        >
      </Select>
    </FormItem>
    <FormItem
      v-if="modelData.formType === BpmModelFormType.CUSTOM"
      :label="$t('bpm.model.basic.formSubmitRoute')"
      name="formCustomCreatePath"
      class="mb-5"
    >
      <div class="flex items-center">
        <Input
          v-model:value="modelData.formCustomCreatePath"
          :placeholder="
            $t('ui.placeholder.input', [$t('bpm.model.basic.formSubmitRoute')])
          "
        />
        <Tooltip
          :title="$t('bpm.model.basic.formSubmitRouteTip')"
          placement="top"
        >
          <CircleHelp class="ml-1 size-5 text-gray-900" />
        </Tooltip>
      </div>
    </FormItem>
    <FormItem
      v-if="modelData.formType === BpmModelFormType.CUSTOM"
      :label="$t('bpm.model.basic.formViewRoute')"
      name="formCustomViewPath"
      class="mb-5"
    >
      <div class="flex items-center">
        <Input
          v-model:value="modelData.formCustomViewPath"
          :placeholder="
            $t('ui.placeholder.input', [$t('bpm.model.basic.formViewRoute')])
          "
        />
        <Tooltip
          :title="$t('bpm.model.basic.formViewRouteTip')"
          placement="top"
        >
          <CircleHelp class="ml-1 size-5 text-gray-900" />
        </Tooltip>
      </div>
    </FormItem>
    <!-- 表单预览 -->
    <div
      v-if="
        modelData.formType === BpmModelFormType.NORMAL &&
        modelData.formId &&
        formPreview.rule.length > 0
      "
      class="mb-5 mt-7 rounded-sm border border-solid border-gray-200 p-5"
    >
      <div class="mb-[15px] flex items-center">
        <div class="mr-[10px] h-[15px] w-[4px] bg-[#1890ff]"></div>
        <span class="text-[15px] font-bold">{{
          $t('bpm.model.basic.formPreview')
        }}</span>
      </div>
      <FormCreate
        v-model:api="formPreview.formData"
        :rule="formPreview.rule"
        :option="formPreview.option"
      />
    </div>
  </Form>
</template>
