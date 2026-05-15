import type { Recordable } from '@vben/types';

import type { VbenFormSchema } from '#/adapter/form';
import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { SystemMenuApi } from '#/api/system/menu';

import { h } from 'vue';

import { IconifyIcon } from '@vben/icons';
import { handleTree, isHttpUrl } from '@vben/utils';

import { z } from '#/adapter/form';
import { getMenuList } from '#/api/system/menu';
import { $t } from '#/locales';
import { componentKeys } from '#/router/routes';
import {
  CommonStatusEnum,
  DICT_TYPE,
  getDictOptions,
  SystemMenuTypeEnum,
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
      fieldName: 'parentId',
      label: $t('system.menu.field.parentId'),
      component: 'ApiTreeSelect',
      componentProps: {
        allowClear: true,
        api: async () => {
          const data = await getMenuList();
          data.unshift({
            id: 0,
            name: $t('ui.treeRoot', [$t('system.menu.field.parentId')]),
          } as SystemMenuApi.Menu);
          return handleTree(data);
        },
        labelField: 'name',
        valueField: 'id',
        childrenField: 'children',
        placeholder: $t('ui.placeholder.select', [
          $t('system.menu.field.parentId'),
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
      fieldName: 'name',
      label: $t('system.menu.field.name'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('system.menu.field.name')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'type',
      label: $t('system.menu.field.type'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.SYSTEM_MENU_TYPE, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(SystemMenuTypeEnum.DIR),
    },
    {
      fieldName: 'icon',
      label: $t('system.menu.field.icon'),
      component: 'IconPicker',
      componentProps: {
        placeholder: $t('ui.placeholder.select', [
          $t('system.menu.field.icon'),
        ]),
        prefix: 'carbon',
      },
      rules: 'required',
      dependencies: {
        triggerFields: ['type'],
        show: (values) => {
          return [SystemMenuTypeEnum.DIR, SystemMenuTypeEnum.MENU].includes(
            values.type,
          );
        },
      },
    },
    {
      fieldName: 'path',
      label: $t('system.menu.field.path'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [$t('system.menu.field.path')]),
      },
      help: $t('system.menu.help.pathTip'),
      rules: z.string(),
      dependencies: {
        triggerFields: ['type', 'parentId'],
        show: (values) => {
          return [SystemMenuTypeEnum.DIR, SystemMenuTypeEnum.MENU].includes(
            values.type,
          );
        },
        rules: (values) => {
          const schema = z.string().min(1, $t('system.menu.help.pathEmpty'));
          if (isHttpUrl(values.path)) {
            return schema;
          }
          if (values.parentId === 0) {
            return schema.refine(
              (path) => path.charAt(0) === '/',
              $t('system.menu.help.pathRootStart'),
            );
          }
          return schema.refine(
            (path) => path.charAt(0) !== '/',
            $t('system.menu.help.pathNoStart'),
          );
        },
      },
    },
    {
      fieldName: 'component',
      label: $t('system.menu.field.component'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.menu.field.component'),
        ]),
      },
      dependencies: {
        triggerFields: ['type'],
        show: (values) => {
          return [SystemMenuTypeEnum.MENU].includes(values.type);
        },
      },
    },
    {
      fieldName: 'componentName',
      label: $t('system.menu.field.componentName'),
      component: 'AutoComplete',
      componentProps: {
        allowClear: true,
        filterOption(input: string, option: { value: string }) {
          return option.value.toLowerCase().includes(input.toLowerCase());
        },
        placeholder: $t('ui.placeholder.select', [
          $t('system.menu.field.componentName'),
        ]),
        options: componentKeys.map((v) => ({ value: v })),
      },
      dependencies: {
        triggerFields: ['type'],
        show: (values) => {
          return [SystemMenuTypeEnum.MENU].includes(values.type);
        },
      },
    },
    {
      fieldName: 'permission',
      label: $t('system.menu.field.permission'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.menu.field.permission'),
        ]),
      },
      dependencies: {
        show: (values) => {
          return [SystemMenuTypeEnum.BUTTON, SystemMenuTypeEnum.MENU].includes(
            values.type,
          );
        },
        triggerFields: ['type'],
      },
    },
    {
      fieldName: 'sort',
      label: $t('system.menu.field.sort'),
      component: 'InputNumber',
      componentProps: {
        min: 0,
        controlsPosition: 'right',
        placeholder: $t('ui.placeholder.input', [$t('system.menu.field.sort')]),
      },
      rules: 'required',
    },
    {
      fieldName: 'status',
      label: $t('system.menu.field.status'),
      component: 'RadioGroup',
      componentProps: {
        options: getDictOptions(DICT_TYPE.COMMON_STATUS, 'number'),
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: z.number().default(CommonStatusEnum.ENABLE),
    },
    {
      fieldName: 'alwaysShow',
      label: $t('system.menu.field.alwaysShow'),
      component: 'RadioGroup',
      componentProps: {
        options: [
          { label: $t('system.menu.alwaysShow.yes'), value: true },
          { label: $t('system.menu.alwaysShow.no'), value: false },
        ],
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: 'required',
      defaultValue: true,
      help: $t('system.menu.help.alwaysShowTip'),
      dependencies: {
        triggerFields: ['type'],
        show: (values) => {
          return [SystemMenuTypeEnum.MENU].includes(values.type);
        },
      },
    },
    {
      fieldName: 'keepAlive',
      label: $t('system.menu.field.keepAlive'),
      component: 'RadioGroup',
      componentProps: {
        options: [
          { label: $t('system.menu.keepAlive.yes'), value: true },
          { label: $t('system.menu.keepAlive.no'), value: false },
        ],
        buttonStyle: 'solid',
        optionType: 'button',
      },
      rules: 'required',
      defaultValue: true,
      help: $t('system.menu.help.keepAliveTip'),
      dependencies: {
        triggerFields: ['type'],
        show: (values) => {
          return [SystemMenuTypeEnum.MENU].includes(values.type);
        },
      },
    },
    {
      fieldName: 'remark',
      label: $t('system.menu.field.remark'),
      component: 'Input',
      componentProps: {
        placeholder: $t('ui.placeholder.input', [
          $t('system.menu.field.remark'),
        ]),
      },
    },
  ];
}

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions<SystemMenuApi.Menu>['columns'] {
  return [
    {
      field: 'name',
      title: $t('system.menu.field.name'),
      align: 'left',
      fixed: 'left',
      slots: { default: 'name' },
      treeNode: true,
    },
    {
      field: 'type',
      title: $t('system.menu.field.type'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.SYSTEM_MENU_TYPE },
      },
    },
    {
      field: 'sort',
      title: $t('system.menu.field.sort'),
    },
    {
      field: 'permission',
      title: $t('system.menu.field.permission'),
    },
    {
      field: 'path',
      title: $t('system.menu.field.path'),
    },
    {
      field: 'componentName',
      title: $t('system.menu.field.componentName'),
    },
    {
      field: 'status',
      title: $t('system.menu.field.status'),
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.COMMON_STATUS },
      },
    },
    {
      field: 'remark',
      title: $t('system.menu.field.remark'),
      visible: false,
    },
    {
      title: $t('common.operation'),
      width: 220,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
