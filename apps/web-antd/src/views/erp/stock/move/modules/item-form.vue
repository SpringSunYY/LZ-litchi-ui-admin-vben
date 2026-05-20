<script lang="ts" setup>
import type { ErpProductApi } from '#/api/erp/product/product';
import type { ErpStockMoveApi } from '#/api/erp/stock/move';

import { computed, nextTick, onMounted, ref, watch } from 'vue';

import { $t } from '@vben/locales';
import {
  erpCountInputFormatter,
  erpPriceInputFormatter,
  erpPriceMultiply,
} from '@vben/utils';

import { Input, InputNumber, Select } from 'ant-design-vue';

import { TableAction, useVbenVxeGrid } from '#/adapter/vxe-table';
import { getProductSimpleList } from '#/api/erp/product/product';
import { getStockCount } from '#/api/erp/stock/stock';
import { getWarehouseSimpleList } from '#/api/erp/stock/warehouse';

import { useFormItemColumns } from '../data';

interface Props {
  items?: ErpStockMoveApi.StockMoveItem[];
  disabled?: boolean;
}

const props = withDefaults(defineProps<Props>(), {
  items: () => [],
  disabled: false,
});

const emit = defineEmits(['update:items']);

const tableData = ref<ErpStockMoveApi.StockMoveItem[]>([]); // 表格数据
const productOptions = ref<ErpProductApi.Product[]>([]); // 产品下拉选项
const warehouseOptions = ref<any[]>([]); // 仓库下拉选项

/** 获取表格合计数据 */
const summaries = computed(() => {
  return {
    count: tableData.value.reduce((sum, item) => sum + (item.count || 0), 0),
    totalPrice: tableData.value.reduce(
      (sum, item) => sum + (item.totalPrice || 0),
      0,
    ),
  };
});

/** 表格配置 */
const [Grid, gridApi] = useVbenVxeGrid({
  gridOptions: {
    columns: useFormItemColumns(props.disabled),
    data: tableData.value,
    minHeight: 250,
    autoResize: true,
    border: true,
    rowConfig: {
      keyField: 'seq',
      isHover: true,
    },
    pagerConfig: {
      enabled: false,
    },
    toolbarConfig: {
      enabled: false,
    },
  },
});

/** 监听外部传入的列数据 */
watch(
  () => props.items,
  async (items) => {
    if (!items) {
      return;
    }
    items.forEach((item) => initRow(item));
    tableData.value = [...items];
    await nextTick(); // 特殊：保证 gridApi 已经初始化
    await gridApi.grid.reloadData(tableData.value);
  },
  {
    immediate: true,
  },
);

/** 处理新增 */
function handleAdd() {
  const newRow = {
    id: undefined,
    fromWarehouseId: undefined,
    toWarehouseId: undefined,
    productId: undefined,
    productUnitName: undefined, // 产品单位
    productBarCode: undefined, // 产品条码
    productPrice: undefined,
    stockCount: undefined,
    count: 1,
    totalPrice: undefined,
    remark: undefined,
  };
  tableData.value.push(newRow as any);
  // 通知父组件更新
  emit('update:items', [...tableData.value]);
}

/** 处理删除 */
function handleDelete(row: ErpStockMoveApi.StockMoveItem) {
  // TODO YY
  const index = tableData.value.findIndex((item) => item.seq === row.seq);
  if (index !== -1) {
    tableData.value.splice(index, 1);
  }
  // 通知父组件更新
  emit('update:items', [...tableData.value]);
}

/** 处理调出仓库变更 */
async function handleFromWarehouseChange(warehouseId: any, row: any) {
  const warehouse = warehouseOptions.value.find((w) => w.id === warehouseId);
  if (!warehouse) {
    return;
  }
  row.fromWarehouseId = warehouseId;
  // 如果已选择产品，重新获取库存
  if (row.productId) {
    row.stockCount = (await getStockCount(row.productId, warehouseId)) || 0;
  }
  handleRowChange(row);
}

/** 处理调入仓库变更 */
async function handleToWarehouseChange(warehouseId: any, row: any) {
  const warehouse = warehouseOptions.value.find((w) => w.id === warehouseId);
  if (!warehouse) {
    return;
  }
  row.toWarehouseId = warehouseId;
  handleRowChange(row);
}

/** 处理产品变更 */
async function handleProductChange(productId: any, row: any) {
  const product = productOptions.value.find((p) => p.id === productId);
  if (!product) {
    return;
  }
  row.productId = productId;
  row.productUnitId = product.unitId;
  row.productBarCode = product.barCode;
  row.productUnitName = product.unitName;
  row.productName = product.name;
  row.stockCount = row.fromWarehouseId
    ? (await getStockCount(productId, row.fromWarehouseId)) || 0
    : (await getStockCount(productId)) || 0;
  row.productPrice = product.purchasePrice || 0;
  row.count = row.count || 1;
  handleRowChange(row);
}

