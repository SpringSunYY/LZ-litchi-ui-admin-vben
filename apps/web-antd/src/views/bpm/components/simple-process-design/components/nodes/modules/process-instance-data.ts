import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

/** 流程实例列表字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'startUser',
      // 发起人
      title: $t('bpm.simpleProcessDesign.field.startUser'),
      slots: {
        default: ({ row }: { row: any }) => {
          return row.startUser?.nickname;
        },
      },
      minWidth: 100,
    },
    {
      field: 'deptName',
      // 部门
      title: $t('bpm.simpleProcessDesign.field.dept'),
      slots: {
        default: ({ row }: { row: any }) => {
          return row.startUser?.deptName;
        },
      },
      minWidth: 100,
    },
    {
      field: 'createTime',
      // 开始时间
      title: $t('bpm.simpleProcessDesign.field.startTime'),
      formatter: 'formatDateTime',
      minWidth: 140,
    },
    {
      field: 'endTime',
      // 结束时间
      title: $t('bpm.simpleProcessDesign.field.endTime'),
      formatter: 'formatDateTime',
      minWidth: 140,
    },
    {
      field: 'status',
      // 流程状态
      title: $t('bpm.simpleProcessDesign.field.processStatus'),
      minWidth: 90,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.BPM_PROCESS_INSTANCE_STATUS },
      },
    },
    {
      field: 'durationInMillis',
      // 耗时
      title: $t('bpm.simpleProcessDesign.field.duration'),
      minWidth: 100,
      formatter: 'formatPast2',
    },
  ];
}
