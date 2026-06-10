import { useI18n } from '@vben/locales';
import { buildUUID } from '@vben/utils';

import {
  localeProps,
  makeRequiredRule,
} from '#/components/form-create/helpers';
import { DICT_TYPE, getDictOptions } from '#/utils';

export const useEditorRule = (label?: string) => {
  const { t } = useI18n();
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
    props(_: any) {
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
        {
          type: 'switch',
          field: 'showImageUpload',
          title: t('ui.formCreate.props.showImageUpload'),
          value: true,
        },
        {
          type: 'switch',
          field: 'showFileUpload',
          title: t('ui.formCreate.props.showFileUpload'),
          value: true,
        },
        {
          type: 'select',
          field: 'fileAccept',
          title: t('ui.formCreate.props.fileAccept'),
          value: [
            'doc',
            'docx',
            'xls',
            'xlsx',
            'ppt',
            'pptx',
            'pdf',
            'txt',
            'md',
            'csv',
            'zip',
            'rar',
          ],
          options: [
            { label: 'doc', value: 'doc' },
            { label: 'docx', value: 'docx' },
            { label: 'xls', value: 'xls' },
            { label: 'xlsx', value: 'xlsx' },
            { label: 'ppt', value: 'ppt' },
            { label: 'pptx', value: 'pptx' },
            { label: 'pdf', value: 'pdf' },
            { label: 'txt', value: 'txt' },
            { label: 'rtf', value: 'rtf' },
            { label: 'md', value: 'md' },
            { label: 'csv', value: 'csv' },
            { label: 'tsv', value: 'tsv' },
            { label: 'json', value: 'json' },
            { label: 'xml', value: 'xml' },
            { label: 'html', value: 'html' },
            { label: 'htm', value: 'htm' },
            { label: 'zip', value: 'zip' },
            { label: 'rar', value: 'rar' },
            { label: '7z', value: '7z' },
            { label: 'tar', value: 'tar' },
            { label: 'gz', value: 'gz' },
          ],
          props: {
            mode: 'multiple',
          },
        },
        {
          type: 'inputNumber',
          field: 'fileMaxSize',
          title: t('ui.formCreate.props.fileMaxSize'),
          value: 20,
          props: { min: 0 },
        },
        {
          type: 'select',
          field: 'imageAccept',
          title: t('ui.formCreate.props.imageAccept'),
          value: ['jpg', 'jpeg', 'png', 'gif', 'webp', 'bmp', 'svg'],
          options: [
            { label: 'jpg', value: 'jpg' },
            { label: 'jpeg', value: 'jpeg' },
            { label: 'png', value: 'png' },
            { label: 'gif', value: 'gif' },
            { label: 'webp', value: 'webp' },
            { label: 'bmp', value: 'bmp' },
            { label: 'svg', value: 'svg' },
            { label: 'apng', value: 'apng' },
            { label: 'avif', value: 'avif' },
            { label: 'ico', value: 'ico' },
            { label: 'tif', value: 'tif' },
            { label: 'tiff', value: 'tiff' },
          ],
          props: {
            mode: 'multiple',
          },
        },
        {
          type: 'inputNumber',
          field: 'imageMaxSize',
          title: t('ui.formCreate.props.imageMaxSize'),
          value: 10,
          props: { min: 0 },
        },
        {
          type: 'select',
          field: 'moduleType',
          title: t('ui.formCreate.props.moduleType'),
          value: 'bpm',
          options: getDictOptions(DICT_TYPE.SYSTEM_MODULE_TYPE, 'string'),
          props: {
            allowClear: true,
          },
        },
      ]);
    },
  };
};
