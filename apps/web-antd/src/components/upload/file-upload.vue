<script lang="ts" setup>
import type { Tooltip, UploadFile, UploadProps } from 'ant-design-vue';
import type { UploadRequestOption } from 'ant-design-vue/lib/vc-upload/interface';

import type { FileUploadProps } from './typing';

import type { AxiosProgressEvent } from '#/api/infra/file';

import { nextTick, ref, toRefs, watch } from 'vue';

import { CloudUpload } from '@vben/icons';
import { $t } from '@vben/locales';
import { isFunction, isObject, isString } from '@vben/utils';

import { Button, message, Upload } from 'ant-design-vue';

import { checkFileType } from './helper';
import { UploadResultStatus } from './typing';
import { useUpload, useUploadType } from './use-upload';

defineOptions({ name: 'FileUpload', inheritAttrs: false });

const props = withDefaults(defineProps<FileUploadProps>(), {
  value: () => [],
  directory: undefined,
  disabled: false,
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
  moduleType: 'infra',
});
const emit = defineEmits(['change', 'update:value', 'delete', 'returnText']);
const { accept, helpText, maxNumber, maxSize, minSize } = toRefs(props);
const isInnerOperate = ref<boolean>(false);
const { getStringAccept, getHelpText } = useUploadType({
  acceptRef: accept,
  helpTextRef: helpText,
  maxNumberRef: maxNumber,
  maxSizeRef: maxSize,
  minSizeRef: minSize,
});

const fileList = ref<UploadProps['fileList']>([]);
const isLtMsg = ref<boolean>(true); // 文件大小错误提示
const isActMsg = ref<boolean>(true); // 文件类型错误提示
const isFirstRender = ref<boolean>(true); // 是否第一次渲染

watch(
  () => props.value,
  (v) => {
    if (isInnerOperate.value) {
      isInnerOperate.value = false;
      return;
    }
    let value: string[] = [];
    if (v) {
      if (Array.isArray(v)) {
        value = v;
      } else {
        // 支持 || 分隔符分隔的多个文件URL
        value = v.split('||').filter((item) => item.trim());
      }
      fileList.value = value.map((item, i) => {
        if (item && isString(item)) {
          return {
            uid: `${-i}`,
            name: item.slice(Math.max(0, item.lastIndexOf('/') + 1)),
            status: UploadResultStatus.DONE,
            url: item,
          };
        } else if (item && isObject(item)) {
          return item;
        }
        return null;
      }) as UploadProps['fileList'];
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
  const isAct = checkFileType(file, accept);
  if (!isAct) {
    message.error($t('ui.upload.acceptUpload', [accept]));
    isActMsg.value = false;
    // 防止弹出多个错误提示
    setTimeout(() => (isActMsg.value = true), 1000);
  }
  const isLt = file.size / 1024 / 1024 > maxSize;
  if (isLt) {
    message.error($t('ui.upload.maxSizeMultiple', [maxSize]));
    isLtMsg.value = false;
    // 防止弹出多个错误提示
    setTimeout(() => (isLtMsg.value = true), 1000);
  }
  // 检查最小文件大小
  if (minSize && minSize > 0 && file.size / 1024 / 1024 < minSize) {
    message.error($t('ui.upload.minSizeMultiple', [minSize]));
    return Upload.LIST_IGNORE;
  }
  return (isAct && !isLt) || Upload.LIST_IGNORE;
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

    // 构建上传 Promise
    const uploadPromise = api?.(info.file as File, progressEvent);

    // 处理超时（仅在 timeout > 0 时启用超时检测）
    let res;
    if (timeout && timeout > 0) {
      const timeoutPromise = new Promise((_, reject) => {
        setTimeout(() => reject(new Error('上传超时')), timeout);
      });
      res = await Promise.race([uploadPromise, timeoutPromise]);
    } else {
      res = await uploadPromise;
    }

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
  const list = (fileList.value || [])
    .filter((item) => item?.status === UploadResultStatus.DONE)
    .map((item: any) => {
      if (item?.response && props?.resultField) {
        return item?.response;
      }
      return item?.url || item?.response?.url || item?.response;
    });
  // add by 芋艿：【特殊】单个文件的情况，获取首个元素，保证返回的是 String 类型
  if (props.maxNumber === 1) {
    return list.length > 0 ? list[0] : '';
  }
  // 多个文件用 || 分隔符拼接成字符串
  return list.length > 0 ? list.join('||') : '';
}

// 点击文件预览/下载
function handlePreview(file: UploadFile) {
  if (file.url) {
    window.open(file.url, '_blank');
  } else if (file.response) {
    // 如果 url 不存在，尝试从 response 中获取
    window.open(file.response, '_blank');
  }
}
</script>

<template>
  <div>
    <Upload
      v-bind="$attrs"
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
  </div>
</template>

<style scoped>
/* 文件名过长时省略显示，保证删除按钮不被遮挡 */
:deep(.ant-upload-list-item-name) {
  max-width: calc(100% - 50%) !important;
  overflow: hidden !important;
  text-overflow: ellipsis !important;
  white-space: nowrap !important;
}
:deep(.ant-upload-list-item-actions) {
  right: 10% !important;
  display: flex !important;
}
</style>
