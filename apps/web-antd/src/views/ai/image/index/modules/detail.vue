<script setup lang="ts">
import type { AiImageApi } from '#/api/ai/image';

import { ref, toRefs, watch } from 'vue';

import { formatDateTime } from '@vben/utils';

import { Image } from 'ant-design-vue';

import { getImageMy } from '#/api/ai/image';
import { $t } from '#/locales';
import {
  AiPlatformEnum,
  Dall3StyleList,
  StableDiffusionClipGuidancePresets,
  StableDiffusionSamplers,
  StableDiffusionStylePresets,
} from '#/utils';

const props = defineProps({
  id: {
    type: Number,
    required: true,
  },
});

const detail = ref<AiImageApi.Image>({} as AiImageApi.Image); // 图片详细信息

/** 获取图片详情  */
async function getImageDetail(id: number) {
  detail.value = await getImageMy(id);
}

const { id } = toRefs(props);
watch(
  id,
  async (newVal) => {
    if (newVal) {
      await getImageDetail(newVal);
    }
  },
  { immediate: true },
);
</script>

<template>
  <div class="mb-5 w-full overflow-hidden break-words">
    <div class="mt-2">
      <Image class="rounded-lg" :src="detail?.picUrl" />
    </div>
  </div>

  <!-- 时间 -->
  <div class="mb-5 w-full overflow-hidden break-words">
    <div class="text-lg font-bold">{{ $t('ai.image.field.createTime') }}</div>
    <div class="mt-2">
      <div>
        {{ $t('ai.image.field.submitTime') }}：{{
          formatDateTime(detail.createTime)
        }}
      </div>
      <div>
        {{ $t('ai.image.field.finishTime') }}：{{
          formatDateTime(detail.finishTime)
        }}
      </div>
    </div>
  </div>

  <!-- 模型 -->
  <div class="mb-5 w-full overflow-hidden break-words">
    <div class="text-lg font-bold">{{ $t('ai.image.field.model') }}</div>
    <div class="mt-2">
      {{ detail.model }}({{ detail.height }}x{{ detail.width }})
    </div>
  </div>

  <!-- 提示词 -->
  <div class="mb-5 w-full overflow-hidden break-words">
    <div class="text-lg font-bold">{{ $t('ai.image.field.prompt') }}</div>
    <div class="mt-2">
      {{ detail.prompt }}
    </div>
  </div>

  <!-- 图片地址 -->
  <div class="mb-5 w-full overflow-hidden break-words">
    <div class="text-lg font-bold">{{ $t('ai.image.field.picUrl') }}</div>
    <div class="mt-2">
      {{ detail.picUrl }}
    </div>
  </div>

  <!-- StableDiffusion 专属 -->
  <div
    v-if="
      detail.platform === AiPlatformEnum.STABLE_DIFFUSION &&
      detail?.options?.sampler
    "
    class="mb-5 w-full overflow-hidden break-words"
  >
    <div class="text-lg font-bold">
      {{ $t('ai.image.stableDiffusion.sampler') }}
    </div>
    <div class="mt-2">
      {{
        StableDiffusionSamplers.find(
          (item) => item.key === detail?.options?.sampler,
        )?.name
      }}
    </div>
  </div>

  <div
    v-if="
      detail.platform === AiPlatformEnum.STABLE_DIFFUSION &&
      detail?.options?.clipGuidancePreset
    "
    class="mb-5 w-full overflow-hidden break-words"
  >
    <div class="text-lg font-bold">
      {{ $t('ai.image.stableDiffusion.clip') }}
    </div>
    <div class="mt-2">
      {{
        StableDiffusionClipGuidancePresets.find(
          (item) => item.key === detail?.options?.clipGuidancePreset,
        )?.name
      }}
    </div>
  </div>

  <div
    v-if="
      detail.platform === AiPlatformEnum.STABLE_DIFFUSION &&
      detail?.options?.stylePreset
    "
    class="mb-5 w-full overflow-hidden break-words"
  >
    <div class="text-lg font-bold">
      {{ $t('ai.image.stableDiffusion.style') }}
    </div>
    <div class="mt-2">
      {{
        StableDiffusionStylePresets.find(
          (item) => item.key === detail?.options?.stylePreset,
        )?.name
      }}
    </div>
  </div>

  <div
    v-if="
      detail.platform === AiPlatformEnum.STABLE_DIFFUSION &&
      detail?.options?.steps
    "
    class="mb-5 w-full overflow-hidden break-words"
  >
    <div class="text-lg font-bold">
      {{ $t('ai.image.stableDiffusion.steps') }}
    </div>
    <div class="mt-2">{{ detail?.options?.steps }}</div>
  </div>

  <div
    v-if="
      detail.platform === AiPlatformEnum.STABLE_DIFFUSION &&
      detail?.options?.scale
    "
    class="mb-5 w-full overflow-hidden break-words"
  >
    <div class="text-lg font-bold">
      {{ $t('ai.image.stableDiffusion.scale') }}
    </div>
    <div class="mt-2">{{ detail?.options?.scale }}</div>
  </div>

  <div
    v-if="
      detail.platform === AiPlatformEnum.STABLE_DIFFUSION &&
      detail?.options?.seed
    "
    class="mb-5 w-full overflow-hidden break-words"
  >
    <div class="text-lg font-bold">
      {{ $t('ai.image.stableDiffusion.seed') }}
    </div>
    <div class="mt-2">{{ detail?.options?.seed }}</div>
  </div>

  <!-- Dall3 专属 -->
  <div
    v-if="detail.platform === AiPlatformEnum.OPENAI && detail?.options?.style"
    class="mb-5 w-full overflow-hidden break-words"
  >
    <div class="text-lg font-bold">{{ $t('ai.image.dall3.styleSelect') }}</div>
    <div class="mt-2">
      {{
        Dall3StyleList.find((item) => item.key === detail?.options?.style)?.name
      }}
    </div>
  </div>

  <!-- Midjourney 专属 -->
  <div
    v-if="
      detail.platform === AiPlatformEnum.MIDJOURNEY && detail?.options?.version
    "
    class="mb-5 w-full overflow-hidden break-words"
  >
    <div class="text-lg font-bold">{{ $t('ai.image.midjourney.version') }}</div>
    <div class="mt-2">{{ detail?.options?.version }}</div>
  </div>

  <div
    v-if="
      detail.platform === AiPlatformEnum.MIDJOURNEY &&
      detail?.options?.referImageUrl
    "
    class="mb-5 w-full overflow-hidden break-words"
  >
    <div class="text-lg font-bold">
      {{ $t('ai.image.midjourney.referenceImage') }}
    </div>
    <div class="mt-2">
      <Image :src="detail.options.referImageUrl" />
    </div>
  </div>
</template>
