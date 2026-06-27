import type { Rule } from '@form-create/ant-design-vue';

import type { Ref } from 'vue';

import type { Menu } from '#/components/form-create/typing';

import { computed, nextTick, onMounted, ref, watch } from 'vue';

import { i18n } from '@vben/locales';

import formCreate from '@form-create/ant-design-vue';

import { apiSelectRule } from '#/components/form-create/rules/data';
import { useAreaSelectRule } from '#/components/form-create/rules/use-area-select-rule';
import { useIframeRule } from '#/components/form-create/rules/use-iframe-rule';
import {
  applyFormCreateRuntimeLocale,
  getFormCreateRuntimeLocale,
} from '#/utils/formCreate';

import {
  useDictSelectRule,
  useEditorRule,
  useSelectRule,
  useUploadFileRule,
  useUploadImageRule,
  useUploadImagesRule,
} from './rules';

/** 表单设计器组件的 i18n labels，随语言响应式更新 */
export const useFormCreateLabels = () => {
  const t = (key: string) => i18n.global.t(key);

  return {
    /** 富文本 */
    tinymce: computed(() => t('ui.formCreate.labels.tinymce')),
    /** 文件上传 */
    fileUpload: computed(() => t('ui.formCreate.labels.fileUpload')),
    /** 单图上传 */
    imageUpload: computed(() => t('ui.formCreate.labels.imageUpload')),
    /** 多图上传 */
    imagesUpload: computed(() => t('ui.formCreate.labels.imagesUpload')),
    /** 用户选择器 */
    userSelect: computed(() => t('ui.formCreate.labels.userSelect')),
    /** 部门选择器 */
    deptSelect: computed(() => t('ui.formCreate.labels.deptSelect')),
    /** 字典选择器 */
    dictSelect: computed(() => t('ui.formCreate.labels.dictSelect')),
    /** 接口选择器 */
    apiSelect: computed(() => t('ui.formCreate.labels.apiSelect')),
    /** 系统字段 */
    systemMenuTitle: computed(() => t('ui.formCreate.labels.systemMenuTitle')),
    /** 地区选择器 */
    areaSelect: computed(() => t('ui.formCreate.labels.areaSelect')),
    /** 网页iframe */
    webIframe: computed(() => t('ui.formCreate.labels.iframe')),
  };
};

export const useFormCreateLocale = (
  option?: Ref<Record<string, any> | undefined>,
) => {
  return computed(() => getFormCreateRuntimeLocale(option?.value || {}));
};

export function makeRequiredRule() {
  return {
    type: 'Required',
    field: 'formCreate$required',
    title: i18n.global.t('ui.formCreate.props.required'),
  };
}

export const localeProps = (
  t: (msg: string) => any,
  _prefix: string,
  rules: any[],
) => {
  return rules.map((rule: { field: string; options?: any[]; title: any }) => {
    if (rule.field === 'formCreate$required') {
      rule.title = t('ui.formCreate.props.required') || rule.title;
    } else if (rule.field && rule.field !== '_optionType') {
      rule.title = t(`ui.formCreate.props.${rule.field}`) || rule.title;
    }
    if (rule.options && Array.isArray(rule.options)) {
      rule.options = rule.options.map(
        (opt: { label: number | string; value: any }) => {
          return opt;
        },
      );
    }
    return rule;
  });
};

/**
 * 解析表单组件的  field, title 等字段（递归，如果组件包含子组件）
 *
 * @param rule  组件的生成规则 https://www.form-create.com/v3/guide/rule
 * @param fields 解析后表单组件字段
 * @param parentTitle  如果是子表单，子表单的标题，默认为空
 */
export const parseFormFields = (
  rule: Record<string, any>,
  fields: Array<Record<string, any>> = [],
  parentTitle: string = '',
) => {
  const { type, field, $required, title: tempTitle, children } = rule;
  if (field && tempTitle) {
    let title = tempTitle;
    if (parentTitle) {
      title = `${parentTitle}.${tempTitle}`;
    }
    let required = false;
    if ($required) {
      required = true;
    }
    fields.push({
      field,
      title,
      type,
      required,
    });
    // TODO 子表单 需要处理子表单字段
    // if (type === 'group' && rule.props?.rule && Array.isArray(rule.props.rule)) {
    //   // 解析子表单的字段
    //   rule.props.rule.forEach((item) => {
    //     parseFields(item, fieldsPermission, title)
    //   })
    // }
  }
  if (children && Array.isArray(children)) {
    children.forEach((rule) => {
      parseFormFields(rule, fields);
    });
  }
};

/**
 * 表单设计器增强 hook
 * 新增
 * - 文件上传
 * - 单图上传
 * - 多图上传
 * - 字典选择器
 * - 用户选择器
 * - 部门选择器
 * - 富文本
 * - 国际化支持
 * - 地区选择器
 * - 网页iframe
 *
 * @param designer FcDesigner 组件 ref
 * @param loadFormConfig 可选，表单配置加载函数
 * @returns locale — 响应式的设计器语言包，需绑定到 <FcDesigner :locale="locale">
 */
