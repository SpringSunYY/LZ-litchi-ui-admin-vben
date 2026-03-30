<script lang="ts" setup>
import type {ExtendedModelDrawerApi, ModelDrawerProps} from './model-drawer';

import {useIsMobile, usePriorityValues} from '@vben-core/composables';

import DrawerPanel from '../drawer/drawer.vue';
import ModalPanel from '../modal/modal.vue';

interface Props extends ModelDrawerProps {
  modelDrawerApi?: ExtendedModelDrawerApi;
}

const props = withDefaults(defineProps<Props>(), {
  appendToMain: false,
  bordered: false,
  destroyOnClose: false,
  type: 'drawer',
  modelDrawerApi: undefined,
});

const {isMobile} = useIsMobile();
const state = props.modelDrawerApi?.useStore?.();

const {
  appendToMain,
  bordered,
  cancelText,
  centered,
  class: modalClass,
  closable,
  closeIconPlacement,
  closeOnClickModal,
  closeOnPressEscape,
  confirmDisabled,
  confirmLoading,
  confirmText,
  contentClass,
  description,
  destroyOnClose,
  draggable,
  type,
  footer: showFooter,
  footerClass,
  fullscreen,
  fullscreenButton,
  header: showHeader,
  headerClass,
  loading: showLoading,
  modal,
  openAutoFocus,
  overlayBlur,
  placement,
  showCancelButton,
  showConfirmButton,
  submitting,
  title,
  titleTooltip,
  zIndex,
} = usePriorityValues(props, state);
</script>

<template>
  <!-- Modal 模式 -->
  <ModalPanel
    v-if="type === 'modal'"
    :modal-api="modelDrawerApi"
    :title="title"
    :description="description"
    :header="showHeader"
    :footer="showFooter"
    :footer-class="footerClass"
    :header-class="headerClass"
    :content-class="contentClass"
    :bordered="bordered"
    :centered="centered"
    :closable="closable"
    :close-on-click-modal="closeOnClickModal"
    :close-on-press-escape="closeOnPressEscape"
    :confirm-disabled="confirmDisabled"
    :confirm-loading="confirmLoading"
    :confirm-text="confirmText"
    :cancel-text="cancelText"
    :draggable="draggable"
    :fullscreen="fullscreen"
    :fullscreen-button="fullscreenButton"
    :loading="showLoading"
    :modal="modal"
    :open-auto-focus="openAutoFocus"
    :overlay-blur="overlayBlur"
    :submitting="submitting"
    :title-tooltip="titleTooltip"
    :z-index="zIndex"
    :append-to-main="appendToMain"
    :class="modalClass"
  >
    <template v-for="(_, name) in $slots" #[name]="slotData">
      <slot :name="name" v-bind="slotData || {}"></slot>
    </template>
  </ModalPanel>

  <!-- Drawer 模式 -->
  <DrawerPanel
    v-else
    :drawer-api="modelDrawerApi"
    :title="title"
    :description="description"
    :header="showHeader"
    :footer="showFooter"
    :footer-class="footerClass"
    :header-class="headerClass"
    :content-class="contentClass"
    :bordered="bordered"
    :closable="closable"
    :close-icon-placement="closeIconPlacement"
    :close-on-click-modal="closeOnClickModal"
    :close-on-press-escape="closeOnPressEscape"
    :confirm-loading="confirmLoading"
    :confirm-text="confirmText"
    :cancel-text="cancelText"
    :loading="showLoading"
    :modal="modal"
    :open-auto-focus="openAutoFocus"
    :overlay-blur="overlayBlur"
    :placement="placement"
    :submitting="submitting"
    :title-tooltip="titleTooltip"
    :z-index="zIndex"
    :append-to-main="appendToMain"
    :class="modalClass"
  >
    <template v-for="(_, name) in $slots" #[name]="slotData">
      <slot :name="name" v-bind="slotData || {}"></slot>
    </template>
  </DrawerPanel>
</template>
