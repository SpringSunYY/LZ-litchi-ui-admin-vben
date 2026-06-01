<script lang="ts" setup>
import { $t } from '@vben/locales';

import {
  importI18nMessage,
  importI18nMessageTemplate,
} from '#/api/infra/i18n/i18nMessage';
import { ImportExcel } from '#/components/import-excel';

import { useI18nMessageImportSchema } from '../data';

const emit = defineEmits(['success']);
</script>
<template>
  <ImportExcel
    :title="$t('ui.actionTitle.import', [$t('infra.i18nMessage')])"
    :import-api="importI18nMessage"
    :template-api="importI18nMessageTemplate"
    :template-file-name="`${$t('ui.actionTitle.importTemplate', [$t('infra.i18nMessage')])}.xlsx`"
    :form-schema="useI18nMessageImportSchema"
    @success="emit('success')"
  />
</template>
