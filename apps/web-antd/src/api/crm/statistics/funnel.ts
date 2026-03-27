import type { PageResult } from '@vben/request';

import { requestClient } from '#/api/request';

export namespace CrmStatisticsFunnelApi {
  /** 销售漏斗统计数据 */
  export interface FunnelSummary {
    customerCount: number; // 客户数
    businessCount: number; // 商机数
    businessWinCount: number; // 赢单数
  }

  /** 商机结束状态统计 */
  export interface BusinessEndStatusSummary {
    endStatus: number; // 结束状态
    endStatusName: string; // 结束状态名称
    businessCount: number; // 商机数
    totalPrice: number; // 商机总金额
  }

  /** 商机分析(按日期) */
  export interface BusinessSummaryByDate {
    time: string; // 时间
    businessCreateCount: number; // 商机数
    totalPrice: number | string; // 商机金额
  }

  /** 商机转化率分析(按日期) */
  export interface BusinessInversionRateSummaryByDate {
    time: string; // 时间
    businessCount: number; // 商机数量
    businessWinCount: number; // 赢单商机数
  }

  /** 商机分页列表项 */
  export interface BusinessPageItem {
    id: number;
    name: string;
    customerName: string;
    customerId: number;
    ownerUserName: string;
    totalPrice: number;
    businessStatus: number;
    contactLastTime: null | string;
    dealTime: null | number | string;
  }

  /** 统计查询参数 */
  export interface StatisticsParams {
    deptId?: number;
    userId?: number;
    times: string[];
    interval?: number;
  }
}

/** 获取销售漏斗统计数据 */
export function getFunnelSummary(
  params: CrmStatisticsFunnelApi.StatisticsParams,
) {
  return requestClient.get<CrmStatisticsFunnelApi.FunnelSummary>(
    '/crm/statistics-funnel/get-funnel-summary',
    { params },
  );
}

/** 获取商机结束状态统计 */
export function getBusinessSummaryByEndStatus(
  params: CrmStatisticsFunnelApi.StatisticsParams,
) {
  return requestClient.get<CrmStatisticsFunnelApi.BusinessEndStatusSummary[]>(
    '/crm/statistics-funnel/get-business-summary-by-end-status',
    { params },
  );
}

/** 获取新增商机分析(按日期) */
export function getBusinessSummaryByDate(
  params: CrmStatisticsFunnelApi.StatisticsParams,
) {
  return requestClient.get<CrmStatisticsFunnelApi.BusinessSummaryByDate[]>(
    '/crm/statistics-funnel/get-business-summary-by-date',
    { params },
  );
}

/** 获取商机转化率分析(按日期) */
export function getBusinessInversionRateSummaryByDate(
  params: CrmStatisticsFunnelApi.StatisticsParams,
) {
  return requestClient.get<
    CrmStatisticsFunnelApi.BusinessInversionRateSummaryByDate[]
  >('/crm/statistics-funnel/get-business-inversion-rate-summary-by-date', {
    params,
  });
}

/** 获取商机列表(按日期) */
export function getBusinessPageByDate(
  params: CrmStatisticsFunnelApi.StatisticsParams,
) {
  return requestClient.get<PageResult<CrmStatisticsFunnelApi.BusinessPageItem>>(
    '/crm/statistics-funnel/get-business-page-by-date',
    { params },
  );
}
