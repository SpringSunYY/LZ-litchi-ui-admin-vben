import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { z } from '#/adapter/form';
import { getSimpleKnowledgeList } from '#/api/ai/knowledge/knowledge';
import { getModelSimpleList } from '#/api/ai/model/model';
import { getToolSimpleList } from '#/api/ai/model/tool';
import { $t } from '#/locales';
import {
  AiModelTypeEnum,
  CommonStatusEnum,
  DICT_TYPE,
  getDictOptions,
  MODULE_TYPE_ENUM,
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
      fieldName: 'formType',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      component: 'Input',
      fieldName: 'name',
      label: $t('ai.model.chatRole.field.name'),
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.chatRole.field.name'),
        ]),
      },
    },
    {
      component: 'ImageUpload',
      fieldName: 'avatar',
      label: $t('ai.model.chatRole.field.avatar'),
      rules: 'required',
      componentProps: {
        moduleType: MODULE_TYPE_ENUM.AI,
      },
    },
    {
      fieldName: 'modelId',
      label: $t('ai.model.chatRole.field.modelId'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('ai.model.chatRole.field.modelId'),
        ]),
        api: () => getModelSimpleList(AiModelTypeEnum.CHAT),
        labelField: 'name',
        valueField: 'id',
        allowClear: true,
      },
      dependencies: {
        triggerFields: ['formType'],
        show: (values) => {
          return values.formType === 'create' || values.formType === 'update';
        },
      },
    },
    {
      component: 'Input',
      fieldName: 'category',
      label: $t('ai.model.chatRole.field.category'),
      rules: 'required',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.chatRole.field.category'),
        ]),
      },
      dependencies: {
        triggerFields: ['formType'],
        show: (values) => {
          return values.formType === 'create' || values.formType === 'update';
        },
      },
    },
    {
      component: 'Textarea',
      fieldName: 'description',
      label: $t('ai.model.chatRole.field.description'),
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.chatRole.field.description'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'systemMessage',
      label: $t('ai.model.chatRole.field.systemMessage'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.chatRole.field.systemMessage'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'knowledgeIds',
      label: $t('ai.model.chatRole.field.knowledgeIds'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('ai.model.chatRole.field.knowledgeIds'),
        ]),
        api: getSimpleKnowledgeList,
        labelField: 'name',
        mode: 'multiple',
        valueField: 'id',
        allowClear: true,
      },
    },
    {
      fieldName: 'toolIds',
      label: $t('ai.model.chatRole.field.toolIds'),
      component: 'ApiSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('ai.model.chatRole.field.toolIds'),
        ]),
        api: getToolSimpleList,
        mode: 'multiple',
        labelField: 'name',
        valueField: 'id',
        allowClear: true,
      },
    },
    {
      fieldName: 'mcpClientNames',
      label: $t('ai.model.chatRole.field.mcpClientNames'),
      component: 'I18nSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('ai.model.chatRole.field.mcpClientNames'),
        ]),
        options: getDictOptions(DICT_TYPE.AI_MCP_CLIENT_NAME, 'string'),
        mode: 'multiple',
        allowClear: true,
      },
    },
    {
      fieldName: 'publicStatus',
      label: $t('ai.model.chatRole.field.publicStatus'),
      component: 'I18nRadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_BOOLEAN_STRING, 'boolean'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      defaultValue: true,
      dependencies: {
        triggerFields: ['formType'],
        show: (values) => {
          return values.formType === 'create' || values.formType === 'update';
        },
      },
      rules: 'required',
    },
    {
      fieldName: 'sort',
      label: $t('ai.model.chatRole.field.sort'),
      component: 'InputNumber',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.chatRole.field.sort'),
        ]),
      },
      dependencies: {
        triggerFields: ['formType'],
        show: (values) => {
          return values.formType === 'create' || values.formType === 'update';
        },
      },
      rules: 'required',
    },
    {
      fieldName: 'status',
      label: $t('ai.model.chatRole.field.status'),
      component: 'I18nRadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      dependencies: {
        triggerFields: ['formType'],
        show: (values) => {
          return values.formType === 'create' || values.formType === 'update';
        },
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
      label: $t('ai.model.chatRole.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.chatRole.field.name'),
        ]),
      },
    },
    {
      fieldName: 'category',
      label: $t('ai.model.chatRole.field.category'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.model.chatRole.field.category'),
        ]),
      },
    },
    {
      fieldName: 'publicStatus',
      label: $t('ai.model.chatRole.field.publicStatus'),
      component: 'I18nSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('ai.model.chatRole.field.publicStatus'),
        ]),
        options: getDictOptions(DICT_TYPE.INFRA_BOOLEAN_STRING, 'boolean'),
        allowClear: true,
      },
      defaultValue: true,
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'name',
      title: $t('ai.model.chatRole.field.name'),
      minWidth: 100,
    },
    {
      title: $t('ai.model.chatRole.field.modelName'),
      field: 'modelName',
      minWidth: 100,
    },
    {
      title: $t('ai.model.chatRole.field.avatar'),
      field: 'avatar',
      minWidth: 140,
      cellRender: {
        name: 'CellImage',
        props: {
          width: 40,
          height: 40,
        },
      },
    },
    {
      title: $t('ai.model.chatRole.field.category'),
      field: 'category',
      minWidth: 100,
    },
    {
      title: $t('ai.model.chatRole.field.description'),
      field: 'description',
      minWidth: 100,
    },
    {
      title: $t('ai.model.chatRole.field.systemMessage'),
      field: 'systemMessage',
      minWidth: 100,
    },
    {
      title: $t('ai.model.chatRole.field.knowledgeIds'),
      field: 'knowledgeIds',
      minWidth: 100,
      formatter: ({ cellValue }) => {
        return !cellValue || cellValue.length === 0
          ? '-'
          : $t('ai.model.chatRole.message.referencedKnowledge', [
              cellValue.length,
            ]);
      },
    },
    {
      title: $t('ai.model.chatRole.field.toolIds'),
      field: 'toolIds',
      minWidth: 100,
      formatter: ({ cellValue }) => {
        return !cellValue || cellValue.length === 0
          ? '-'
          : $t('ai.model.chatRole.message.referencedTools', [cellValue.length]);
      },
    },
    {
      title: $t('ai.model.chatRole.field.mcpClientNames'),
      field: 'mcpClientNames',
      minWidth: 100,
      formatter: ({ cellValue }) => {
        return !cellValue || cellValue.length === 0
          ? '-'
          : $t('ai.model.chatRole.message.referencedMcp', [cellValue.length]);
      },
    },
    {
      field: 'publicStatus',
      title: $t('ai.model.chatRole.field.publicStatus'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.INFRA_BOOLEAN_STRING },
      },
      minWidth: 80,
    },
    {
      field: 'status',
      title: $t('ai.model.chatRole.field.status'),
      cellRender: {
        name: 'CellI18nDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
      minWidth: 80,
    },
    {
      title: $t('ai.model.chatRole.field.sort'),
      field: 'sort',
      minWidth: 80,
    },
    {
      title: $t('common.operation'),
      width: 130,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
