<script lang="ts" setup>
import { $t } from '@vben/locales';

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
    :title="`${$t('ui.actionTitle.import', [$t('infra:demo01-contact')])}`"
    :import-api="importDemo01Contact"
    :template-api="importDemo01ContactTemplate"
    :template-file-name="`${$t('ui.actionTitle.importTemplate', [
      $t('infra:demo01-contact'),
    ])}.xlsx`"
    :form-schema="useDemo01ContactImportSchema"
    @success="emit('success')"
  />
</template>
