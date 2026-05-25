import { buildUUID } from '@vben/utils';

import {
  localeProps,
  makeRequiredRule,
} from '#/components/form-create/helpers';

export const useUploadFileRule = (label?: string) => {
  const name = 'FileUpload';
  return {
    icon: 'icon-upload',
    label: label || '文件上传',
    name,
    rule() {
      return {
        type: name,
        field: buildUUID(),
        title: label || '文件上传',
        info: '',
        $required: false,
      };
    },
    props(_: any, { t }: any) {
      return localeProps(t, `${name}.props`, [
        makeRequiredRule(),
        {
          type: 'select',
          field: 'fileType',
          title: t('ui.formCreate.props.fileType'),
          value: ['doc', 'xls', 'ppt', 'txt', 'pdf'],
          options: [
            { label: 'doc', value: 'doc' },
            { label: 'docx', value: 'docx' },
            { label: 'xls', value: 'xls' },
            { label: 'xlsx', value: 'xlsx' },
            { label: 'ppt', value: 'ppt' },
            { label: 'pptx', value: 'pptx' },
            { label: 'txt', value: 'txt' },
            { label: 'pdf', value: 'pdf' },
            { label: 'rar', value: 'rar' },
            { label: 'zip', value: 'zip' },
            { label: '7z', value: '7z' },
            { label: 'gz', value: 'gz' },
            { label: 'tar', value: 'tar' },
            { label: 'mp3', value: 'mp3' },
            { label: 'wav', value: 'wav' },
            { label: 'mp4', value: 'mp4' },
            { label: 'avi', value: 'avi' },
            { label: 'mov', value: 'mov' },
            { label: 'wmv', value: 'wmv' },
            { label: 'flv', value: 'flv' },
          ],
          props: {
            mode: 'multiple',
          },
        },
        {
          type: 'switch',
          field: 'autoUpload',
          title: t('ui.formCreate.props.autoUpload'),
          value: true,
        },
        {
          type: 'switch',
          field: 'drag',
          title: t('ui.formCreate.props.drag'),
          value: false,
        },
        {
          type: 'switch',
          field: 'isShowTip',
          title: t('ui.formCreate.props.isShowTip'),
          value: true,
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
          type: 'switch',
          field: 'disabled',
          title: t('ui.formCreate.props.disabled'),
          value: false,
        },
      ]);
    },
  };
};