/** 处理行数据变更 */
function handleRowChange(row: any) {
  const index = tableData.value.findIndex((item) => item.seq === row.seq);
  if (index === -1) {
    tableData.value.push(row);
  } else {
    tableData.value[index] = row;
  }
  emit('update:items', [...tableData.value]);
}

/** 初始化行数据 */
function initRow(row: ErpStockMoveApi.StockMoveItem) {
  if (row.productPrice && row.count) {
    row.totalPrice = erpPriceMultiply(row.productPrice, row.count) ?? 0;
  }
}

/** 表单校验 */
function validate() {
  for (let i = 0; i < tableData.value.length; i++) {
    const item = tableData.value[i];
    if (item) {
      if (!item.fromWarehouseId) {
        throw new Error(
          $t('erp.stockMove.message.fromWarehouseRequired', [i + 1]),
        );
      }
      if (!item.toWarehouseId) {
        throw new Error(
          $t('erp.stockMove.message.toWarehouseRequired', [i + 1]),
        );
      }
      if (!item.productId) {
        throw new Error($t('erp.stockMove.message.productRequired', [i + 1]));
      }
      if (!item.count || item.count <= 0) {
        throw new Error($t('erp.stockMove.message.countRequired', [i + 1]));
      }
    }
  }
}

defineExpose({
  validate,
});

/** 初始化 */
onMounted(async () => {
  productOptions.value = await getProductSimpleList();
  warehouseOptions.value = await getWarehouseSimpleList();
  // 目的：新增时，默认添加一行
  if (tableData.value.length === 0) {
    handleAdd();
  }
});
</script>

<template>
  <Grid class="w-full">
    <template #fromWarehouseId="{ row }">
      <Select
        v-model:value="row.fromWarehouseId"
        :options="warehouseOptions"
        :field-names="{ label: 'name', value: 'id' }"
        class="w-full"
        :placeholder="
          $t('ui.placeholder.select', [
            $t('erp.stockMove.field.fromWarehouseIdName'),
          ])
        "
        show-search
        :disabled="disabled"
        @change="handleFromWarehouseChange($event, row)"
      />
    </template>
    <template #toWarehouseId="{ row }">
      <Select
        v-model:value="row.toWarehouseId"
        :options="warehouseOptions"
        :field-names="{ label: 'name', value: 'id' }"
        class="w-full"
        :placeholder="
          $t('ui.placeholder.select', [
            $t('erp.stockMove.field.toWarehouseIdName'),
          ])
        "
        show-search
        :disabled="disabled"
        @change="handleToWarehouseChange($event, row)"
      />
    </template>
    <template #productId="{ row }">
      <Select
        v-model:value="row.productId"
        :options="productOptions"
        :field-names="{ label: 'name', value: 'id' }"
        class="w-full"
        :placeholder="
          $t('ui.placeholder.select', [$t('erp.stockMove.field.productName')])
        "
        show-search
        :disabled="disabled"
        @change="handleProductChange($event, row)"
      />
    </template>
    <template #count="{ row }">
      <InputNumber
        v-if="!disabled"
        v-model:value="row.count"
        :min="0"
        :precision="3"
        @change="handleRowChange(row)"
      />
      <span v-else>{{ erpCountInputFormatter(row.count) || '-' }}</span>
    </template>
    <template #productPrice="{ row }">
      <InputNumber
        v-if="!disabled"
        v-model:value="row.productPrice"
        :min="0"
        :precision="2"
        @change="handleRowChange(row)"
      />
      <span v-else>{{ erpPriceInputFormatter(row.productPrice) || '-' }}</span>
    </template>
    <template #remark="{ row }">
      <Input v-if="!disabled" v-model:value="row.remark" class="w-full" />
      <span v-else>{{ row.remark || '-' }}</span>
    </template>
    <template #actions="{ row }">
      <TableAction
        :actions="[
          {
            label: $t('common.delete'),
            type: 'link',
            danger: true,
            popConfirm: {
              title: $t('erp.stockMove.message.confirmDeleteProduct'),
              confirm: handleDelete.bind(null, row),
            },
          },
        ]"
      />
    </template>

    <template #bottom>
      <div class="border-border bg-muted mt-2 rounded border p-2">
        <div class="text-muted-foreground flex justify-between text-sm">
          <span class="text-foreground font-medium">{{
            $t('erp.stockMove.message.totalLabel')
          }}</span>
          <div class="flex space-x-4">
            <span
              >{{ $t('erp.stockMove.message.countLabel')
              }}{{ erpCountInputFormatter(summaries.count) }}</span
            >
            <span>
              {{ $t('erp.stockMove.message.amountLabel')
              }}{{ erpPriceInputFormatter(summaries.totalPrice) }}
            </span>
          </div>
        </div>
      </div>
      <TableAction
        v-if="!disabled"
        class="mt-2 flex justify-center"
        :actions="[
          {
            label: $t('erp.stockMove.message.addMoveProduct'),
            type: 'default',
            onClick: handleAdd,
          },
        ]"
      />
    </template>
  </Grid>
</template>
