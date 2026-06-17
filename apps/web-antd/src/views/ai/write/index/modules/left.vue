<script setup lang="ts">
import type { AiWriteApi } from '#/api/ai/write';

import { ref } from 'vue';

import { IconifyIcon } from '@vben/icons';

import { createReusableTemplate } from '@vueuse/core';
import { Button, message, Textarea } from 'ant-design-vue';

import { I18nDictTagSelect } from '#/components/i18n/i18n-dict-tag-select';
import { $t } from '#/locales';
import {
  AiWriteTypeEnum,
  DICT_TYPE,
  getDictOptions,
  WriteExample,
} from '#/utils';

type TabType = AiWriteApi.Write['type'];

defineProps<{
  isWriting: boolean;
}>();

const emit = defineEmits<{
  (e: 'example', param: 'reply' | 'write'): void;
  (e: 'reset'): void;
  (e: 'submit', params: Partial<AiWriteApi.Write>): void;
}>();

function omit(obj: Record<string, any>, keysToOmit: string[]) {
  const result: Record<string, any> = {};
  for (const key in obj) {
    if (!keysToOmit.includes(key)) {
      result[key] = obj[key];
    }
  }
  return result;
}

/** 点击示例的时候，将定义好的文章作为示例展示出来 */
function example(type: 'reply' | 'write') {
  formData.value = {
    ...initData,
    ...omit(WriteExample[type], ['data']),
  };
  emit('example', type);
}

/** 重置，将表单值作为初选值 */
function reset() {
  formData.value = { ...initData };
  emit('reset');
}

const selectedTab = ref<TabType>(AiWriteTypeEnum.WRITING);
const tabs: {
  text: string;
  value: TabType;
}[] = [
  { text: $t('ai.write.message.tabWriting'), value: AiWriteTypeEnum.WRITING },
  { text: $t('ai.write.message.tabReply'), value: AiWriteTypeEnum.REPLY },
];
const [DefineTab, ReuseTab] = createReusableTemplate<{
  active?: boolean;
  itemClick: () => void;
  text: string;
}>();

const [DefineLabel, ReuseLabel] = createReusableTemplate<{
  class?: string;
  hint?: string;
  hintClick?: () => void;
  label: string;
}>();

const initData: AiWriteApi.Write = {
  type: 1,
  prompt: '',
  originalContent: '',
  tone: 1,
  language: 1,
  length: 1,
  format: 1,
};
const formData = ref<AiWriteApi.Write>({ ...initData });
const recordFormData = {} as Record<AiWriteTypeEnum, AiWriteApi.Write>; // 用来记录切换之前所填写的数据，切换的时候给赋值回来

/** 切换 tab */
function handleSwitchTab(value: TabType) {
  if (value !== selectedTab.value) {
    // 保存之前的久数据
    recordFormData[selectedTab.value] = formData.value;
    selectedTab.value = value;
    // 将之前的旧数据赋值回来
    formData.value = { ...initData, ...recordFormData[value] };
  }
}

/** 提交写作 */
function handleSubmit() {
  if (
    selectedTab.value === AiWriteTypeEnum.REPLY &&
    !formData.value.originalContent
  ) {
    message.warning($t('ai.write.message.placeholderOriginalContent'));
    return;
  }
  if (!formData.value.prompt) {
    const hint =
      selectedTab.value === AiWriteTypeEnum.WRITING
        ? $t('ai.write.message.tabWriting')
        : $t('ai.write.message.tabReply');
    message.warning($t('ui.placeholder.input', [hint]));
    return;
  }

  emit('submit', {
    // 撰写的时候没有 originalContent 字段
    ...(selectedTab.value === 1
      ? omit(formData.value, ['originalContent'])
      : formData.value),
    // 使用选中 tab 值覆盖当前的 type 类型
    type: selectedTab.value,
  });
}
</script>

