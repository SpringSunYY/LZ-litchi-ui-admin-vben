<script lang="ts" setup>
import { reactive } from 'vue';

import { Select, Switch, Textarea } from 'ant-design-vue';

import { $t } from '#/locales';

import Title from '../title/index.vue';

defineOptions({ name: 'AiMusicModeDesc' });

const formData = reactive({
  desc: '',
  pure: false,
  version: '3',
});

defineExpose({
  formData,
});
</script>

<template>
  <div>
    <Title
      :title="$t('ai.music.message.musicLyricDesc')"
      :desc="$t('ai.music.message.musicLyricHint')"
    >
      <Textarea
        v-model:value="formData.desc"
        :auto-size="{ minRows: 6, maxRows: 6 }"
        :maxlength="1200"
        :show-count="true"
        :placeholder="$t('ai.music.message.musicLyricHint')"
      />
    </Title>

    <Title
      :title="$t('ai.music.message.pureMusic')"
      class="mt-5"
      :desc="$t('ai.music.message.pureMusicHint')"
    >
      <template #extra>
        <Switch v-model:checked="formData.pure" size="small" />
      </template>
    </Title>

    <Title
      :title="$t('ai.music.message.version')"
      :desc="$t('ai.music.message.musicLyricHint')"
    >
      <Select
        v-model:value="formData.version"
        class="w-full"
        :placeholder="$t('ui.placeholder.select')"
      >
        <Select.Option
          v-for="item in [
            {
              value: '3',
              label: 'V3',
            },
            {
              value: '2',
              label: 'V2',
            },
          ]"
          :key="item.value"
          :value="item.value"
        >
          {{ item.label }}
        </Select.Option>
      </Select>
    </Title>
  </div>
</template>
