<script lang="ts" setup>
import type { AiImageApi } from '#/api/ai/image';
import type { AiModelModelApi } from '#/api/ai/model/model';

import { nextTick, onMounted, ref } from 'vue';

import { Page } from '@vben/common-ui';

import { Segmented } from 'ant-design-vue';

import { getModelSimpleList } from '#/api/ai/model/model';
import { AiModelTypeEnum, AiPlatformEnum } from '#/utils';
import { $t } from '#/locales';

import Common from './modules/common/index.vue';
import Dall3 from './modules/dall3/index.vue';
import ImageList from './modules/list.vue';
import Midjourney from './modules/midjourney/index.vue';
import StableDiffusion from './modules/stable-diffusion/index.vue';

const imageListRef = ref<any>(); // image 列表 ref
const dall3Ref = ref<any>(); // dall3(openai) ref
const midjourneyRef = ref<any>(); // midjourney ref
const stableDiffusionRef = ref<any>(); // stable diffusion ref
const commonRef = ref<any>(); // stable diffusion ref

const selectPlatform = ref('common'); // 选中的平台
const platformOptions = [
  {
    label: $t('ai.image.common.common'),
    value: 'common',
  },
  {
    label: $t('ai.image.dall3.dall3'),
    value: AiPlatformEnum.OPENAI,
  },
  {
    label: $t('ai.image.midjourney.midjourney'),
    value: AiPlatformEnum.MIDJOURNEY,
  },
  {
    label: $t('ai.image.stableDiffusion.stableDiffusion'),
    value: AiPlatformEnum.STABLE_DIFFUSION,
  },
];
const models = ref<AiModelModelApi.Model[]>([]); // 模型列表

/** 绘画 start  */
function handleDrawStart() {
  // drawing state is handled by child components
}

/** 绘画 complete */
async function handleDrawComplete() {
  await imageListRef.value.getImageList();
}

/** 重新生成：将画图详情填充到对应平台 */
async function handleRegeneration(image: AiImageApi.Image) {
  // 切换平台
  selectPlatform.value = image.platform;
  // 根据不同平台填充 image
  await nextTick();
  switch (image.platform) {
    case AiPlatformEnum.MIDJOURNEY: {
      midjourneyRef.value.settingValues(image);

      break;
    }
    case AiPlatformEnum.OPENAI: {
      dall3Ref.value.settingValues(image);

      break;
    }
    case AiPlatformEnum.STABLE_DIFFUSION: {
      stableDiffusionRef.value.settingValues(image);

      break;
    }
    // No default
  }
  // TODO @fan：貌似 other 重新设置不行？
}

/** 组件挂载的时候 */
onMounted(async () => {
  // 获取模型列表
  models.value = await getModelSimpleList(AiModelTypeEnum.IMAGE);
});
</script>

<template>
  <Page auto-content-height>
    <div class="absolute inset-0 m-4 flex h-full w-full flex-row">
      <div class="bg-card left-0 mr-4 flex w-96 flex-col rounded-lg p-4">
        <div class="flex justify-center">
          <Segmented
            v-model:value="selectPlatform"
            :options="platformOptions"
          />
        </div>
        <div class="mt-8 h-full overflow-y-auto">
          <Common
            v-if="selectPlatform === 'common'"
            ref="commonRef"
            :models="models"
            @on-draw-complete="handleDrawComplete"
          />
          <Dall3
            v-if="selectPlatform === AiPlatformEnum.OPENAI"
            ref="dall3Ref"
            :models="models"
            @on-draw-start="handleDrawStart"
            @on-draw-complete="handleDrawComplete"
          />
          <Midjourney
            v-if="selectPlatform === AiPlatformEnum.MIDJOURNEY"
            ref="midjourneyRef"
            :models="models"
          />
          <StableDiffusion
            v-if="selectPlatform === AiPlatformEnum.STABLE_DIFFUSION"
            ref="stableDiffusionRef"
            :models="models"
            @on-draw-complete="handleDrawComplete"
          />
        </div>
      </div>
      <div class="bg-card flex-1">
        <ImageList ref="imageListRef" @on-regeneration="handleRegeneration" />
      </div>
    </div>
  </Page>
</template>
