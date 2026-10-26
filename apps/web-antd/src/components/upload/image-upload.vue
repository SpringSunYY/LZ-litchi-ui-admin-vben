<script lang="ts" setup>
import type { UploadFile, UploadProps } from 'ant-design-vue';
import type { UploadRequestOption } from 'ant-design-vue/lib/vc-upload/interface';

import type { FileUploadProps } from './typing';

import type { AxiosProgressEvent } from '#/api/infra/file';

import { computed, nextTick, ref, toRefs, unref, useAttrs, watch } from 'vue';

import { CloudUpload } from '@vben/icons';
import { $t } from '@vben/locales';
import { isFunction } from '@vben/utils';

import { message, Modal, Upload } from 'ant-design-vue';

import { MODULE_TYPE_ENUM } from '#/utils';

import { checkImgType, defaultImageAccepts } from './helper';
import Pastable from './pastable.vue';
import {
  buildFileListFromValue,
  getUploadValue,
  runUploadRequest,
  useRemainCount,
  validateUploadFile,
} from './upload-common';
import { usePastable } from './use-pastable';
import { useUpload, useUploadType } from './use-upload';

defineOptions({ name: 'ImageUpload', inheritAttrs: false });

const props = withDefaults(defineProps<FileUploadProps>(), {
  value: () => [],
  directory: undefined,
  disabled: false,
  pastable: true,
  listType: 'picture-card',
  helpText: '',
  maxSize: 10,
  minSize: 0,
  maxNumber: 1,
  accept: () => defaultImageAccepts,
  multiple: true,
  api: undefined,
  resultField: '',
  showDescription: true,
  moduleType: MODULE_TYPE_ENUM.INFRA,
});
const emit = defineEmits(['change', 'update:value', 'delete', 'pasteFile']);
const attrs = useAttrs();
const { accept, helpText, maxNumber, maxSize, minSize, multiple } =
  toRefs(props);
const isInnerOperate = ref<boolean>(false);
const { getAccept, getStringAccept } = useUploadType({
  acceptRef: accept,
  helpTextRef: helpText,
  maxNumberRef: maxNumber,
  maxSizeRef: maxSize,
  minSizeRef: minSize,
});

const previewOpen = ref<boolean>(false); // 是否展示预览
const previewImage = ref<string>(''); // 预览图片
const previewTitle = ref<string>(''); // 预览标题

const fileList = ref<UploadProps['fileList']>([]);
const isFirstRender = ref<boolean>(true); // 是否第一次渲染

const getImageHelpText = computed(() => {
  const texts: string[] = [];
  const accept = unref(getAccept);
  const maxSizeVal = unref(maxSize);
  const maxNumberVal = unref(maxNumber);
  if (maxSizeVal) {
    texts.push($t('ui.upload.maxSize', [maxSizeVal]));
  }
  if (accept.length > 0) {
    texts.push($t('ui.upload.accept', [accept.join('/')]));
  }
  texts.push($t('ui.upload.maxNumber', [maxNumberVal]));
  return texts.join('，');
});

watch(
  () => props.value,
  async (v) => {
    if (isInnerOperate.value) {
      isInnerOperate.value = false;
      return;
    }
    const value: string | string[] = [];
    if (v) {
      fileList.value = buildFileListFromValue(v);
    }
    if (!isFirstRender.value) {
      emit('change', value);
      isFirstRender.value = false;
    }
  },
  {
    immediate: true,
    deep: true,
  },
);

function getBase64<T extends ArrayBuffer | null | string>(file: File) {
  return new Promise<T>((resolve, reject) => {
    const reader = new FileReader();
    reader.readAsDataURL(file);
    reader.addEventListener('load', () => {
      resolve(reader.result as T);
    });
    reader.addEventListener('error', (error) => reject(error));
  });
}

async function handlePreview(file: UploadFile) {
  if (!file.url && !file.preview) {
    file.preview = await getBase64<string>(file.originFileObj!);
  }
  previewImage.value = file.url || file.preview || '';
  previewOpen.value = true;
  previewTitle.value =
    file.name ||
    previewImage.value.slice(
      Math.max(0, previewImage.value.lastIndexOf('/') + 1),
    );
}

async function handleRemove(file: UploadFile) {
  if (fileList.value) {
    const index = fileList.value.findIndex((item) => item.uid === file.uid);
    index !== -1 && fileList.value.splice(index, 1);
    const value = getValue();
    isInnerOperate.value = true;
    emit('update:value', value);
    emit('change', value);
    emit('delete', file);
  }
}

