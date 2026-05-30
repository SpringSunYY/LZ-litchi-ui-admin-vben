<script setup lang="ts">
import type { SystemUserProfileApi } from '#/api/system/user/profile';

import { computed } from 'vue';

import { IconifyIcon } from '@vben/icons';
import { preferences } from '@vben/preferences';
import { formatDateTime } from '@vben/utils';

import { Descriptions, DescriptionsItem, Tooltip } from 'ant-design-vue';

import { updateUserProfile } from '#/api/system/user/profile';
import { CropperAvatar } from '#/components/cropper';
import { useUpload } from '#/components/upload/use-upload';
import { $t } from '#/locales';

const props = defineProps<{
  profile?: SystemUserProfileApi.UserProfileRespVO;
}>();

const emit = defineEmits<{
  (e: 'success'): void;
}>();

const avatar = computed(
  () => props.profile?.avatar || preferences.app.defaultAvatar,
);

async function handelUpload({
  file,
  filename,
}: {
  file: Blob;
  filename: string;
}) {
  const { httpRequest } = useUpload(undefined, 'system');
  const fileObj = new File([file], filename, { type: file.type });
  const avatar = await httpRequest(fileObj);
  await updateUserProfile({ avatar });
}
</script>

<template>
  <div v-if="profile">
    <div class="flex flex-col items-center">
      <Tooltip :title="$t('system.profile.message.uploadAvatar')">
        <CropperAvatar
          :show-btn="false"
          :upload-api="handelUpload"
          :value="avatar"
          :width="120"
          @change="emit('success')"
        />
      </Tooltip>
    </div>
    <div class="mt-8">
      <Descriptions :column="2">
        <DescriptionsItem>
          <template #label>
            <div class="flex items-center">
              <IconifyIcon icon="ant-design:user-outlined" class="mr-1" />
              {{ $t('system.user.field.username') }}
            </div>
          </template>
          {{ profile.username }}
        </DescriptionsItem>
        <DescriptionsItem>
          <template #label>
            <div class="flex items-center">
              <IconifyIcon
                icon="ant-design:user-switch-outlined"
                class="mr-1"
              />
              {{ $t('system.profile.field.roles') }}
            </div>
          </template>
          {{ profile.roles?.map((role) => role.name).join(',') }}
        </DescriptionsItem>
        <DescriptionsItem>
          <template #label>
            <div class="flex items-center">
              <IconifyIcon icon="ant-design:phone-outlined" class="mr-1" />
              {{ $t('system.user.field.mobile') }}
            </div>
          </template>
          {{ profile.mobile }}
        </DescriptionsItem>
        <DescriptionsItem>
          <template #label>
            <div class="flex items-center">
              <IconifyIcon icon="ant-design:mail-outlined" class="mr-1" />
              {{ $t('system.user.field.email') }}
            </div>
          </template>
          {{ profile.email }}
        </DescriptionsItem>
        <DescriptionsItem>
          <template #label>
            <div class="flex items-center">
              <IconifyIcon icon="ant-design:team-outlined" class="mr-1" />
              {{ $t('system.profile.field.dept') }}
            </div>
          </template>
          {{ profile.dept?.name }}
        </DescriptionsItem>
        <DescriptionsItem>
          <template #label>
            <div class="flex items-center">
              <IconifyIcon
                icon="ant-design:usergroup-add-outlined"
                class="mr-1"
              />
              {{ $t('system.profile.field.posts') }}
            </div>
          </template>
          {{ profile.posts?.map((post) => post.name).join(',') }}
        </DescriptionsItem>
        <DescriptionsItem>
          <template #label>
            <div class="flex items-center">
              <IconifyIcon
                icon="ant-design:clock-circle-outlined"
                class="mr-1"
              />
              {{ $t('system.user.field.createTime') }}
            </div>
          </template>
          {{ formatDateTime(profile.createTime) }}
        </DescriptionsItem>
        <DescriptionsItem>
          <template #label>
            <div class="flex items-center">
              <IconifyIcon icon="ant-design:login-outlined" class="mr-1" />
              {{ $t('system.profile.field.loginDate') }}
            </div>
          </template>
          {{ formatDateTime(profile.loginDate) }}
        </DescriptionsItem>
      </Descriptions>
    </div>
  </div>
</template>
