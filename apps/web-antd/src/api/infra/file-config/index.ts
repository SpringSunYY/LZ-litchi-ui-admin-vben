import type { PageParam, PageResult } from '@vben/request';

import { requestClient } from '#/api/request';

export namespace InfraFileConfigApi {
  /** 文件客户端配置 */
  export interface FileClientConfig {
    basePath: string;
    host?: string;
    port?: number;
    username?: string;
    password?: string;
    mode?: string;
    endpoint?: string;
    bucket?: string;
    accessKey?: string;
    accessSecret?: string;
    pathStyle?: boolean;
    domain: string;
  }

  /** 文件配置信息 */
  export interface FileConfig {
    id: number; // 编号
    configKey?: string; // 配置键
    name?: string; // 配置名
    storage?: number; // 存储器
    pathType?: number; // 路径类型
    maxSize?: number; // 文件大小
    fileType: string; // 文件类型
    remark: string; // 备注
    master?: boolean; // 是否为主配置
    config?: string; // 存储配置
  }
}

/** 查询文件配置列表 */
export function getFileConfigPage(params: PageParam) {
  return requestClient.get<PageResult<InfraFileConfigApi.FileConfig>>(
    '/infra/file-config/page',
    {
      params,
    },
  );
}

/** 查询文件配置详情 */
export function getFileConfig(id: number) {
  return requestClient.get<InfraFileConfigApi.FileConfig>(
    `/infra/file-config/get?id=${id}`,
  );
}

/** 更新文件配置为主配置 */
export function updateFileConfigMaster(id: number) {
  return requestClient.put(`/infra/file-config/update-master?id=${id}`);
}

/** 新增文件配置 */
export function createFileConfig(data: InfraFileConfigApi.FileConfig) {
  return requestClient.post('/infra/file-config/create', data);
}

/** 修改文件配置 */
export function updateFileConfig(data: InfraFileConfigApi.FileConfig) {
  return requestClient.put('/infra/file-config/update', data);
}

/** 删除文件配置 */
export function deleteFileConfig(id: number) {
  return requestClient.delete(`/infra/file-config/delete?id=${id}`);
}

/** 测试文件配置 */
export function testFileConfig(id: number) {
  return requestClient.get(`/infra/file-config/test?id=${id}`);
}
