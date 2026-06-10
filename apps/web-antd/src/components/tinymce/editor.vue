<script lang="ts" setup>
import type { IPropTypes } from '@tinymce/tinymce-vue/lib/cjs/main/ts/components/EditorPropTypes';
import type { Editor as EditorType } from 'tinymce/tinymce';

import type { PropType } from 'vue';

import {
  computed,
  nextTick,
  onActivated,
  onBeforeUnmount,
  onDeactivated,
  onMounted,
  ref,
  unref,
  useAttrs,
  watch,
} from 'vue';

import { preferences, usePreferences } from '@vben/preferences';
import { buildShortUUID, isNumber } from '@vben/utils';

import Editor from '@tinymce/tinymce-vue';

import { useUpload } from '#/components/upload/use-upload';
import { MODULE_TYPE_ENUM } from '#/utils';

import FileUpload from './file-upload.vue';
import { bindHandlers } from './helper';
import ImgUpload from './img-upload.vue';
import {
  plugins as defaultPlugins,
  toolbar as defaultToolbar,
} from './tinymce';

type InitOptions = IPropTypes['init'];
defineOptions({ name: 'Tinymce', inheritAttrs: false });

const props = defineProps({
  options: {
    type: Object as PropType<Partial<InitOptions>>,
    default: () => ({}),
  },
  toolbar: {
    type: String,
    default: defaultToolbar,
  },
  plugins: {
    type: String,
    default: defaultPlugins,
  },
  height: {
    type: [Number, String] as PropType<number | string>,
    required: false,
    default: 400,
  },
  width: {
    type: [Number, String] as PropType<number | string>,
    required: false,
    default: 'auto',
  },
  showImageUpload: {
    type: Boolean,
    default: true,
  },
  showFileUpload: {
    type: Boolean,
    default: true,
  },
  fileAccept: {
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
  fileMaxSize: {
    type: Number,
    default: 20,
  },
  imageAccept: {
    type: Array as PropType<string[]>,
    default: () => ['jpg', 'jpeg', 'png', 'gif', 'webp', 'bmp', 'svg'],
  },
  imageMaxSize: {
    type: Number,
    default: 10,
  },
  moduleType: {
    // 文件模块类型,默认：BPM，因为创建组件没有没有模块类型
    default: MODULE_TYPE_ENUM.BPM,
    type: String,
  },
});

const emit = defineEmits(['change']);

/** 外部使用 v-model 绑定值 */
const modelValue = defineModel('modelValue', { default: '', type: String });

/** TinyMCE 自托管：https://www.jianshu.com/p/59a9c3802443 */
const tinymceScriptSrc = `${import.meta.env.VITE_BASE}tinymce/tinymce.min.js`;

const attrs = useAttrs();
const editorRef = ref<EditorType>();
const fullscreen = ref(false); // 图片上传，是否放到全屏的位置
const tinymceId = ref<string>(buildShortUUID('tiny-vue'));
const elRef = ref<HTMLElement | null>(null);

const containerWidth = computed(() => {
  const width = props.width;
  if (isNumber(width)) {
    return `${width}px`;
  }
  return width;
});

/** 主题皮肤 */
const { isDark } = usePreferences();
const skinName = computed(() => {
  return isDark.value ? 'oxide-dark' : 'oxide';
});

const contentCss = computed(() => {
  return isDark.value ? 'dark' : 'default';
});

/** 国际化：需要在 langs 目录下，放好语言包 */
const { locale } = usePreferences();
const langName = computed(() => {
  if (locale.value === 'en-US') {
    return 'en';
  }
  return 'zh_CN';
});

/** 监听 mode、locale 进行主题、语言切换 */
const init = ref(true);
watch(
  () => [preferences.theme.mode, preferences.app.locale],
  async () => {
    if (!editorRef.value) {
      return;
    }
    // 通过 init + v-if 来挂载/卸载组件
    destroy();
    init.value = false;
    await nextTick();
    init.value = true;
    // 等待加载完成
    await nextTick();
    setEditorMode();
  },
);

const initOptions = computed((): InitOptions => {
  const { height, options, plugins, toolbar } = props;
  return {
    height,
    toolbar,
    menubar: 'file edit view insert format tools table help',
    plugins,
    language: langName.value,
    branding: false, // 禁止显示，右下角的“使用 TinyMCE 构建”
    default_link_target: '_blank',
    link_title: false,
    object_resizing: true, // 和 vben2.0 不同，它默认是 false
    auto_focus: undefined, // 和 vben2.0 不同，它默认是 true
    skin: skinName.value,
    content_css: contentCss.value,
    content_style:
      'body { font-family:Helvetica,Arial,sans-serif; font-size:16px }',
    contextmenu: 'link image table',
    image_advtab: true, // 图片高级选项
    image_caption: true,
    importcss_append: true,
    noneditable_class: 'mceNonEditable',
    paste_data_images: true, // 允许粘贴图片，默认 base64 格式，images_upload_handler 启用时为上传
    quickbars_selection_toolbar:
      'bold italic | quicklink h2 h3 blockquote quickimage quicktable',
    toolbar_mode: 'sliding',
    ui_mode: 'split',
    ...options,
    images_upload_handler: (blobInfo: { blob: () => Blob }) => {
      return new Promise((resolve, reject) => {
        const file = blobInfo.blob() as File;
        const { httpRequest } = useUpload(undefined, props.moduleType);
        httpRequest(file)
          .then((url) => {
            resolve(url);
          })
          .catch((error) => {
            console.error('tinymce 上传图片失败:', error);
            reject(error.message);
          });
      });
    },
    setup: (editor: EditorType) => {
      editorRef.value = editor;
      editor.on('init', (e: unknown) => initSetup(e));
    },
  };
});

/** 监听 options.readonly 是否只读 */
const disabled = computed(() => props.options.readonly ?? false);
watch(
  () => props.options,
  (options) => {
    const getDisabled = options && Reflect.get(options, 'readonly');
    const editor = unref(editorRef);
    if (editor) {
      editor.mode.set(getDisabled ? 'readonly' : 'design');
    }
  },
);

onMounted(() => {
  if (!initOptions.value.inline) {
    tinymceId.value = buildShortUUID('tiny-vue');
  }
  nextTick(() => {
    setTimeout(() => {
      initEditor();
      setEditorMode();
    }, 30);
  });
});

onBeforeUnmount(() => {
  destroy();
});

onDeactivated(() => {
  destroy();
});

onActivated(() => {
  setEditorMode();
});

function setEditorMode() {
  const editor = unref(editorRef);
  if (editor) {
    const mode = props.options.readonly ? 'readonly' : 'design';
    editor.mode.set(mode);
  }
}

function destroy() {
  fullscreen.value = false;
  const editor = unref(editorRef);
  editor?.destroy();
}

function initEditor() {
  const el = unref(elRef);
  if (el) {
    el.style.visibility = '';
  }
}

function initSetup(e: any) {
  const editor = unref(editorRef);
  if (!editor) {
    return;
  }
  const value = modelValue.value || '';

  editor.setContent(value);
  bindModelHandlers(editor);
  bindHandlers(e, attrs, unref(editorRef));
}

function setValue(editor: Record<string, any>, val?: string, prevVal?: string) {
  if (
    editor &&
    typeof val === 'string' &&
    val !== prevVal &&
    val !== editor.getContent({ format: attrs.outputFormat })
  ) {
    editor.setContent(val);
  }
}

function bindModelHandlers(editor: any) {
  const modelEvents = attrs.modelEvents ?? null;
  const normalizedEvents = Array.isArray(modelEvents)
    ? modelEvents.join(' ')
    : modelEvents;

  watch(
    () => modelValue.value,
    (val, prevVal) => {
      setValue(editor, val, prevVal);
    },
  );

  editor.on(normalizedEvents || 'change keyup undo redo', () => {
    const content = editor.getContent({ format: attrs.outputFormat });
    emit('change', content);
  });

  editor.on('FullscreenStateChanged', (e: any) => {
    fullscreen.value = e.state;
  });
}

function getUploadingImgName(name: string) {
  return `[uploading:${name}]`;
}

function handleImageUploading(name: string) {
  const editor = unref(editorRef);
  if (!editor) {
    return;
  }
  editor.execCommand('mceInsertContent', false, getUploadingImgName(name));
  const content = editor?.getContent() ?? '';
  setValue(editor, content);
}

function handleDone(name: string, url: string) {
  const editor = unref(editorRef);
  if (!editor) {
    return;
  }
  const content = editor?.getContent() ?? '';
  const val =
    content?.replace(getUploadingImgName(name), `<img src="${url}"/>`) ?? '';
  setValue(editor, val);
}

function handleError(name: string) {
  const editor = unref(editorRef);
  if (!editor) {
    return;
  }
  const content = editor?.getContent() ?? '';
  const val = content?.replace(getUploadingImgName(name), '') ?? '';
  setValue(editor, val);
}

function handleFileDone(name: string, url: string) {
  const editor = unref(editorRef);
  if (!editor) {
    return;
  }
  // 插入文件链接
  const linkHtml = `<a href="${url}" target="_blank">${name}</a>&nbsp;`;
  editor.execCommand('mceInsertContent', false, linkHtml);
}

function handleFileError() {
  // 文件上传失败，不需要特殊处理
}
</script>

<template>
  <div :style="{ width: containerWidth }" class="app-tinymce">
    <div :class="[{ fullscreen }]" class="app-tinymce-upload-actions">
      <ImgUpload
        v-if="showImageUpload"
        v-show="editorRef"
        :accept="imageAccept"
        :max-size="imageMaxSize"
        :disabled="disabled"
        :fullscreen="fullscreen"
        :module-type="moduleType"
        @done="handleDone"
        @error="handleError"
        @uploading="handleImageUploading"
      />
      <FileUpload
        v-if="showFileUpload"
        v-show="editorRef"
        :accept="fileAccept"
        :max-size="fileMaxSize"
        :disabled="disabled"
        :fullscreen="fullscreen"
        :module-type="moduleType"
        @done="handleFileDone"
        @error="handleFileError"
      />
    </div>
    <Editor
      v-if="!initOptions.inline && init"
      v-model="modelValue"
      :init="initOptions"
      :style="{ zIndex: 5000, marginBottom: '8px' }"
      :tinymce-script-src="tinymceScriptSrc"
      license-key="gpl"
    />
    <slot v-else></slot>
  </div>
</template>
<style lang="scss">
.tox.tox-silver-sink.tox-tinymce-aux,
.tox-dialog-wrap {
  z-index: 3000 !important; /* 由于 vben modal/drawer 的 zIndex 为 2000，需要调整 z-index（默认 1300）超过它，避免遮挡 */
}
</style>
<style lang="scss" scoped>
.app-tinymce {
  position: relative;
  line-height: normal;

  .app-tinymce-upload-actions {
    position: absolute;
    top: 4px;
    right: 10px;
    z-index: 20;
    display: flex;
    flex-direction: column;
    gap: 8px;
    align-items: flex-end;

    &.fullscreen {
      position: fixed;
      z-index: 10000;
    }
  }

  :deep(.textarea) {
    z-index: -1;
    visibility: hidden;
  }
}

/* 隐藏右上角 tinymce upgrade 按钮 */
:deep(.tox-promotion) {
  display: none !important;
}
</style>
