import type { AxiosResponse } from '@vben/request';

import type { AxiosProgressEvent } from '#/api/infra/file';

export enum UploadResultStatus {
  DONE = 'done',
  ERROR = 'error',
  SUCCESS = 'success',
  UPLOADING = 'uploading',
}

export type UploadListType = 'picture' | 'picture-card' | 'text';

export interface FileUploadProps {
  // 根据后缀，或者其他，格式：'jpg/jpeg/png/gif/webp' 或 ['jpg', 'jpeg', 'png', 'gif', 'webp']
  accept?: string[] | string;
  api?: (
    file: File,
    onUploadProgress?: AxiosProgressEvent,
  ) => Promise<AxiosResponse<any>>;
  // 上传的目录
  directory?: string;
  disabled?: boolean;
  helpText?: string;
  listType?: UploadListType;
  // 最大数量的文件，Infinity不限制
  maxNumber?: number;
  // 文件最大多少MB
  maxSize?: number;
  // 文件最小多少MB，0或不传表示不限制
  minSize?: number;
  // 是否支持多选
  multiple?: boolean;
  // support xxx.xxx.xx
  resultField?: string;
  // 是否显示下面的描述
  showDescription?: boolean;
  // 上传超时时间(毫秒)，0 表示不限制
  timeout?: number;
  value?: string | string[];
}
