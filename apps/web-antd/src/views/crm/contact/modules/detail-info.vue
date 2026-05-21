<script lang="ts" setup>
import type { CrmContactApi } from '#/api/crm/contact';

import { Divider } from 'ant-design-vue';

import { useDescription } from '#/components/description';
import { $t } from '#/locales';
import { useFollowUpDetailSchema } from '#/views/crm/followup/data';

import { useDetailBaseSchema } from './detail-data';

defineProps<{
  contact: CrmContactApi.Contact; // 联系人信息
}>();

const [BaseDescription] = useDescription({
  componentProps: {
    title: $t('crm.contact.description.baseInfo'),
    bordered: false,
    column: 4,
    class: 'mx-4',
  },
  schema: useDetailBaseSchema(),
});

const [SystemDescription] = useDescription({
  componentProps: {
    title: $t('crm.contact.description.systemInfo'),
    bordered: false,
    column: 3,
    class: 'mx-4',
  },
  schema: useFollowUpDetailSchema(),
});
</script>

<template>
  <div class="p-4">
    <BaseDescription :data="contact" />
    <Divider />
    <SystemDescription :data="contact" />
  </div>
</template>
