import type { AxiosRequestConfig, PageParam, PageResult } from '@vben/request';

import type { InfraFileApi } from '#/api/infra/file';

import { requestClient } from '#/api/request';
/** Axios 上传进度事件 */
export type AxiosProgressEvent = AxiosRequestConfig['onUploadProgress'];

export namespace VectorImageApi {
  /** 上传并索引单张图片 */
  export interface UploadImageVo {
    id: string;
    url: string;
  }

  /** 批量入库明细：跳过项 */
  export interface SkippedItem {
    source: string;
    existingFileId?: number;
  }

  /** 批量入库明细：失败项 */
  export interface FailedItem {
    source: string;
    reason: string;
  }

  /** 批量入库结果（与后端 BatchUploadRespVO 对齐） */
  export interface BatchUploadVo {
    total: number;
    inserted: number;
    skipped: number;
    failed: number;
    insertedList: UploadImageVo[];
    skippedList: SkippedItem[];
    failedList: FailedItem[];
  }

  /** 以图搜图列表行 */
  export interface VectorImage {
    id: string;
    imagePath: string;
    fileId?: number;
    tenantId?: number;
    createTime: number;
  }

  /** 以图搜图相似结果 */
  export interface SearchResult {
    id: string;
    imagePath: string;
    fileId?: number;
    tenantId?: number;
    similarity: string;
    score: number;
    createTime: number;
  }

  /** Milvus 集合信息（含记录数） */
  export interface CollectionInfo {
    collectionName: string;
    dimension: number;
    exists: boolean;
    /** 集合当前记录数（row_count）。后端在 /info 接口里直接返回，省一次 /stats 拉取。 */
    rowCount: number;
  }

  /** Milvus 集合统计 */
  export interface CollectionStats {
    collectionName: string;
    exists: boolean;
    rowCount: number;
    samples?: Array<{
      createTime: number;
      fileId?: number;
      id: string;
      imagePath: string;
      tenantId?: number;
    }>;
  }
}

/** 上传并索引单张图片（走 fileService.createFile 落盘，再由后端抽特征 + 写入 Milvus） */
export function uploadImage(
  data: InfraFileApi.FileUploadReqVO,
  onUploadProgress?: AxiosProgressEvent,
) {
  // 特殊：由于 upload 内部封装，即使 directory 为 undefined，也会传递给后端
  if (data.directory === undefined) {
    delete data.directory;
  }
  return requestClient.upload<VectorImageApi.UploadImageVo>(
    '/infra/vector/image/upload',
    data as any,
    { onUploadProgress },
  );
}

/**
 * 批量上传并索引图片（同名自动跳过）。
 *
 * <p>注意：直接走 {@link requestClient.post} + 自建 FormData，
 * <b>不能用</b> {@link requestClient.upload}——它的内部会按对象 key 展开为
 * {@code files[0]/files[1]} 的 FormData 字段，而 Spring MVC 的
 * {@code @RequestParam("files") List<MultipartFile>} 只认同名 part，多次
 * {@code FormData.append('files', file)} 才能让后端正确解析为 List。
 *
 * @param files 要上传的文件列表
 * @param moduleType 模块类型（透传给后端 fileService.createFile）
 */
export function batchUploadImage(
  files: File[],
  moduleType?: string,
  onUploadProgress?: AxiosProgressEvent,
) {
  const formData = new FormData();
  files.forEach((f) => formData.append('files', f));
  if (moduleType) {
    formData.append('moduleType', moduleType);
  }
  return requestClient.post<VectorImageApi.BatchUploadVo>(
    '/infra/vector/image/upload/batch',
    formData,
    { onUploadProgress, headers: { 'Content-Type': undefined as any } },
  );
}

/** 按 URL 列表索引图片（同名自动跳过） */
export function uploadImagesByUrls(urls: string[]) {
  return requestClient.post<VectorImageApi.BatchUploadVo>(
    '/infra/vector/image/upload/urls',
    { urls },
    { timeout: 0 },
  );
}

/**
 * 从服务器本地目录导入图片并索引（同名自动跳过）。
 *
 * <p>注意：{@code dir} 是服务器侧的绝对或相对路径。
 *
 * @param dir 目录路径
 * @param recursive 是否递归子目录，默认 true
 */
export function importImagesFromDir(dir: string, recursive = true) {
  return requestClient.post<VectorImageApi.BatchUploadVo>(
    '/infra/vector/image/upload/import',
    null,
    { params: { dir, recursive }, timeout: 0 },
  );
}

/** 获得以图搜图图片分页 */
export function getVectorImagePage(
  params: PageParam & {
    createTime?: string[];
    id?: string;
    imagePath?: string;
  },
) {
  return requestClient.get<PageResult<VectorImageApi.VectorImage>>(
    '/infra/vector/image/page',
    { params, timeout: 0 },
  );
}

/** 获得单张图片详情 */
export function getVectorImage(id: string) {
  return requestClient.get<VectorImageApi.VectorImage>(
    `/infra/vector/image/get?id=${encodeURIComponent(id)}`,
  );
}

/** 删除单张图片 */
export function deleteVectorImage(id: string) {
  return requestClient.delete<boolean>(
    `/infra/vector/image/delete?id=${encodeURIComponent(id)}`,
  );
}

/** 批量删除图片 */
export function deleteVectorImageList(ids: string[]) {
  return requestClient.delete<number>(
    `/infra/vector/image/delete-list?ids=${ids.map((id) => encodeURIComponent(id)).join('&ids=')}`,
  );
}

/**
 * 以图搜图（按库内图片 id）
 * @param id  库内图片主键
 * @param topK Top K 返回条数
 */
export function searchVectorImageById(id: string, topK = 10) {
  return requestClient.get<VectorImageApi.SearchResult[]>(
    `/infra/vector/image/search?id=${encodeURIComponent(id)}&topK=${topK}`,
  );
}

/**
 * 以图搜图（按上传的图片）
 */
export function searchVectorImageByUpload(
  data: InfraFileApi.FileUploadReqVO,
  topK = 10,
  onUploadProgress?: AxiosProgressEvent,
) {
  return requestClient.upload<VectorImageApi.SearchResult[]>(
    '/infra/vector/image/search/upload',
    { ...data, topK },
    { onUploadProgress },
  );
}

/** 获得 Milvus 集合信息 */
export function getVectorCollectionInfo() {
  return requestClient.get<VectorImageApi.CollectionInfo>(
    '/infra/vector/image/info',
  );
}

/** 重置 Milvus 集合 */
export function resetVectorCollection() {
  return requestClient.delete<boolean>('/infra/vector/image/reset');
}
