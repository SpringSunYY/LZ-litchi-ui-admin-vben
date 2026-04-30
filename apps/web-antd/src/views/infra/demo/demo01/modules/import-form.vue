<script lang="ts" setup>
import {
  importDemo01Contact,
  importDemo01ContactTemplate,
} from '#/api/infra/demo/demo01';
import { ImportExcel } from '#/components/import-excel';

import { useDemo01ContactImportSchema } from '../data';

const emit = defineEmits(['success']);
</script>

<template>
  <ImportExcel
    title="导入示例联系人"
    :import-api="importDemo01Contact"
    :template-api="importDemo01ContactTemplate"
    template-file-name="示例联系人导入模板.xls"
    :form-schema="useDemo01ContactImportSchema"
    @success="emit('success')"
  />
</template>
