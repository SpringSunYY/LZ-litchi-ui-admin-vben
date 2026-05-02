import { h } from 'vue';

import { setupVbenVxeTable, useVbenVxeGrid } from '@vben/plugins/vxe-table';

import { Button, Image, Tooltip } from 'ant-design-vue';

import { useVbenForm } from './form';

if (!import.meta.env.SSR) {
  setupVbenVxeTable({
    configVxeTable: (vxeUI) => {
      vxeUI.setConfig({
        grid: {
          align: 'center',
          border: false,
          columnConfig: {
            resizable: true,
          },

          formConfig: {
            // 全局禁用vxe-table的表单配置，使用formOptions
            enabled: false,
          },
          minHeight: 180,
          proxyConfig: {
            autoLoad: true,
            response: {
              result: 'items',
              total: 'total',
              list: 'items',
            },
            showActiveMsg: true,
            showResponseMsg: false,
          },
          round: true,
          showOverflow: true,
          size: 'small',
        },
      });

      // 表格配置项可以用 cellRender: { name: 'CellImage' },
      vxeUI.renderer.add('CellImage', {
        renderTableDefault(_renderOpts, params) {
          const { column, row } = params;
          return h(Image, { src: row[column.field] });
        },
      });

      // 表格配置项可以用 cellRender: { name: 'CellLink' },
      vxeUI.renderer.add('CellLink', {
        renderTableDefault(_renderOpts, params) {
          const { column, row } = params;
          const value = row[column.field];
          return h(
            Tooltip,
            { title: value ? `在新窗口打开链接: ${value}` : '无链接' },
            {
              default: () =>
                h(
                  Button,
                  {
                    size: 'small',
                    type: 'link',
                    disabled: !value,
                    onClick: (e: MouseEvent) => {
                      e.stopPropagation();
                      if (value) window.open(value, '_blank');
                    },
                  },
                  { default: () => value ?? '-' },
                ),
            },
          );
        },
      });

      // 这里可以自行扩展 vxe-table 的全局配置，比如自定义格式化
      // vxeUI.formats.add
    },
    useVbenForm,
  });
}

export { useVbenVxeGrid };

export type * from '@vben/plugins/vxe-table';
