<script lang="ts" setup>
import type { Rule } from 'ant-design-vue/es/form';
import type { SelectValue } from 'ant-design-vue/es/select';

import type { PropType } from 'vue';

import type { BpmCategoryApi } from '#/api/bpm/category';
import type { SystemDeptApi } from '#/api/system/dept';
import type { SystemUserApi } from '#/api/system/user';

import { ref, watch } from 'vue';

import { useVbenModal } from '@vben/common-ui';
import { CircleHelp, IconifyIcon, Plus, X } from '@vben/icons';

import {
  Avatar,
  Button,
  Form,
  Input,
  Radio,
  Select,
  Tooltip,
} from 'ant-design-vue';

import { DeptSelectModal, UserSelectModal } from '#/components/select-modal';
import { ImageUpload } from '#/components/upload';
import { $t } from '#/locales';
import { DICT_TYPE, getBoolDictOptions, getIntDictOptions } from '#/utils';

const props = defineProps({
  categoryList: {
    type: Array as PropType<BpmCategoryApi.CategoryVO[]>,
    required: true,
  },
  userList: {
    type: Array as PropType<SystemUserApi.User[]>,
    required: true,
  },
  deptList: {
    type: Array as PropType<SystemDeptApi.Dept[]>,
    required: true,
  },
});

const [UserSelectModalComp, userSelectModalApi] = useVbenModal({
  connectedComponent: UserSelectModal,
  destroyOnClose: true,
});

const [DeptSelectModalComp, deptSelectModalApi] = useVbenModal({
  connectedComponent: DeptSelectModal,
  destroyOnClose: true,
});

// 表单引用
const formRef = ref();

// 选中的发起人
const selectedStartUsers = ref<SystemUserApi.User[]>([]);

// 选中的发起部门
const selectedStartDepts = ref<SystemDeptApi.Dept[]>([]);

// 选中的流程管理员
const selectedManagerUsers = ref<SystemUserApi.User[]>([]);
const currentSelectType = ref<'manager' | 'start'>('start');
// 选中的用户
const selectedUsers = ref<number[]>();

const rules: Record<string, Rule[]> = {
  name: [
    {
      required: true,
      message: $t('bpm.model.basic.processNameEmpty'),
      trigger: 'blur',
    },
  ],
  key: [
    {
      required: true,
      message: $t('bpm.model.basic.processKeyEmpty'),
      trigger: 'blur',
    },
  ],
  category: [
    {
      required: true,
      message: $t('bpm.model.basic.processCategoryEmpty'),
      trigger: 'blur',
    },
  ],
  type: [
    {
      required: true,
      message: $t('bpm.model.basic.processTypeEmpty'),
      trigger: 'blur',
    },
  ],
  visible: [
    {
      required: true,
      message: $t('bpm.model.basic.visibleEmpty'),
      trigger: 'blur',
    },
  ],
  managerUserIds: [
    {
      required: true,
      message: $t('bpm.model.basic.processManagerEmpty'),
      trigger: 'blur',
    },
  ],
};

// 创建本地数据副本
const modelData = defineModel<any>();

// 初始化选中的用户
watch(
  () => modelData.value,
  (newVal) => {
    selectedStartUsers.value = newVal.startUserIds?.length
      ? (props.userList.filter((user: SystemUserApi.User) =>
          newVal.startUserIds.includes(user.id),
        ) as SystemUserApi.User[])
      : [];
    selectedStartDepts.value = newVal.startDeptIds?.length
      ? (props.deptList.filter((dept: SystemDeptApi.Dept) =>
          newVal.startDeptIds.includes(dept.id),
        ) as SystemDeptApi.Dept[])
      : [];
    selectedManagerUsers.value = newVal.managerUserIds?.length
      ? (props.userList.filter((user: SystemUserApi.User) =>
          newVal.managerUserIds.includes(user.id),
        ) as SystemUserApi.User[])
      : [];
  },
  {
    immediate: true,
  },
);

/** 打开发起人选择 */
function openStartUserSelect() {
  currentSelectType.value = 'start';
  selectedUsers.value = selectedStartUsers.value.map(
    (user) => user.id,
  ) as number[];
  userSelectModalApi.setData({ userIds: selectedUsers.value }).open();
}

/** 打开部门选择 */
function openStartDeptSelect() {
  deptSelectModalApi.setData({ selectedList: selectedStartDepts.value }).open();
}
/** 处理部门选择确认 */
function handleDeptSelectConfirm(depts: SystemDeptApi.Dept[]) {
  modelData.value = {
    ...modelData.value,
    startDeptIds: depts.map((d) => d.id),
  };
}

/** 打开管理员选择 */
function openManagerUserSelect() {
  currentSelectType.value = 'manager';
  selectedUsers.value = selectedManagerUsers.value.map(
    (user) => user.id,
  ) as number[];
  userSelectModalApi.setData({ userIds: selectedUsers.value }).open();
}

