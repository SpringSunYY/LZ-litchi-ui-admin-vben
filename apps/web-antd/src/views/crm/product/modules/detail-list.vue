<script lang="ts" setup>
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { CrmProductApi } from '#/api/crm/product';

import { ref } from 'vue';

import { erpPriceInputFormatter } from '@vben/utils';

import { useVbenVxeGrid } from '#/adapter/vxe-table';
import { getBusiness } from '#/api/crm/business';
import { getContract } from '#/api/crm/contract';
import { BizTypeEnum } from '#/api/crm/permission';
import { $t } from '#/locales';

import { useDetailListColumns } from './detail-data';

const props = defineProps<{
  bizId: number;
  bizType: BizTypeEnum;
}>();

const discountPercent = ref(0);
const totalProductPrice = ref(0);

const [Grid] = useVbenVxeGrid({
  gridOptions: {
    columns: useDetailListColumns(props.bizType === BizTypeEnum.CRM_BUSINESS),
    height: 600,
    pagerConfig: {
      enabled: false,
    },
    proxyConfig: {
      ajax: {
        query: async (_params) => {
          const data =
            props.bizType === BizTypeEnum.CRM_BUSINESS
              ? await getBusiness(props.bizId)
              : await getContract(props.bizId);
          discountPercent.value = data.discountPercent;
          totalProductPrice.value = data.totalProductPrice;
          return data.products;
        },
      },
    },
    toolbarConfig: {
      refresh: { code: 'query' },
      search: true,
    },
    keepSource: true,
    rowConfig: {
      keyField: 'id',
    },
  } as VxeTableGridOptions<CrmProductApi.Product>,
});
</script>

<template>
  <div>
    <Grid />
    <div class="flex flex-col items-end justify-end">
      <span class="ml-4 font-bold text-red-500">
        {{
          `${$t('crm.product.productTable.totalProductPrice')}：${erpPriceInputFormatter(totalProductPrice)}${$t('common.yuan')}`
        }}
      </span>
      <span class="font-bold text-red-500">
        {{
          `${$t('crm.product.productTable.discountPercent')}：${erpPriceInputFormatter(discountPercent)}%`
        }}
      </span>
      <span class="font-bold text-red-500">
        {{
          `${$t('crm.product.productTable.actualAmount')}：${erpPriceInputFormatter(totalProductPrice * (1 - discountPercent / 100))}${$t('common.yuan')}`
        }}
      </span>
    </div>
  </div>
</template>
