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
