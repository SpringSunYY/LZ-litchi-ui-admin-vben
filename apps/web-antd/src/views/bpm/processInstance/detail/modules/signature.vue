<script lang="ts" setup>
import { ref } from 'vue';

import { useVbenModal } from '@vben/common-ui';
import { IconifyIcon } from '@vben/icons';

import { Button, message, Space, Tooltip } from 'ant-design-vue';
import Vue3Signature from 'vue3-signature';

import { uploadFile } from '#/api/infra/file';
import { $t } from '#/locales';
import { download } from '#/utils';

defineOptions({
  name: 'BpmProcessInstanceSignature',
});

const emit = defineEmits<{
  success: [url: string];
}>();

const signature = ref<InstanceType<typeof Vue3Signature>>();

const [Modal, modalApi] = useVbenModal({
  title: $t('bpm.processInstance.operation.signature'),
  onOpenChange(visible) {
    if (!visible) {
      modalApi.close();
    }
  },
  async onConfirm() {
    message.loading({
      content: $t('bpm.processInstance.operation.uploadingSignature'),
      key: 'sign_upload',
    });
    const signFileUrl = await uploadFile({
      file: download.base64ToFile(
        signature.value?.save('image/jpeg') || '',
        'signature',
      ),
    });
    emit('success', signFileUrl);
    modalApi.close();
  },
});
</script>

<template>
  <Modal class="h-[40%] w-[60%]">
    <div class="mb-2 flex justify-end">
      <Space>
        <Tooltip :title="$t('bpm.processInstance.operation.undo')">
          <Button @click="signature?.undo()">
            <template #icon>
              <IconifyIcon icon="lucide:undo" class="mb-[4px] size-[16px]" />
            </template>
            {{ $t('bpm.processInstance.operation.undo') }}
          </Button>
        </Tooltip>

        <Tooltip :title="$t('bpm.processInstance.operation.clear')">
          <Button @click="signature?.clear()">
            <template #icon>
              <IconifyIcon icon="lucide:trash" class="mb-[4px] size-[16px]" />
            </template>
            {{ $t('bpm.processInstance.operation.clear') }}
          </Button>
        </Tooltip>
      </Space>
    </div>

    <Vue3Signature
      class="mx-auto border-[1px] border-solid border-gray-300"
      ref="signature"
      w="874px"
      h="324px"
    />
  </Modal>
</template>
