import type { Recordable } from '@vben/types';

import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { InfraCodegenApi } from '#/api/infra/codegen';
import type { SystemMenuApi } from '#/api/system/menu';

import { h } from 'vue';

import { IconifyIcon } from '@vben/icons';
import { handleTree } from '@vben/utils';

import { getDataSourceConfigList } from '#/api/infra/data-source-config';
import { getMenuList } from '#/api/system/menu';
import { $t } from '#/locales';
import { DICT_TYPE, getDictOptions, getRangePickerDefaultProps } from '#/utils';

/** 导入数据库表的表单 */
export function useImportTableFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'dataSourceConfigId',
      label: $t('infra.codegen.dataSource'),
      component: 'ApiSelect',
      componentProps: {
        api: async () => {
          const data = await getDataSourceConfigList();
          return data.map((item) => ({
            label: item.name,
            value: item.id,
          }));
        },
        autoSelect: 'first',
        placeholder: $t('ui.placeholder.select', [
          $t('infra.codegen.dataSource'),
        ]),
      },
      rules: 'selectRequired',
    },
    {
      fieldName: 'name',
      label: $t('infra.codegen.tableName'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.codegen.tableName'),
        ]),
      },
    },
    {
      fieldName: 'comment',
      label: $t('infra.codegen.tableComment'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.codegen.tableComment'),
        ]),
      },
    },
  ];
}

/** 导入数据库表表格列定义 */
export function useImportTableColumns(): VxeTableGridOptions['columns'] {
  return [
    { type: 'checkbox', width: 40 },
    { field: 'name', title: $t('infra.codegen.tableName'), minWidth: 200 },
    {
      field: 'comment',
      title: $t('infra.codegen.tableComment'),
      minWidth: 200,
    },
  ];
}

/** 基本信息表单的 schema */
export function useBasicInfoFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'tableName',
      label: $t('infra.codegen.tableName'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.codegen.tableName'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'tableComment',
      label: $t('infra.codegen.tableComment'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.codegen.tableComment'),
        ]),
      },
      rules: 'required',
    },
    {
      fieldName: 'className',
      label: $t('infra.codegen.className'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('infra.codegen.className'),
        ]),
      },
      rules: 'required',
      help: $t('infra.codegen.classNameHelp'),
    },
    {
      fieldName: 'author',
      label: $t('infra.codegen.author'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('infra.codegen.author')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'remark',
      label: $t('infra.codegen.remark'),
      component: 'Textarea',
      componentProps: {
        rows: 3,
        placeholder: $t('ui.placeholder.input', [$t('infra.codegen.remark')]),
      },
      formItemClass: 'md:col-span-2',
    },
  ];
}

