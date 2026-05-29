import type { VbenFormSchema } from '#/adapter/form';

import { getModelSimpleList } from '#/api/ai/model/model';
import { $t } from '#/locales';
import { AiModelTypeEnum } from '#/utils';

export function useFormSchema(): VbenFormSchema[] {
  return [
    {
      component: 'Input',
      fieldName: 'id',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'systemMessage',
      label: $t('ai.chat.field.systemMessage'),
      component: 'Textarea',
      componentProps: {
        rows: 4,
        placeholder: $t('ai.chat.field.systemMessage'),
      },
    },
    {
      component: 'ApiSelect',
      fieldName: 'modelId',
      label: $t('ai.chat.field.modelId'),
      componentProps: {
        api: () => getModelSimpleList(AiModelTypeEnum.CHAT),
        labelField: 'name',
        valueField: 'id',
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [$t('ai.chat.field.modelId')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'temperature',
      label: $t('ai.chat.field.temperature'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.chat.field.temperature'),
        ]),
        precision: 2,
        min: 0,
        max: 2,
      },
      rules: 'required',
    },
    {
      fieldName: 'maxTokens',
      label: $t('ai.chat.field.maxTokens'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.chat.field.maxTokens'),
        ]),
        min: 0,
        max: 8192,
      },
      rules: 'required',
    },
    {
      fieldName: 'maxContexts',
      label: $t('ai.chat.field.maxContexts'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.chat.field.maxContexts'),
        ]),
        min: 0,
        max: 20,
      },
      rules: 'required',
    },
  ];
}
