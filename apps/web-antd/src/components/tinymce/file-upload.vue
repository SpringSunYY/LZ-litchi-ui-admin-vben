<script lang="ts" setup>
import type { UploadRequestOption } from 'ant-design-vue/lib/vc-upload/interface';

import type { PropType } from 'vue';

import { computed, ref } from 'vue';

import { $t } from '@vben/locales';

import { Button, message, Upload } from 'ant-design-vue';

import { useUpload } from '#/components/upload/use-upload';
import { MODULE_TYPE_ENUM } from '#/utils';

defineOptions({ name: 'TinymceFileUpload' });

const props = defineProps({
  disabled: {
    default: false,
    type: Boolean,
  },
  fullscreen: {
    // 文件上传，是否放到全屏的位置
    default: false,
    type: Boolean,
  },
  moduleType: {
    // 文件模块类型
    default: MODULE_TYPE_ENUM.INFRA,
    type: String,
  },
  accept: {
    type: Array as PropType<string[]>,
    default: () => [
      'doc',
      'docx',
      'xls',
      'xlsx',
      'ppt',
      'pptx',
      'pdf',
      'txt',
      'md',
      'csv',
      'zip',
      'rar',
    ],
  },
  maxSize: {
    default: 20,
    type: Number,
  },
});

const emit = defineEmits(['uploading', 'done', 'error']);

const uploading = ref(false);

const acceptText = computed(() => props.accept.join(','));
const acceptAttr = computed(() =>
  props.accept
    .map((item) => (item.startsWith('.') ? item : `.${item}`))
    .join(','),
);

const getButtonProps = computed(() => {
  const { disabled } = props;
  return {
    disabled,
  };
});

function isAcceptedFileType(file: File) {
  const fileName = file.name || '';
  const suffix = fileName.includes('.')
    ? fileName.split('.').pop()?.toLowerCase()
    : '';
  return (
    !!suffix &&
    props.accept.some(
      (item) => item.replace(/^\./, '').toLowerCase() === suffix,
    )
  );
}

async function beforeUpload(file: File) {
  if (!isAcceptedFileType(file)) {
    message.error($t('ui.upload.acceptUpload', [acceptText.value]));
    return Upload.LIST_IGNORE;
  }

  const isLt = file.size / 1024 / 1024 > props.maxSize;
  if (isLt) {
    message.error($t('ui.upload.maxSizeMultiple', [props.maxSize]));
    return Upload.LIST_IGNORE;
  }

  return true;
}

async function customRequest(info: UploadRequestOption<any>) {
  const file = info.file as File;
  const name = file?.name;
  if (!uploading.value) {
    emit('uploading', name);
    uploading.value = true;
  }

  const { httpRequest } = useUpload(undefined, props.moduleType);
  try {
    const url = await httpRequest(file);
    emit('done', name, url);
  } catch {
    emit('error', name);
  } finally {
    uploading.value = false;
  }
}
</script>
<template>
  <div :class="[{ fullscreen }]" class="tinymce-file-upload">
    <Upload
      :show-upload-list="false"
      :accept="acceptAttr"
      :before-upload="beforeUpload"
      multiple
      :custom-request="customRequest"
    >
      <Button v-bind="{ ...getButtonProps }">
        {{ $t('ui.upload.fileUpload') }}
      </Button>
    </Upload>
  </div>
</template>

<style lang="scss" scoped>
.tinymce-file-upload {
  position: static;
}
</style>
