import type { VbenFormSchema } from '#/adapter/form';

export interface ImportExcelProps {
  /** 模态框标题 */
  title: string;
  /** 导入接口，接收file和formData */
  importApi: (file: File, formData: Record<string, any>) => Promise<any>;
  /** 模板下载接口 */
  templateApi: () => Promise<Blob>;
  /** 模板文件名 */
  templateFileName: string;
  /** 表单schema */
  formSchema: () => VbenFormSchema[];
  /** 弹窗宽度 */
  width?: string | number;
}

export interface ImportExcelEmits {
  (e: 'success'): void;
}
