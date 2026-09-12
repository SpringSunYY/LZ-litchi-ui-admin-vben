import type { RequestClient } from '../request-client';
import type { RequestClientConfig } from '../types';

type DownloadRequestConfig = {
  /**
   * 定义期望获得的数据类型。
   * raw: 原始的AxiosResponse，包括headers、status等。
   * body: 只返回响应数据的BODY部分(Blob)
   */
  responseReturn?: 'body' | 'raw';
} & Omit<RequestClientConfig, 'responseReturn'>;

class DownloadError extends Error {
  code?: number | string;
  response?: unknown;

  constructor(message: string, code?: number | string, response?: unknown) {
    super(message);
    this.name = 'DownloadError';
    this.code = code;
    this.response = response;
  }
}

class FileDownloader {
  private client: RequestClient;

  constructor(client: RequestClient) {
    this.client = client;
  }

  /**
   * 下载文件
   * @param url 文件的完整链接
   * @param config 配置信息，可选。
   * @returns 如果config.responseReturn为'body'，则返回Blob(默认)，否则返回RequestResponse<Blob>
   */
  public async download<T = Blob>(
    url: string,
    config?: DownloadRequestConfig,
  ): Promise<T> {
    const finalConfig: DownloadRequestConfig = {
      responseReturn: 'body',
      ...config,
      responseType: 'blob',
    };

    const blob: any = await this.client.get<T>(url, finalConfig);

    // 检查是否是 JSON 错误响应
    if (blob instanceof Blob) {
      const isError = await this.checkIfErrorBlob(blob);
      if (isError) {
        const errorText = await this.extractErrorFromBlob(blob);
        try {
          const errorJson = JSON.parse(errorText);
          // 抛出带有后端错误信息的错误
          throw new DownloadError(
            errorJson.msg || errorJson.message || '下载失败',
            errorJson.code,
            errorJson,
          );
        } catch (parseError) {
          if (
            parseError instanceof Error &&
            parseError.message !== '下载失败'
          ) {
            throw parseError;
          }
          throw new Error(errorText || '下载失败');
        }
      }
    }

    return blob;
  }

  /**
   * 检查 Blob 是否为 JSON 错误响应
   */
  private async checkIfErrorBlob(blob: Blob): Promise<boolean> {
    try {
      const text = await blob.text();
      // 尝试解析为 JSON
      const json = JSON.parse(text);
      // 如果是 {code: xxx, msg: xxx} 格式，说明是错误响应
      return (
        json && typeof json === 'object' && ('code' in json || 'msg' in json)
      );
    } catch {
      // 无法解析为 JSON，说明是正常文件
      return false;
    }
  }

  /**
   * 从 Blob 中提取错误信息
   */
  private async extractErrorFromBlob(blob: Blob): Promise<any> {
    try {
      return await blob.text();
    } catch {
      return null;
    }
  }
}

export { FileDownloader };
