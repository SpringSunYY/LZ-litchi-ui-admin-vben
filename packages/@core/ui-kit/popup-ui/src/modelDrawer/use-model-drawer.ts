import type {
  ExtendedModelDrawerApi,
  ModelDrawerApiOptions,
  ModelDrawerProps,
} from './model-drawer';

import {
  defineComponent,
  h,
  inject,
  nextTick,
  onDeactivated,
  provide,
  reactive,
  ref,
} from 'vue';

import { useStore } from '@vben-core/shared/store';

import { ModelDrawerApi } from './model-drawer-api';
import VbenModelDrawer from './model-drawer.vue';

const USER_MODEL_DRAWER_INJECT_KEY = Symbol('VBEN_MODEL_DRAWER_INJECT');

const DEFAULT_MODEL_DRAWER_PROPS: Partial<ModelDrawerProps> = {};

export function setDefaultModelDrawerProps(props: Partial<ModelDrawerProps>) {
  Object.assign(DEFAULT_MODEL_DRAWER_PROPS, props);
}

export function useVbenModelDrawer<
  TParentModelDrawerProps extends ModelDrawerProps = ModelDrawerProps,
>(options: ModelDrawerApiOptions = {}) {
  const { connectedComponent } = options;
  if (connectedComponent) {
    const extendedApi = reactive({}) as ExtendedModelDrawerApi;
    const isModelDrawerReady = ref(true);
    const ModelDrawer = defineComponent(
      (props: TParentModelDrawerProps, { attrs, slots }) => {
        provide(USER_MODEL_DRAWER_INJECT_KEY, {
          extendApi(api: ExtendedModelDrawerApi) {
            Object.setPrototypeOf(extendedApi, api);
          },
          options,
          async reCreateModelDrawer() {
            isModelDrawerReady.value = false;
            await nextTick();
            isModelDrawerReady.value = true;
          },
        });
        checkProps(extendedApi as ExtendedModelDrawerApi, {
          ...props,
          ...attrs,
          ...slots,
        });
        return () =>
          h(
            isModelDrawerReady.value ? connectedComponent : 'div',
            { ...props, ...attrs },
            slots,
          );
      },
      // eslint-disable-next-line vue/one-component-per-file
      {
        name: 'VbenParentModelDrawer',
        inheritAttrs: false,
      },
    );

    onDeactivated(() => {
      (extendedApi as ExtendedModelDrawerApi)?.close?.();
    });

    return [ModelDrawer, extendedApi] as const;
  }

  const injectData = inject<any>(USER_MODEL_DRAWER_INJECT_KEY, {});

  const mergedOptions = {
    ...DEFAULT_MODEL_DRAWER_PROPS,
    ...injectData.options,
    ...options,
  } as ModelDrawerApiOptions;

  mergedOptions.onOpenChange = (isOpen: boolean) => {
    options.onOpenChange?.(isOpen);
    injectData.options?.onOpenChange?.(isOpen);
  };

  const onClosed = mergedOptions.onClosed;
  mergedOptions.onClosed = () => {
    onClosed?.();
    if (mergedOptions.destroyOnClose) {
      injectData.reCreateModelDrawer?.();
    }
  };
  const api = new ModelDrawerApi(mergedOptions);

  const extendedApi: ExtendedModelDrawerApi =
    api as unknown as ExtendedModelDrawerApi;

  extendedApi.useStore = (selector) => {
    return useStore(api.store, selector);
  };

  const ModelDrawer = defineComponent(
    (props: ModelDrawerProps, { attrs, slots }) => {
      return () =>
        h(
          VbenModelDrawer,
          { ...props, ...attrs, modelDrawerApi: extendedApi },
          slots,
        );
    },
    // eslint-disable-next-line vue/one-component-per-file
    {
      name: 'VbenModelDrawer',
      inheritAttrs: false,
    },
  );
  injectData.extendApi?.(extendedApi);
  return [ModelDrawer, extendedApi] as const;
}

async function checkProps(
  api: ExtendedModelDrawerApi,
  attrs: Record<string, any>,
) {
  if (!attrs || Object.keys(attrs).length === 0) {
    return;
  }
  await nextTick();

  const state = api?.useStore?.();

  if (!state) {
    return;
  }

  const stateKeys = new Set(Object.keys(state));

  for (const attr of Object.keys(attrs)) {
    if (stateKeys.has(attr) && !['class'].includes(attr)) {
      console.warn(
        `[Vben ModelDrawer]: When 'connectedComponent' exists, do not set props or slots '${attr}', which will increase complexity. If you need to modify the props of ModelDrawer, please use useVbenModelDrawer or api.`,
      );
    }
  }
}
