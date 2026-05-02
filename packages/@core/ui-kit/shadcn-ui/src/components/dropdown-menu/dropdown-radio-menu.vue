<script lang="ts" setup>
import type { DropdownMenuProps } from './interface';

import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuGroup,
  DropdownMenuItem,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from '../../ui';

interface Props extends DropdownMenuProps {}

defineOptions({ name: 'DropdownRadioMenu' });
withDefaults(defineProps<Props>(), {});

const modelValue = defineModel<string>();

function handleItemClick(menu: any) {
  if (menu.handler) {
    menu.handler();
  } else {
    modelValue.value = menu.value;
  }
}
</script>
<template>
  <DropdownMenu>
    <DropdownMenuTrigger as-child class="flex items-center gap-1">
      <slot></slot>
    </DropdownMenuTrigger>
    <DropdownMenuContent align="start">
      <DropdownMenuGroup>
        <template v-for="menu in menus" :key="menu.value">
          <DropdownMenuSeparator v-if="menu.separator" />
          <DropdownMenuItem
            v-else
            :class="
              menu.value === modelValue
                ? 'bg-accent text-accent-foreground'
                : ''
            "
            class="data-[state=checked]:bg-accent data-[state=checked]:text-accent-foreground text-foreground/80 mb-1 cursor-pointer"
            @click="handleItemClick(menu)"
          >
            <component :is="menu.icon" v-if="menu.icon" class="mr-2 size-4" />
            <span
              v-if="!menu.icon && !menu.separator"
              :class="menu.value === modelValue ? 'bg-foreground' : ''"
              class="mr-2 size-1.5 rounded-full"
            ></span>
            {{ menu.label }}
          </DropdownMenuItem>
        </template>
      </DropdownMenuGroup>
    </DropdownMenuContent>
  </DropdownMenu>
</template>