<template>
  <DefineTab v-slot="{ active, text, itemClick }">
    <span
      :class="
        active ? 'bg-primary-600 text-white shadow-md' : 'hover:bg-primary-200'
      "
      class="relative z-10 inline-block w-1/2 cursor-pointer rounded-full text-center leading-7 hover:text-black"
      @click="itemClick"
    >
      {{ text }}
    </span>
  </DefineTab>
  <!-- 定义 label 组件：长度/格式/语气/语言等 -->
  <DefineLabel v-slot="{ label, hint, hintClick }">
    <h3 class="mb-3 mt-5 flex items-center justify-between text-sm">
      <span>{{ label }}</span>
      <span
        v-if="hint"
        class="text-primary-500 flex cursor-pointer select-none items-center text-xs"
        @click="hintClick"
      >
        <IconifyIcon icon="lucide:circle-help" />
        {{ hint }}
      </span>
    </h3>
  </DefineLabel>
  <div class="flex flex-col" v-bind="$attrs">
    <div class="bg-card flex w-full justify-center pt-2">
      <div class="bg-card z-10 w-72 rounded-full p-1">
        <div
          :class="
            selectedTab === AiWriteTypeEnum.REPLY &&
            'after:translate-x-[100%] after:transform'
          "
          class="after:bg-card relative flex items-center after:absolute after:left-0 after:top-0 after:block after:h-7 after:w-1/2 after:rounded-full after:transition-transform after:content-['']"
        >
          <ReuseTab
            v-for="tab in tabs"
            :key="tab.value"
            :active="tab.value === selectedTab"
            :item-click="() => handleSwitchTab(tab.value)"
            :text="tab.text"
            class="relative z-20"
          />
        </div>
      </div>
    </div>
    <div
      class="bg-card box-border h-full w-96 flex-grow overflow-y-auto px-7 pb-2 lg:block"
    >
      <div>
        <template v-if="selectedTab === AiWriteTypeEnum.WRITING">
          <ReuseLabel
            :hint-click="() => example('write')"
            :hint="$t('ai.write.message.hintExample')"
            :label="$t('ai.write.message.labelWriteContent')"
          />
          <Textarea
            v-model:value="formData.prompt"
            :maxlength="500"
            :rows="5"
            :placeholder="$t('ai.write.message.placeholderWriteContent')"
            show-count
          />
        </template>
        <template v-else>
          <ReuseLabel
            :hint-click="() => example('reply')"
            :hint="$t('ai.write.message.hintExample')"
            :label="$t('ai.write.message.labelOriginalContent')"
          />
          <Textarea
            v-model:value="formData.originalContent"
            :maxlength="500"
            :rows="5"
            :placeholder="$t('ai.write.message.placeholderOriginalContent')"
            show-count
          />
          <ReuseLabel :label="$t('ai.write.message.labelReplyContent')" />
          <Textarea
            v-model:value="formData.prompt"
            :maxlength="500"
            :rows="5"
            :placeholder="$t('ai.write.message.placeholderReplyContent')"
            show-count
          />
        </template>

        <ReuseLabel :label="$t('ai.write.message.labelLength')" />
        <I18nDictTagSelect
          v-model="formData.length"
          :tags="getDictOptions(DICT_TYPE.AI_WRITE_LENGTH, 'number')"
        />
        <ReuseLabel :label="$t('ai.write.message.labelFormat')" />
        <I18nDictTagSelect
          v-model="formData.format"
          :tags="getDictOptions(DICT_TYPE.AI_WRITE_FORMAT, 'number') || []"
        />
        <ReuseLabel :label="$t('ai.write.message.labelTone')" />
        <I18nDictTagSelect
          v-model="formData.tone"
          :tags="getDictOptions(DICT_TYPE.AI_WRITE_TONE, 'number')"
        />
        <ReuseLabel :label="$t('ai.write.message.labelLanguage')" />
        <I18nDictTagSelect
          v-model="formData.language"
          :tags="getDictOptions(DICT_TYPE.AI_WRITE_LANGUAGE, 'number')"
        />

        <div class="mt-3 flex items-center justify-center">
          <Button :disabled="isWriting" class="mr-2" @click="reset">
            {{ $t('ai.write.message.buttonReset') }}
          </Button>
          <Button type="primary" :loading="isWriting" @click="handleSubmit">
            {{ $t('ai.write.message.buttonGenerate') }}
          </Button>
        </div>
      </div>
    </div>
  </div>
</template>
