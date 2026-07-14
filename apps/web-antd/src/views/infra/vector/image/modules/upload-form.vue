<script lang="ts" setup>
import { computed, ref } from 'vue';

import { useVbenModal } from '@vben/common-ui';

import { message, Upload } from 'ant-design-vue';

import { batchUploadImage, uploadImage } from '#/api/infra/vector/image';
import { $t } from '#/locales';

const emit = defineEmits<{ success: [] }>();

// antdv `Upload.Dragger` 的 `beforeUpload` 拿到的是 `RcFile extends File`，是 antdv
// 内部真原生 File 上面贴了个 uid——不是 UploadFile wrapper（UploadFile wrapper 是
// antdv 在 onBatchStart 之后给自家 UI 用的，原 file 已经独立存到 List 里上传去了）。
//
// 因此这里把 beforeUpload 拿到的 `file` 直接当成原生 `File` 用即可——
const fileList = ref<File[]>([]);

/**
 * 已选文件的本地缩略图（FileReader.readAsDataURL）。
 * <p>用 {@link WeakMap} 而不是 {@link Map}：file 被 fileList 移除后
 * 可以立刻被 GC 掉，对应的 dataURL 字符串也会跟着释放。
 */
const thumbMap = new WeakMap<File, string>();

/**
 * 缩略图 ready 标记：每次 {@link FileReader.onload} 触发就 +1。
 * 模板里读这个 ref 来强制刷新缩略图视图（Vue 不观察 WeakMap 内部）。
 */
const thumbRev = ref(0);

function getThumb(f: File): string {
  // 引用 thumbRev 让 Vue 把这次 getThumb 调用纳入依赖追踪。
  void thumbRev.value;
  return thumbMap.get(f) ?? '';
}

const submitting = ref(false);

const isSingle = computed(() => fileList.value.length === 1);
const canSubmit = computed(
  () => fileList.value.length > 0 && !submitting.value,
);

/** 防呆：只有真正继承了 Blob / File 的对象才算 file；wrapper 进到这里直接拒收。 */
function isNativeFile(v: unknown): v is File {
  // File 继承 Blob。Blob 必须有 `stream()` / `arrayBuffer()`；typeof 检查对原生类就够。
  return (
    typeof v === 'object' &&
    v !== null &&
    typeof (v as any).arrayBuffer === 'function' &&
    typeof (v as any).stream === 'function'
  );
}

/**
 * antdv 的 `RcFile` 把 `name/size/type/lastModified` 挂在自有属性上（不走原生 slot），
 * 直接塞 FormData 会得到空 `filename` 的 part。
 * 这里从贴片里读这些字段，重新 `new File([...], name, {type, lastModified})` 一下，
 * 让原生 slot 也有值，后续 multipart 才是真文件。
 */
function toNativeFile(raw: unknown): File {
  const anyRaw = raw as File & {
    lastModified?: number;
    name?: string;
    type?: string;
  };
  const displayName =
    typeof anyRaw.name === 'string' && anyRaw.name.length > 0
      ? anyRaw.name
      : 'upload.bin';
  const mime =
    typeof anyRaw.type === 'string' && anyRaw.type.length > 0
      ? anyRaw.type
      : 'application/octet-stream';
  const lm =
    typeof anyRaw.lastModified === 'number' && anyRaw.lastModified > 0
      ? anyRaw.lastModified
      : Date.now();
  return new File([raw as Blob], displayName, {
    type: mime,
    lastModified: lm,
  });
}

function beforeUpload(file: unknown) {
  if (!isNativeFile(file)) {
    // antdv 内部传进来的应当是真 File；如果不是，抛错并阻止此次上传。
    // （这里只在开发期可能出现，不会"静默"发一个 [object Object] 文本 part 到后端。）
    message.error(
      $t('infra.vectorImage.message.uploadFailed', [
        'internal: antdv passed a non-File to beforeUpload',
      ]),
    );
    return false;
  }
  const native = toNativeFile(file);
  fileList.value = [...fileList.value, native];
  // 异步生成缩略图（dataURL）。读不到也不报错——UI 退化成只显示文件名。
  if (native.type?.startsWith?.('image/')) {
    const reader = new FileReader();
    reader.addEventListener('load', (e) => {
      const dataUrl = (e.target?.result as string) ?? '';
      if (dataUrl) thumbMap.set(native, dataUrl);
      // 触发响应式刷新：用 idx + fresh flag，让缩略图 url 生效。
      // 这里直接读 thumbMap 即可（getThumb 内部取 WeakMap，模板重新计算）。
      thumbRev.value += 1;
    });
    reader.readAsDataURL(native);
  } else {
    thumbRev.value += 1;
  }
  return false;
}

