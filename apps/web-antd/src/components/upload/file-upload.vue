<script lang="ts" setup>
import type { UploadFile, UploadProps } from 'ant-design-vue';
import type { UploadRequestOption } from 'ant-design-vue/lib/vc-upload/interface';

import type { FileUploadProps } from './typing';

import type { AxiosProgressEvent } from '#/api/infra/file';

import { computed, nextTick, ref, toRefs, useAttrs, watch } from 'vue';

import { CloudUpload } from '@vben/icons';
import { $t } from '@vben/locales';
import { isFunction } from '@vben/utils';

import { Button, message, Tooltip, Upload } from 'ant-design-vue';

import { MODULE_TYPE_ENUM } from '#/utils';

import { checkFileType } from './helper';
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

defineOptions({ name: 'FileUpload', inheritAttrs: false });

const props = withDefaults(defineProps<FileUploadProps>(), {
  value: () => [],
  directory: undefined,
  disabled: false,
  pastable: true,
  helpText: '',
  maxSize: 500,
  minSize: 0,
  maxNumber: 100,
  accept: () => [],
  multiple: true,
  api: undefined,
  resultField: '',
  showDescription: true,
  timeout: 0,
  moduleType: MODULE_TYPE_ENUM.INFRA,
});
const emit = defineEmits(['change', 'update:value', 'delete', 'returnText']);
const attrs = useAttrs();
const { accept, helpText, maxNumber, maxSize, minSize, multiple } =
  toRefs(props);
const isInnerOperate = ref<boolean>(false);
const { getStringAccept, getHelpText } = useUploadType({
  acceptRef: accept,
  helpTextRef: helpText,
  maxNumberRef: maxNumber,
  maxSizeRef: maxSize,
  minSizeRef: minSize,
});

const fileList = ref<UploadProps['fileList']>([]);
const isFirstRender = ref<boolean>(true); // 是否第一次渲染

watch(
  () => props.value,
  (v) => {
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

async function beforeUpload(file: File) {
  const { maxSize, minSize, accept } = props;
  return validateUploadFile(file, {
    accept,
    maxSize,
    minSize,
    check: checkFileType,
  })
    ? true
    : Upload.LIST_IGNORE;
}

async function customRequest(info: UploadRequestOption<any>) {
  let { api, timeout } = props;
  if (!api || !isFunction(api)) {
    api = useUpload(props.directory, props.moduleType).httpRequest;
  }
  try {
    // 上传文件
    const progressEvent: AxiosProgressEvent = (e) => {
      const percent = Math.trunc((e.loaded / e.total!) * 100);
      info.onProgress!({ percent });
    };

    // 构建上传 Promise（含超时处理）
    const res = await runUploadRequest(
      api!,
      info.file as File,
      progressEvent,
      timeout,
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
    const errorMsg = error?.message || '上传失败';
    message.error(errorMsg);
    info.onError!(error);
  }
}

function getValue() {
  return getUploadValue(fileList.value, {
    maxNumber: props.maxNumber,
    resultField: props.resultField,
  });
}

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

// 点击文件预览/下载
function handlePreview(file: UploadFile) {
  if (file.url) {
    window.open(file.url, '_blank');
  } else if (file.response) {
    // 如果 url 不存在，尝试从 response 中获取
    window.open(file.response, '_blank');
  }
}

// ============ 粘贴板上传（pastable 启用时） ============
// 剪贴板里的文件会被塞进 antd Upload 内部的隐藏 input，
// 由 antd Upload 走完整的校验 + 上传 + 列表更新流程
const uploadWrapperRef = ref<HTMLElement | null>(null);
const pastableEnabled = computed(() => props.pastable && !props.disabled);
// 是否还有剩余名额（达到 maxNumber 后隐藏粘贴入口）
const { fileCount, hasRemainCount } = useRemainCount(fileList, maxNumber);
usePastable({
  containerRef: uploadWrapperRef,
  fileCount,
  pastable: pastableEnabled,
  maxNumber,
  multiple,
  // 与下方 beforeUpload 同规则：注入 input 前先过滤不合格文件，
  // 保证「成功上传 N 个文件」的提示与实际上传数一致
  validate: () => ({
    accept: props.accept,
    maxSize: props.maxSize,
    minSize: props.minSize,
    check: checkFileType,
  }),
});
</script>

<template>
  <div ref="uploadWrapperRef">
    <Upload
      v-bind="uploadAttrs"
      v-model:file-list="fileList"
      action="#"
      :accept="getStringAccept"
      :before-upload="beforeUpload"
      :custom-request="customRequest"
      :disabled="disabled"
      :max-count="maxNumber"
      :multiple="multiple"
      list-type="text"
      :progress="{ showInfo: true }"
      @remove="handleRemove"
      @preview="handlePreview"
    >
      <div v-if="fileList && fileList.length < maxNumber">
        <Button>
          <CloudUpload />
          {{ $t('ui.upload.upload') }}
        </Button>
      </div>
      <Tooltip v-if="showDescription" :title="getHelpText">
        <div class="mt-2 flex flex-wrap items-center">
          {{ getHelpText }}
        </div>
      </Tooltip>
    </Upload>
    <Pastable :pastable="pastableEnabled && hasRemainCount" />
  </div>
</template>

<style scoped>
/* 文件名过长时省略显示，保证删除按钮不被遮挡 */
:deep(.ant-upload-list-item-name) {
  max-width: calc(100% - 30%) !important;
  overflow: hidden !important;
  text-overflow: ellipsis !important;
  white-space: nowrap !important;
}

:deep(.ant-upload-list-item-actions) {
  right: 10% !important;
  display: flex !important;
}
</style>
