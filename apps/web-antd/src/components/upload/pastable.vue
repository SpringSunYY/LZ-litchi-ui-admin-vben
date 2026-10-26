<script lang="ts" setup>
import { computed, ref } from 'vue';

import { $t } from '@vben/locales';

defineOptions({ name: 'Pastable' });

const props = defineProps({
  /** 是否启用粘贴上传提示 */
  pastable: {
    default: true,
    type: Boolean,
  },
  /** 提示文案 key */
  text: {
    default: 'ui.upload.pastable.hint',
    type: String,
  },
});

const emit = defineEmits(['paste']);

const hintText = computed(() => $t(props.text));

const pasteInputRef = ref<HTMLInputElement | null>(null);
const pasteInputValue = ref<string>('');

/**
 * 点击提示区域时聚焦内部隐藏 input，
 * 让 paste 事件的 target 落在一个真实可聚焦的元素上
 * （对齐老版本 ImageUpload 的 .paste-hint 做法）。
 */
function focusPastableTarget(event: MouseEvent) {
  // 阻止冒泡到外层 Upload 触发「点击上传」
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

/** input 上的 paste 直接转发给 document 监听器（会冒泡到 document） */
function onPaste(event: ClipboardEvent) {
  emit('paste', event);
}
</script>

<template>
  <div
    v-if="pastable"
    class="pastable-hint mt-2 text-xs text-gray-400"
    @click="focusPastableTarget"
  >
    <input
      ref="pasteInputRef"
      type="text"
      tabindex="-1"
      :value="pasteInputValue"
      class="pastable-hint-input"
      aria-label="paste-upload"
      @paste="onPaste"
      @input="onPasteInputChange"
    />
    <span
      v-if="!pasteInputValue"
      class="pastable-hint-placeholder"
      @click="focusPastableTarget"
    >
      {{ hintText }}
    </span>
  </div>
</template>

<style>
.pastable-hint {
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

.pastable-hint:focus-within {
  border-color: hsl(var(--primary));
  box-shadow: 0 0 0 2px hsl(var(--primary) / 20%);
}

.pastable-hint-input {
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

.pastable-hint-placeholder {
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
