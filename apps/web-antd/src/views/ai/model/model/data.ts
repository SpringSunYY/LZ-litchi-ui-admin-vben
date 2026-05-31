import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { AiModelApiKeyApi } from '#/api/ai/model/apiKey';

import { z } from '#/adapter/form';
import { getApiKeySimpleList } from '#/api/ai/model/apiKey';
import {
  AiModelTypeEnum,
  CommonStatusEnum,
  DICT_TYPE,
  getDictOptions,
} from '#/utils';
import { $t } from '#/locales';

/** 关联数据 */
let apiKeyList: AiModelApiKeyApi.ApiKey[] = [];
getApiKeySimpleList().then((data) => (apiKeyList = data));

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
      fieldName: 'platform',
      label: $t('ai.model.field.platform'),
      component: 'I18nSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('ai.model.field.platform'),
        ]),
        options: getDictOptions(DICT_TYPE.AI_PLATFORM, 'string'),
        allowClear: true,
      },
      rules: 'required',
    },
    {
      fieldName: 'type',
      label: $t('ai.model.field.type'),
      component: 'I18nSelect',
      componentProps: (values) => {
        return {
          placeholder: $t('ui.placeholder.input', [$t('ai.model.field.type')]),
          disabled: !!values.id,
          options: getDictOptions(DICT_TYPE.AI_MODEL_TYPE, 'number'),
          allowClear: true,
        };
      },
      rules: 'required',
    },
    {
      fieldName: 'keyId',
      label: $t('ai.model.field.keyIdName'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('ai.model.field.keyIdName'),
        ]),
        api: getApiKeySimpleList,
        labelField: 'name',
        valueField: 'id',
        allowClear: true,
      },
      rules: 'required',
    },
    {
      component: 'Input',
      fieldName: 'name',
      label: $t('ai.model.field.name'),
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('ai.model.field.name')]),
      },
    },
    {
      component: 'Input',
      fieldName: 'model',
      label: $t('ai.model.field.model'),
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('ai.model.field.model')]),
      },
    },
    {
      fieldName: 'sort',
      label: $t('ai.model.field.sort'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('ai.model.field.sort')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'status',
      label: $t('ai.model.field.status'),
      component: 'I18nRadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
    {
      fieldName: 'temperature',
      label: $t('ai.model.field.temperature'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.field.temperature'),
        ]),
        min: 0,
        max: 2,
      },
      dependencies: {
        triggerFields: ['type'],
        show: (values) => {
          return [AiModelTypeEnum.CHAT].includes(values.type);
        },
      },
      rules: 'required',
    },
    {
      fieldName: 'maxTokens',
      label: $t('ai.model.field.maxTokens'),
      component: 'InputNumber',
      componentProps: {
        min: 0,
        max: 8192,
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.field.maxTokens'),
        ]),
      },
      dependencies: {
        triggerFields: ['type'],
        show: (values) => {
          return [AiModelTypeEnum.CHAT].includes(values.type);
        },
      },
      rules: 'required',
    },
    {
      fieldName: 'maxContexts',
      label: $t('ai.model.field.maxContexts'),
      component: 'InputNumber',
      componentProps: {
        min: 0,
        max: 20,
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.field.maxContexts'),
        ]),
      },
      dependencies: {
        triggerFields: ['type'],
        show: (values) => {
          return [AiModelTypeEnum.CHAT].includes(values.type);
        },
      },
      rules: 'required',
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'name',
      label: $t('ai.model.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('ai.model.field.name')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'model',
      label: $t('ai.model.field.model'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('ai.model.field.model')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'platform',
      label: $t('ai.model.field.platform'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.field.platform'),
        ]),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'platform',
      title: $t('ai.model.field.platform'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.AI_PLATFORM },
      },
      minWidth: 100,
    },
    {
      field: 'type',
      title: $t('ai.model.field.type'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.AI_MODEL_TYPE },
      },
      minWidth: 100,
    },
    {
      field: 'name',
      title: $t('ai.model.field.name'),
      minWidth: 180,
    },
    {
      title: $t('ai.model.field.model'),
      field: 'model',
      minWidth: 180,
    },
    {
      title: $t('ai.model.field.keyIdName'),
      field: 'keyId',
      formatter: ({ cellValue }) => {
        return (
          apiKeyList.find((apiKey) => apiKey.id === cellValue)?.name || '-'
        );
      },
      minWidth: 140,
    },
    {
      title: $t('ai.model.field.sort'),
      field: 'sort',
      minWidth: 80,
    },
    {
      field: 'status',
      title: $t('ai.model.field.status'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
      minWidth: 80,
    },
    {
      field: 'temperature',
      title: $t('ai.model.field.temperature'),
      minWidth: 100,
    },
    {
      title: $t('ai.model.field.maxTokens'),
      field: 'maxTokens',
      minWidth: 140,
    },
    {
      title: $t('ai.model.field.maxContexts'),
      field: 'maxContexts',
      minWidth: 120,
    },
    {
      title: $t('common.operation'),
      width: 130,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
