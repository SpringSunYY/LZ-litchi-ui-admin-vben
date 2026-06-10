import type { SelectRuleOption } from '#/components/form-create/typing';

import { useI18n } from '@vben/locales';

import {
  localeProps,
  makeRequiredRule,
} from '#/components/form-create/helpers';
import { AreaLevelEnum } from '#/utils';

/** 省市区选择器规则 */
export function useAreaSelectRule(options?: SelectRuleOption) {
  const { t } = useI18n();
  const label = options?.label || t('ui.formCreate.labels.areaSelect');
  const name = options?.name || 'AreaSelect';

  return {
    icon: 'icon-location',
    label,
    name,
    rule() {
      return {
        type: name,
        field: `area_${Date.now()}`,
        title: label,
        info: '',
        $required: false,
        modelField: 'value', // 特殊：ele 里是 model-value，antd 里是 value
      };
    },
    props(_: any) {
      return localeProps(t, `${name}.props`, [
        makeRequiredRule(),
        {
          type: 'select',
          field: 'level',
          title: t('ui.formCreate.props.level'),
          value: AreaLevelEnum.DISTRICT,
          options: [
            {
              label: t('ui.formCreate.props.areaLevelProvince'),
              value: AreaLevelEnum.PROVINCE,
            },
            {
              label: t('ui.formCreate.props.areaLevelCity'),
              value: AreaLevelEnum.CITY,
            },
            {
              label: t('ui.formCreate.props.areaLevelDistrict'),
              value: AreaLevelEnum.DISTRICT,
            },
          ],
          info: t('ui.formCreate.props.levelInfo'),
        },
        {
          type: 'input',
          field: 'placeholder',
          title: t('ui.formCreate.props.placeholder'),
          value: t('ui.formCreate.component.areaSelectPlaceholder'),
        },
        {
          type: 'switch',
          field: 'clearable',
          title: t('ui.formCreate.props.clearable'),
          value: true,
        },
        {
          type: 'switch',
          field: 'showAllLevels',
          title: t('ui.formCreate.props.showAllLevels'),
          value: true,
          info: t('ui.formCreate.props.showAllLevelsInfo'),
        },
        {
          type: 'input',
          field: 'separator',
          title: t('ui.formCreate.props.separator'),
          value: '/',
          info: t('ui.formCreate.props.separatorInfo'),
        },
        {
          type: 'switch',
          field: 'disabled',
          title: t('ui.formCreate.props.disabled'),
          value: false,
        },
      ]);
    },
  };
}
