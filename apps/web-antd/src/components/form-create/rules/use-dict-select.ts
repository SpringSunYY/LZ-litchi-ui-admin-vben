import { onMounted, ref } from 'vue';

import { useI18n } from '@vben/locales';
import { buildUUID, cloneDeep } from '@vben/utils';

import * as DictDataApi from '#/api/system/dict/type';
import {
  localeProps,
  makeRequiredRule,
} from '#/components/form-create/helpers';
import { selectRule } from '#/components/form-create/rules/data';

/**
 * 字典选择器规则，如果规则使用到动态数据则需要单独配置不能使用 useSelectRule
 */
export const useDictSelectRule = (label?: string) => {
  const { t } = useI18n();
  const name = 'DictSelect';
  const dictOptions = ref<{ label: string; value: string }[]>([]); // 字典类型下拉数据
  onMounted(async () => {
    const data = await DictDataApi.getSimpleDictTypeList();
    if (!data || data.length === 0) {
      return;
    }
    dictOptions.value =
      data?.map((item: DictDataApi.SystemDictTypeApi.DictType) => ({
        label: item.name,
        value: item.type,
      })) ?? [];
  });
  return {
    icon: 'icon-descriptions',
    label: label || '字典选择器',
    name,
    rule() {
      return {
        type: name,
        field: buildUUID(),
        title: label || '字典选择器',
        info: '',
        $required: false,
      };
    },
    props(_: any) {
      const rules = cloneDeep(selectRule);
      console.log('name', name);
      return localeProps(t, `${name}.props`, [
        makeRequiredRule(),
        {
          type: 'select',
          field: 'dictType',
          title: t('ui.formCreate.props.dictType'),
          value: '',
          options: dictOptions.value,
        },
        {
          type: 'select',
          field: 'valueType',
          title: t('ui.formCreate.props.valueType'),
          value: 'str',
          options: [
            { label: 'valueTypeInt', value: 'int' },
            { label: 'valueTypeStr', value: 'str' },
            { label: 'valueTypeBool', value: 'bool' },
          ],
        },
        ...rules,
      ]);
    },
  };
};
