import type { PageParam, PageResult } from '@vben/request';

import { requestClient } from '#/api/request';

export namespace SystemTenantPackageApi {
  /** 租户套餐信息 */
  export interface TenantPackage {
    id: number; // 套餐编号
    name?: string; // 套餐名
    code?: string; // 套餐编码
    type?: boolean; // 套餐类型
    logo?: string; // LOGO
    price?: number; // 套餐价格
    description: string; // 套餐描述
    status?: number; // 套餐状态
    published?: number;// 发布状态
    orderNum?: number; // 排序
    subscriptionNum?: number; // 订阅数
    subscriptionTotalAmount?: number; // 订阅总额
    remark: string; // 备注
    menuIds?: string; // 关联的菜单编号
  }
  export interface TenantPackageGrant {
    id: number; // 授权编号
    menuIds?: number[]; // 关联的菜单编号
  }
}

/** 租户套餐列表 */
export function getTenantPackagePage(params: PageParam) {
  return requestClient.get<PageResult<SystemTenantPackageApi.TenantPackage>>(
    '/system/tenant-package/page',
    { params },
  );
}

/** 查询租户套餐详情 */
export function getTenantPackage(id: number) {
  return requestClient.get(`/system/tenant-package/get?id=${id}`);
}

/** 新增租户套餐 */
export function createTenantPackage(
  data: SystemTenantPackageApi.TenantPackage,
) {
  return requestClient.post('/system/tenant-package/create', data);
}

/** 修改租户套餐 */
export function updateTenantPackage(
  data: SystemTenantPackageApi.TenantPackage,
) {
  return requestClient.put('/system/tenant-package/update', data);
}
/** 授权租户套餐 */
export function grantTenantPackage(
  data: SystemTenantPackageApi.TenantPackageGrant,
) {
  return requestClient.put('/system/tenant-package/grant', data);
}
/** 删除租户套餐 */
export function deleteTenantPackage(id: number) {
  return requestClient.delete(`/system/tenant-package/delete?id=${id}`);
}

/** 获取租户套餐精简信息列表 */
export function getTenantPackageList(params: PageParam) {
  return requestClient.get<PageResult<SystemTenantPackageApi.TenantPackage>>(
    '/system/tenant-package/get-simple-list',
    { params },
  );
}
