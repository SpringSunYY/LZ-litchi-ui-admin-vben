import type { Dayjs } from 'dayjs';

import type { PageParam, PageResult } from '@vben/request';

import { requestClient } from '#/api/request';

export namespace TenantPackageSubscribeApi {
  /** 租户套餐订阅信息 */
  export interface TenantPackageSubscribe {
    id: number; // 套餐编号
    packageName?: string; // 套餐名
    packageCode?: string; // 套餐编码
    type?: boolean; // 套餐类型
    logo?: string; // LOGO
    tenantName?: string; // 租户名
    tenantCode?: string; // 租户编码
    price?: number; // 套餐价格
    discountPrice?: number; // 优惠价格
    days?: number; // 天数
    totalPrice?: number; // 总价格
    status?: number; // 订阅状态
    payStatus?: number; // 支付状态
    startTime?: Dayjs | string; // 开始时间
    endTime?: Dayjs | string; // 结束时间
    remark: string; // 备注
  }
}

/** 查询租户套餐订阅分页 */
export function getTenantPackageSubscribePage(params: PageParam) {
  return requestClient.get<
    PageResult<TenantPackageSubscribeApi.TenantPackageSubscribe>
  >('/system/tenant-package-subscribe/page', { params });
}

/** 查询租户套餐订阅详情 */
export function getTenantPackageSubscribe(id: number) {
  return requestClient.get<TenantPackageSubscribeApi.TenantPackageSubscribe>(
    `/system/tenant-package-subscribe/get?id=${id}`,
  );
}

/** 新增租户套餐订阅 */
export function createTenantPackageSubscribe(
  data: TenantPackageSubscribeApi.TenantPackageSubscribe,
) {
  return requestClient.post('/system/tenant-package-subscribe/create', data);
}

/** 修改租户套餐订阅 */
export function updateTenantPackageSubscribe(
  data: TenantPackageSubscribeApi.TenantPackageSubscribe,
) {
  return requestClient.put('/system/tenant-package-subscribe/update', data);
}

/** 删除租户套餐订阅 */
export function deleteTenantPackageSubscribe(id: number) {
  return requestClient.delete(
    `/system/tenant-package-subscribe/delete?id=${id}`,
  );
}

/** 批量删除租户套餐订阅 */
export function deleteTenantPackageSubscribeList(ids: number[]) {
  return requestClient.delete(
    `/system/tenant-package-subscribe/delete-list?ids=${ids.join(',')}`,
  );
}

/** 导出租户套餐订阅 */
export function exportTenantPackageSubscribe(params: any) {
  return requestClient.download(
    '/system/tenant-package-subscribe/export-excel',
    params,
  );
}
