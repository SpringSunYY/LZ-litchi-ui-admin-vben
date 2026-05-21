<script lang="ts" setup>
import type { CrmClueApi } from '#/api/crm/clue';

import { Divider } from 'ant-design-vue';

import { useDescription } from '#/components/description';
import { $t } from '#/locales';
import { useFollowUpDetailSchema } from '#/views/crm/followup/data';

import { useDetailBaseSchema } from './detail-data';

defineProps<{
  clue: CrmClueApi.Clue; // 线索信息
}>();

const [BaseDescription] = useDescription({
  componentProps: {
    title: $t('crm.clue.description.baseInfo'),
    bordered: false,
    column: 4,
    class: 'mx-4',
  },
  schema: useDetailBaseSchema(),
});

const [SystemDescription] = useDescription({
  componentProps: {
    title: $t('crm.clue.description.systemInfo'),
    bordered: false,
    column: 3,
    class: 'mx-4',
  },
  schema: useFollowUpDetailSchema(),
});
</script>

<template>
  <div class="p-4">
    <BaseDescription :data="clue" />
    <Divider />
    <SystemDescription :data="clue" />
  </div>
</template>
