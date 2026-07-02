import type { VxeTableGridOptions } from '@vben/plugins/vxe-table';
import type { Recordable } from '@vben/types';

import { h } from 'vue';

import { IconifyIcon } from '@vben/icons';
import { $te } from '@vben/locales';
import {
  AsyncComponents,
  setupVbenVxeTable,
  useVbenVxeGrid,
} from '@vben/plugins/vxe-table';
import {
  erpCountInputFormatter,
  floatToFixed2,
  formatPast2,
  formatToFractionDigit,
  isFunction,
  isString,
} from '@vben/utils';

import { Button, Image, Popconfirm, Switch } from 'ant-design-vue';

import { DictTag } from '#/components/dict-tag';
import CellFileAndImages from '#/components/file-and-images/file-and-images-preview.vue';
import { FilePreview } from '#/components/file-preview';
import I18nDictTag from '#/components/i18n/i18n-dict-tag/i18n-dict-tag.vue';
import CellImage from '#/components/image/image-preview.vue';
import JsonPreview from '#/components/json-preview/json-preview.vue';
import CellLink from '#/components/link/link-preview.vue';
import { $t } from '#/locales';

import { useVbenForm } from './form';

import '#/adapter/style.css';

setupVbenVxeTable({
  configVxeTable: (vxeUI) => {
    vxeUI.setConfig({
      grid: {
        align: 'center',
        border: false,
        columnConfig: {
          resizable: true,
        },
        minHeight: 180,
        formConfig: {
          // 全局禁用vxe-table的表单配置，使用formOptions
          enabled: false,
        },
        toolbarConfig: {
          import: false, // 是否导入
          export: false, // 是否导出
          refresh: true, // 是否刷新
          print: false, // 是否打印
          zoom: true, // 是否缩放
          custom: true, // 是否自定义配置
        },
        customConfig: {
          mode: 'modal',
        },
        proxyConfig: {
          autoLoad: true,
          response: {
            result: 'list',
            total: 'total',
          },
          showActiveMsg: true,
          showResponseMsg: false,
        },
        pagerConfig: {
          enabled: true,
        },
        sortConfig: {
          multiple: true,
        },
        round: true,
        showOverflow: true,
        size: 'small',
        /** 全局开启 Y 轴虚拟滚动 - 解决树形表格展开大量节点时的性能问题
         *  当数据行数超过 gt 配置值时自动启用虚拟滚动
         *  gt: 50 表示超过 50 行时启用
         *  cacheSize: 50 滚动缓存行数
         *  oSize: 20 渲染 overscan 行数，减少滚动时的白屏
         */
        // 此处不再配置，由页面自己配置，防止影响其他页
        // scrollY: {
        //   enabled: true,
        //   gt: 201,
        //   cacheSize: 201,
        //   oSize: 50,
        // },
      } as VxeTableGridOptions,
    });

    // 防重复注册的辅助函数（vxe-table 内部使用 name 标识，同名会警告）
    const addRenderer = (name: string, renderer: any) => {
      if (!vxeUI.renderer.get(name)) {
        vxeUI.renderer.add(name, renderer);
      }
    };
    const addFormat = (name: string, format: any) => {
      if (!vxeUI.formats.get(name)) {
        vxeUI.formats.add(name, format);
      }
    };

    // 表格配置项可以用 cellRender: { name: 'CellImage' },
    // 支持单个图片URL或 || 分隔的多张图片字符串
    // 默认只显示第一张，点击后预览全部并支持左右切换
    addRenderer('CellImage', {
      renderTableDefault(_renderOpts: any, params: any) {
        const { column, row } = params;
        const value = row[column.field];
        return h(CellImage, { src: value });
      },
    });

    // 表格配置项可以用 cellRender: { name: 'CellJson' },
    // 将 JSON 对象解析为 key: value 形式显示，支持复制 JSON
    addRenderer('CellJson', {
      renderTableDefault(_renderOpts: any, params: any) {
        const { column, row } = params;
        const value = row[column.field];
        return h(JsonPreview, { value });
      },
    });

    addRenderer('CellImages', {
      renderTableDefault(_renderOpts: any, params: any) {
        const { column, row } = params;
        if (column && column.field && row[column.field]) {
          let list = row[column.field];
          if (typeof list === 'string' && list.includes('||')) {
            list = list.split('||').map((item: string) => item.trim());
          }
          if (Array.isArray(list)) {
            return list.map((item: any) => h(Image, { src: item }));
          }
        }
        return '';
      },
    });

    // 表格配置项可以用 cellRender: { name: 'CellFilePreview' },
    // 支持单个文件URL或 || 分隔的多个URL字符串
    addRenderer('CellFilePreview', {
      renderTableDefault(renderOpts: any, params: any) {
        const { props } = renderOpts;
        const { column, row } = params;
        return h(FilePreview, {
          fileUrl: row[column.field],
          text: props?.text ?? '查看文件',
        });
      },
    });

    // 表格配置项可以用 cellRender: { name: 'CellLink' },
    addRenderer('CellLink', {
      renderTableDefault(_renderOpts: any, params: any) {
        const { column, row } = params;
        const value = row[column.field];
        return h(CellLink, { url: value });
      },
    });

    // 表格配置项可以用 cellRender: { name: 'CellFileAndImages', props: { separator: '||', type: 'auto' } },
    // type 可选值：'auto' 自动判断，'image' 强制图片，'file' 强制文件
    // 支持单个或多个文件/图片 URL，多个用 separator 分隔
    // 自动判断文件类型：图片扩展名使用图片预览，否则使用文件预览
    addRenderer('CellFileAndImages', {
      renderTableDefault(renderOpts: any, params: any) {
        const { props } = renderOpts;
        const { column, row } = params;
        return h(CellFileAndImages, {
          value: row[column.field],
          separator: props?.separator ?? '||',
          type: props?.type ?? 'auto',
        });
      },
    });

    // 表格配置项可以用 cellRender: { name: 'CellDict', props:{type: ''} },
    // 支持单个值或多个值（separator 分隔），未匹配时显示原字符
    addRenderer('CellDict', {
      renderTableDefault(renderOpts: any, params: any) {
        const { props } = renderOpts;
        const { column, row } = params;
        if (!props?.type) {
          return '';
        }
        return h(DictTag, {
          type: props.type,
          value: row[column.field],
          separator: props.separator,
          useOriginal: props.useOriginal,
        });
      },
    });

    // 表格配置项可以用 cellRender: { name: 'CellDict', props:{type: ''} },
    // 支持单个值或多个值（separator 分隔），未匹配时显示原字符
    addRenderer('CellI18nDict', {
      renderTableDefault(renderOpts: any, params: any) {
        const { props } = renderOpts;
        const { column, row } = params;
        if (!props?.type) {
          return '';
        }
        return h(I18nDictTag, {
          type: props.type,
          value: row[column.field],
          separator: props.separator,
          useOriginal: props.useOriginal,
        });
      },
    });

    // 表格配置项可以用 cellRender: { name: 'CellSwitch', props: { beforeChange: () => {} } },
    // add by YY：from https://github.com/vbenjs/vue-vben-admin/blob/main/playground/src/adapter/vxe-table.ts#L97-L123
    vxeUI.renderer.add('CellSwitch', {
      renderTableDefault({ attrs, props }, { column, row }) {
        const loadingKey = `__loading_${column.field}`;
        const finallyProps = {
          checkedChildren: $t('common.enabled'),
          checkedValue: 1,
          unCheckedChildren: $t('common.disabled'),
          unCheckedValue: 0,
          ...props,
          checked: row[column.field],
          loading: row[loadingKey] ?? false,
          'onUpdate:checked': onChange,
        };

        async function onChange(newVal: any) {
          row[loadingKey] = true;
          try {
            const result = await attrs?.beforeChange?.(newVal, row);
            if (result !== false) {
              row[column.field] = newVal;
            }
          } finally {
            row[loadingKey] = false;
          }
        }

        return h(Switch, finallyProps);
      },
    });

    vxeUI.formats.add('formatAmount3', {
      tableCellFormatMethod({ cellValue }) {
        return erpCountInputFormatter(cellValue);
      },
    });

    // 注册表格的操作按钮渲染器 cellRender: { name: 'CellOperation', options: ['edit', 'delete'] }
    // add by YY：from https://github.com/vbenjs/vue-vben-admin/blob/main/playground/src/adapter/vxe-table.ts#L125-L255
    vxeUI.renderer.add('CellOperation', {
      renderTableDefault({ attrs, options, props }, { column, row }) {
        const defaultProps = { size: 'small', type: 'link', ...props };
        let align = 'end';
        switch (column.align) {
          case 'center': {
            align = 'center';
            break;
          }
          case 'left': {
            align = 'start';
            break;
          }
          default: {
            align = 'end';
            break;
          }
        }
        const presets: Recordable<Recordable<any>> = {
          delete: {
            danger: true,
            text: $t('common.delete'),
          },
          edit: {
            text: $t('common.edit'),
          },
        };
        const operations: Array<Recordable<any>> = (
          options || ['edit', 'delete']
        )
          .map((opt) => {
            if (isString(opt)) {
              return presets[opt]
                ? { code: opt, ...presets[opt], ...defaultProps }
                : {
                    code: opt,
                    text: $te(`common.${opt}`) ? $t(`common.${opt}`) : opt,
                    ...defaultProps,
                  };
            } else {
              return { ...defaultProps, ...presets[opt.code], ...opt };
            }
          })
          .map((opt) => {
            const optBtn: Recordable<any> = {};
            Object.keys(opt).forEach((key) => {
              optBtn[key] = isFunction(opt[key]) ? opt[key](row) : opt[key];
            });
            return optBtn;
          })
          .filter((opt) => opt.show !== false);

        function renderBtn(opt: Recordable<any>, listen = true) {
          return h(
            Button,
            {
              ...props,
              ...opt,
              icon: undefined,
              onClick: listen
                ? () =>
                    attrs?.onClick?.({
                      code: opt.code,
                      row,
                    })
                : undefined,
            },
            {
              default: () => {
                const content = [];
                if (opt.icon) {
                  content.push(
                    h(IconifyIcon, { class: 'size-5', icon: opt.icon }),
                  );
                }
                content.push(opt.text);
                return content;
              },
            },
          );
        }

        function renderConfirm(opt: Recordable<any>) {
          return h(
            Popconfirm,
            {
              getPopupContainer(el) {
                return el.closest('tbody') || document.body;
              },
              placement: 'topLeft',
              title: $t('ui.actionTitle.delete', [attrs?.nameTitle || '']),
              ...props,
              ...opt,
              icon: undefined,
              onConfirm: () => {
                attrs?.onClick?.({
                  code: opt.code,
                  row,
                });
              },
            },
            {
              default: () => renderBtn({ ...opt }, false),
              description: () =>
                h(
                  'div',
                  { class: 'truncate' },
                  $t('ui.actionMessage.deleteConfirm', [
                    row[attrs?.nameField || 'name'],
                  ]),
                ),
            },
          );
        }

        const btns = operations.map((opt) =>
          opt.code === 'delete' ? renderConfirm(opt) : renderBtn(opt),
        );
        return h(
          'div',
          {
            class: 'flex table-operations',
            style: { justifyContent: align },
          },
          btns,
        );
      },
    });

    // 这里可以自行扩展 vxe-table 的全局配置，比如自定义格式化
    // vxeUI.formats.add

    addFormat('formatPast2', {
      tableCellFormatMethod({ cellValue }: { cellValue: any }) {
        if (cellValue === null || cellValue === undefined) {
          return '';
        }
        return formatPast2(cellValue);
      },
    });

    // add by 星语：数量格式化，例如说：金额
    addFormat('formatNumber', {
      tableCellFormatMethod({ cellValue }: { cellValue: any }, digits = 2) {
        return formatToFractionDigit(cellValue, digits);
      },
    });

    addFormat('formatAmount2', {
      tableCellFormatMethod({ cellValue }: { cellValue: any }) {
        return `${floatToFixed2(cellValue)}${$t('ui.amount.yuan')}`;
      },
    });
  },
  useVbenForm,
});

export { useVbenVxeGrid };

const [VxeTable, VxeColumn, VxeToolbar] = AsyncComponents;
export { VxeColumn, VxeTable, VxeToolbar };

// add by YY：from https://github.com/vbenjs/vue-vben-admin/blob/main/playground/src/adapter/vxe-table.ts#L264-L270
export type OnActionClickParams<T = Recordable<any>> = {
  code: string;
  row: T;
};
export type OnActionClickFn<T = Recordable<any>> = (
  params: OnActionClickParams<T>,
) => void;
export * from '#/components/table-action';
export type * from '@vben/plugins/vxe-table';
