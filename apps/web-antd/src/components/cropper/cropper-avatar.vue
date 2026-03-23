<script lang="ts" setup>
import type { CSSProperties } from 'vue';

import type { CropperAvatarProps } from './typing';

import { computed, ref, unref, watch, watchEffect } from 'vue';

import { useVbenModal } from '@vben/common-ui';
import { $t } from '@vben/locales';

import { Button, message } from 'ant-design-vue';

import cropperModal from './cropper-modal.vue';

defineOptions({ name: 'CropperAvatar' });

const props = withDefaults(defineProps<CropperAvatarProps>(), {
  width: 200,
  value: '',
  showBtn: true,
  btnProps: () => ({}),
  btnText: '',
  uploadApi: () => Promise.resolve(),
  size: 5,
});

const emit = defineEmits(['update:value', 'change']);

const sourceValue = ref(props.value || '');
const prefixCls = 'cropper-avatar';
// 图片加载失败状态
const imgError = ref(false);
const [CropperModal, modalApi] = useVbenModal({
  connectedComponent: cropperModal,
});

const getClass = computed(() => [prefixCls]);

const getWidth = computed(() => `${`${props.width}`.replace(/px/, '')}px`);

const getIconWidth = computed(
  () => `${Number.parseInt(`${props.width}`.replace(/px/, '')) / 2}px`,
);

const getStyle = computed((): CSSProperties => ({ width: unref(getWidth) }));

const getImageWrapperStyle = computed(
  (): CSSProperties => ({ height: unref(getWidth), width: unref(getWidth) }),
);

// 图片加载成功
function handleImgLoad() {
  imgError.value = false;
}

// 图片加载失败
function handleImgError() {
  imgError.value = true;
}

watchEffect(() => {
  sourceValue.value = props.value || '';
  // 当头像 URL 变化时，重置加载错误状态
  imgError.value = false;
});

watch(
  () => sourceValue.value,
  (v: string) => {
    emit('update:value', v);
  },
);

function handleUploadSuccess({ data, source }: any) {
  sourceValue.value = source;
  imgError.value = false;
  emit('change', { data, source });
  message.success($t('ui.cropper.uploadSuccess'));
}

const closeModal = () => modalApi.close();
const openModal = () => modalApi.open();

defineExpose({
  closeModal,
  openModal,
});
</script>

<template>
  <div :class="getClass" :style="getStyle">
    <div
      :class="`${prefixCls}-image-wrapper`"
      :style="getImageWrapperStyle"
      @click="openModal"
    >
      <div :class="`${prefixCls}-image-mask`" :style="getImageWrapperStyle">
        <span
          :style="{
            ...getImageWrapperStyle,
            width: `${getIconWidth}`,
            height: `${getIconWidth}`,
            lineHeight: `${getIconWidth}`,
          }"
          class="icon-[ant-design--cloud-upload-outlined] text-[#d6d6d6]"
        ></span>
      </div>
      <!-- 显示默认头像或图片加载失败时显示上传图标 -->
      <img
        v-if="sourceValue && !imgError"
        :src="sourceValue"
        alt="avatar"
        @error="handleImgError"
        @load="handleImgLoad"
      />
      <!-- 图片加载失败时，显示上传图标提示用户可以重新上传 -->
      <div
        v-else
        :class="`${prefixCls}-image-error`"
        :style="getImageWrapperStyle"
      >
        <span
          :style="{
            width: `${getIconWidth}`,
            height: `${getIconWidth}`,
            lineHeight: `${getIconWidth}`,
          }"
          class="icon-[ant-design--cloud-upload-outlined] text-[#d6d6d6]"
        ></span>
      </div>
    </div>
    <Button
      v-if="showBtn"
      :class="`${prefixCls}-upload-btn`"
      @click="openModal"
      v-bind="btnProps"
    >
      {{ btnText ? btnText : $t('ui.cropper.selectImage') }}
    </Button>

    <CropperModal
      :size="size"
      :src="sourceValue"
      :upload-api="uploadApi"
      @upload-success="handleUploadSuccess"
    />
  </div>
</template>

<style lang="scss" scoped>
.cropper-avatar {
  display: inline-block;
  text-align: center;

  &-image-wrapper {
    overflow: hidden;
    cursor: pointer;
    background: #fff;
    border: 1px solid #eee;
    border-radius: 50%;

    img {
      width: 100%;
    }
  }

  &-image-mask {
    position: absolute;
    display: flex;
    align-items: center;
    justify-content: center;
    width: inherit;
    height: inherit;
    cursor: pointer;
    background: rgb(0 0 0 / 40%);
    border: inherit;
    border-radius: inherit;
    opacity: 0;
    transition: opacity 0.4s;

    ::v-deep(svg) {
      margin: auto;
    }
  }

  &-image-mask:hover {
    opacity: 40;
  }

  &-image-error {
    position: absolute;
    display: flex;
    align-items: center;
    justify-content: center;
    width: inherit;
    height: inherit;
    background: #f5f5f5;
    border: inherit;
    border-radius: inherit;
  }

  &-upload-btn {
    margin: 10px auto;
  }
}
</style>
