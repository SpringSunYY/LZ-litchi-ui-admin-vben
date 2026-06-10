import { useI18n } from '@vben/locales';
import { buildUUID } from '@vben/utils';

import {
  localeProps,
  makeRequiredRule,
} from '#/components/form-create/helpers';

/** iframe 组件规则 */
export function useIframeRule(label?: string) {
  const { t } = useI18n();
  label = label || t('ui.formCreate.labels.iframe');
  const name = 'IframeComponent';

  return {
    icon: 'icon-link',
    label,
    name,
    rule() {
      return {
        type: name,
        field: buildUUID(),
        title: label,
        info: '',
        $required: false,
        modelField: 'value', // 特殊：ele 里是 model-value，antd 里是 value
      };
    },
    props(_: any) {
      return localeProps(t, `${name}.props`, [
        makeRequiredRule(),
        {
          type: 'input',
          field: 'url',
          title: t('ui.formCreate.props.url'),
          value: '',
          info: t('ui.formCreate.props.urlInfo'),
        },
        {
          type: 'input',
          field: 'height',
          title: t('ui.formCreate.props.iframeHeight'),
          value: '500px',
          info: t('ui.formCreate.props.iframeHeightInfo'),
        },
        {
          type: 'input',
          field: 'width',
          title: t('ui.formCreate.props.iframeWidth'),
          value: '100%',
          info: t('ui.formCreate.props.iframeWidthInfo'),
        },
        {
          type: 'select',
          field: 'loading',
          title: t('ui.formCreate.props.loading'),
          value: 'lazy',
          options: [
            { label: t('ui.formCreate.props.loadingLazy'), value: 'lazy' },
            { label: t('ui.formCreate.props.loadingEager'), value: 'eager' },
          ],
        },
        {
          type: 'switch',
          field: 'allowfullscreen',
          title: t('ui.formCreate.props.allowfullscreen'),
          value: true,
        },
        {
          type: 'input',
          field: 'sandbox',
          title: t('ui.formCreate.props.sandbox'),
          value: '',
          info: t('ui.formCreate.props.sandboxInfo'),
        },
      ]);
    },
  };
}
