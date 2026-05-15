import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { DescriptionItemSchema } from '#/components/description';

import { h } from 'vue';

import { formatDateTime } from '@vben/utils';

import { z } from '#/adapter/form';
import { DictTag } from '#/components/dict-tag';
import { $t } from '#/locales';
import { CommonStatusEnum, DICT_TYPE, getDictOptions } from '#/utils';

/** 新增/修改的表单 */
export function useFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'id',
      component: 'Input',
      dependencies: {
        triggerFields: [''],
        show: () => false,
      },
    },
    {
      fieldName: 'title',
      label: $t('system.notice.field.title'),
      component: 'Input',
      rules: 'required',
    },
    {
      fieldName: 'type',
      label: $t('system.notice.field.type'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_NOTICE_TYPE, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: 'required',
    },
    {
      fieldName: 'content',
      label: $t('system.notice.field.content'),
      component: 'RichTextarea',
      rules: 'required',
      componentProps: {
        moduleType: 'system',
      },
    },
    {
      fieldName: 'appendixUrl',
      label: $t('system.notice.field.appendixUrl'),
      component: 'FileUpload',
      componentProps: {
        maxSize: 100,
        moduleType: 'system',
      },
    },
    {
      fieldName: 'status',
      label: $t('system.notice.field.status'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
    {
      fieldName: 'remark',
      label: $t('system.notice.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('system.notice.field.remark')]),
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'title',
      label: $t('system.notice.field.title'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('system.notice.field.title')]),
        allowClear: true,
      },
    },
    {
      fieldName: 'status',
      label: $t('system.notice.field.status'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        placeholder: $t('ui.placeholder.select', [$t('system.notice.field.status')]),
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
      title: $t('system.notice.field.id'),
    },
    {
      field: 'title',
      title: $t('system.notice.field.title'),
    },
    {
      field: 'type',
      title: $t('system.notice.field.type'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_NOTICE_TYPE },
      },
    },
    {
      field: 'status',
      title: $t('system.notice.field.status'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'createTime',
      title: $t('system.notice.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 220,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}

/** 详情展示的字段 */
export function useDetailSchema(): DescriptionItemSchema[] {
  return [
    {
      field: 'title',
      label: $t('system.notice.field.title'),
      span: 2,
    },
    {
      field: 'type',
      label: $t('system.notice.field.type'),
      span: 1,
      content: (data) =>
        h(DictTag, {
          type: DICT_TYPE.SYSTEM_NOTICE_TYPE,
          value: data?.type,
        }),
    },
    {
      field: 'status',
      label: $t('system.notice.field.status'),
      span: 1,
      content: (data) =>
        h(DictTag, {
          type: DICT_TYPE.COMMON_STATUS,
          value: data?.status,
        }),
    },
    {
      field: 'content',
      label: $t('system.notice.field.content'),
      span: 2,
      content: (data) =>
        data?.content
          ? h('div', {
              innerHTML: data.content,
              style: 'word-break: break-all;',
            })
          : '-',
    },
    {
      field: 'appendixUrl',
      label: $t('system.notice.field.appendixUrl'),
      span: 2,
      content: (data) => {
        if (!data?.appendixUrl) return '-';
        const urls = data.appendixUrl
          .split('||')
          .filter((item: string) => item.trim());
        if (urls.length === 0) return '-';
        return h(
          'div',
          {
            class: 'file-list',
            style: 'display: flex; flex-direction: column; gap: 4px;',
          },
          urls.map((url: string) => {
            const fileName = decodeURIComponent(
              url.slice(url.lastIndexOf('/') + 1),
            );
            return h(
              'a',
              {
                href: url,
                target: '_blank',
                rel: 'noopener noreferrer',
                style: 'color: #1890ff; text-decoration: underline;',
              },
              fileName,
            );
          }),
        );
      },
    },
    {
      field: 'createTime',
      label: $t('system.notice.field.createTime'),
      span: 1,
      content: (data) => formatDateTime(data?.createTime) as string,
    },
    {
      field: 'remark',
      label: $t('system.notice.field.remark'),
      span: 1,
    },
  ];
}
