import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';

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
      fieldName: 'name',
      label: $t('infra.dataSourceConfig.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.dataSourceConfig.field.name'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'url',
      label: $t('infra.dataSourceConfig.field.url'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.dataSourceConfig.field.url'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'username',
      label: $t('infra.dataSourceConfig.field.username'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.dataSourceConfig.field.username'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'password',
      label: $t('infra.dataSourceConfig.field.password'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.dataSourceConfig.field.password'),
        ]),
        type: 'password',
      },
      rules: 'required',
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'id',
      title: $t('infra.dataSourceConfig.field.id'),
    },
    {
      field: 'name',
      title: $t('infra.dataSourceConfig.field.name'),
    },
    {
      field: 'url',
      title: $t('infra.dataSourceConfig.field.url'),
    },
    {
      field: 'username',
      title: $t('infra.dataSourceConfig.field.username'),
    },
    {
      field: 'createTime',
      title: $t('infra.dataSourceConfig.field.createTime'),
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 160,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
