<!-- dall3 -->
<script setup lang="ts">
import type { AiImageApi } from '#/api/ai/image';
import type { AiModelModelApi } from '#/api/ai/model/model';

import { ref, watch } from 'vue';

import { confirm } from '@vben/common-ui';

import { Button, InputNumber, Select, Space, Textarea } from 'ant-design-vue';

import { drawImage } from '#/api/ai/image';
import { $t } from '#/locales';
import { AiPlatformEnum, ImageHotWords, OtherPlatformEnum } from '#/utils';

const props = defineProps({
  models: {
    type: Array<AiModelModelApi.Model>,
    default: () => [] as AiModelModelApi.Model[],
  },
});
const emits = defineEmits(['onDrawStart', 'onDrawComplete']);

const drawIn = ref<boolean>(false);
const selectHotWord = ref<string>('');

const prompt = ref<string>('');
const width = ref<number>(512);
const height = ref<number>(512);
const otherPlatform = ref<string>(AiPlatformEnum.TONG_YI);
const platformModels = ref<AiModelModelApi.Model[]>([]);
const modelId = ref<number>();

async function handleHotWordClick(hotWord: string) {
  if (selectHotWord.value === hotWord) {
    selectHotWord.value = '';
    return;
  }
  selectHotWord.value = hotWord;
  prompt.value = hotWord;
}

async function handleGenerateImage() {
  await confirm($t('ai.image.message.confirmGenerate'));
  try {
    drawIn.value = true;
    emits('onDrawStart', otherPlatform.value);
    const form = {
      platform: otherPlatform.value,
      modelId: modelId.value,
      prompt: prompt.value,
      width: width.value,
      height: height.value,
      options: {},
    } as unknown as AiImageApi.ImageDrawReqVO;
    await drawImage(form);
  } finally {
    emits('onDrawComplete', otherPlatform.value);
    drawIn.value = false;
  }
}

async function settingValues(detail: AiImageApi.Image) {
  prompt.value = detail.prompt;
  width.value = detail.width;
  height.value = detail.height;
}

async function handlerPlatformChange(platform: any) {
  platformModels.value = props.models.filter(
    (item: AiModelModelApi.Model) => item.platform === platform,
  );
  modelId.value =
    platformModels.value.length > 0 && platformModels.value[0]
      ? platformModels.value[0].id
      : undefined;
}

watch(
  () => props.models,
  () => {
    handlerPlatformChange(otherPlatform.value);
  },
  { immediate: true, deep: true },
);

defineExpose({ settingValues });
</script>
<template>
  <div class="prompt">
    <b>{{ $t('ai.image.common.promptDescription') }}</b>
    <p>{{ $t('ai.image.common.promptHint') }}</p>
    <Textarea
      v-model:value="prompt"
      :maxlength="1024"
      :rows="5"
      class="mt-4 w-full"
      :placeholder="$t('ai.image.common.promptPlaceholder')"
      show-count
    />
  </div>

  <div class="mt-8 flex flex-col">
    <div>
      <b>{{ $t('ai.image.common.hotWords') }}</b>
    </div>
    <Space wrap class="mt-4 flex flex-wrap justify-start">
      <Button
        shape="round"
        class="m-0"
        :type="selectHotWord === hotWord ? 'primary' : 'default'"
        v-for="hotWord in ImageHotWords"
        :key="hotWord"
        @click="handleHotWordClick(hotWord)"
      >
        {{ hotWord }}
      </Button>
    </Space>
  </div>

  <div class="mt-8">
    <div>
      <b>{{ $t('ai.image.common.platform') }}</b>
    </div>
    <Space wrap class="mt-4 w-full">
      <Select
        v-model:value="otherPlatform"
        placeholder="Select"
        size="large"
        class="!w-80"
        @change="handlerPlatformChange"
      >
        <Select.Option
          v-for="item in OtherPlatformEnum"
          :key="item.key"
          :value="item.key"
        >
          {{ item.name }}
        </Select.Option>
      </Select>
    </Space>
  </div>

  <div class="mt-8">
    <div>
      <b>{{ $t('ai.image.common.model') }}</b>
    </div>
    <Space wrap class="mt-4 w-full">
      <Select
        v-model:value="modelId"
        placeholder="Select"
        size="large"
        class="!w-80"
      >
        <Select.Option
          v-for="item in platformModels"
          :key="item.id"
          :value="item.id"
        >
          {{ item.name }}
        </Select.Option>
      </Select>
    </Space>
  </div>

  <div class="mt-8">
    <div>
      <b>{{ $t('ai.image.common.size') }}</b>
    </div>
    <Space wrap class="mt-4 flex flex-wrap gap-x-5">
      <InputNumber
        v-model:value="width"
        class="w-40"
        :placeholder="$t('ai.image.common.width')"
        :addon-before="$t('ai.image.common.width')"
        addon-after="px"
      />
      <InputNumber
        v-model:value="height"
        class="w-40"
        :placeholder="$t('ai.image.common.height')"
        :addon-before="$t('ai.image.common.height')"
        addon-after="px"
      />
    </Space>
  </div>

  <div class="mt-12 flex justify-center">
    <Button
      type="primary"
      size="large"
      shape="round"
      :loading="drawIn"
      :disabled="prompt.length === 0"
      @click="handleGenerateImage"
    >
      {{
        drawIn
          ? $t('ai.image.message.generatingTip')
          : $t('ai.image.message.generatingContent')
      }}
    </Button>
  </div>
</template>
