import { requestClient } from '#/api/request';

export namespace InfraAreaApi {
  /** 地区信息 */
  export interface Area {
    id?: number;
    name: string;
    code: string;
    parentCode?: string;
    sort?: number;
    status?: number;
    createTime?: Date;
  }
}

export namespace AreaApi {
  /** 地区信息信息 */
  export interface Area {
    id: number; // ID
    name?: string; // 地区名称
    postalCode: string; // 邮政编码
    parentId?: number; // 父级ID
    level?: number; // 层级
    longitude: number; // 经度
    latitude: number; // 纬度
    source: string; // 数据来源
    geoJson: string; // GeoJson
    sortNum: string; // 排序号
    children?: Area[];
  }
}

/** 获得地区树 */
export function getAreaTree() {
  return requestClient.get<InfraAreaApi.Area[]>('/infra/area/tree');
}

/** 获得 IP 对应的地区名 */
export function getAreaByIp(ip: string) {
  return requestClient.get<string>(`/infra/area/get-by-ip?ip=${ip}`);
}

/** 获取当前用户ip 地址 */
export function getAreaIp() {
  return requestClient.get<string>('/infra/area/get-ip-addr');
}

/** 查询地区信息列表 */
export function getAreaList(params: any) {
  return requestClient.get<AreaApi.Area[]>('/infra/area/list', {
    params,
    timeout: 30_000,
  });
}

/** 查询地区信息详情 */
export function getArea(id: number) {
  return requestClient.get<AreaApi.Area>(`/infra/area/get?id=${id}`);
}

/** 新增地区信息 */
export function createArea(data: AreaApi.Area) {
  return requestClient.post('/infra/area/create', data);
}

/** 修改地区信息 */
export function updateArea(data: AreaApi.Area) {
  return requestClient.put('/infra/area/update', data);
}

/** 删除地区信息 */
export function deleteArea(id: number) {
  return requestClient.delete(`/infra/area/delete?id=${id}`);
}

/** 导出地区信息 */
export function exportArea(params: any) {
  return requestClient.download('/infra/area/export-excel', {
    params,
    timeout: 300_000,
  });
}

/**
 * 清除缓存
 */
export function clearAreaCache() {
  return requestClient.delete('/infra/area/clear-cache');
}

/** 获取地区信息导入模板 */
export function importAreaTemplate() {
  return requestClient.download('/infra/area/get-import-template');
}

/** 导入地区信息 */
export function importArea(file: File) {
  return requestClient.upload(
    '/infra/area/import',
    { file },
    { timeout: 30_000 },
  );
}
