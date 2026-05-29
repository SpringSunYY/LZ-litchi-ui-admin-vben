<!-- dall3 -->
<script setup lang="ts">
import type { AiImageApi } from '#/api/ai/image';
import type { AiModelModelApi } from '#/api/ai/model/model';
import type { ImageModel, ImageSize } from '#/utils';

import { ref } from 'vue';

import { confirm } from '@vben/common-ui';

import {
  Button,
  Image,
  message,
  Select,
  Space,
  Textarea,
} from 'ant-design-vue';

import { midjourneyImagine } from '#/api/ai/image';
import { ImageUpload } from '#/components/upload';
import {
  AiPlatformEnum,
  ImageHotWords,
  MidjourneyModels,
  MidjourneySizeList,
  MidjourneyVersions,
  NijiVersionList,
} from '#/utils';
import { $t } from '#/locales';

const props = defineProps({
  models: {
    type: Array<AiModelModelApi.Model>,
    default: () => [] as AiModelModelApi.Model[],
  },
}); // 接收父组件传入的模型列表
const emits = defineEmits(['onDrawStart', 'onDrawComplete']);

const drawIn = ref<boolean>(false); // 生成中
const selectHotWord = ref<string>(''); // 选中的热词

const prompt = ref<string>(''); // 提示词
const referImageUrl = ref<any>(); // 参考图
const selectModel = ref<string>('midjourney'); // 选中的模型
const selectSize = ref<string>('1:1'); // 选中 size
const selectVersion = ref<any>('6.0'); // 选中的 version
const versionList = ref<any>(MidjourneyVersions); // version 列表

async function handleHotWordClick(hotWord: string) {
  if (selectHotWord.value === hotWord) {
    selectHotWord.value = '';
    return;
  }
  // 情况二：选中
  selectHotWord.value = hotWord; // 选中
  prompt.value = hotWord; // 设置提示次
}

async function handleSizeClick(imageSize: ImageSize) {
  selectSize.value = imageSize.key;
}

async function handleModelClick(model: ImageModel) {
  selectModel.value = model.key;
  versionList.value =
    model.key === 'niji' ? NijiVersionList : MidjourneyVersions;
  selectVersion.value = versionList.value[0].value;
}

async function handleGenerateImage() {
  const matchedModel = props.models.find(
    (item) =>
      item.model === selectModel.value &&
      item.platform === AiPlatformEnum.MIDJOURNEY,
  );
  if (!matchedModel) {
    message.error($t('ai.image.message.modelUnavailable'));
    return;
  }

  await confirm($t('ai.image.message.confirmGenerate'));
  try {
    drawIn.value = true;
    emits('onDrawStart', AiPlatformEnum.MIDJOURNEY);
    const imageSize = MidjourneySizeList.find(
      (item) => selectSize.value === item.key,
    ) as ImageSize;
    const req = {
      prompt: prompt.value,
      modelId: matchedModel.id,
      width: imageSize.width,
      height: imageSize.height,
      version: selectVersion.value,
      referImageUrl: referImageUrl.value,
    } as AiImageApi.ImageMidjourneyImagineReqVO;
    await midjourneyImagine(req);
  } finally {
    emits('onDrawComplete', AiPlatformEnum.MIDJOURNEY);
    drawIn.value = false;
  }
}

async function settingValues(detail: AiImageApi.Image) {
  prompt.value = detail.prompt;
  const imageSize = MidjourneySizeList.find(
    (item) => item.key === `${detail.width}:${detail.height}`,
  ) as ImageSize;
  selectSize.value = imageSize.key;
  const model = MidjourneyModels.find(
    (item) => item.key === detail.options?.model,
  ) as ImageModel;
  await handleModelClick(model);
  selectVersion.value = versionList.value.find(
    (item: any) => item.value === detail.options?.version,
  ).value;
  referImageUrl.value = detail.options.referImageUrl;
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
    <Space wrap class="mt-4 flex flex-wrap gap-2">
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
      <b>{{ $t('ai.image.midjourney.size') }}</b>
    </div>
    <Space wrap class="mt-4 flex w-full flex-wrap gap-2">
      <div
        class="flex cursor-pointer flex-col items-center overflow-hidden"
        v-for="imageSize in MidjourneySizeList"
        :key="imageSize.key"
        @click="handleSizeClick(imageSize)"
      >
        <div
          class="bg-card flex h-12 w-12 items-center justify-center rounded-lg border p-0"
          :class="[
            selectSize === imageSize.key ? 'border-blue-500' : 'border-white',
          ]"
        >
          <div :style="imageSize.style"></div>
        </div>
        <div class="text-sm font-bold text-gray-600">{{ imageSize.key }}</div>
      </div>
    </Space>
  </div>

  <div class="mt-8">
    <div>
      <b>{{ $t('ai.image.midjourney.model') }}</b>
    </div>
    <Space wrap class="mt-4 flex flex-wrap gap-2">
      <div
        v-for="model in MidjourneyModels"
        :key="model.key"
        class="flex max-w-40 cursor-pointer flex-col items-center overflow-hidden"
        :class="[
          selectModel === model.key
            ? 'rounded border-blue-500'
            : 'border-transparent',
        ]"
      >
        <Image
          :preview="false"
          :src="model.image"
          fit="contain"
          @click="handleModelClick(model)"
        />
        <div class="text-sm font-bold text-gray-600">{{ model.name }}</div>
      </div>
    </Space>
  </div>

  <div class="mt-8">
    <div>
      <b>{{ $t('ai.image.midjourney.version') }}</b>
    </div>
    <Space wrap class="mt-5 flex w-full flex-wrap gap-2">
      <Select
        v-model:value="selectVersion"
        class="!w-80"
        allow-clear
        :placeholder="$t('ai.image.midjourney.versionSelect')"
      >
        <Select.Option
          v-for="item in versionList"
          :key="item.value"
          :value="item.value"
        >
          {{ item.label }}
        </Select.Option>
      </Select>
    </Space>
  </div>

  <div class="mt-8">
    <div>
      <b>{{ $t('ai.image.midjourney.referenceImage') }}</b>
    </div>
    <Space wrap class="mt-4">
      <ImageUpload v-model:value="referImageUrl" :show-description="false" />
    </Space>
  </div>

  <div class="mt-8 flex justify-center">
    <Button
      type="primary"
      size="large"
      shape="round"
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
