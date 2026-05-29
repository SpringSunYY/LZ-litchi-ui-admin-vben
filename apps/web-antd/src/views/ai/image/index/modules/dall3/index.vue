<!-- dall3 -->
<script setup lang="ts">
import type { AiImageApi } from '#/api/ai/image';
import type { AiModelModelApi } from '#/api/ai/model/model';
import type { ImageModel, ImageSize } from '#/utils';

import { ref } from 'vue';

import { confirm } from '@vben/common-ui';

import { Button, Image, message, Space, Textarea } from 'ant-design-vue';

import { drawImage } from '#/api/ai/image';
import { $t } from '#/locales';
import {
  AiPlatformEnum,
  Dall3Models,
  Dall3SizeList,
  Dall3StyleList,
  ImageHotWords,
} from '#/utils';

const props = defineProps({
  models: {
    type: Array<AiModelModelApi.Model>,
    default: () => [] as AiModelModelApi.Model[],
  },
});
const emits = defineEmits(['onDrawStart', 'onDrawComplete']);

const prompt = ref<string>('');
const drawIn = ref<boolean>(false);
const selectHotWord = ref<string>('');
const selectModel = ref<string>('dall-e-3');
const selectSize = ref<string>('1024x1024');
const style = ref<string>('vivid');

async function handleHotWordClick(hotWord: string) {
  if (selectHotWord.value === hotWord) {
    selectHotWord.value = '';
    return;
  }
  selectHotWord.value = hotWord;
  prompt.value = hotWord;
}

async function handleModelClick(model: ImageModel) {
  selectModel.value = model.key;
  if (model.key === 'dall-e-3') {
    style.value = 'vivid';
  } else if (model.key === 'dall-e-2') {
    style.value = 'natural';
  }
  const recommendedSize = Dall3SizeList.find(
    (size) =>
      (model.key === 'dall-e-3' && size.key === '1024x1024') ||
      (model.key === 'dall-e-2' && size.key === '512x512'),
  );
  if (recommendedSize) {
    selectSize.value = recommendedSize.key;
  }
}

async function handleStyleClick(imageStyle: ImageModel) {
  style.value = imageStyle.key;
}

async function handleSizeClick(imageSize: ImageSize) {
  selectSize.value = imageSize.key;
}

async function handleGenerateImage() {
  const matchedModel = props.models.find(
    (item) =>
      item.model === selectModel.value &&
      item.platform === AiPlatformEnum.OPENAI,
  );
  if (!matchedModel) {
    message.error($t('ai.image.message.modelUnavailable'));
    return;
  }
  await confirm($t('ai.image.message.confirmGenerate'));
  try {
    drawIn.value = true;
    emits('onDrawStart', AiPlatformEnum.OPENAI);
    const imageSize = Dall3SizeList.find(
      (item) => item.key === selectSize.value,
    ) as ImageSize;
    const form = {
      platform: AiPlatformEnum.OPENAI,
      prompt: prompt.value,
      modelId: matchedModel.id,
      style: style.value,
      width: imageSize.width,
      height: imageSize.height,
      options: {
        style: style.value,
      },
    } as AiImageApi.ImageDrawReqVO;
    await drawImage(form);
  } finally {
    emits('onDrawComplete', AiPlatformEnum.OPENAI);
    drawIn.value = false;
  }
}

async function settingValues(detail: AiImageApi.Image) {
  prompt.value = detail.prompt;
  selectModel.value = detail.model;
  style.value = detail.options?.style;
  const imageSize = Dall3SizeList.find(
    (item) => item.key === `${detail.width}x${detail.height}`,
  ) as ImageSize;
  await handleSizeClick(imageSize);
}

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
      <b>{{ $t('ai.image.dall3.modelSelect') }}</b>
    </div>
    <Space wrap class="mt-4 flex flex-wrap gap-2">
      <div
        class="flex w-28 cursor-pointer flex-col items-center overflow-hidden rounded-lg border-2"
        :class="[
          selectModel === model.key ? '!border-blue-500' : 'border-transparent',
        ]"
        v-for="model in Dall3Models"
        :key="model.key"
      >
        <Image
          :preview="false"
          :src="model.image"
          fit="contain"
          @click="handleModelClick(model)"
        />
        <div class="text-sm font-bold text-gray-600">
          {{ model.name }}
        </div>
      </div>
    </Space>
  </div>

  <div class="mt-8">
    <div>
      <b>{{ $t('ai.image.dall3.styleSelect') }}</b>
    </div>
    <Space wrap class="mt-4 flex flex-wrap gap-2">
      <div
        class="flex w-28 cursor-pointer flex-col items-center overflow-hidden rounded-lg border-2"
        :class="[
          style === imageStyle.key ? 'border-blue-500' : 'border-transparent',
        ]"
        v-for="imageStyle in Dall3StyleList"
        :key="imageStyle.key"
      >
        <Image
          :preview="false"
          :src="imageStyle.image"
          fit="contain"
          @click="handleStyleClick(imageStyle)"
        />
        <div class="text-sm font-bold text-gray-600">
          {{ imageStyle.name }}
        </div>
      </div>
    </Space>
  </div>

  <div class="mt-8 w-full">
    <div>
      <b>{{ $t('ai.image.dall3.sizeSelect') }}</b>
    </div>
    <Space wrap class="mt-5 flex w-full flex-wrap gap-2">
      <div
        class="flex cursor-pointer flex-col items-center"
        v-for="imageSize in Dall3SizeList"
        :key="imageSize.key"
        @click="handleSizeClick(imageSize)"
      >
        <div
          class="bg-card flex h-12 w-12 flex-col items-center justify-center rounded-lg border p-0"
          :class="[
            selectSize === imageSize.key ? 'border-blue-500' : 'border-white',
          ]"
        >
          <div :style="imageSize.style"></div>
        </div>
        <div class="text-sm font-bold text-gray-600">
          {{ imageSize.name }}
        </div>
      </div>
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
