<script lang="ts" setup>
import type { CrmBusinessApi } from '#/api/crm/business';

import { Divider } from 'ant-design-vue';

import { useDescription } from '#/components/description';
import { $t } from '#/locales';
import { useFollowUpDetailSchema } from '#/views/crm/followup/data';

import { useDetailBaseSchema } from './detail-data';

defineProps<{
  business: CrmBusinessApi.Business;
}>();

const [BaseDescription] = useDescription({
  componentProps: {
    title: $t('crm.business.description.baseInfo'),
    bordered: false,
    column: 4,
    class: 'mx-4',
  },
  schema: useDetailBaseSchema(),
});

const [SystemDescription] = useDescription({
  componentProps: {
    title: $t('crm.business.description.systemInfo'),
    bordered: false,
    column: 3,
    class: 'mx-4',
  },
  schema: useFollowUpDetailSchema(),
});
</script>

<template>
  <div class="p-4">
    <BaseDescription :data="business" />
    <Divider />
    <SystemDescription :data="business" />
  </div>
</template>
