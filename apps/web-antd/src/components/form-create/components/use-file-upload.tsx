import type { PropType } from 'vue';

import { defineComponent, useAttrs } from 'vue';

import FileUpload from '#/components/upload/file-upload.vue';

export const useFileUpload = () => {
  return defineComponent({
    name: 'FileUpload',
    props: {
      // form-create 字段标识
      field: {
        type: String,
        default: '',
      },
      // form-create 使用 value 作为 v-model 的 prop
      value: {
        type: String as PropType<string | string[]>,
        default: '',
      },
      // 文件类型限制 (可能是字符串或数组)
      fileType: {
        type: [Array, String] as PropType<string | string[]>,
        default: () => ['doc', 'xls', 'ppt', 'txt', 'pdf'],
      },
      // 是否在选取文件后立即进行上传
      autoUpload: {
        type: Boolean,
        default: true,
      },
      // 拖拽上传
      drag: {
        type: Boolean,
        default: false,
      },
      // 是否显示提示
      isShowTip: {
        type: Boolean,
        default: true,
      },
      // 文件大小限制(MB)
      fileSize: {
        type: Number,
        default: 5,
      },
      // 数量限制
      limit: {
        type: Number,
        default: 5,
      },
      // 是否禁用
      disabled: {
        type: Boolean,
        default: false,
      },
    },
    setup(props, { emit }) {
      const attrs = useAttrs();

      // form-create 使用 modelValue 作为 v-model 的值
      const bindValue = (attrs.modelValue as string) || props.value;

      // form-create 注入的 api（通过 props.formCreateInject 传递）
      // @ts-ignore
      const formCreateInject = props.formCreateInject;
      // formCreateInject.api 才是真正的 form-create api
      const formCreateApi = formCreateInject?.api;
      // formCreateInject.field 是当前字段的名称
      const formField = formCreateInject?.field;

      // 监听 FileUpload 组件的值变化
      const handleChange = (val: string) => {
        // 优先使用 form-create api 设置值
        if (formCreateApi && formField) {
          formCreateApi.setValue(formField, val);
        }
        // form-create 自定义组件需要同时 emit input 和 update:value
        emit('input', val);
        emit('update:value', val);
        emit('change', val);
      };

      return () => (
        <FileUpload
          {...attrs}
          accept={props.fileType as string[]}
          disabled={props.disabled}
          maxNumber={props.limit}
          maxSize={props.fileSize}
          onChange={handleChange}
          showDescription={props.isShowTip}
          value={bindValue}
        />
      );
    },
  });
};
