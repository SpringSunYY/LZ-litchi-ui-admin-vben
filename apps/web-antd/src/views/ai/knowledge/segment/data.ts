import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { AiKnowledgeSegmentApi } from '#/api/ai/knowledge/segment';

import { $t } from '#/locales';
import { CommonStatusEnum, DICT_TYPE, getDictOptions } from '#/utils';

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
      fieldName: 'documentId',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'content',
      label: $t('ai.knowledge.segment.field.content'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.knowledge.segment.field.content'),
        ]),
        rows: 6,
        showCount: true,
      },
      rules: 'required',
    },
  ];
}
/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'documentId',
      label: $t('ai.knowledge.segment.field.documentId'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('ai.knowledge.segment.field.documentId'),
        ]),
        allowClear: true,
      },
    },
    {
      fieldName: 'status',
      label: $t('ai.knowledge.segment.field.status'),
      component: 'I18nSelect',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('ai.knowledge.segment.field.status'),
        ]),
        allowClear: true,
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(
  onStatusChange?: (
    newStatus: number,
    row: AiKnowledgeSegmentApi.KnowledgeSegment,
  ) => PromiseLike<boolean | undefined>,
): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('ai.knowledge.segment.field.id'),
      minWidth: 100,
    },
    {
      type: 'expand',
      width: 40,
      slots: { content: 'expand_content' },
    },
    {
      field: 'content',
      title: $t('ai.knowledge.segment.field.content'),
      minWidth: 250,
    },
    {
      field: 'contentLength',
      title: $t('ai.knowledge.segment.field.contentLength'),
      minWidth: 100,
    },
    {
      field: 'tokens',
      title: $t('ai.knowledge.segment.field.tokens'),
      minWidth: 120,
    },
    {
      field: 'retrievalCount',
      title: $t('ai.knowledge.segment.field.retrievalCount'),
      minWidth: 100,
    },
    {
      field: 'status',
      title: $t('ai.knowledge.segment.field.status'),
      minWidth: 100,
      align: 'center',
      cellRender: {
        attrs: { beforeChange: onStatusChange },
        name: 'CellSwitch',
        props: {
          checkedValue: CommonStatusEnum.ENABLE,
          unCheckedValue: CommonStatusEnum.DISABLE,
        },
      },
    },
    {
      field: 'createTime',
      title: $t('ai.knowledge.segment.field.createTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 150,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
