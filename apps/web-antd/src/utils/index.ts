export * from './constants';
export * from './dict';
export * from './download';
export * from './formCreate';
export * from './rangePickerProps';
export * from './routerHelper';

/** 适配 echarts map 的地名 */
export const areaReplace = (areaName: string) => {
  if (!areaName) {
    return areaName;
  }
  return areaName
    .replace('维吾尔自治区', '')
    .replace('壮族自治区', '')
    .replace('回族自治区', '')
    .replace('自治区', '')
    .replace('省', '')
    .replace('市', '');
};

export function normalizeSortOrder(order: unknown): 'asc' | 'desc' | undefined {
  if (!order) return undefined;
  const str = String(order).toLowerCase();
  if (str === 'asc' || str === 'ascend') return 'asc';
  if (str === 'desc' || str === 'descend') return 'desc';
  return undefined;
}

export function pickSort(ctx: any): { sort?: string[]; sortBy?: string[] } {
  const sorts = Array.isArray(ctx?.sorts) ? ctx.sorts : undefined;
  const activeSorts = (sorts || []).filter((s: any) => s?.order);
  const sortBy = activeSorts.map((s: any) => String(s.field));
  const sort = activeSorts.map((s: any) => normalizeSortOrder(s.order)!);
  return { sortBy, sort };
}
