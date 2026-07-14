<script lang="ts" setup>
import { ref } from 'vue';

import { useVbenModal } from '@vben/common-ui';

import { message } from 'ant-design-vue';

import {
  importImagesFromDir,
  uploadImagesByUrls,
} from '#/api/infra/vector/image';
import { $t } from '#/locales';

const emit = defineEmits<{ success: [] }>();

type TabKey = 'dir' | 'urls';
const activeTab = ref<TabKey>('urls');

// ===== URL Tab =====
const urlsText = ref('');
function parseUrls(): string[] {
  return urlsText.value
    .split(/\r?\n/)
    .map((s) => s.trim())
    .filter(Boolean);
}
async function submitUrls() {
  const urls = parseUrls();
  if (urls.length === 0) {
    message.warning($t('infra.vectorImage.message.emptyUrl'));
    return;
  }
  try {
    submitStart();
    await uploadImagesByUrls(urls);
    message.success($t('infra.vectorImage.message.batchImportSuccess'));
    emit('success');
    urlsText.value = '';
    await modalApi.close();
  } catch (error: any) {
    onError(error);
  } finally {
    submitEnd();
  }
}

// ===== 本地目录 Tab =====
const dirPath = ref('');
const dirRecursive = ref(true);
async function submitDir() {
  const dir = dirPath.value.trim();
  if (!dir) {
    message.warning($t('infra.vectorImage.message.dirImportEmpty'));
    return;
  }
  try {
    submitStart();
    await importImagesFromDir(dir, dirRecursive.value);
    message.success($t('infra.vectorImage.message.batchImportSuccess'));
    emit('success');
    await modalApi.close();
  } catch (error: any) {
    onError(error);
  } finally {
    submitEnd();
  }
}

const submitting = ref(false);

function submitStart() {
  submitting.value = true;
  modalApi.lock();
}
function submitEnd() {
  submitting.value = false;
  modalApi.unlock();
}
function onError(error: any) {
  message.error(
    $t('infra.vectorImage.message.uploadFailed', [
      error?.message ?? String(error),
    ]),
  );
}

const [Modal, modalApi] = useVbenModal({
  async onConfirm() {
    await (activeTab.value === 'urls' ? submitUrls() : submitDir());
  },
});
</script>

<template>
  <Modal :title="$t('infra.vectorImage.import.modalTitle')" :width="640">
    <div class="px-4 pb-2">
      <!-- Tab 切换 -->
      <div class="mb-4 flex gap-2 border-b border-gray-200">
        <button
          v-for="key in ['urls', 'dir'] as TabKey[]"
          :key="key"
          class="border-b-2 px-3 py-1.5 text-sm transition"
          :class="
            activeTab === key
              ? 'border-blue-500 font-medium text-blue-600'
              : 'border-transparent text-gray-500 hover:text-gray-700'
          "
          @click="activeTab = key"
        >
          {{
            key === 'urls'
              ? $t('infra.vectorImage.import.tabUrls')
              : $t('infra.vectorImage.import.tabDir')
          }}
        </button>
      </div>

      <!-- URL Tab 内容 -->
      <div v-if="activeTab === 'urls'">
        <p class="mb-2 text-xs text-gray-500">
          {{ $t('infra.vectorImage.import.urlsHint') }}
        </p>
        <a-textarea
          v-model:value="urlsText"
          :placeholder="$t('infra.vectorImage.import.urlsPlaceholder')"
          :rows="8"
        />
        <a-button
          type="primary"
          block
          class="mt-3"
          :loading="submitting"
          @click="submitUrls"
        >
          {{
            submitting
              ? $t('infra.vectorImage.import.urlsImporting')
              : $t('infra.vectorImage.import.urlsConfirm')
          }}
        </a-button>
      </div>

      <!-- 目录 Tab 内容 -->
      <div v-else>
        <p class="mb-2 text-xs text-gray-500">
          {{ $t('infra.vectorImage.import.dirHint') }}
        </p>
        <a-input
          v-model:value="dirPath"
          :placeholder="$t('infra.vectorImage.import.dirPlaceholder')"
          allow-clear
        />
        <div class="mt-2 flex items-center gap-2">
          <a-checkbox v-model:checked="dirRecursive">
            {{ $t('infra.vectorImage.import.dirRecursive') }}
          </a-checkbox>
        </div>
        <a-button
          type="primary"
          block
          class="mt-3"
          :loading="submitting"
          @click="submitDir"
        >
          {{
            submitting
              ? $t('infra.vectorImage.import.dirImporting')
              : $t('infra.vectorImage.import.dirConfirm')
          }}
        </a-button>
      </div>
    </div>
  </Modal>
</template>
