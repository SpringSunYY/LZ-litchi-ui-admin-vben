import { buildUUID } from '@vben/utils';

import {
  localeProps,
  makeRequiredRule,
} from '#/components/form-create/helpers';

export const useEditorRule = (label?: string) => {
  const name = 'Tinymce';
  return {
    icon: 'icon-editor',
    label: label || '富文本',
    name,
    rule() {
      return {
        type: name,
        field: buildUUID(),
        title: label || '富文本',
        info: '',
        $required: false,
      };
    },
    props(_: any, { t }: any) {
      return localeProps(t, `${name}.props`, [
        makeRequiredRule(),
        {
          type: 'input',
          field: 'height',
          title: t('ui.formCreate.props.height'),
        },
        {
          type: 'switch',
          field: 'readonly',
          title: t('ui.formCreate.props.readonly'),
        },
      ]);
    },
  };
};
