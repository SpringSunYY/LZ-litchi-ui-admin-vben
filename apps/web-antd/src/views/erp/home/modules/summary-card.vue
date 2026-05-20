<script lang="ts" setup>
import type { AnalysisOverviewItem } from '@vben/common-ui';

import { computed } from 'vue';

import { AnalysisOverview } from '@vben/common-ui';
import {
  SvgBellIcon,
  SvgCakeIcon,
  SvgCardIcon,
  SvgDownloadIcon,
} from '@vben/icons';

import { $t } from '#/locales';

interface Props {
  saleSummary?: {
    monthPrice?: number;
    todayPrice?: number;
    yearPrice?: number;
    yesterdayPrice?: number;
  };
  purchaseSummary?: {
    monthPrice?: number;
    todayPrice?: number;
    yearPrice?: number;
    yesterdayPrice?: number;
  };
}

const props = withDefaults(defineProps<Props>(), {
  saleSummary: () => ({}),
  purchaseSummary: () => ({}),
});

/** 概览数据 */
const overviewItems = computed<AnalysisOverviewItem[]>(() => [
  {
    icon: SvgCardIcon,
    title: $t('erp.home.field.saleToday'),
    totalTitle: $t('erp.home.field.purchaseToday'),
    totalValue: props.purchaseSummary?.todayPrice || 0,
    value: props.saleSummary?.todayPrice || 0,
  },
  {
    icon: SvgCakeIcon,
    title: $t('erp.home.field.saleYesterday'),
    totalTitle: $t('erp.home.field.purchaseYesterday'),
    totalValue: props.purchaseSummary?.yesterdayPrice || 0,
    value: props.saleSummary?.yesterdayPrice || 0,
  },
  {
    icon: SvgDownloadIcon,
    title: $t('erp.home.field.saleThisMonth'),
    totalTitle: $t('erp.home.field.purchaseThisMonth'),
    totalValue: props.purchaseSummary?.monthPrice || 0,
    value: props.saleSummary?.monthPrice || 0,
  },
  {
    icon: SvgBellIcon,
    title: $t('erp.home.field.saleThisYear'),
    totalTitle: $t('erp.home.field.purchaseThisYear'),
    totalValue: props.purchaseSummary?.yearPrice || 0,
    value: props.saleSummary?.yearPrice || 0,
  },
]);
</script>

<template>
  <AnalysisOverview :items="overviewItems" />
</template>
