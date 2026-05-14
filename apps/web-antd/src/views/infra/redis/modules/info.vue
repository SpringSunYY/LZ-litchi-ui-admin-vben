<script lang="ts" setup>
import type { InfraRedisApi } from '#/api/infra/redis';

import { Descriptions } from 'ant-design-vue';

import { $t } from '#/locales';

defineProps<{
  redisData?: InfraRedisApi.RedisMonitorInfo;
}>();
</script>

<template>
  <Descriptions
    :column="6"
    bordered
    size="middle"
    :label-style="{ width: '138px' }"
  >
    <Descriptions.Item :label="$t('infra.redis.field.redisVersion')">
      {{ redisData?.info?.redis_version }}
    </Descriptions.Item>
    <Descriptions.Item :label="$t('infra.redis.field.redisMode')">
      {{
        redisData?.info?.redis_mode === 'standalone'
          ? $t('infra.redis.field.standalone')
          : $t('infra.redis.field.cluster')
      }}
    </Descriptions.Item>
    <Descriptions.Item :label="$t('infra.redis.field.port')">
      {{ redisData?.info?.tcp_port }}
    </Descriptions.Item>
    <Descriptions.Item :label="$t('infra.redis.field.clients')">
      {{ redisData?.info?.connected_clients }}
    </Descriptions.Item>
    <Descriptions.Item :label="$t('infra.redis.field.uptimeInDays')">
      {{ redisData?.info?.uptime_in_days }}
    </Descriptions.Item>
    <Descriptions.Item :label="$t('infra.redis.field.usedMemory')">
      {{ redisData?.info?.used_memory_human }}
    </Descriptions.Item>
    <Descriptions.Item :label="$t('infra.redis.field.usedCpu')">
      {{
        redisData?.info
          ? parseFloat(redisData?.info?.used_cpu_user_children).toFixed(2)
          : ''
      }}
    </Descriptions.Item>
    <Descriptions.Item :label="$t('infra.redis.field.maxMemory')">
      {{ redisData?.info?.maxmemory_human }}
    </Descriptions.Item>
    <Descriptions.Item :label="$t('infra.redis.field.aofEnabled')">
      {{
        redisData?.info?.aof_enabled === '0'
          ? $t('common.no')
          : $t('common.yes')
      }}
    </Descriptions.Item>
    <Descriptions.Item :label="$t('infra.redis.field.rdbStatus')">
      {{ redisData?.info?.rdb_last_bgsave_status }}
    </Descriptions.Item>
    <Descriptions.Item :label="$t('infra.redis.field.keyCount')">
      {{ redisData?.dbSize }}
    </Descriptions.Item>
    <Descriptions.Item :label="$t('infra.redis.field.networkTraffic')">
      {{ redisData?.info?.instantaneous_input_kbps }}kps /
      {{ redisData?.info?.instantaneous_output_kbps }}kps
    </Descriptions.Item>
  </Descriptions>
</template>
