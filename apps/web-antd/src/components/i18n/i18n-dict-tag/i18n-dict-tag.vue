<script setup lang="ts">
import { computed, ref } from 'vue';

import { Popover, Tag } from 'ant-design-vue';

import { $t } from '#/locales';
import { getDictObj } from '#/utils';

interface DictTagProps {
  /**
   * 字典类型
   */
  type: string;
  /**
   * 字典值
   */
  value: any;
  /**
   * 图标
   */
  icon?: string;
  /**
   * 多值分隔符，默认 ';'
   */
  separator?: string;
  /**
   * 未匹配时是否显示原字符，默认 true
   */
  useOriginal?: boolean;
  /**
   * 最大显示数量，默认 0 表示不限制，设置为 1 表示只显示 1 个
   */
  max?: number;
}

const props = withDefaults(defineProps<DictTagProps>(), {
  separator: ';',
  useOriginal: true,
  max: 1,
});

const visible = ref(false);

function isHexColor(color: string) {
  const reg = /^#(?:[0-9a-f]{3}|[0-9a-f]{6})$/i;
  return reg.test(color);
}

function formatColorType(colorType?: string) {
  if (!colorType) return 'default';
  switch (colorType) {
    case 'danger': {
      return 'error';
    }
    case 'info': {
      return 'default';
    }
    case 'primary': {
      return 'processing';
    }
    default: {
      return colorType;
    }
  }
}

/** 获取单个字典标签 */
function getDictTagItem(v: string) {
  const dict = getDictObj(props.type, v);
  if (dict) {
    return {
      label: dict.label || '',
      colorType: formatColorType(dict.colorType),
      matched: true,
    };
  }
  return props.useOriginal
    ? { label: v, colorType: 'default' as const, matched: false }
    : null;
}

/** 获取字典标签列表 */
const dictTags = computed(() => {
  if (!props.type || props.value === undefined || props.value === null) {
    return [];
  }

  const valueStr = String(props.value);
  const values = valueStr.includes(props.separator)
    ? valueStr.split(props.separator).map((v) => v.trim())
    : [valueStr];
  return values.map(getDictTagItem).filter(Boolean) as Array<{
    colorType: string;
    label: string;
    matched: boolean;
  }>;
});

/** 可见的标签 */
const visibleTags = computed(() => {
  if (props.max <= 0 || dictTags.value.length <= props.max) {
    return dictTags.value;
  }
  return dictTags.value.slice(0, props.max);
});

/** 是否显示更多 */
const showMore = computed(() => {
  return props.max > 0 && dictTags.value.length > props.max;
});

/** 隐藏的标签数量 */
const hiddenCount = computed(() => {
  return dictTags.value.length - props.max;
});
</script>

<template>
  <div class="flex flex-wrap items-center justify-center gap-1">
    <Tag
      v-for="(item, index) in visibleTags"
      :key="index"
      :color="isHexColor(item.colorType) ? item.colorType : item.colorType"
    >
      {{ $t(item.label) }}
    </Tag>
    <Popover
      v-if="showMore"
      v-model:open="visible"
      placement="top"
      trigger="hover"
    >
      <template #content>
        <div class="dict-tag-popover">
          <Tag
            v-for="(item, index) in dictTags"
            :key="index"
            :color="
              isHexColor(item.colorType) ? item.colorType : item.colorType
            "
          >
            {{ $t(item.label) }}
          </Tag>
        </div>
      </template>
      <Tag class="dict-tag-more cursor-pointer">+{{ hiddenCount }}...</Tag>
    </Popover>
  </div>
</template>

<style scoped>
.dict-tag-popover {
  display: flex;
  flex-wrap: wrap;
  gap: 4px;
  justify-content: center;
  max-width: 300px;
}
</style>
