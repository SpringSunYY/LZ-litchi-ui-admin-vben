import type { PageParam, PageResult } from '@vben/request';

import { requestClient } from '#/api/request';

export namespace SystemTenantApi {
  /** 租户信息 */
  export interface Tenant {
    id: number; // 租户编号
    name?: string; // 租户名
    code?: string; // 编码
    contactUserId: number; // 联系人的用户编号
    contactName?: string; // 联系人
    contactMobile: string; // 联系手机
    industry?: number; // 行业
    type?: number; // 类型
    addressCode: string; // 地区
    addressDetail: string; // 地址
    qualifications: string; // 相关资质
    status?: number; // 租户状态（0正常 1停用）
    menuIds: string; // 关联菜单
    website: string; // 绑定域名
    rechargeAmount?: number; // 充值金额
    paymentAmount?: number; // 支付金额
    balanceAmount?: number; // 余额
    paymentPassword?: string; // 支付密码
    accountCount?: number; // 账号数量
    currentAccountCount?: number; // 当前数量
  }
}

/** 租户列表 */
export function getTenantPage(params: PageParam) {
  return requestClient.get<PageResult<SystemTenantApi.Tenant>>(
    '/system/tenant/page',
    { params },
  );
}

/** 获取租户精简信息列表 */
export function getSimpleTenantList() {
  return requestClient.get<SystemTenantApi.Tenant[]>(
    '/system/tenant/simple-list',
  );
}

/** 查询租户详情 */
export function getTenant(id: number) {
  return requestClient.get<SystemTenantApi.Tenant>(
    `/system/tenant/get?id=${id}`,
  );
}

/** 获取租户精简信息列表 */
export function getTenantList() {
  return requestClient.get<SystemTenantApi.Tenant[]>(
    '/system/tenant/simple-list',
  );
}

/** 新增租户 */
export function createTenant(data: SystemTenantApi.Tenant) {
  return requestClient.post('/system/tenant/create', data);
}

/** 修改租户 */
export function updateTenant(data: SystemTenantApi.Tenant) {
  return requestClient.put('/system/tenant/update', data);
}

/** 删除租户 */
export function deleteTenant(id: number) {
  return requestClient.delete(`/system/tenant/delete?id=${id}`);
}

/** 导出租户 */
export function exportTenant(params: any) {
  return requestClient.download('/system/tenant/export-excel', {
    params,
  });
}