/** 生成信息表单基础 schema */
export function useGenerationInfoBaseFormSchema(): VbenFormSchema[] {
  return [
    {
      component: 'Select',
      fieldName: 'templateType',
      label: $t('infra.codegen.templateType'),
      componentProps: {
        options: getDictOptions(
          DICT_TYPE.INFRA_CODEGEN_TEMPLATE_TYPE,
          'number',
        ),
        class: 'w-full',
      },
      rules: 'selectRequired',
    },
    {
      component: 'Select',
      fieldName: 'frontType',
      label: $t('infra.codegen.frontType'),
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_CODEGEN_FRONT_TYPE, 'number'),
        class: 'w-full',
      },
      rules: 'selectRequired',
    },
    {
      component: 'Select',
      fieldName: 'scene',
      label: $t('infra.codegen.scene'),
      componentProps: {
        options: getDictOptions(DICT_TYPE.INFRA_CODEGEN_SCENE, 'number'),
        class: 'w-full',
      },
      rules: 'selectRequired',
    },
    {
      fieldName: 'parentMenuId',
      label: $t('infra.codegen.parentMenu'),
      help: $t('infra.codegen.parentMenuHelp'),
      component: 'ApiTreeSelect',
      componentProps: {
        allowClear: true,
        api: async () => {
          const data = await getMenuList();
          data.unshift({
            id: 0,
            name: $t('infra.codegen.topMenu'),
          } as SystemMenuApi.Menu);
          return handleTree(data);
        },
        class: 'w-full',
        labelField: 'name',
        valueField: 'id',
        childrenField: 'children',
        placeholder: $t('ui.placeholder.select', [
          $t('infra.codegen.parentMenu'),
        ]),
        filterTreeNode(input: string, node: Recordable<any>) {
          if (!input || input.length === 0) {
            return true;
          }
          const name: string = node.label ?? '';
          if (!name) return false;
          return name.includes(input) || $t(name).includes(input);
        },
        showSearch: true,
        treeDefaultExpandedKeys: [0],
      },
      rules: 'selectRequired',
      renderComponentContent() {
        return {
          title({ label, icon }: { icon: string; label: string }) {
            const components = [];
            if (!label) return '';
            if (icon) {
              components.push(h(IconifyIcon, { class: 'size-4', icon }));
            }
            components.push(h('span', { class: '' }, $t(label || '')));
            return h('div', { class: 'flex items-center gap-1' }, components);
          },
        };
      },
    },
    {
      component: 'Input',
      fieldName: 'moduleName',
      label: $t('infra.codegen.moduleName'),
      help: $t('infra.codegen.moduleNameHelp'),
      rules: 'required',
    },
    {
      component: 'Input',
      fieldName: 'businessName',
      label: $t('infra.codegen.businessName'),
      help: $t('infra.codegen.businessNameHelp'),
      rules: 'required',
    },
    {
      component: 'Input',
      fieldName: 'className',
      label: $t('infra.codegen.className'),
      help: $t('infra.codegen.classNameHelp'),
      rules: 'required',
    },
    {
      component: 'Input',
      fieldName: 'classComment',
      label: $t('infra.codegen.classComment'),
      help: $t('infra.codegen.classCommentHelp'),
      rules: 'required',
    },
    {
      component: 'RadioGroup',
      fieldName: 'isI18n',
      label: $t('infra.codegen.isI18n'),
      help: $t('infra.codegen.isI18nHelp'),
      componentProps: {
        options: [
          {
            label: $t('ui.common.yes'),
            value: '0',
          },
          {
            label: $t('ui.common.no'),
            value: '1',
          },
        ],
      },
      defaultValue: '0',
    },
    {
      component: 'Select',
      fieldName: 'i18nModuleType',
      label: $t('infra.codegen.i18nModuleType'),
      help: $t('infra.codegen.i18nModuleTypeHelp'),
      componentProps: {
        class: 'w-full',
        options: getDictOptions(DICT_TYPE.INFRA_I18N_KEY_MODULE_TYPE),
      },
      defaultValue: undefined,
      dependencies: {
        triggerFields: ['isI18n'],
        show: (values) => values.isI18n === '0',
      },
    },
    {
      component: 'RadioGroup',
      fieldName: 'isImport',
      label: $t('infra.codegen.isImport'),
      help: $t('infra.codegen.isImportHelp'),
      componentProps: {
        options: [
          {
            label: $t('ui.common.yes'),
            value: '0',
          },
          {
            label: $t('ui.common.no'),
            value: '1',
          },
        ],
      },
      defaultValue: '1',
    },
    {
      component: 'RadioGroup',
      fieldName: 'popupType',
      label: $t('infra.codegen.popupType'),
      help: $t('infra.codegen.popupTypeHelp'),
      componentProps: {
        options: [
          {
            label: $t('infra.codegen.drawer'),
            value: 'drawer',
          },
          {
            label: $t('infra.codegen.modal'),
            value: 'modal',
          },
        ],
      },
      defaultValue: 'drawer',
    },
  ];
}

/** 树表信息 schema */
export function useGenerationInfoTreeFormSchema(
  columns: InfraCodegenApi.CodegenColumn[] = [],
): VbenFormSchema[] {
  return [
    {
      component: 'Divider',
      fieldName: 'treeDivider',
      label: '',
      renderComponentContent: () => {
        return {
          default: () => [$t('infra.codegen.treeInfo')],
        };
      },
      formItemClass: 'md:col-span-2',
    },
    {
      component: 'Select',
      fieldName: 'treeParentColumnId',
      label: $t('infra.codegen.treeParentColumn'),
      help: $t('infra.codegen.treeParentColumnHelp'),
      componentProps: {
        class: 'w-full',
        allowClear: true,
        placeholder: $t('ui.placeholder.select'),
        options: columns.map((column) => ({
          label: column.columnName,
          value: column.id,
        })),
      },
      rules: 'selectRequired',
    },
    {
      component: 'Select',
      fieldName: 'treeNameColumnId',
      label: $t('infra.codegen.treeNameColumn'),
      help: $t('infra.codegen.treeNameColumnHelp'),
      componentProps: {
        class: 'w-full',
        allowClear: true,
        placeholder: $t('ui.placeholder.select'),
        options: columns.map((column) => ({
          label: column.columnName,
          value: column.id,
        })),
      },
      rules: 'selectRequired',
    },
  ];
}