/** 处理用户选择确认 */
function handleUserSelectConfirm(userList: SystemUserApi.User[]) {
  modelData.value =
    currentSelectType.value === 'start'
      ? {
          ...modelData.value,
          startUserIds: userList.map((u) => u.id),
        }
      : {
          ...modelData.value,
          managerUserIds: userList.map((u) => u.id),
        };
}

/** 用户选择弹窗关闭 */
function handleUserSelectClosed() {
  selectedUsers.value = [];
}

/** 用户选择弹窗取消 */
function handleUserSelectCancel() {
  selectedUsers.value = [];
}

/** 处理发起人类型变化 */
function handleStartUserTypeChange(value: SelectValue) {
  const numValue = Number(value);
  switch (numValue) {
    case 0: {
      modelData.value = {
        ...modelData.value,
        startUserIds: [],
        startDeptIds: [],
      };

      break;
    }
    case 1: {
      modelData.value = {
        ...modelData.value,
        startDeptIds: [],
      };

      break;
    }
    case 2: {
      modelData.value = {
        ...modelData.value,
        startUserIds: [],
      };

      break;
    }
  }
}

/** 移除发起人 */
function handleRemoveStartUser(user: SystemUserApi.User) {
  modelData.value = {
    ...modelData.value,
    startUserIds: modelData.value.startUserIds.filter(
      (id: number) => id !== user.id,
    ),
  };
}

/** 移除部门 */
function handleRemoveStartDept(dept: SystemDeptApi.Dept) {
  modelData.value = {
    ...modelData.value,
    startDeptIds: modelData.value.startDeptIds.filter(
      (id: number) => id !== dept.id,
    ),
  };
}

/** 移除管理员 */
function handleRemoveManagerUser(user: SystemUserApi.User) {
  modelData.value = {
    ...modelData.value,
    managerUserIds: modelData.value.managerUserIds.filter(
      (id: number) => id !== user.id,
    ),
  };
}

/** 表单校验 */
async function validate() {
  await formRef.value?.validate();
}

defineExpose({ validate });
</script>

