import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { InfraFileConfigApi } from '#/api/infra/file-config';

import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

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
      fieldName: 'configKey',
      label: $t('infra.fileConfig.field.configKey'),
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.fileConfig.field.configKey'),
        ]),
      },
    },
    {
      fieldName: 'name',
      label: $t('infra.fileConfig.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.fileConfig.field.name'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'pathType',
      label: $t('infra.fileConfig.field.pathType'),
      help: $t('infra.fileConfig.help.pathType'),
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_FILE_PATH_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.fileConfig.field.pathType'),
        ]),
      },
    },
    {
      fieldName: 'returnType',
      label: $t('infra.fileConfig.field.returnType'),
      help: $t('infra.fileConfig.help.returnType'),
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_FILE_RETURN_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.fileConfig.field.returnType'),
        ]),
      },
    },
    {
      fieldName: 'maxSize',
      label: $t('infra.fileConfig.field.maxSize'),
      help: $t('infra.fileConfig.help.maxSize'),
      rules: 'required',
      component: 'InputNumber',
      defaultValue: 100,
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.fileConfig.field.maxSize'),
        ]),
        min: 0,
      },
    },
    {
      fieldName: 'fileType',
      label: $t('infra.fileConfig.field.fileType'),
      help: $t('infra.fileConfig.help.fileType'),
      component: 'SelectToString',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_FILE_FILE_TYPE, 'string'),
        type: 'select',
        mode: 'multiple',
      },
    },
    {
      fieldName: 'storage',
      label: $t('infra.fileConfig.field.storage'),
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_FILE_STORAGE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.fileConfig.field.storage'),
        ]),
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['id'],
        show: (formValues) => !formValues.id,
      },
    },
    // DB / Local / FTP / SFTP
    {
      fieldName: 'config.basePath',
      label: $t('infra.fileConfig.field.basePath'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.fileConfig.field.basePath'),
        ]),
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) =>
          formValues.storage >= 10 && formValues.storage <= 12,
      },
    },
    {
      fieldName: 'config.host',
      label: $t('infra.fileConfig.field.host'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.fileConfig.field.host'),
        ]),
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) =>
          formValues.storage >= 11 && formValues.storage <= 12,
      },
    },
    {
      fieldName: 'config.port',
      label: $t('infra.fileConfig.field.port'),
      component: 'InputNumber',
      componentProps: {
        min: 0,
        controlsPosition: 'right',
        placeholder: $t('ui.placeholder.input', [
          $t('infra.fileConfig.field.port'),
        ]),
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) =>
          formValues.storage >= 11 && formValues.storage <= 12,
      },
    },
    {
      fieldName: 'config.username',
      label: $t('infra.fileConfig.field.username'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.fileConfig.field.username'),
        ]),
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) =>
          formValues.storage >= 11 && formValues.storage <= 12,
      },
    },
    {
      fieldName: 'config.password',
      label: $t('infra.fileConfig.field.password'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.fileConfig.field.password'),
        ]),
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) =>
          formValues.storage >= 11 && formValues.storage <= 12,
      },
    },
    {
      fieldName: 'config.mode',
      label: $t('infra.fileConfig.field.mode'),
      component: 'RadioGroup',
      componentProps: {
        options: [
          {
            label: $t('infra.fileConfig.option.activeMode'),
            value: 'Active',
          },
          {
            label: $t('infra.fileConfig.option.passiveMode'),
            value: 'Passive',
          },
        ],
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) => formValues.storage === 11,
      },
    },
    // S3
    {
      fieldName: 'config.endpoint',
      label: $t('infra.fileConfig.field.endpoint'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.fileConfig.field.endpoint'),
        ]),
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) => formValues.storage === 20,
      },
    },
    {
      fieldName: 'config.bucket',
      label: $t('infra.fileConfig.field.bucket'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.fileConfig.field.bucket'),
        ]),
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) => formValues.storage === 20,
      },
    },
    {
      fieldName: 'config.accessKey',
      label: $t('infra.fileConfig.field.accessKey'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.fileConfig.field.accessKey'),
        ]),
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) => formValues.storage === 20,
      },
    },
    {
      fieldName: 'config.accessSecret',
      label: $t('infra.fileConfig.field.accessSecret'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.fileConfig.field.accessSecret'),
        ]),
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) => formValues.storage === 20,
      },
    },
    {
      fieldName: 'config.enablePathStyleAccess',
      label: $t('infra.fileConfig.field.enablePathStyleAccess'),
      component: 'RadioGroup',
      componentProps: {
        options: [
          { label: $t('infra.fileConfig.option.enable'), value: true },
          { label: $t('infra.fileConfig.option.disable'), value: false },
        ],
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) => formValues.storage === 20,
      },
      defaultValue: false,
    },
    // 通用
    {
      fieldName: 'config.domain',
      label: $t('infra.fileConfig.field.domain'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.fileConfig.field.domain'),
        ]),
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) => !!formValues.storage,
      },
    },
    {
      fieldName: 'remark',
      label: $t('infra.fileConfig.field.remark'),
      component: 'Textarea',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.fileConfig.field.remark'),
        ]),
      },
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'configKey',
      label: $t('infra.fileConfig.field.configKey'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.fileConfig.field.configKey'),
        ]),
      },
    },
    {
      fieldName: 'name',
      label: $t('infra.fileConfig.field.name'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.fileConfig.field.name'),
        ]),
      },
    },
    {
      fieldName: 'storage',
      label: $t('infra.fileConfig.field.storage'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_FILE_STORAGE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.fileConfig.field.storage'),
        ]),
      },
    },
    {
      fieldName: 'pathType',
      label: $t('infra.fileConfig.field.pathType'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_FILE_PATH_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.fileConfig.field.pathType'),
        ]),
      },
    },
    {
      fieldName: 'returnType',
      label: $t('infra.fileConfig.field.returnType'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_FILE_RETURN_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.fileConfig.field.returnType'),
        ]),
      },
    },
    {
      fieldName: 'maxSize',
      label: $t('infra.fileConfig.field.maxSize'),
      component: 'NumberRange',
    },
    {
      fieldName: 'fileType',
      label: $t('infra.fileConfig.field.fileType'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_FILE_FILE_TYPE, 'string'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.fileConfig.field.fileType'),
        ]),
      },
    },
    {
      fieldName: 'master',
      label: $t('infra.fileConfig.field.master'),
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_BOOLEAN_STRING, 'boolean'),
        placeholder: $t('ui.placeholder.select', [
          $t('infra.fileConfig.field.master'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('infra.fileConfig.field.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions<InfraFileConfigApi.FileConfig>['columns'] {
  return [
    { type: 'checkbox', width: 40 },
    {
      field: 'id',
      title: $t('infra.fileConfig.field.id'),
      visible: false,
    },
    {
      field: 'configKey',
      title: $t('infra.fileConfig.field.configKey'),
    },
    {
      field: 'name',
      title: $t('infra.fileConfig.field.name'),
      minWidth: 120,
    },
    {
      field: 'master',
      title: $t('infra.fileConfig.field.master'),
      minWidth: 60,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_BOOLEAN_STRING },
      },
    },
    {
      field: 'storage',
      title: $t('infra.fileConfig.field.storage'),
      minWidth: 60,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_FILE_STORAGE },
      },
    },
    {
      field: 'pathType',
      title: $t('infra.fileConfig.field.pathType'),
      minWidth: 60,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_FILE_PATH_TYPE },
      },
    },
    {
      field: 'returnType',
      title: $t('infra.fileConfig.field.returnType'),
      minWidth: 60,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_FILE_RETURN_TYPE },
      },
    },
    {
      field: 'maxSize',
      title: $t('infra.fileConfig.field.maxSize'),
      minWidth: 60,
      sortable: true,
    },
    {
      field: 'fileType',
      title: $t('infra.fileConfig.field.fileType'),
      minWidth: 60,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_FILE_FILE_TYPE },
      },
    },
    {
      field: 'remark',
      title: $t('infra.fileConfig.field.remark'),
      visible: false,
      minWidth: 120,
    },
    {
      field: 'config',
      title: $t('infra.fileConfig.field.config'),
      cellRender: {
        name: 'CellJson',
      },
    },
    {
      field: 'createTime',
      title: $t('infra.fileConfig.field.createTime'),
      visible: false,
      minWidth: 120,
      sortable: true,
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 200,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
