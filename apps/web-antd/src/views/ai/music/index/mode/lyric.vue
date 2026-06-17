<script lang="ts" setup>
import { reactive, ref } from 'vue';

import { Button, Input, Select, Space, Tag, Textarea } from 'ant-design-vue';

import { $t } from '#/locales';

import Title from '../title/index.vue';

// Tag.CheckableTag 才能支持选中态（普通 Tag 没有 checked / checkable）
const { CheckableTag } = Tag;

defineOptions({ name: 'AiMusicModeLyric' });

const tags = [
  { key: 'rock', label: $t('ai.music.message.tagRock') },
  { key: 'punk', label: $t('ai.music.message.tagPunk') },
  { key: 'jazz', label: $t('ai.music.message.tagJazz') },
  { key: 'soul', label: $t('ai.music.message.tagSoul') },
  { key: 'country', label: $t('ai.music.message.tagCountry') },
  { key: 'kidsmusic', label: $t('ai.music.message.tagKidsmusic') },
  { key: 'pop', label: $t('ai.music.message.tagPop') },
];

const showCustom = ref(false);
const activeTag = ref<string>('');

const formData = reactive({
  lyric: '',
  style: '',
  name: '',
  version: '',
});

function onTagChange(key: string, checked: boolean) {
  // 与"自定义"互斥
  showCustom.value = false;
  activeTag.value = checked ? key : '';
  formData.style = activeTag.value;
}

function toggleCustom() {
  showCustom.value = !showCustom.value;
  if (showCustom.value) {
    activeTag.value = '';
  }
}

defineExpose({
  formData,
});
</script>

<template>
  <div class="">
    <Title
      :title="$t('ai.music.message.lyric')"
      :desc="$t('ai.music.message.lyricHint')"
    >
      <Textarea
        v-model:value="formData.lyric"
        :auto-size="{ minRows: 6, maxRows: 6 }"
        :maxlength="1200"
        :show-count="true"
        :placeholder="$t('ai.music.message.lyricPlaceholder')"
      />
    </Title>

    <Title :title="$t('ai.music.message.musicStyle')">
      <Space class="flex-wrap">
        <CheckableTag
          v-for="tag in tags"
          :key="tag.key"
          class="mb-2 cursor-pointer"
          :checked="activeTag === tag.key"
          @change="(checked: boolean) => onTagChange(tag.key, checked)"
        >
          {{ tag.label }}
        </CheckableTag>
      </Space>

      <Button
        :type="showCustom ? 'primary' : 'default'"
        shape="round"
        size="small"
        class="mb-2"
        @click="toggleCustom"
      >
        {{ $t('ai.music.message.customStyle') }}
      </Button>
    </Title>

    <Title
      v-show="showCustom"
      :desc="$t('ai.music.message.styleHint')"
      class="mt-3"
    >
      <Textarea
        v-model="formData.style"
        :auto-size="{ minRows: 4, maxRows: 4 }"
        :maxlength="256"
        show-count
        :placeholder="$t('ai.music.message.stylePlaceholder')"
      />
    </Title>

    <Title :title="$t('ai.music.message.musicName')">
      <Input
        class="w-full"
        v-model="formData.name"
        :placeholder="$t('ai.music.message.musicNamePlaceholder')"
      />
    </Title>

    <Title :title="$t('ai.music.message.version')">
      <Select
        v-model:value="formData.version"
        class="w-full"
        :placeholder="$t('ui.placeholder.select')"
      >
        <Select.Option value="3">
          {{ $t('ai.music.message.v3') }}
        </Select.Option>
        <Select.Option value="2">
          {{ $t('ai.music.message.v2') }}
        </Select.Option>
      </Select>
    </Title>
  </div>
</template>