<template>
  <div>
    <Form
      ref="formRef"
      :model="modelData"
      :rules="rules"
      :label-col="{ span: 4 }"
      :wrapper-col="{ span: 20 }"
      class="mt-5"
    >
      <Form.Item
        :label="$t('bpm.model.basic.processKey')"
        name="key"
        class="mb-5"
      >
        <div class="flex items-center">
          <Input
            class="w-full"
            v-model:value="modelData.key"
            :disabled="!!modelData.id"
            :placeholder="$t('bpm.model.basic.processKeyPlaceholder')"
          />
          <Tooltip
            :title="
              modelData.id
                ? $t('bpm.model.basic.processKeyReadonly')
                : $t('bpm.model.basic.processKeyUnchangeable')
            "
            placement="top"
          >
            <CircleHelp class="ml-1 size-5 text-gray-900" />
          </Tooltip>
        </div>
      </Form.Item>
      <Form.Item
        :label="$t('bpm.model.basic.processName')"
        name="name"
        class="mb-5"
      >
        <Input
          v-model:value="modelData.name"
          :disabled="!!modelData.id"
          allow-clear
          :placeholder="
            $t('ui.placeholder.input', [$t('bpm.model.basic.processName')])
          "
        />
      </Form.Item>
      <Form.Item
        :label="$t('bpm.model.basic.processCategory')"
        name="category"
        class="mb-5"
      >
        <Select
          class="w-full"
          v-model:value="modelData.category"
          allow-clear
          :placeholder="
            $t('ui.placeholder.select', [$t('bpm.model.basic.processCategory')])
          "
        >
          <Select.Option
            v-for="category in categoryList"
            :key="category.code"
            :value="category.code"
          >
            {{ category.name }}
          </Select.Option>
        </Select>
      </Form.Item>
      <Form.Item :label="$t('bpm.model.basic.processIcon')" class="mb-5">
        <ImageUpload v-model:value="modelData.icon" module-type="bpm" />
      </Form.Item>
      <Form.Item
        :label="$t('bpm.model.basic.processDesc')"
        name="description"
        class="mb-5"
      >
        <Input.TextArea v-model:value="modelData.description" allow-clear />
      </Form.Item>
      <Form.Item
        :label="$t('bpm.model.basic.processType')"
        name="type"
        class="mb-5"
      >
        <Radio.Group v-model:value="modelData.type">
          <!-- TODO BPMN 流程类型需要整合，暂时禁用 -->
          <Radio
            v-for="dict in getIntDictOptions(DICT_TYPE.BPM_MODEL_TYPE)"
            :key="dict.value"
            :value="dict.value"
            :disabled="dict.value === 10"
          >
            {{ dict.label }}
          </Radio>
        </Radio.Group>
      </Form.Item>
      <Form.Item
        :label="$t('bpm.model.basic.visible')"
        name="visible"
        class="mb-5"
      >
        <Radio.Group v-model:value="modelData.visible">
          <Radio
            v-for="(dict, index) in getBoolDictOptions(
              DICT_TYPE.INFRA_BOOLEAN_STRING,
            )"
            :key="index"
            :value="dict.value"
          >
            {{ dict.label }}
          </Radio>
        </Radio.Group>
      </Form.Item>
      <Form.Item
        :label="$t('bpm.model.basic.whoCanStart')"
        name="startUserType"
        class="mb-5"
      >
        <Select
          v-model:value="modelData.startUserType"
          :placeholder="
            $t('ui.placeholder.select', [$t('bpm.model.basic.whoCanStart')])
          "
          @change="handleStartUserTypeChange"
        >
          <Select.Option :value="0">
            {{ $t('bpm.model.basic.all') }}
          </Select.Option>
          <Select.Option :value="1">
            {{ $t('bpm.model.basic.designatedPerson') }}
          </Select.Option>
          <Select.Option :value="2">
            {{ $t('bpm.model.basic.designatedDept') }}
          </Select.Option>
        </Select>
        <div
          v-if="modelData.startUserType === 1"
          class="mt-2 flex flex-wrap gap-1"
        >
          <div
            v-for="user in selectedStartUsers"
            :key="user.id"
            class="relative flex h-9 items-center rounded-full bg-gray-100 pr-2 hover:bg-gray-200"
          >
            <Avatar
              class="m-1"
              :size="28"
              v-if="user.avatar"
              :src="user.avatar"
            />
            <Avatar class="m-1" :size="28" v-else>
              {{ user.nickname?.substring(0, 1) }}
            </Avatar>
            {{ user.nickname }}
            <X
              class="ml-2 size-4 cursor-pointer text-gray-400 hover:text-red-500"
              @click="handleRemoveStartUser(user)"
            />
          </div>
          <Button
            type="link"
            @click="openStartUserSelect"
            class="flex items-center"
          >
            <template #icon>
              <IconifyIcon
                icon="mdi:account-plus-outline"
                class="size-[18px]"
              />
            </template>
            {{ $t('bpm.model.basic.selectPerson') }}
          </Button>
        </div>
        <div
          v-if="modelData.startUserType === 2"
          class="mt-2 flex flex-wrap gap-1"
        >
          <div
            v-for="dept in selectedStartDepts"
            :key="dept.id"
            class="relative flex h-9 items-center rounded-full bg-gray-100 pr-2 shadow-sm hover:bg-gray-200"
          >
            <IconifyIcon icon="ep:office-building" class="size-6 px-1" />
            {{ dept.name }}
            <X
              class="ml-2 size-4 cursor-pointer text-gray-400 hover:text-red-500"
              @click="handleRemoveStartDept(dept)"
            />
          </div>
          <Button
            type="link"
            @click="openStartDeptSelect"
            class="flex items-center"
          >
            <template #icon>
              <Plus class="size-[18px]" />
            </template>
            {{ $t('bpm.model.basic.selectDept') }}
          </Button>
        </div>
      </Form.Item>
      <Form.Item
        :label="$t('bpm.model.basic.processManager')"
        name="managerUserIds"
        class="mb-5"
      >
        <div class="flex flex-wrap gap-1">
          <div
            v-for="user in selectedManagerUsers"
            :key="user.id"
            class="relative flex h-9 items-center rounded-full bg-gray-100 pr-2 hover:bg-gray-200"
          >
            <Avatar
              class="m-1"
              :size="28"
              v-if="user.avatar"
              :src="user.avatar"
            />
            <Avatar class="m-1" :size="28" v-else>
              {{ user.nickname?.substring(0, 1) }}
            </Avatar>
            {{ user.nickname }}
            <X
              class="ml-2 size-4 cursor-pointer text-gray-400 hover:text-red-500"
              @click="handleRemoveManagerUser(user)"
            />
          </div>
          <Button
            type="link"
            @click="openManagerUserSelect"
            class="flex items-center"
          >
            <template #icon>
              <IconifyIcon
                icon="mdi:account-plus-outline"
                class="size-[18px]"
              />
            </template>
            {{ $t('bpm.model.basic.selectPerson') }}
          </Button>
        </div>
      </Form.Item>
    </Form>

    <!-- 用户选择弹窗 -->
    <UserSelectModalComp
      v-model:value="selectedUsers"
      :multiple="true"
      :title="$t('common.selectUser')"
      @confirm="handleUserSelectConfirm"
      @closed="handleUserSelectClosed"
      @cancel="handleUserSelectCancel"
    />
    <!-- 部门选择对话框 -->
    <DeptSelectModalComp
      :title="$t('bpm.model.basic.selectDeptModalTitle')"
      :check-strictly="true"
      @confirm="handleDeptSelectConfirm"
    />
  </div>
</template>

<style lang="scss" scoped>
.upload-img-placeholder {
  cursor: pointer;
  transition: all 0.3s;

  &:hover {
    border-color: #1890ff !important;
  }
}
</style>
