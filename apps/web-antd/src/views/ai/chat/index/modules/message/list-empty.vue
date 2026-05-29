<!-- 消息列表为空时，展示 prompt 列表 -->
<script setup lang="ts">
import { $t } from '#/locales';

const emits = defineEmits(['onPrompt']);

const promptList = [
  {
    prompt: $t('ai.chat.message.suggestWeather'),
  },
  {
    prompt: $t('ai.chat.message.suggestPoem'),
  },
]; // prompt 列表

/** 选中 prompt 点击 */
async function handlerPromptClick(prompt: any) {
  emits('onPrompt', prompt.prompt);
}
</script>
<template>
  <div class="relative flex h-full w-full flex-row justify-center">
    <div class="flex flex-col justify-center">
      <!-- title -->
      <div class="text-center text-3xl font-bold">
        {{ $t('ai.chat.message.aiBranding') }}
      </div>
      <!-- role-list -->
      <div class="mt-5 flex w-96 flex-wrap items-center justify-center">
        <div
          v-for="prompt in promptList"
          :key="prompt.prompt"
          @click="handlerPromptClick(prompt)"
          class="m-2.5 flex w-44 cursor-pointer justify-center rounded-lg border border-gray-200 leading-10 hover:bg-gray-100"
        >
          {{ prompt.prompt }}
        </div>
      </div>
    </div>
  </div>
</template>
