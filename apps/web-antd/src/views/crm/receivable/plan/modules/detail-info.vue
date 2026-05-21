<script lang="ts" setup>
import type { CrmReceivablePlanApi } from '#/api/crm/receivable/plan';

import { Divider } from 'ant-design-vue';

import { useDescription } from '#/components/description';
import { $t } from '#/locales';
import { useFollowUpDetailSchema } from '#/views/crm/followup/data';

import { useDetailBaseSchema } from './detail-data';

defineProps<{
  receivablePlan: CrmReceivablePlanApi.Plan;
}>();

const [BaseDescription] = useDescription({
  componentProps: {
    title: $t('crm.receivablePlan.field.baseInfo'),
    bordered: false,
    column: 4,
    class: 'mx-4',
  },
  schema: useDetailBaseSchema(),
});

const [SystemDescription] = useDescription({
  componentProps: {
    title: $t('crm.receivablePlan.field.systemInfo'),
    bordered: false,
    column: 3,
    class: 'mx-4',
  },
  schema: useFollowUpDetailSchema(),
});
</script>

<template>
  <div class="p-4">
    <BaseDescription :data="receivablePlan" />
    <Divider />
    <SystemDescription :data="receivablePlan" />
  </div>
</template>