function removeFile(f: File) {
  fileList.value = fileList.value.filter((x) => x !== f);
}

function clearAll() {
  fileList.value = [];
}

async function submit() {
  if (fileList.value.length === 0) {
    message.warning($t('infra.vectorImage.message.emptyFile'));
    return;
  }
  submitStart();
  try {
    const raws = fileList.value;
    if (raws.length === 1) {
      // 单张走单条接口
      const res = await uploadImage({ file: raws[0] as any });
      message.success(
        $t('infra.vectorImage.message.uploadSuccess', [res.id ?? '-']),
      );
    } else {
      // 多张走批量接口
      const res = await batchUploadImage(raws);
      message.success(
        $t('infra.vectorImage.message.batchUploadSuccess', [
          res.inserted ?? 0,
          res.skipped ?? 0,
          res.failed ?? 0,
        ]),
      );
    }
    emit('success');
    clearAll();
    await modalApi.close();
  } catch {
    message.error($t('infra.vectorImage.message.uploadFailed', ['-']));
  } finally {
    submitEnd();
  }
}

function submitStart() {
  submitting.value = true;
  modalApi.lock();
}

function submitEnd() {
  submitting.value = false;
  modalApi.unlock();
}

const [Modal, modalApi] = useVbenModal({
  async onConfirm() {
    await submit();
  },
});
</script>

<template>
  <Modal :title="$t('infra.vectorImage.upload.modalTitle')" :width="640">
    <div class="px-4 pb-2">
      <Upload.Dragger
        name="file"
        :max-count="1000"
        accept=".jpg,.jpeg,.png,.webp"
        :multiple="true"
        :before-upload="beforeUpload"
        :show-upload-list="false"
      >
        <p class="ant-upload-drag-icon">
          <span class="icon-[ant-design--inbox-outlined] text-2xl"></span>
        </p>
        <p class="ant-upload-text">
          {{ $t('infra.vectorImage.upload.dragText') }}
        </p>
      </Upload.Dragger>
      <p class="mt-2 text-xs text-gray-500">
        {{ $t('infra.vectorImage.upload.batchHint') }}
      </p>

      <!-- 已选文件列表 -->
      <div
        v-if="fileList.length > 0"
        class="mt-3 max-h-48 overflow-y-auto rounded border p-2 text-xs"
      >
        <div
          v-for="(f, idx) in fileList"
          :key="idx"
          class="flex items-center gap-2 rounded px-1 py-0.5"
        >
          <a-image :src="getThumb(f)" :alt="f.name" :width="64" :height="64" />
          <span class="truncate" :title="String(f.name ?? '')">
            {{ f.name }}
          </span>
          <a-button
            type="link"
            size="small"
            class="!ml-auto"
            @click="removeFile(f)"
          >
            ×
          </a-button>
        </div>
      </div>

      <!-- 提示行：根据张数动态变化 -->
      <p class="mt-2 text-xs text-gray-500">
        {{
          fileList.length === 0
            ? $t('infra.vectorImage.upload.dragText')
            : isSingle
              ? $t('infra.vectorImage.upload.tipSingle', [fileList.length])
              : $t('infra.vectorImage.upload.tipBatch', [fileList.length])
        }}
      </p>

      <div class="mt-3 flex gap-2">
        <a-button
          type="primary"
          block
          :loading="submitting"
          :disabled="!canSubmit"
          @click="submit"
        >
          {{
            submitting
              ? $t('infra.vectorImage.upload.uploading')
              : isSingle
                ? $t('infra.vectorImage.upload.confirm')
                : $t('infra.vectorImage.upload.batchConfirm')
          }}
        </a-button>
        <a-button v-if="fileList.length > 0" @click="clearAll">
          {{ $t('common.clear') }}
        </a-button>
      </div>
    </div>
  </Modal>
</template>
