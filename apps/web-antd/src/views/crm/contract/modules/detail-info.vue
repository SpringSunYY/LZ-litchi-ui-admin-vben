<script lang="ts" setup>
import type { CrmContractApi } from '#/api/crm/contract';

import { Divider } from 'ant-design-vue';

import { useDescription } from '#/components/description';
import { $t } from '#/locales';
import { useFollowUpDetailSchema } from '#/views/crm/followup/data';

import { useDetailBaseSchema } from './detail-data';

defineProps<{
  contract: CrmContractApi.Contract; // 合同信息
}>();

const [BaseDescription] = useDescription({
  componentProps: {
    title: $t('crm.contract.description.baseInfo'),
    bordered: false,
    column: 4,
    class: 'mx-4',
  },
  schema: useDetailBaseSchema(),
});

const [SystemDescription] = useDescription({
  componentProps: {
    title: $t('crm.contract.description.systemInfo'),
    bordered: false,
    column: 3,
    class: 'mx-4',
  },
  schema: useFollowUpDetailSchema(),
});
</script>

<template>
  <div class="p-4">
    <BaseDescription :data="contract" />
    <Divider />
    <SystemDescription :data="contract" />
  </div>
</template>