export const useFormCreateDesigner = (
  designer: Ref,
  loadFormConfig?: () => Promise<void>,
) => {
  const labels = useFormCreateLabels();

  const applyRuntimeLocale = () => {
    const option = designer.value?.getOption?.();
    if (!option) {
      return;
    }
    const runtimeOption = applyFormCreateRuntimeLocale(option);
    designer.value?.setOption?.(runtimeOption);
  };
  const editorRule = useEditorRule(labels.tinymce.value);
  const uploadFileRule = useUploadFileRule(labels.fileUpload.value);
  const uploadImageRule = useUploadImageRule(labels.imageUpload.value);
  const uploadImagesRule = useUploadImagesRule(labels.imagesUpload.value);
  const iFrameRule = useIframeRule(labels.webIframe.value);
  type FcDesignerLocale = { default: Record<string, any> };

  const localeMap: Record<string, () => Promise<FcDesignerLocale>> = {
    'zh-CN': () =>
      import(
        '@form-create/antd-designer/locale/zh-cn.es.js' /* @vite-ignore */
      ),
    'en-US': () =>
      import('@form-create/antd-designer/locale/en.es.js' /* @vite-ignore */),
  };

  /** 响应式的设计器语言包，供模板 :locale="locale" 绑定 */
  const locale = ref<Record<string, any> | undefined>(undefined);

  /** 加载并设置语言包 */
  const applyLocale = async (localeKey: string) => {
    const loader = localeMap[localeKey] ?? localeMap['zh-CN']!;
    const { default: lang } = await loader();
    lang.name = localeKey;
    locale.value = lang;

    applyRuntimeLocale();

    if (loadFormConfig) {
      await loadFormConfig();
      applyRuntimeLocale();
    }
  };
  const buildFormComponents = () => {
    // 移除自带的上传组件规则，使用 uploadFileRule、uploadImgRule、uploadImgsRule 替代
    designer.value?.removeMenuItem('upload');
    // 移除自带的富文本组件规则，使用 editorRule 替代
    designer.value?.removeMenuItem('fc-editor');
    const components = [
      editorRule,
      uploadFileRule,
      uploadImageRule,
      uploadImagesRule,
      iFrameRule,
    ];
    components.forEach((component) => {
      // 插入组件规则
      designer.value?.addComponent(component);
      // 插入拖拽按钮到 `main` 分类下
      designer.value?.appendMenuItem('main', {
        icon: component.icon,
        name: component.name,
        label: component.label,
      });
    });
  };

  const userSelectRule = useSelectRule({
    name: 'UserSelect',
    label: labels.userSelect.value,
    icon: 'icon-eye',
  });
  const deptSelectRule = useSelectRule({
    name: 'DeptSelect',
    label: labels.deptSelect.value,
    icon: 'icon-tree',
  });
  const dictSelectRule = useDictSelectRule(labels.dictSelect.value);
  const apiSelectRule0 = useSelectRule({
    name: 'ApiSelect',
    label: labels.apiSelect.value,
    icon: 'icon-json',
    props: [...apiSelectRule],
    event: ['click', 'change', 'visibleChange', 'clear', 'blur', 'focus'],
  });
  const areaSelectRole0 = useAreaSelectRule({
    name: 'AreaSelect',
    label: labels.areaSelect.value,
    icon: 'icon-eye',
    event: ['click', 'change', 'visibleChange', 'clear', 'blur', 'focus'],
  });

  /**
   * 构建系统字段菜单
   */
  const buildSystemMenu = () => {
    const components = [
      userSelectRule,
      deptSelectRule,
      dictSelectRule,
      apiSelectRule0,
      areaSelectRole0,
    ];
    const menu: Menu = {
      name: 'system',
      title: labels.systemMenuTitle.value,
      list: components.map((component) => {
        designer.value?.addComponent(component);
        return {
          icon: component.icon,
          name: component.name,
          label: component.label,
        };
      }),
    };
    designer.value?.addMenu(menu);
  };

  onMounted(async () => {
    await nextTick();
    buildFormComponents();
    buildSystemMenu();

    // 刷新页面时 designer.value 可能还未赋值，等待它可用
    if (!designer.value) {
      await new Promise<void>((resolve) => {
        const stop = watch(
          () => designer.value,
          (val) => {
            if (val) {
              stop();
              resolve();
            }
          },
        );
      });
    }

    await applyLocale(i18n.global.locale.value as string);

    // 监听应用语言切换，同步更新设计器
    watch(
      () => i18n.global.locale.value,
      async (newLocale) => {
        await applyLocale(newLocale);
      },
    );
  });

  return { locale };
};

/** 解码表单 Fields */
export function decodeFields(fields: string[]) {
  const rule: Rule[] = [];
  fields.forEach((item) => {
    rule.push(formCreate.parseJson(item));
  });
  return rule;
}
