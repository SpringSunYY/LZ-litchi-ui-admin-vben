import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { z } from '#/adapter/form';
import { getModelSimpleList } from '#/api/ai/model/model';
import { $t } from '#/locales';
import {
  AiModelTypeEnum,
  CommonStatusEnum,
  DICT_TYPE,
  getDictOptions,
  getRangePickerDefaultProps,
} from '#/utils';

/** 新增/修改的表单 */
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
      component: 'Input',
      fieldName: 'name',
      label: $t('ai.knowledge.field.name'),
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.knowledge.field.name'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'description',
      label: $t('ai.knowledge.field.description'),
      component: 'Textarea',
      componentProps: {
        rows: 3,
        placeholder: $t('ui.placeholder.input', [
          $t('ai.knowledge.field.description'),
        ]),
      },
    },
    {
      component: 'ApiSelect',
      fieldName: 'embeddingModelId',
      label: $t('ai.knowledge.field.embeddingModel'),
      componentProps: {
        api: () => getModelSimpleList(AiModelTypeEnum.EMBEDDING),
        labelField: 'name',
        valueField: 'id',
        allowClear: true,
        placeholder: $t('ui.placeholder.select', [
          $t('ai.knowledge.field.embeddingModel'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'topK',
      label: $t('ai.knowledge.field.topK'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.knowledge.field.topK'),
        ]),
        min: 0,
        max: 10,
      },
      rules: 'required',
    },
    {
      fieldName: 'similarityThreshold',
      label: $t('ai.knowledge.field.similarityThreshold'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.knowledge.field.similarityThreshold'),
        ]),
        min: 0,
        max: 1,
        step: 0.01,
        precision: 2,
      },
      rules: 'required',
    },
    {
      fieldName: 'status',
      label: $t('ai.knowledge.field.status'),
      component: 'I18nRadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('ai.knowledge.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.knowledge.field.name'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'status',
      label: $t('ai.knowledge.field.status'),
      component: 'I18nSelect',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('ai.knowledge.field.status'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'createTime',
      label: $t('ai.knowledge.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('ai.knowledge.field.id'),
      minWidth: 100,
    },
    {
      field: 'name',
      title: $t('ai.knowledge.field.name'),
      minWidth: 150,
    },
    {
      field: 'description',
      title: $t('ai.knowledge.field.description'),
      minWidth: 200,
    },
    {
      field: 'embeddingModel',
      title: $t('ai.knowledge.field.embeddingModel'),
      minWidth: 150,
    },
    {
      field: 'status',
      title: $t('ai.knowledge.field.status'),
      minWidth: 100,
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'createTime',
      title: $t('ai.knowledge.field.createTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 280,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
