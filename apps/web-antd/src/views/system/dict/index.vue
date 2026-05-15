<script lang="ts" setup>
import { ref } from 'vue';

import { DocAlert, Page } from '@vben/common-ui';

import { $t } from '#/locales';

import DataGrid from './modules/data-grid.vue';
import TypeGrid from './modules/type-grid.vue';

const searchDictType = ref<string>(); // 搜索的字典类型
const dataGridRef = ref<InstanceType<typeof DataGrid>>();

function handleDictTypeSelect(dictType: string) {
  searchDictType.value = dictType;
}

function handleDictTypeDeleted() {
  searchDictType.value = undefined;
  dataGridRef.value?.onRefresh();
}
</script>

<template>
  <Page auto-content-height>
    <template #doc>
      <DocAlert
        :title="$t('system.dict.menu')"
        url="https://doc.iocoder.cn/system-dict/"
      />
    </template>

    <div class="flex h-full">
      <!-- 左侧字典类型列表 -->
      <div class="w-1/2 pr-3">
        <TypeGrid
          @select="handleDictTypeSelect"
          @deleted="handleDictTypeDeleted"
        />
      </div>
      <!-- 右侧字典数据列表 -->
      <div class="w-1/2">
        <DataGrid ref="dataGridRef" :dict-type="searchDictType" />
      </div>
    </div>
  </Page>
</template>
