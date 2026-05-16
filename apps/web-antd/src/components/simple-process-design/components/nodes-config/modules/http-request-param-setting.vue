<script setup lang="ts">
// @ts-nocheck
import type { HttpRequestParam } from '../../../consts';

import { Plus, Trash2 } from '@vben/icons';

import {
  Button,
  Col,
  FormItem,
  Input,
  Row,
  Select,
  SelectOption,
} from 'ant-design-vue';

import { $t } from '#/locales';

import {
  BPM_HTTP_REQUEST_PARAM_TYPES,
  BpmHttpRequestParamTypeEnum,
} from '../../../consts';
import { useFormFieldsAndStartUser } from '../../../helpers';

defineOptions({ name: 'HttpRequestParamSetting' });

const props = defineProps({
  header: {
    type: Array as () => HttpRequestParam[],
    required: false,
    default: () => [],
  },
  body: {
    type: Array as () => HttpRequestParam[],
    required: false,
    default: () => [],
  },
  bind: {
    type: String,
    required: true,
  },
});

// 流程表单字段，发起人字段
const formFieldOptions = useFormFieldsAndStartUser();

/** 添加请求配置项 */
function addHttpRequestParam(arr: HttpRequestParam[]) {
  arr.push({
    key: '',
    type: BpmHttpRequestParamTypeEnum.FIXED_VALUE,
    value: '',
  });
}

/** 删除请求配置项 */
function deleteHttpRequestParam(arr: HttpRequestParam[], index: number) {
  arr.splice(index, 1);
}
</script>
<template>
  <FormItem
    :label="$t('bpm.simpleProcessDesign.httpRequest.header')"
    :label-col="{ span: 24 }"
    :wrapper-col="{ span: 24 }"
  >
    <Row :gutter="8" v-for="(item, index) in props.header" :key="index">
      <Col :span="7">
        <FormItem
          :name="[bind, 'header', index, 'key']"
          :rules="{
            required: true,
            message: $t(
              'bpm.simpleProcessDesign.httpRequest.paramNameCannotEmpty',
            ),
            trigger: ['blur', 'change'],
          }"
        >
          <Input
            :placeholder="
              $t('bpm.simpleProcessDesign.httpRequest.paramNameCannotEmpty')
            "
            v-model:value="item.key"
          />
        </FormItem>
      </Col>
      <Col :span="5">
        <Select v-model:value="item.type">
          <SelectOption
            v-for="types in BPM_HTTP_REQUEST_PARAM_TYPES"
            :key="types.value"
            :label="types.label"
            :value="types.value"
          >
            {{ types.label }}
          </SelectOption>
        </Select>
      </Col>
      <Col :span="10">
        <FormItem
          :name="[bind, 'header', index, 'value']"
          :rules="{
            required: true,
            message: $t(
              'bpm.simpleProcessDesign.httpRequest.paramValueCannotEmpty',
            ),
            trigger: ['blur', 'change'],
          }"
          v-if="item.type === BpmHttpRequestParamTypeEnum.FIXED_VALUE"
        >
          <Input
            :placeholder="
              $t('bpm.simpleProcessDesign.httpRequest.paramValuePlaceholder')
            "
            v-model:value="item.value"
          />
        </FormItem>
        <FormItem
          :name="[bind, 'header', index, 'value']"
          :rules="{
            required: true,
            message: $t(
              'bpm.simpleProcessDesign.httpRequest.paramValueCannotEmpty',
            ),
            trigger: 'change',
          }"
          v-if="item.type === BpmHttpRequestParamTypeEnum.FROM_FORM"
        >
          <Select
            v-model:value="item.value"
            :placeholder="
              $t(
                'bpm.simpleProcessDesign.httpRequest.paramValueSelectPlaceholder',
              )
            "
          >
            <SelectOption
              v-for="(field, fIdx) in formFieldOptions"
              :key="fIdx"
              :label="field.title"
              :value="field.field"
              :disabled="!field.required"
            >
              {{ field.title }}
            </SelectOption>
          </Select>
        </FormItem>
      </Col>
      <Col :span="2">
        <div class="flex h-[32px] items-center">
          <Trash2
            class="size-4 cursor-pointer text-red-500"
            @click="deleteHttpRequestParam(props.header, index)"
          />
        </div>
      </Col>
    </Row>
    <Button
      type="link"
      @click="addHttpRequestParam(props.header)"
      class="flex items-center"
    >
      <template #icon>
        <Plus class="size-[18px]" />
      </template>
      {{ $t('bpm.simpleProcessDesign.httpRequest.addRow') }}
    </Button>
  </FormItem>
  <FormItem
    :label="$t('bpm.simpleProcessDesign.httpRequest.body')"
    :label-col="{ span: 24 }"
    :wrapper-col="{ span: 24 }"
  >
    <Row :gutter="8" v-for="(item, index) in props.body" :key="index">
      <Col :span="7">
        <FormItem
          :name="[bind, 'body', index, 'key']"
          :rules="{
            required: true,
            message: $t(
              'bpm.simpleProcessDesign.httpRequest.paramNameCannotEmpty',
            ),
            trigger: ['blur', 'change'],
          }"
        >
          <Input
            :placeholder="
              $t('bpm.simpleProcessDesign.httpRequest.paramNamePlaceholder')
            "
            v-model:value="item.key"
          />
        </FormItem>
      </Col>
      <Col :span="5">
        <Select v-model:value="item.type">
          <SelectOption
            v-for="types in BPM_HTTP_REQUEST_PARAM_TYPES"
            :key="types.value"
            :label="types.label"
            :value="types.value"
          >
            {{ types.label }}
          </SelectOption>
        </Select>
      </Col>
      <Col :span="10">
        <FormItem
          :name="[bind, 'body', index, 'value']"
          :rules="{
            required: true,
            message: $t(
              'bpm.simpleProcessDesign.httpRequest.paramValueCannotEmpty',
            ),
            trigger: ['blur', 'change'],
          }"
          v-if="item.type === BpmHttpRequestParamTypeEnum.FIXED_VALUE"
        >
          <Input
            :placeholder="
              $t('bpm.simpleProcessDesign.httpRequest.paramValuePlaceholder')
            "
            v-model:value="item.value"
          />
        </FormItem>
        <FormItem
          :name="[bind, 'body', index, 'value']"
          :rules="{
            required: true,
            message: $t(
              'bpm.simpleProcessDesign.httpRequest.paramValueCannotEmpty',
            ),
            trigger: 'change',
          }"
          v-if="item.type === BpmHttpRequestParamTypeEnum.FROM_FORM"
        >
          <Select
            v-model:value="item.value"
            :placeholder="
              $t(
                'bpm.simpleProcessDesign.httpRequest.paramValueSelectPlaceholder',
              )
            "
          >
            <SelectOption
              v-for="(field, fIdx) in formFieldOptions"
              :key="fIdx"
              :label="field.title"
              :value="field.field"
              :disabled="!field.required"
            >
              {{ field.title }}
            </SelectOption>
          </Select>
        </FormItem>
      </Col>
      <Col :span="2">
        <div class="flex h-[32px] items-center">
          <Trash2
            class="size-4 cursor-pointer text-red-500"
            @click="deleteHttpRequestParam(props.body, index)"
          />
        </div>
      </Col>
    </Row>
    <Button
      type="link"
      @click="addHttpRequestParam(props.body)"
      class="flex items-center"
    >
      <template #icon>
        <Plus class="size-[18px]" />
      </template>
      {{ $t('bpm.simpleProcessDesign.httpRequest.addRow') }}
    </Button>
  </FormItem>
</template>
