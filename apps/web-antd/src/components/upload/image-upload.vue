<script lang="ts" setup>
import type { UploadFile, UploadProps } from 'ant-design-vue';
import type { UploadRequestOption } from 'ant-design-vue/lib/vc-upload/interface';

import type { FileUploadProps } from './typing';

import type { AxiosProgressEvent } from '#/api/infra/file';

import { computed, nextTick, ref, toRefs, unref, useAttrs, watch } from 'vue';

import { CloudUpload } from '@vben/icons';
import { $t } from '@vben/locales';
import { isFunction, isObject, isString } from '@vben/utils';

import { message, Modal, Upload } from 'ant-design-vue';

import { MODULE_TYPE_ENUM } from '#/utils';

import { checkImgType, defaultImageAccepts } from './helper';
import { UploadResultStatus } from './typing';
import { useUpload, useUploadType } from './use-upload';

defineOptions({ name: 'ImageUpload', inheritAttrs: false });

const props = withDefaults(defineProps<FileUploadProps>(), {
  value: () => [],
  directory: undefined,
  disabled: false,
  enablePaste: true,
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
const { accept, helpText, maxNumber, maxSize, minSize } = toRefs(props);
const isInnerOperate = ref<boolean>(false);
const pasteInputRef = ref<HTMLInputElement | null>(null);
const pasteInputValue = ref<string>('');
function focusPasteTarget(event: MouseEvent) {
  // 阻止冒泡到外层 Upload 触发"点击上传"
  event.stopPropagation();
  pasteInputRef.value?.focus();
}
function onPasteInputChange(event: Event) {
  // 强制清空输入框：用户任何输入都还原为空（不让用户改字）
  const target = event.target as HTMLInputElement;
  if (target.value !== '') {
    target.value = '';
    pasteInputValue.value = '';
  }
}
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
const isLtMsg = ref<boolean>(true); // 文件大小错误提示
const isActMsg = ref<boolean>(true); // 文件类型错误提示
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
    let value: string | string[] = [];
    if (v) {
      value = Array.isArray(v)
        ? v
        : v.split('||').filter((item) => item.trim());
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
  const isAct = checkImgType(file, accept);
  if (!isAct) {
    message.error($t('ui.upload.acceptUpload', [formatAcceptTypes(accept)]));
    isActMsg.value = false;
    // 防止弹出多个错误提示
    setTimeout(() => (isActMsg.value = true), 1000);
    return Upload.LIST_IGNORE;
  }
  const isLt = file.size / 1024 / 1024 > maxSize;
  if (isLt) {
    message.error($t('ui.upload.maxSizeMultiple', [maxSize]));
    isLtMsg.value = false;
    // 防止弹出多个错误提示
    setTimeout(() => (isLtMsg.value = true), 1000);
    return Upload.LIST_IGNORE;
  }
  // 检查最小文件大小
  if (minSize && minSize > 0 && file.size / 1024 / 1024 < minSize) {
    message.error($t('ui.upload.minSizeMultiple', [minSize]));
    return Upload.LIST_IGNORE;
  }
  return true;
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
    const res = await api?.(info.file as File, progressEvent);
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
  const list = (fileList.value || [])
    .filter((item) => item?.status === UploadResultStatus.DONE)
    .map((item: any) => {
      if (item?.response && props?.resultField) {
        return item?.response;
      }
      return item?.url || item?.response?.url || item?.response;
    });
  // add by YY：【特殊】单个文件的情况，获取首个元素，保证返回的是 String 类型
  if (props.maxNumber === 1) {
    return list.length > 0 ? list[0] : '';
  }
  // 多个文件用 || 分隔符拼接成字符串
  return list.length > 0 ? list.join('||') : '';
}

// ============ 粘贴板上传（enablePaste 启用时） ============
const isPasting = ref<boolean>(false);
const pasteUpload = useUpload(props.directory, props.moduleType);

function getFileNameFromUrl(url: string): string {
  if (!url) {
    return '';
  }
  return url.slice(Math.max(0, url.lastIndexOf('/') + 1));
}

function formatAcceptTypes(accept: string | string[] | undefined): string {
  if (!accept) {
    return '';
  }
  const list = Array.isArray(accept)
    ? accept
    : accept.split('/').filter((item) => item.trim());
  return list.join('/');
}

async function uploadPasteFile(file: File): Promise<boolean> {
  // 大小校验（与 beforeUpload 保持一致）
  const isLt = file.size / 1024 / 1024 > props.maxSize;
  if (isLt) {
    message.error($t('ui.upload.maxSizeMultiple', [props.maxSize]));
    return false;
  }
  // 最小文件大小校验
  if (props.minSize && props.minSize > 0) {
    const isMin = file.size / 1024 / 1024 < props.minSize;
    if (isMin) {
      message.error($t('ui.upload.minSizeMultiple', [props.minSize]));
      return false;
    }
  }
  // 类型校验
  const isAct = checkImgType(file, props.accept);
  if (!isAct) {
    message.error(
      $t('ui.upload.acceptUpload', [formatAcceptTypes(props.accept)]),
    );
    return false;
  }
  // 数量校验
  const doneCount = (fileList.value || []).filter(
    (item) => item.status === UploadResultStatus.DONE,
  ).length;
  if (props.maxNumber !== Infinity && doneCount >= props.maxNumber) {
    message.error($t('ui.upload.maxNumber', [props.maxNumber]));
    return false;
  }

  const api = props.api ?? pasteUpload.httpRequest;
  // 重新包装 File，避免不同文件流之间共享同一底层 Blob 导致文件被读空或损坏
  const safeFile = (() => {
    try {
      const blob = file.slice(
        0,
        file.size,
        file.type || 'application/octet-stream',
      );
      const name = file.name || `pasted-${Date.now()}`;
      return new File([blob], name, {
        type: file.type,
        lastModified: Date.now(),
      });
    } catch {
      return file;
    }
  })();
  try {
    const res = await api(safeFile, undefined, props.moduleType);
    const url =
      (res as any)?.data?.data?.url ?? (res as any)?.url ?? (res as any);
    if (!url) {
      message.error('上传失败');
      return false;
    }
    // 追加到内部 fileList（保持与 ImageUpload 同步）
    const list = (fileList.value || []) as UploadFile[];
    const nextFile: UploadFile = {
      uid: `${Date.now()}-${Math.random()}`,
      name: file.name || getFileNameFromUrl(url),
      status: UploadResultStatus.DONE,
      url,
    };
    fileList.value = [...list, nextFile];
    isInnerOperate.value = true;
    const value = getValue();
    emit('update:value', value);
    emit('change', value);
    return true;
  } catch (error: any) {
    console.error(error);
    message.error(error?.message || '上传失败');
    return false;
  }
}

// 把 Blob 包装为独立 File，避免与上层引用共享底层 Blob 导致读取时被消费
function wrapAsFile(blob: Blob, fileName = 'image.png'): File {
  // 注意：name 不传时间戳！
  // 粘贴场景下同一张图可能同时被 DataTransfer 路径（给 `image.png`）
  // 和 Async Clipboard API 路径拿到，name 一致才能正确去重。
  try {
    return new File([blob], fileName, {
      type: blob.type || 'application/octet-stream',
      lastModified: Date.now(),
    });
  } catch {
    // 极老浏览器 fallback
    const f = new Blob([blob], { type: blob.type }) as any;
    f.name = fileName;
    f.lastModified = Date.now();
    return f as File;
  }
}

/**
 * 从 DataTransfer 同步提取有效 file。
 * 注意：必须在 paste 事件 handler 同步执行期间调用！
 * 浏览器在事件 dispatch 结束后（await 让步事件循环后）会清空 DataTransfer 数据，
 * 所以任何异步操作之后再访问 event.clipboardData 都拿不到 file。
 * 调用方应当在 await 之前同步执行此函数，把结果存到本地变量。
 *
 * 一些 Chromium 内核场景下（如 Windows 资源管理器多选复制）只能拿到 1 个 file item，
 * 这里只取所有 file item（过滤 0 字节），不再截断。
 */
function collectFromClipboardData(data: DataTransfer | null): File[] {
  if (!data) return [];
  const files: File[] = [];
  // 路径 1：从 items 取
  const items = data.items;
  if (items) {
    for (const item of items) {
      if (item.kind === 'file') {
        const file = item.getAsFile();
        if (file && file.size > 0) {
          files.push(file);
        }
      }
    }
  }
  // 路径 2：如果 items 路径没有拿到有效 file，退到 clipboardData.files
  if (files.length === 0 && data.files) {
    for (const f of data.files) {
      if (f && f.size > 0) {
        files.push(f);
      }
    }
  }
  return files;
}

/**
 * 通过 Async Clipboard API (navigator.clipboard.read) 读取剪贴板中所有图片文件。
 * 这是 web.dev 官方推荐的"多文件粘贴"增强路径，
 * 绕开 DataTransfer 事件 dispatch 结束就被销毁的限制，
 * 能拿到 Windows 资源管理器多选文件的完整列表（DataTransfer 路径只能取到部分）。
 *
 * 限制：
 *   - 必须 HTTPS / localhost
 *   - 必须用户激活（paste 事件天然满足）
 *   - 需要 Permissions-Policy 允许 clipboard-read
 *   - Chrome / Edge 支持；Firefox 不支持（会抛 NotAllowedError，会静默退到 DataTransfer 路径）
 */
async function collectFromAsyncClipboard(): Promise<File[]> {
  if (typeof navigator === 'undefined') return [];
  if (!navigator.clipboard || typeof navigator.clipboard.read !== 'function') {
    return [];
  }
  let items: ClipboardItem[];
  try {
    items = await navigator.clipboard.read();
  } catch {
    // 权限被拒 / 不支持 / 非激活状态 —— 静默返回空，让调用方继续走 DataTransfer 路径
    return [];
  }
  const files: File[] = [];
  for (const item of items) {
    const types = Array.isArray(item.types) ? item.types : [];
    for (const t of types) {
      if (typeof t === 'string' && t.startsWith('image/')) {
        try {
          const blob = await item.getType(t);
          if (blob && blob.size > 0) {
            files.push(wrapAsFile(blob));
          }
        } catch {
          // 单个 type 读取失败不影响整体
        }
      }
    }
  }
  return files;
}

/**
 * 合并两组 File 数组并按 name 去重。
 * 默认优先级：syncFiles > asyncFiles。
 *
 * 原因：微信复制 1 张图时，Async Clipboard API 路径经常会把
 * 剪贴板里**另一张无关的历史图片**（name 不同）也带回来，
 * 单纯按 name 去重漏掉；如果 syncFiles 已经有图，Async 路径整组直接丢弃。
 *
 * 但 syncFiles 来自 paste 事件同步阶段，它**不一定**包含所有文件
 * （Windows 多文件场景可能被截断），所以 syncFiles 为空时
 * 才走 Async 的兜底。
 */
function mergeAndDedupeFiles(syncFiles: File[], asyncFiles: File[]): File[] {
  const seen = new Set<string>();
  const out: File[] = [];
  if (syncFiles.length > 0) {
    for (const f of syncFiles) {
      if (!seen.has(f.name)) {
        seen.add(f.name);
        out.push(f);
      }
    }
    return out;
  }
  for (const f of asyncFiles) {
    if (!seen.has(f.name)) {
      seen.add(f.name);
      out.push(f);
    }
  }
  return out;
}

function handlePaste(event: ClipboardEvent) {
  if (!props?.enablePaste || props.disabled) {
    return;
  }
  // 始终拦截默认粘贴行为：避免把剪贴板里的文字粘贴到容器内
  event.preventDefault();

  // ⚠️ 关键：DataTransfer 在事件 dispatch 结束（await 让步后）会被浏览器清空。
  // 必须在这里同步提取并存到本地变量，不能在 await 之后再访问 event.clipboardData。
  const syncFiles = collectFromClipboardData(event.clipboardData);
  // 通知父组件：粘贴动作已生效（即使后续收集失败，父组件也感知到这次粘贴）
  emit('pasteFile', syncFiles[0]);

  // 并发锁：粘贴路径只允许一个"轮次"在前台跑
  if (isPasting.value) {
    message.warning($t('ui.upload.pasteBusy'));
    return;
  }
  isPasting.value = true;

  // 从这里开始才进入异步区域
  void runPasteFlow(syncFiles);
}

async function runPasteFlow(initialFiles: File[]) {
  try {
    // 优先路径 1：Async Clipboard API（web.dev 推荐，Windows 多文件场景可靠）
    // 它不依赖事件 dispatch 时机，能在 await 后正常返回完整列表
    const asyncFiles = await collectFromAsyncClipboard();
    // 合并去重：syncFiles 已经在 paste 事件同步阶段抓到本地变量，
    //           asyncFiles 是异步读到的额外文件（可能与 syncFiles 部分重叠）
    const files = mergeAndDedupeFiles(asyncFiles, initialFiles);

    if (files.length === 0) {
      message.warning($t('ui.upload.pasteNotFile'));
      return;
    }
    // 逐张上传，遇到 maxNumber / 校验失败立即停止后续
    let successCount = 0;
    for (const file of files) {
      const doneCount = (fileList.value || []).filter(
        (item) => item.status === UploadResultStatus.DONE,
      ).length;
      if (props.maxNumber !== Infinity && doneCount >= props.maxNumber) {
        message.error($t('ui.upload.maxNumber', [props.maxNumber]));
        break;
      }
      const ok = await uploadPasteFile(file);
      if (ok) successCount += 1;
    }
    if (successCount > 0) {
      if (files.length === 1) {
        message.success($t('ui.upload.uploadSuccess'));
      } else {
        message.success($t('ui.upload.pasteSuccess', [successCount]));
      }
    }
  } catch (error: any) {
    console.error('[ImageUpload] paste flow error:', error);
  } finally {
    isPasting.value = false;
  }
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
</script>

<template>
  <div class="image-upload-wrapper">
    <Upload
      v-bind="uploadAttrs"
      v-model:file-list="fileList"
      :accept="getStringAccept"
      :before-upload="beforeUpload"
      :custom-request="customRequest"
      :disabled="disabled"
      :list-type="listType"
      :max-count="maxNumber"
      :multiple="multiple && maxNumber > 1"
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
    <div
      v-if="enablePaste && !disabled"
      @click="focusPasteTarget"
      class="paste-hint mt-2 text-xs text-gray-400"
    >
      <input
        ref="pasteInputRef"
        type="text"
        tabindex="-1"
        :value="pasteInputValue"
        @paste="handlePaste"
        @input="onPasteInputChange"
        class="paste-hint-input"
        aria-hidden="true"
      />
      <span v-if="!pasteInputValue" class="paste-hint-placeholder">
        {{ $t('ui.upload.pasteHint') }}
      </span>
    </div>
    <div v-if="isPasting" class="mt-1 text-xs text-blue-500">
      {{ $t('ui.upload.pasteUploading') }}
    </div>
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

/* 粘贴提示容器：模拟输入框外观，让光标可见 */
.paste-hint {
  position: relative;
  display: inline-flex;
  align-items: center;
  min-width: 220px;
  min-height: 28px;
  padding: 0 10px;
  color: hsl(var(--foreground));
  cursor: text;
  outline: none;
  background: hsl(var(--input-background));
  border: 1px solid hsl(var(--input));
  border-radius: var(--radius);
  transition:
    border-color 0.2s,
    box-shadow 0.2s;
}

.paste-hint:focus-within {
  border-color: hsl(var(--primary));
  box-shadow: 0 0 0 2px hsl(var(--primary) / 20%);
}

.paste-hint-input {
  flex: 1;
  min-width: 0;
  padding: 0;
  margin: 0;
  font-size: 12px;
  color: transparent;
  text-shadow: none;
  caret-color: hsl(var(--foreground));
  outline: none;
  background: transparent;
  border: 0;
}

.paste-hint-placeholder {
  position: absolute;
  top: 50%;
  left: 10px;
  font-size: 12px;
  color: hsl(var(--input-placeholder));
  pointer-events: none;
  user-select: none;
  transform: translateY(-50%);
}
</style>
