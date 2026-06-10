import { useI18n } from '@vben/locales';
import { buildUUID } from '@vben/utils';

import {
  localeProps,
  makeRequiredRule,
} from '#/components/form-create/helpers';
import { DICT_TYPE, getDictOptions } from '#/utils';

export const useUploadFileRule = (label?: string) => {
  const { t } = useI18n();

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
            { label: 'rtf', value: 'rtf' },
            { label: 'md', value: 'md' },
            { label: 'csv', value: 'csv' },
            { label: 'tsv', value: 'tsv' },
            { label: 'json', value: 'json' },
            { label: 'xml', value: 'xml' },
            { label: 'html', value: 'html' },
            { label: 'htm', value: 'htm' },
            { label: 'pdf', value: 'pdf' },
            { label: 'rar', value: 'rar' },
            { label: 'zip', value: 'zip' },
            { label: '7z', value: '7z' },
            { label: 'gz', value: 'gz' },
            { label: 'tar', value: 'tar' },
            { label: 'mp3', value: 'mp3' },
            { label: 'wav', value: 'wav' },
            { label: 'flac', value: 'flac' },
            { label: 'aac', value: 'aac' },
            { label: 'ogg', value: 'ogg' },
            { label: 'mp4', value: 'mp4' },
            { label: 'avi', value: 'avi' },
            { label: 'mov', value: 'mov' },
            { label: 'wmv', value: 'wmv' },
            { label: 'flv', value: 'flv' },
            { label: 'mkv', value: 'mkv' },
            { label: 'webm', value: 'webm' },
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
