<!-- dall3 -->
<script setup lang="ts">
import type { AiImageApi } from '#/api/ai/image';
import type { AiModelModelApi } from '#/api/ai/model/model';

import { ref } from 'vue';

import { alert, confirm } from '@vben/common-ui';

import {
  Button,
  InputNumber,
  message,
  Select,
  Space,
  Textarea,
} from 'ant-design-vue';

import { drawImage } from '#/api/ai/image';
import { $t } from '#/locales';
import {
  AiPlatformEnum,
  ImageHotEnglishWords,
  StableDiffusionClipGuidancePresets,
  StableDiffusionSamplers,
  StableDiffusionStylePresets,
} from '#/utils';

const props = defineProps({
  models: {
    type: Array<AiModelModelApi.Model>,
    default: () => [] as AiModelModelApi.Model[],
  },
});
const emits = defineEmits(['onDrawStart', 'onDrawComplete']);

function hasChinese(str: string) {
  return /[\u4E00-\u9FA5]/.test(str);
}

const drawIn = ref<boolean>(false);
const selectHotWord = ref<string>('');
const prompt = ref<string>('');
const width = ref<number>(512);
const height = ref<number>(512);
const sampler = ref<string>('DDIM');
const steps = ref<number>(20);
const seed = ref<number>(42);
const scale = ref<number>(7.5);
const clipGuidancePreset = ref<string>('NONE');
const stylePreset = ref<string>('3d-model');

async function handleHotWordClick(hotWord: string) {
  if (selectHotWord.value === hotWord) {
    selectHotWord.value = '';
    return;
  }
  selectHotWord.value = hotWord;
  prompt.value = hotWord;
}

async function handleGenerateImage() {
  const selectModel = 'stable-diffusion-v1-6';
  const matchedModel = props.models.find(
    (item) =>
      item.model === selectModel &&
      item.platform === AiPlatformEnum.STABLE_DIFFUSION,
  );
  if (!matchedModel) {
    message.error($t('ai.image.message.modelUnavailable'));
    return;
  }

  if (hasChinese(prompt.value)) {
    await alert($t('ai.image.message.noChineseSupport'));
    return;
  }
  await confirm($t('ai.image.message.confirmGenerate'));

  try {
    drawIn.value = true;
    emits('onDrawStart', AiPlatformEnum.STABLE_DIFFUSION);
    const form = {
      modelId: matchedModel.id,
      prompt: prompt.value,
      width: width.value,
      height: height.value,
      options: {
        seed: seed.value,
        steps: steps.value,
        scale: scale.value,
        sampler: sampler.value,
        clipGuidancePreset: clipGuidancePreset.value,
        stylePreset: stylePreset.value,
      },
    } as unknown as AiImageApi.ImageDrawReqVO;
    await drawImage(form);
  } finally {
    emits('onDrawComplete', AiPlatformEnum.STABLE_DIFFUSION);
    drawIn.value = false;
  }
}

async function settingValues(detail: AiImageApi.Image) {
  prompt.value = detail.prompt;
  width.value = detail.width;
  height.value = detail.height;
  seed.value = detail.options?.seed;
  steps.value = detail.options?.steps;
  scale.value = detail.options?.scale;
  sampler.value = detail.options?.sampler;
  clipGuidancePreset.value = detail.options?.clipGuidancePreset;
  stylePreset.value = detail.options?.stylePreset;
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
        v-for="hotWord in ImageHotEnglishWords"
        :key="hotWord"
        @click="handleHotWordClick(hotWord)"
      >
        {{ hotWord }}
      </Button>
    </Space>
  </div>

  <div class="mt-8">
    <div>
      <b>{{ $t('ai.image.stableDiffusion.sampler') }}</b>
    </div>
    <Space wrap class="mt-4 w-full">
      <Select
        v-model:value="sampler"
        placeholder="Select"
        size="large"
        class="!w-80"
      >
        <Select.Option
          v-for="item in StableDiffusionSamplers"
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
      <b>{{ $t('ai.image.stableDiffusion.clip') }}</b>
    </div>
    <Space wrap class="mt-4 w-full">
      <Select
        v-model:value="clipGuidancePreset"
        placeholder="Select"
        size="large"
        class="!w-80"
      >
        <Select.Option
          v-for="item in StableDiffusionClipGuidancePresets"
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
      <b>{{ $t('ai.image.stableDiffusion.style') }}</b>
    </div>
    <Space wrap class="mt-4 w-full">
      <Select
        v-model:value="stylePreset"
        placeholder="Select"
        size="large"
        class="!w-80"
      >
        <Select.Option
          v-for="item in StableDiffusionStylePresets"
          :key="item.key"
          :label="item.name"
          :value="item.key"
        >
          {{ item.name }}
        </Select.Option>
      </Select>
    </Space>
  </div>

  <div class="mt-8">
    <div>
      <b>{{ $t('ai.image.stableDiffusion.size') }}</b>
    </div>
    <Space wrap class="mt-4 w-full">
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

  <div class="mt-8">
    <div>
      <b>{{ $t('ai.image.stableDiffusion.steps') }}</b>
    </div>
    <Space wrap class="mt-4 w-full">
      <InputNumber
        v-model:value="steps"
        size="large"
        class="!w-80"
        placeholder="Please input"
      />
    </Space>
  </div>

  <div class="mt-8">
    <div>
      <b>{{ $t('ai.image.stableDiffusion.scale') }}</b>
    </div>
    <Space wrap class="mt-4 w-full">
      <InputNumber
        v-model:value="scale"
        type="number"
        size="large"
        class="!w-80"
        placeholder="Please input"
      />
    </Space>
  </div>

  <div class="mt-8">
    <div>
      <b>{{ $t('ai.image.stableDiffusion.seed') }}</b>
    </div>
    <Space wrap class="mt-4 w-full">
      <InputNumber
        v-model:value="seed"
        size="large"
        class="!w-80"
        placeholder="Please input"
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