function handleCancel() {
  previewOpen.value = false;
  previewTitle.value = '';
}

async function beforeUpload(file: File) {
  const { maxSize, minSize, accept } = props;
  return validateUploadFile(file, {
    accept,
    maxSize,
    minSize,
    check: checkImgType,
  })
    ? true
    : Upload.LIST_IGNORE;
}

async function customRequest(info: UploadRequestOption<any>) {
  let { api } = props;
  if (!api || !isFunction(api)) {
    api = useUpload(props.directory, props.moduleType).httpRequest;
  }
  try {
    // 上传文件
    const progressEvent: AxiosProgressEvent = (e) => {
      const percent = Math.trunc((e.loaded / e.total!) * 100);
      info.onProgress!({ percent });
    };
    const res = await runUploadRequest(
      api!,
      info.file as File,
      progressEvent,
      undefined,
    );
    info.onSuccess!(res);
    message.success($t('ui.upload.uploadSuccess'));

    // 等待 fileList 更新后再获取值
    await nextTick();
    // 更新文件
    const value = getValue();
    isInnerOperate.value = true;
    emit('update:value', value);
    emit('change', value);
  } catch (error: any) {
    console.error(error);
    info.onError!(error);
  }
}

function getValue() {
  return getUploadValue(fileList.value, {
    maxNumber: props.maxNumber,
    resultField: props.resultField,
  });
}

// ============ 粘贴板上传（pastable 启用时） ============
// 剪贴板里的文件会被塞进 antd Upload 内部的隐藏 input，
// 由 antd Upload 走完整的校验 + 上传 + 列表更新流程
const uploadWrapperRef = ref<HTMLElement | null>(null);
const pastableEnabled = computed(() => props.pastable && !props.disabled);
// 是否还有剩余名额（达到 maxNumber 后隐藏粘贴入口）
const { fileCount, hasRemainCount } = useRemainCount(fileList, maxNumber);
// 与下方 <Upload :multiple> 保持一致：只能上传一个文件时，粘贴也只取第一个
const uploadMultiple = computed(() => multiple.value && maxNumber.value > 1);
usePastable({
  containerRef: uploadWrapperRef,
  fileCount,
  pastable: pastableEnabled,
  maxNumber,
  multiple: uploadMultiple,
  onFiles: (files) => {
    emit('pasteFile', files);
  },
  // 与下方 beforeUpload 同规则：注入 input 前先过滤不合格文件，
  // 保证「成功上传 N 个文件」的提示与实际上传数一致
  validate: () => ({
    accept: props.accept,
    maxSize: props.maxSize,
    minSize: props.minSize,
    check: checkImgType,
  }),
});

const uploadAttrs = computed(() => {
  const {
    value: _value,
    'onUpdate:value': _onUpdateValue,
    'onUpdate:modelValue': _onUpdateModelValue,
    modelValue: _modelValue,
    id: _id,
    name: _name,
    field: _field,
    formCreateInject: _formCreateInject,
    ...rest
  } = attrs;
  return rest;
});
</script>

<template>
  <div ref="uploadWrapperRef" class="image-upload-wrapper">
    <Upload
      v-bind="uploadAttrs"
      v-model:file-list="fileList"
      :accept="getStringAccept"
      :before-upload="beforeUpload"
      :custom-request="customRequest"
      :disabled="disabled"
      :list-type="listType"
      :max-count="maxNumber"
      :multiple="uploadMultiple"
      :progress="{ showInfo: true }"
      @preview="handlePreview"
      @remove="handleRemove"
    >
      <div
        v-if="fileList && fileList.length < maxNumber"
        class="flex flex-col items-center justify-center"
      >
        <CloudUpload />
        <div class="mt-2">{{ $t('ui.upload.imgUpload') }}</div>
      </div>
    </Upload>
    <Pastable :pastable="pastableEnabled && hasRemainCount" />
    <div
      v-if="showDescription"
      class="mt-2 flex flex-wrap items-center text-[14px]"
    >
      {{ getImageHelpText }}
    </div>
    <Modal
      :footer="null"
      :open="previewOpen"
      :title="previewTitle"
      @cancel="handleCancel"
    >
      <img :src="previewImage" alt="" class="w-full" />
    </Modal>
  </div>
</template>

<style>
.image-upload-wrapper {
  position: relative;
  padding: 4px;
}

.ant-upload-select-picture-card {
  @apply flex items-center justify-center;
}
</style>
