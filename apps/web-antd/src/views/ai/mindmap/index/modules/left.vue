<script setup lang="ts">
import { reactive, ref } from 'vue';

import { Button, Textarea } from 'ant-design-vue';

import { $t } from '#/locales';
import { MindMapContentExample } from '#/utils';

defineProps<{
  isGenerating: boolean;
}>();

const emits = defineEmits(['submit', 'directGenerate']);

const formData = reactive({
  prompt: '',
});

const generatedContent = ref(MindMapContentExample); // 已有的内容

defineExpose({
  setGeneratedContent(newContent: string) {
    // 设置已有的内容，在生成结束的时候将结果赋值给该值
    generatedContent.value = newContent;
  },
});
</script>
<template>
  <div class="bg-card flex w-80 flex-col rounded-lg p-5">
    <h3 class="text-primary h-7 w-full text-center text-xl leading-7">
      {{ $t('ai.mindmap.mindmap') }}
    </h3>
    <div class="mt-4 flex-grow overflow-y-auto">
      <div>
        <b>{{ $t('ai.mindmap.message.yourRequirement') }}</b>
        <Textarea
          v-model:value="formData.prompt"
          :maxlength="1024"
          :rows="8"
          class="mt-4 w-full"
          :placeholder="$t('ai.mindmap.message.promptPlaceholder')"
          show-count
        />
        <Button
          class="mt-4 !w-full"
          type="primary"
          :loading="isGenerating"
          @click="emits('submit', formData)"
        >
          {{ $t('ai.mindmap.message.generating') }}
        </Button>
      </div>
      <div class="mt-7">
        <b>{{ $t('ai.mindmap.message.useExistingContent') }}</b>
        <Textarea
          v-model:value="generatedContent"
          :maxlength="1024"
          :rows="8"
          class="mt-4 w-full"
          :placeholder="$t('ai.mindmap.message.existingPlaceholder')"
          show-count
        />
        <Button
          class="mt-4 !w-full"
          type="primary"
          @click="emits('directGenerate', generatedContent)"
          :disabled="isGenerating"
        >
          {{ $t('ai.mindmap.message.directGenerate') }}
        </Button>
      </div>
    </div>
  </div>
</template>
