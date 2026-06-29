import type { VxeTableGridOptions } from '#/adapter/vxe-table';

import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

/** 审批记录列表字段 */
export function useGridColumns(): VxeTableGridOptions['columns'] {
  return [
    {
      field: 'assigneeUser',
      // 审批人
      title: $t('bpm.simpleProcessDesign.field.assignee'),
      slots: {
        default: ({ row }: { row: any }) => {
          return row.assigneeUser?.nickname || row.ownerUser?.nickname;
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
          return row.assigneeUser?.deptName || row.ownerUser?.deptName;
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
      // 审批状态
      title: $t('bpm.simpleProcessDesign.field.approveStatus'),
      minWidth: 90,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.BPM_TASK_STATUS },
      },
    },
    {
      field: 'reason',
      // 审批建议
      title: $t('bpm.simpleProcessDesign.field.approveReason'),
      minWidth: 160,
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
