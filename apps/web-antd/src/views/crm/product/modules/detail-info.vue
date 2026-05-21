<script lang="ts" setup>
import type { CrmProductApi } from '#/api/crm/product';

import { useDescription } from '#/components/description';
import { $t } from '#/locales';

import { useDetailBaseSchema } from './detail-data';

defineProps<{
  product: CrmProductApi.Product;
}>();

const [ProductDescription] = useDescription({
  componentProps: {
    title: $t('crm.product.field.baseInfo'),
    bordered: false,
    column: 4,
    class: 'mx-4',
  },
  schema: useDetailBaseSchema(),
});
</script>

<template>
  <div class="p-4">
    <ProductDescription :data="product" />
  </div>
</template>
