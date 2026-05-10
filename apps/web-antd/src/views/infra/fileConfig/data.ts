import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { InfraFileConfigApi } from '#/api/infra/file-config';

import { $t } from '@vben/locales';

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
      label: '配置键',
      rules: 'required',
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', ['配置键']),
      },
    },
    {
      fieldName: 'name',
      label: '配置名',
      component: 'Input',
      componentProps: {
        placeholder: '请输入配置名',
      },
      rules: 'required',
    },
    {
      fieldName: 'pathType',
      label: '路径类型',
      help: '返回的路径类型，绝对路径表示返回全路径，相对路径表示返回相对路径。',
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_FILE_PATH_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', ['路径类型']),
      },
    },
    {
      fieldName: 'returnType',
      label: '返回类型',
      help: '请求后端返回的类型，后端下载表示后端先下载再返回，返回URL表示后端直接返回URL重定向。',
      rules: 'required',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_FILE_RETURN_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', ['返回类型']),
      },
    },
    {
      fieldName: 'maxSize',
      label: '文件大小',
      help: '文件最大上传大小，单位为MB，例如：1024表示1GB。',
      rules: 'required',
      component: 'InputNumber',
      defaultValue: 100,
      componentProps: {
        placeholder: $t('ui.placeholder.input', ['文件大小']),
        min: 0,
      },
    },
    {
      fieldName: 'fileType',
      label: '文件类型',
      help: '限制的文件类型，all表示不限制，选择的例如png表示只可以上传png。',
      component: 'SelectToString',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_FILE_FILE_TYPE, 'string'),
        type: 'select',
        mode: 'multiple',
      },
    },
    {
      fieldName: 'storage',
      label: '存储器',
      component: 'Select',
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_FILE_STORAGE, 'number'),
        placeholder: '请选择存储器',
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
      label: '基础路径',
      component: 'Input',
      componentProps: {
        placeholder: '请输入基础路径',
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
      label: '主机地址',
      component: 'Input',
      componentProps: {
        placeholder: '请输入主机地址',
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
      label: '主机端口',
      component: 'InputNumber',
      componentProps: {
        min: 0,
        controlsPosition: 'right',
        placeholder: '请输入主机端口',
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
      label: '用户名',
      component: 'Input',
      componentProps: {
        placeholder: '请输入用户名',
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
      label: '密码',
      component: 'Input',
      componentProps: {
        placeholder: '请输入密码',
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
      label: '连接模式',
      component: 'RadioGroup',
      componentProps: {
        options: [
          { label: '主动模式', value: 'Active' },
          { label: '被动模式', value: 'Passive' },
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
      label: '节点地址',
      component: 'Input',
      componentProps: {
        placeholder: '请输入节点地址',
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) => formValues.storage === 20,
      },
    },
    {
      fieldName: 'config.bucket',
      label: '存储 bucket',
      component: 'Input',
      componentProps: {
        placeholder: '请输入 bucket',
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) => formValues.storage === 20,
      },
    },
    {
      fieldName: 'config.accessKey',
      label: 'accessKey',
      component: 'Input',
      componentProps: {
        placeholder: '请输入 accessKey',
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) => formValues.storage === 20,
      },
    },
    {
      fieldName: 'config.accessSecret',
      label: 'accessSecret',
      component: 'Input',
      componentProps: {
        placeholder: '请输入 accessSecret',
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) => formValues.storage === 20,
      },
    },
    {
      fieldName: 'config.enablePathStyleAccess',
      label: '是否 Path Style',
      component: 'RadioGroup',
      componentProps: {
        options: [
          { label: '启用', value: true },
          { label: '禁用', value: false },
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
      label: '自定义域名',
      component: 'Input',
      componentProps: {
        placeholder: '请输入自定义域名',
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['storage'],
        show: (formValues) => !!formValues.storage,
      },
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
      fieldName: 'configKey',
      label: '配置键',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', ['配置键']),
      },
    },
    {
      fieldName: 'name',
      label: '配置名',
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', ['配置名']),
      },
    },
    {
      fieldName: 'storage',
      label: '存储器',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_FILE_STORAGE, 'number'),
        placeholder: $t('ui.placeholder.select', ['存储器']),
      },
    },
    {
      fieldName: 'pathType',
      label: '路径类型',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_FILE_PATH_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', ['路径类型']),
      },
    },
    {
      fieldName: 'returnType',
      label: '返回类型',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_FILE_RETURN_TYPE, 'number'),
        placeholder: $t('ui.placeholder.select', ['返回类型']),
      },
    },
    {
      fieldName: 'maxSize',
      label: '文件大小',
      component: 'NumberRange',
    },
    {
      fieldName: 'fileType',
      label: '文件类型',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_FILE_FILE_TYPE, 'string'),
        placeholder: $t('ui.placeholder.select', ['文件类型']),
      },
    },
    {
      fieldName: 'master',
      label: '是否为主配置',
      component: 'Select',
      componentProps: {
        allowClear: true,
        options: getDictOptions(DICT_TYPE.INFRA_BOOLEAN_STRING, 'boolean'),
        placeholder: $t('ui.placeholder.select', ['是否为主配置']),
      },
    },
    {
      fieldName: 'createTime',
      label: '创建时间',
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
      title: '编号',
      visible: false,
    },
    {
      field: 'configKey',
      title: '配置键',
    },
    {
      field: 'name',
      title: '配置名',
      minWidth: 120,
    },
    {
      field: 'master',
      title: '是否为主配置',
      minWidth: 60,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_BOOLEAN_STRING },
      },
    },
    {
      field: 'storage',
      title: '存储器',
      minWidth: 60,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_FILE_STORAGE },
      },
    },
    {
      field: 'pathType',
      title: '路径类型',
      minWidth: 60,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_FILE_PATH_TYPE },
      },
    },
    {
      field: 'returnType',
      title: '返回类型',
      minWidth: 60,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_FILE_RETURN_TYPE },
      },
    },
    {
      field: 'maxSize',
      title: '文件大小',
      minWidth: 60,
      sortable: true,
    },
    {
      field: 'fileType',
      title: '文件类型',
      minWidth: 60,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.INFRA_FILE_FILE_TYPE },
      },
    },
    {
      field: 'remark',
      title: '备注',
      visible: false,
      minWidth: 120,
    },
    {
      field: 'config',
      title: '存储配置',
      cellRender: {
        name: 'CellJson',
      },
    },
    {
      field: 'createTime',
      title: '创建时间',
      visible: false,
      minWidth: 120,
      sortable: true,
      formatter: 'formatDateTime',
    },
    {
      title: '操作',
      width: 200,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
