import type { UserConfig } from 'vite';

async function getCommonConfig(): Promise<UserConfig> {
  return {
    build: {
      chunkSizeWarningLimit: 2000,
      reportCompressedSize: false,
      sourcemap: false,
    },
    resolve: {
      // 强制单一实例，避免同一依赖被多份版本引入导致 instanceof / 鸭子类型判断失效
      // 例如 dayjs 被 ant-design-vue 与业务代码各装一份时，
      // antdv 内部的 dayjs 插件（weekday 等）不会作用于业务侧创建的对象
      dedupe: ['dayjs'],
    },
  };
}

export { getCommonConfig };
