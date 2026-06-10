import { useI18n } from '@vben/locales';
import { buildUUID } from '@vben/utils';

import {
  localeProps,
  makeRequiredRule,
} from '#/components/form-create/helpers';
import { DICT_TYPE, getDictOptions } from '#/utils';

export const useUploadImagesRule = (label?: string) => {
  const { t } = useI18n();
  const name = 'ImagesUpload';
  return {
    icon: 'icon-image',
    label: label || '多图上传',
    name,
    rule() {
      return {
        type: name,
        field: buildUUID(),
        title: label || '多图上传',
        info: '',
        $required: false,
      };
    },
    props(_: any) {
      return localeProps(t, `${name}.props`, [
        makeRequiredRule(),
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
        {
          type: 'switch',
          field: 'drag',
          title: t('ui.formCreate.props.drag'),
          value: false,
        },
        {
          type: 'select',
          field: 'imageType',
          title: t('ui.formCreate.props.imageType'),
          value: ['image/jpeg', 'image/png', 'image/gif', 'image/webp'],
          options: [
            { label: 'image/apng', value: 'image/apng' },
            { label: 'image/avif', value: 'image/avif' },
            { label: 'image/bmp', value: 'image/bmp' },
            { label: 'image/gif', value: 'image/gif' },
            { label: 'image/heic', value: 'image/heic' },
            { label: 'image/heif', value: 'image/heif' },
            { label: 'image/jpeg', value: 'image/jpeg' },
            { label: 'image/jpg', value: 'image/jpg' },
            { label: 'image/pjpeg', value: 'image/pjpeg' },
            { label: 'image/png', value: 'image/png' },
            { label: 'image/svg+xml', value: 'image/svg+xml' },
            { label: 'image/tiff', value: 'image/tiff' },
            { label: 'image/webp', value: 'image/webp' },
            { label: 'image/x-icon', value: 'image/x-icon' },
          ],
          props: {
            mode: 'multiple',
          },
        },
        {
          type: 'inputNumber',
          field: 'fileSize',
          title: t('ui.formCreate.props.fileSize'),
          value: 5,
          props: { min: 0 },
        },
        {
          type: 'inputNumber',
          field: 'limit',
          title: t('ui.formCreate.props.limit'),
          value: 5,
          props: { min: 0 },
        },
        {
          type: 'input',
          field: 'componentHeight',
          title: t('ui.formCreate.props.componentHeight'),
          value: '150px',
        },
        {
          type: 'input',
          field: 'componentWidth',
          title: t('ui.formCreate.props.componentWidth'),
          value: '150px',
        },
        {
          type: 'input',
          field: 'borderradius',
          title: t('ui.formCreate.props.borderradius'),
          value: '8px',
        },
      ]);
    },
  };
};
