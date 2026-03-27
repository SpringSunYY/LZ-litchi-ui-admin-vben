import { requestClient } from '#/api/request';

export namespace CrmStatisticsRankApi {
  /** 排行统计数据 */
  export interface Rank {
    count: number;
    nickname: string;
    deptName: string;
  }

  /** 统计查询参数 */
  export interface StatisticsParams {
    deptId?: number;
    userId?: number;
    times: string[];
  }
}

/** 获得合同排行榜 */
export function getContractPriceRank(
  params: CrmStatisticsRankApi.StatisticsParams,
) {
  return requestClient.get<CrmStatisticsRankApi.Rank[]>(
    '/crm/statistics-rank/get-contract-price-rank',
    { params },
  );
}

/** 获得回款排行榜 */
export function getReceivablePriceRank(
  params: CrmStatisticsRankApi.StatisticsParams,
) {
  return requestClient.get<CrmStatisticsRankApi.Rank[]>(
    '/crm/statistics-rank/get-receivable-price-rank',
    { params },
  );
}

/** 签约合同排行 */
export function getContractCountRank(
  params: CrmStatisticsRankApi.StatisticsParams,
) {
  return requestClient.get<CrmStatisticsRankApi.Rank[]>(
    '/crm/statistics-rank/get-contract-count-rank',
    { params },
  );
}

/** 产品销量排行 */
export function getProductSalesRank(
  params: CrmStatisticsRankApi.StatisticsParams,
) {
  return requestClient.get<CrmStatisticsRankApi.Rank[]>(
    '/crm/statistics-rank/get-product-sales-rank',
    { params },
  );
}

/** 新增客户数排行 */
export function getCustomerCountRank(
  params: CrmStatisticsRankApi.StatisticsParams,
) {
  return requestClient.get<CrmStatisticsRankApi.Rank[]>(
    '/crm/statistics-rank/get-customer-count-rank',
    { params },
  );
}

/** 新增联系人数排行 */
export function getContactsCountRank(
  params: CrmStatisticsRankApi.StatisticsParams,
) {
  return requestClient.get<CrmStatisticsRankApi.Rank[]>(
    '/crm/statistics-rank/get-contacts-count-rank',
    { params },
  );
}

/** 跟进次数排行 */
export function getFollowCountRank(
  params: CrmStatisticsRankApi.StatisticsParams,
) {
  return requestClient.get<CrmStatisticsRankApi.Rank[]>(
    '/crm/statistics-rank/get-follow-count-rank',
    { params },
  );
}

/** 跟进客户数排行 */
export function getFollowCustomerCountRank(
  params: CrmStatisticsRankApi.StatisticsParams,
) {
  return requestClient.get<CrmStatisticsRankApi.Rank[]>(
    '/crm/statistics-rank/get-follow-customer-count-rank',
    { params },
  );
}
