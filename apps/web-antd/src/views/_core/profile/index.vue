<script setup lang="ts">
import type { SystemUserProfileApi } from '#/api/system/user/profile';

import { onMounted, ref } from 'vue';

import { Page } from '@vben/common-ui';
import { useUserStore } from '@vben/stores';

import { Card, Tabs } from 'ant-design-vue';

import { getAuthPermissionInfoApi } from '#/api';
import { getUserProfile } from '#/api/system/user/profile';
import { $t } from '#/locales';

import BaseInfo from './modules/base-info.vue';
import ProfileUser from './modules/profile-user.vue';
import ResetPwd from './modules/reset-pwd.vue';
import UserSocial from './modules/user-social.vue';

const activeName = ref('basicInfo');
const userStore = useUserStore();
/** 加载个人信息 */
const profile = ref<SystemUserProfileApi.UserProfileRespVO>();
async function loadProfile() {
  profile.value = await getUserProfile();
}

/** 刷新个人信息 */
async function refreshProfile() {
  // 加载个人信息
  await loadProfile();

  // 更新 store
  const authPermissionInfo = await getAuthPermissionInfoApi();
  userStore.setUserInfo(authPermissionInfo.user);
}

/** 初始化 */
onMounted(loadProfile);
</script>

<template>
  <Page auto-content-height>
    <div class="flex flex-col lg:flex-row">
      <!-- 左侧 个人信息 -->
      <Card class="w-full lg:w-2/5" :title="$t('system.profile.profile')">
        <ProfileUser :profile="profile" @success="refreshProfile" />
      </Card>

      <!-- 右侧 标签页 -->
      <Card class="mt-3 w-full lg:ml-3 lg:mt-0 lg:w-3/5">
        <Tabs v-model:active-key="activeName" class="-mt-4">
          <Tabs.TabPane
            key="basicInfo"
            :tab="$t('system.profile.message.basicInfo')"
          >
            <BaseInfo :profile="profile" @success="refreshProfile" />
          </Tabs.TabPane>
          <Tabs.TabPane
            key="resetPwd"
            :tab="$t('system.profile.message.password')"
          >
            <ResetPwd />
          </Tabs.TabPane>
          <Tabs.TabPane
            key="userSocial"
            :tab="$t('system.profile.message.socialBind')"
            force-render
          >
            <UserSocial @update:active-name="activeName = $event" />
          </Tabs.TabPane>
          <!-- TODO @YY：在线设备 -->
        </Tabs>
      </Card>
    </div>
  </Page>
</template>