/** 主子表信息 schema */
export function useGenerationInfoSubTableFormSchema(
  columns: InfraCodegenApi.CodegenColumn[] = [],
  tables: InfraCodegenApi.CodegenTable[] = [],
): VbenFormSchema[] {
  return [
    {
      component: 'Divider',
      fieldName: 'subDivider',
      label: '',
      renderComponentContent: () => {
        return {
          default: () => [$t('infra.codegen.subTableInfo')],
        };
      },
      formItemClass: 'md:col-span-2',
    },
    {
      component: 'Select',
      fieldName: 'masterTableId',
      label: $t('infra.codegen.masterTable'),
      help: $t('infra.codegen.masterTableHelp'),
      componentProps: {
        class: 'w-full',
        allowClear: true,
        placeholder: $t('ui.placeholder.select'),
        options: tables.map((table) => ({
          label: `${table.tableName}：${table.tableComment}`,
          value: table.id,
        })),
      },
      rules: 'selectRequired',
    },
    {
      component: 'Select',
      fieldName: 'subJoinColumnId',
      label: $t('infra.codegen.subJoinColumn'),
      help: $t('infra.codegen.subJoinColumnHelp'),
      componentProps: {
        class: 'w-full',
        allowClear: true,
        placeholder: $t('ui.placeholder.select'),
        options: columns.map((column) => ({
          label: `${column.columnName}:${column.columnComment}`,
          value: column.id,
        })),
      },
      rules: 'selectRequired',
    },
    {
      component: 'RadioGroup',
      fieldName: 'subJoinMany',
      label: $t('infra.codegen.joinRelation'),
      help: $t('infra.codegen.joinRelationHelp'),
      componentProps: {
        class: 'w-full',
        allowClear: true,
        placeholder: $t('ui.placeholder.select'),
        options: [
          {
            label: $t('infra.codegen.oneToMany'),
            value: true,
          },
          {
            label: $t('infra.codegen.oneToOne'),
            value: false,
          },
        ],
      },
      rules: 'required',
    },
  ];
}

