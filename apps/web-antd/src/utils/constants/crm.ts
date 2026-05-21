// =====crm枚举=====

/** 默认商机状态（name/key 为显示用中文，渲染层会通过 $t 翻译） */
export const DEFAULT_STATUSES = [
  {
    endStatus: 1,
    key: '结束',
    name: '赢单',
    percent: 100,
  },
  {
    endStatus: 2,
    key: '结束',
    name: '输单',
    percent: 0,
  },
  {
    endStatus: 3,
    key: '结束',
    name: '无效',
    percent: 0,
  },
];
