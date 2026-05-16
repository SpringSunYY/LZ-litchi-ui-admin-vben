import type { VxeTableGridOptions } from '#/adapter/vxe-table';
import type { BpmProcessDefinitionApi } from '#/api/bpm/definition';

import { $t } from '#/locales';
import { DICT_TYPE } from '#/utils';

/** 列表的字段 */
export function useGridColumns(): VxeTableGridOptions<BpmProcessDefinitionApi.ProcessDefinitionVO>['columns'] {
  return [
    {
      field: 'id',
      title: $t('bpm.definition.field.id'),
      minWidth: 250,
    },
    {
      field: 'name',
      title: $t('bpm.definition.field.name'),
      minWidth: 150,
    },
    {
      field: 'icon',
      title: $t('bpm.definition.field.icon'),
      minWidth: 100,
      slots: { default: 'icon' },
    },
    {
      field: 'startUsers',
      title: $t('bpm.definition.field.startUsers'),
      minWidth: 100,
      slots: { default: 'startUsers' },
    },
    {
      field: 'modelType',
      title: $t('bpm.definition.field.modelType'),
      minWidth: 120,
      cellRender: {
        name: 'CellDict',
        props: { type: DICT_TYPE.BPM_MODEL_TYPE },
      },
    },
    {
      field: 'formType',
      title: $t('bpm.definition.field.formType'),
      minWidth: 150,
      slots: { default: 'formInfo' },
    },
    {
      field: 'version',
      title: $t('bpm.definition.field.version'),
      minWidth: 80,
      slots: { default: 'version' },
    },
    {
      field: 'deploymentTime',
      title: $t('bpm.definition.field.deploymentTime'),
      minWidth: 180,
      formatter: 'formatDateTime',
    },
    {
      title: $t('common.operation'),
      width: 120,
      fixed: 'right',
      slots: { default: 'actions' },
    },
  ];
}