/** 列表的搜索表单 */
export function useGridFormSchema(): VbenFormSchema[] {
  return [
    {
      fieldName: 'tableName',
      label: $t('infra.codegen.tableName'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.codegen.tableName'),
        ]),
      },
    },
    {
      fieldName: 'tableComment',
      label: $t('infra.codegen.tableComment'),
      component: 'Input',
      componentProps: {
        allowClear: true,
        placeholder: $t('ui.placeholder.input', [
          $t('infra.codegen.tableComment'),
        ]),
      },
    },
    {
      fieldName: 'createTime',
      label: $t('infra.codegen.createTime'),
      component: 'RangePicker',
      componentProps: {
        ...getRangePickerDefaultProps(),
        allowClear: true,
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(
  getDataSourceConfigName?: (dataSourceConfigId: number) => string | undefined,
): VxeTableGridOptions['columns'] {
  return [
    { type: 'checkbox', width: 40 },
    {
      field: 'dataSourceConfigId',
      title: $t('infra.codegen.dataSource'),
      formatter: ({ cellValue }) => getDataSourceConfigName?.(cellValue) || '-',
    },
    {
      field: 'tableName',
      title: $t('infra.codegen.tableName'),
      sortable: true,
    },
    {
      field: 'tableComment',
      title: $t('infra.codegen.tableComment'),
      sortable: true,
    },
    {
      field: 'className',
      title: $t('infra.codegen.entity'),
      sortable: true,
    },
    {
      field: 'createTime',
      title: $t('infra.codegen.createTime'),
      formatter: 'formatDateTime',
      sortable: true,
    },
    {
      field: 'updateTime',
      title: $t('infra.codegen.updateTime'),
      formatter: 'formatDateTime',
      sortable: true,
    },
    {
      title: $t('infra.codegen.operation'),
      width: 280,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}

/** 代码生成表格列定义 */
export function useCodegenColumnTableColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'columnName',
      title: $t('infra.codegen.columnName'),
      minWidth: 130,
    },
    {
      field: 'columnComment',
      title: $t('infra.codegen.columnComment'),
      minWidth: 100,
      slots: { default: 'columnComment' },
    },
    { field: 'dataType', title: $t('infra.codegen.dataType'), minWidth: 100 },
    {
      field: 'javaType',
      title: $t('infra.codegen.javaType'),
      minWidth: 130,
      slots: { default: 'javaType' },
      params: {
        options: [
          { label: 'Long', value: 'Long' },
          { label: 'String', value: 'String' },
          { label: 'Integer', value: 'Integer' },
          { label: 'Double', value: 'Double' },
          { label: 'BigDecimal', value: 'BigDecimal' },
          { label: 'LocalDateTime', value: 'LocalDateTime' },
          { label: 'Boolean', value: 'Boolean' },
        ],
      },
    },
    {
      field: 'javaField',
      title: $t('infra.codegen.javaField'),
      minWidth: 100,
      slots: { default: 'javaField' },
    },
    {
      field: 'createOperation',
      title: $t('infra.codegen.insert'),
      width: 40,
      slots: { default: 'createOperation' },
    },
    {
      field: 'updateOperation',
      title: $t('infra.codegen.edit'),
      width: 40,
      slots: { default: 'updateOperation' },
    },
    {
      field: 'listOperationResult',
      title: $t('infra.codegen.list'),
      width: 40,
      slots: { default: 'listOperationResult' },
    },
    {
      field: 'listOperation',
      title: $t('infra.codegen.query'),
      width: 40,
      slots: { default: 'listOperation' },
    },
    {
      field: 'sortOperation',
      title: $t('infra.codegen.sort'),
      titleHelp: {
        message: $t('infra.codegen.sortHelp'),
        icon: 'vxe-icon-question-circle-fill',
      },
      width: 60,
      slots: { default: 'sortOperation' },
    },
    {
      field: 'listOperationCondition',
      title: $t('infra.codegen.queryType'),
      minWidth: 100,
      slots: { default: 'listOperationCondition' },
      params: {
        options: [
          { label: '=', value: '=' },
          { label: '!=', value: '!=' },
          { label: '>', value: '>' },
          { label: '>=', value: '>=' },
          { label: '<', value: '<' },
          { label: '<=', value: '<=' },
          { label: 'LIKE', value: 'LIKE' },
          { label: 'BETWEEN', value: 'BETWEEN' },
        ],
      },
    },
    {
      field: 'nullable',
      title: $t('infra.codegen.nullable'),
      width: 60,
      slots: { default: 'nullable' },
    },
    {
      field: 'htmlType',
      title: $t('infra.codegen.displayType'),
      width: 130,
      slots: { default: 'htmlType' },
      params: {
        options: [
          { label: $t('infra.codegen.htmlTypeInput'), value: 'input' },
          {
            label: $t('infra.codegen.htmlTypeInputNumber'),
            value: 'inputNumber',
          },
          { label: $t('infra.codegen.htmlTypeTextarea'), value: 'textarea' },
          { label: $t('infra.codegen.htmlTypeSelect'), value: 'select' },
          { label: $t('infra.codegen.htmlTypeRadio'), value: 'radio' },
          { label: $t('infra.codegen.htmlTypeCheckbox'), value: 'checkbox' },
          { label: $t('infra.codegen.htmlTypeDatetime'), value: 'datetime' },
          {
            label: $t('infra.codegen.htmlTypeImageUpload'),
            value: 'imageUpload',
          },
          {
            label: $t('infra.codegen.htmlTypeFileUpload'),
            value: 'fileUpload',
          },
          { label: $t('infra.codegen.htmlTypeEditor'), value: 'editor' },
        ],
      },
    },
    {
      field: 'dictType',
      title: $t('infra.codegen.dictType'),
      width: 120,
      slots: { default: 'dictType' },
    },
    {
      field: 'example',
      title: $t('infra.codegen.example'),
      minWidth: 100,
      slots: { default: 'example' },
    },
  ];
}
