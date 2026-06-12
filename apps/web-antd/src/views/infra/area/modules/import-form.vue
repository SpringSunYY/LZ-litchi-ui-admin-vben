<script lang="ts" setup>
import { $t } from '@vben/locales';

import { importArea, importAreaTemplate } from '#/api/infra/area';
import { ImportExcel } from '#/components/import-excel';

import { useAreaImportSchema } from '../data';

const emit = defineEmits(['success']);
</script>
<template>
  <ImportExcel
    :title="$t('ui.actionTitle.import', [$t('infra.area.area')])"
    :import-api="importArea"
    :template-api="importAreaTemplate"
    :template-file-name="`${$t('ui.actionTitle.importTemplate', [$t('infra.area.area')])}.xlsx`"
    :form-schema="useAreaImportSchema"
    @success="emit('success')"
  />
</template>
