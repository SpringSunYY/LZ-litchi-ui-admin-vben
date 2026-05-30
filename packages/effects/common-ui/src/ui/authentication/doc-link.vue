<script setup lang="ts">
defineOptions({
  name: 'DocLink',
});
</script>

<template>
  <div class="w-full sm:mx-auto md:max-w-md">
    <div class="mt-4 flex items-center justify-between">
      <span class="border-input w-[35%] border-b dark:border-gray-600"></span>
      <span class="text-muted-foreground text-center text-xs uppercase">
        源码
      </span>
      <span class="border-input w-[35%] border-b dark:border-gray-600"></span>
    </div>

    <div class="mt-4 flex w-full justify-between">
      <a
        href="https://github.com/SpringSunYY/LZ-RuoYi"
        target="_blank"
        class="text-primary hover:text-primary/80 text-sm"
      >
        💻 源码
      </a>
      <a
        href="https://space.bilibili.com/3546627304327173"
        target="_blank"
        class="text-primary hover:text-primary/80 text-sm"
      >
        🔥 视频教程
      </a>
      <a
        href="https://springsun.online"
        target="_blank"
        class="text-primary hover:text-primary/80 text-sm"
      >
        🏞️ 在线云图
      </a>
      <a
        href="https://springsun.online/about"
        target="_blank"
        class="text-primary hover:text-primary/80 text-sm"
      >
        🤝 关于/联系我们
      </a>
    </div>
  </div>
</template>
