import { buildUUID } from '@vben/utils';

import {
  localeProps,
  makeRequiredRule,
} from '#/components/form-create/helpers';

export const useUploadImageRule = (label?: string) => {
  const name = 'ImageUpload';
  return {
    icon: 'icon-image',
    label: label || '单图上传',
    name,
    rule() {
      return {
        type: name,
        field: buildUUID(),
        title: label || '单图上传',
        info: '',
        $required: false,
      };
    },
    props(_: any, { t }: any) {
      return localeProps(t, `${name}.props`, [
        makeRequiredRule(),
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
            { label: 'image/bmp', value: 'image/bmp' },
            { label: 'image/gif', value: 'image/gif' },
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
        {
          type: 'switch',
          field: 'showDeleteButton',
          title: t('ui.formCreate.props.showDeleteButton'),
          value: true,
        },
        {
          type: 'switch',
          field: 'showBtnText',
          title: t('ui.formCreate.props.showBtnText'),
          value: true,
        },
      ]);
    },
  };
};
