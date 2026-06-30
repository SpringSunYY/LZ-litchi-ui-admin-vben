<script setup lang="ts">
import type { MentionItem } from '../modules/tinymce-plugin';

import { computed, onBeforeUnmount, ref, shallowRef } from 'vue';

import { useVbenModal } from '@vben/common-ui';

import Editor from '@tinymce/tinymce-vue';
import { Alert } from 'ant-design-vue';

import { setupTinyPlugins } from './tinymce-plugin';
import { $t } from '#/locales';

const props = withDefaults(
  defineProps<{
    formFields?: Array<{ field: string; title: string }>;
  }>(),
  {
    formFields: () => [],
  },
);

const emits = defineEmits<{
  (e: 'confirm', value: string): void;
}>();

/** TinyMCE 自托管：https://www.jianshu.com/p/59a9c3802443 */
const tinymceScriptSrc = `${import.meta.env.VITE_BASE}tinymce/tinymce.min.js`;

const [Modal, modalApi] = useVbenModal({
  async onOpenChange(isOpen: boolean) {
    if (!isOpen) {
      return;
    }
    modalApi.lock();
    try {
      const { template } = modalApi.getData<{
        template: string;
      }>();
      if (template !== undefined) {
        valueHtml.value = template;
      }
    } finally {
      modalApi.unlock();
    }
  },
  onConfirm() {
    emits('confirm', valueHtml.value);
    modalApi.close();
  },
});

const mentionList = computed<MentionItem[]>(() => {
  const base: MentionItem[] = [
    { id: 'startUser', name: $t('bpm.model.printTemplate.field.startUser') },
    {
      id: 'startUserDept',
      name: $t('bpm.model.printTemplate.field.startUserDept'),
    },
    {
      id: 'processName',
      name: $t('bpm.model.printTemplate.field.processName'),
    },
    { id: 'processNum', name: $t('bpm.model.printTemplate.field.processNum') },
    { id: 'startTime', name: $t('bpm.model.printTemplate.field.startTime') },
    { id: 'endTime', name: $t('bpm.model.printTemplate.field.endTime') },
    {
      id: 'processStatus',
      name: $t('bpm.model.printTemplate.field.processStatus'),
    },
    { id: 'printUser', name: $t('bpm.model.printTemplate.field.printUser') },
    { id: 'printTime', name: $t('bpm.model.printTemplate.field.printTime') },
  ];

  const extras: MentionItem[] = (props.formFields || []).map((it: any) => ({
    id: it.field,
    name: `[表单]${it.title}`,
  }));
  return [...base, ...extras];
}); // 提供给 @ 自动补全的字段（默认 + 表单字段）

const valueHtml = ref<string>('');
const editorRef = shallowRef<any>(); // 编辑器

const tinyInit = {
  height: 400,
  width: 'auto',
  menubar: false,
  plugins: 'link importcss table code preview autoresize lists ',
  toolbar:
    'undo redo | styles fontsize | bold italic underline | alignleft aligncenter alignright | link table | processrecord code preview',
  language: 'zh_CN',
  branding: false,
  statusbar: true,
  content_style:
    'body { font-family:Helvetica,Arial,sans-serif; font-size:16px }',
  setup(editor: any) {
    editorRef.value = editor;
    // 在编辑器 setup 时注册自定义插件
    setupTinyPlugins(editor, () => mentionList.value);
  },
};

onBeforeUnmount(() => {
  if (editorRef.value) {
    editorRef.value.destroy?.();
  }
});
</script>

<template>
  <Modal class="w-3/4" :title="$t('bpm.model.printTemplate.title')">
    <div class="mb-3">
      <Alert
        :message="$t('bpm.model.printTemplate.tip')"
        type="info"
        show-icon
      />
    </div>
    <Editor
      v-model="valueHtml"
      :init="tinyInit"
      :tinymce-script-src="tinymceScriptSrc"
      license-key="gpl"
    />
  </Modal>
</template>
