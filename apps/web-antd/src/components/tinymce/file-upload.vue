<script lang="ts" setup>
import type { UploadRequestOption } from 'ant-design-vue/lib/vc-upload/interface';

import { computed, ref } from 'vue';

import { $t } from '@vben/locales';

import { Button, Upload } from 'ant-design-vue';

import { useUpload } from '#/components/upload/use-upload';

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
    default: '',
    type: String,
  },
});

const emit = defineEmits(['uploading', 'done', 'error']);

const uploading = ref(false);

const getButtonProps = computed(() => {
  const { disabled } = props;
  return {
    disabled,
  };
});

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
  position: absolute;
  top: 4px;
  right: 100px;
  z-index: 20;

  &.fullscreen {
    position: fixed;
    z-index: 10000;
  }
}
</style>
