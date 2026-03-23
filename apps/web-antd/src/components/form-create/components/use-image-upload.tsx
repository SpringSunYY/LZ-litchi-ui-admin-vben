import type { PropType } from 'vue';

import { defineComponent, toRefs, useAttrs } from 'vue';

import ImageUpload from '#/components/upload/image-upload.vue';

// 将 MIME 类型或字符串转换为文件扩展名数组
function convertFileType(fileTypes: string | string[]): string[] {
  // 如果是字符串，转为数组
  const types = Array.isArray(fileTypes) ? fileTypes : [fileTypes];
  const mimeToExt: Record<string, string> = {
    'image/jpeg': 'jpg',
    'image/jpg': 'jpg',
    'image/png': 'png',
    'image/gif': 'gif',
    'image/webp': 'webp',
    'image/bmp': 'bmp',
    'image/svg+xml': 'svg',
    'image/tiff': 'tiff',
    'image/x-icon': 'ico',
  };
  return types
    .map((type) => mimeToExt[type] || type.replace('image/', ''))
    .filter(Boolean);
}

export const useImageUpload = () => {
  return defineComponent({
    name: 'ImageUpload',
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
      // 拖拽上传
      drag: {
        type: Boolean,
        default: false,
      },
      // 文件大小限制(MB) - 对应表单设计器的 fileSize
      fileSize: {
        type: Number,
        default: 2,
      },
      // 文件类型限制 - 对应表单设计器的 fileType (可能是字符串或数组)
      fileType: {
        type: [Array, String] as PropType<string | string[]>,
        default: () => ['jpg', 'jpeg', 'png', 'gif', 'webp'],
      },
    },
    setup(props, { emit }) {
      const attrs = useAttrs();
      const { fileSize, fileType, drag } = toRefs(props);

      // form-create 使用 modelValue 作为 v-model 的值
      const bindValue = (attrs.modelValue as string) || props.value;

      // form-create 注入的 api（通过 props.formCreateInject 传递）
      // @ts-ignore
      const formCreateInject = props.formCreateInject;
      // formCreateInject.api 才是真正的 form-create api
      const formCreateApi = formCreateInject?.api;
      // formCreateInject.field 是当前字段的名称
      const formField = formCreateInject?.field;

      // 监听 ImageUpload 组件的值变化
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
        <ImageUpload
          {...attrs}
          accept={convertFileType(fileType.value)}
          listType={drag.value ? 'picture-card' : 'picture-card'}
          maxNumber={1}
          maxSize={fileSize.value}
          onChange={handleChange}
          value={bindValue}
        />
      );
    },
  });
};
