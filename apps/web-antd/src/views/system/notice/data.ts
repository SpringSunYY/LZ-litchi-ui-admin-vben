import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { DescriptionItemSchema } from '#/components/description';

import { h } from 'vue';

import { formatDateTime } from '@vben/utils';

import { z } from '#/adapter/form';
import { DictTag } from '#/components/dict-tag';
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
      label: '公告标题',
      component: 'Input',
      rules: 'required',
    },
    {
      fieldName: 'type',
      label: '公告类型',
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
      label: '公告内容',
      component: 'RichTextarea',
      rules: 'required',
      componentProps: {
        moduleType: 'system',
      },
    },
    {
      fieldName: 'appendixUrl',
      label: '附件',
      component: 'FileUpload',
      componentProps: {
        maxSize: 100,
        moduleType: 'system',
      },
    },
    {
      fieldName: 'status',
      label: '公告状态',
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
      label: '备注',
      component: 'Textarea',
      componentProps: {
        placeholder: '请输入备注',
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'title',
      label: '公告标题',
      component: 'Input',
      componentProps: {
        placeholder: '请输入公告标题',
        allowClear: true,
      },
    },
    {
      fieldName: 'status',
      label: '公告状态',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        placeholder: '请选择公告状态',
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
      title: '公告编号',
    },
    {
      field: 'title',
      title: '公告标题',
    },
    {
      field: 'type',
      title: '公告类型',
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_NOTICE_TYPE },
      },
    },
    {
      field: 'status',
      title: '公告状态',
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'createTime',
      title: '创建时间',
      formatter: 'formatDateTime',
    },
    {
      title: '操作',
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
      label: '公告标题',
      span: 2,
    },
    {
      field: 'type',
      label: '公告类型',
      span: 1,
      content: (data) =>
        h(DictTag, {
          type: DICT_TYPE.SYSTEM_NOTICE_TYPE,
          value: data?.type,
        }),
    },
    {
      field: 'status',
      label: '公告状态',
      span: 1,
      content: (data) =>
        h(DictTag, {
          type: DICT_TYPE.COMMON_STATUS,
          value: data?.status,
        }),
    },
    {
      field: 'content',
      label: '公告内容',
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
      label: '附件',
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
      label: '创建时间',
      span: 1,
      content: (data) => formatDateTime(data?.createTime) as string,
    },
    {
      field: 'remark',
      label: '备注',
      span: 1,
    },
  ];
}
