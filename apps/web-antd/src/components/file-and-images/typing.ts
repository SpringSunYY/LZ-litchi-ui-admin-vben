export interface FileAndImagesPreviewProps {
  /** 文件 URL，多个用 separator 分隔 */
  value?: null | string;
  /** 多个文件 URL 之间的分隔符，默认 '||' */
  separator?: string;
  /** 强制指定类型：'image' | 'file' | 'auto'，默认 auto */
  type?: 'auto' | 'file' | 'image';
}
