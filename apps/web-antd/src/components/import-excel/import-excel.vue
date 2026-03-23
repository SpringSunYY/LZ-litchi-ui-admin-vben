<script lang="ts" setup>
import type { FileType } from 'ant-design-vue/es/upload/interface';

import type { VbenFormSchema } from '#/adapter/form';

import { useVbenModal } from '@vben/common-ui';
import { downloadFileFromBlobPart } from '@vben/utils';

import { Button, message, Upload } from 'ant-design-vue';

import { useVbenForm } from '#/adapter/form';
import { $t } from '#/locales';

interface ImportExcelProps {
  title: string;
  importApi: (file: File, ...args: any[]) => Promise<any>;
  templateApi: () => Promise<Blob>;
  templateFileName: string;
  formSchema: () => VbenFormSchema[];
  width?: string | number;
}

interface ImportExcelEmits {
  (e: 'success'): void;
}

const props = withDefaults(defineProps<ImportExcelProps>(), {
  width: '30%',
});

const emit = defineEmits<ImportExcelEmits>();

const [Form, formApi] = useVbenForm({
  commonConfig: {
    formItemClass: 'col-span-2',
    labelWidth: 120,
  },
  layout: 'horizontal',
  schema: props.formSchema(),
  showDefaultActions: false,
});

const [Modal, modalApi] = useVbenModal({
  async onConfirm() {
    const { valid } = await formApi.validate();
    if (!valid) {
      return;
    }
    modalApi.lock();
    const data = await formApi.getValues();
    const { file, ...extraParams } = data;
    try {
      // 将表单数据中的额外参数展开传递给导入接口
      await props.importApi(file, ...Object.values(extraParams));
      await modalApi.close();
      emit('success');
      message.success($t('ui.actionMessage.operationSuccess'));
    } finally {
      modalApi.unlock();
    }
  },
});

function beforeUpload(file: FileType) {
  formApi.setFieldValue('file', file);
  return false;
}

async function handleDownload() {
  const data = await props.templateApi();
  downloadFileFromBlobPart({
    fileName: props.templateFileName,
    source: data,
  });
}
</script>

<template>
  <Modal :title="title" :class="width">
    <Form class="mx-4">
      <template #file>
        <div class="w-full">
          <Upload
            :max-count="1"
            accept=".xls,.xlsx"
            :before-upload="beforeUpload"
          >
            <Button type="primary"> 选择 Excel 文件</Button>
          </Upload>
        </div>
      </template>
    </Form>
    <template #prepend-footer>
      <div class="flex flex-auto items-center">
        <Button @click="handleDownload"> 下载导入模板</Button>
      </div>
    </template>
  </Modal>
</template>
