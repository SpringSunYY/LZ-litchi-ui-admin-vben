-- =============================================
-- 菜单国际化 SQL（由 MenuDO 数据自动生成）
-- 生成时间：2026-06-04
-- 规范版本：v1.0（基于 i18n-sql.md）
-- =============================================

-- ---------------------------------------------
-- 公共变量定义
-- ---------------------------------------------
SET @IS_SYSTEM = 0;
SET @LOCALE_TARGET_BACKEND = 2;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'menu auto generate';

-- ---------------------------------------------
-- use_type / order_num 变量
-- ---------------------------------------------
SET @USE_TYPE_MENU = 6;
SET @ORDER_NUM_MENU = 6;
SET @USE_TYPE_FUNCTION = 4;
SET @ORDER_NUM_FUNCTION = 4;

-- =============================================
-- infra 模块
-- =============================================

-- 1. 基础设施 (infra.menu)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-菜单', 'infra.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-菜单', 'infra.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'infrastructure', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-菜单', 'infra.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '基础设施', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. MySQL 监控 (infra.druid.menu)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.druid.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MySQL监控-菜单', 'infra.druid.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.druid.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MySQL监控-菜单', 'infra.druid.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'mysql monitoring', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.druid.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MySQL监控-菜单', 'infra.druid.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'MySQL 监控', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. API 接口 (infra.swagger.menu)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.swagger.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API接口-菜单', 'infra.swagger.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.swagger.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API接口-菜单', 'infra.swagger.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'api documentation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.swagger.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API接口-菜单', 'infra.swagger.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'API 接口', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. API 日志 (infra.log.menu)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.log.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API日志-菜单', 'infra.log.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.log.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API日志-菜单', 'infra.log.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'api log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.log.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API日志-菜单', 'infra.log.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'API 日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 监控中心 (infra.monitors.menu)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.monitors.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('监控中心-菜单', 'infra.monitors.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.monitors.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('监控中心-菜单', 'infra.monitors.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'monitoring center', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.monitors.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('监控中心-菜单', 'infra.monitors.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '监控中心', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 日志处理 (infra.apiErrorLog.action.updateStatus)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.action.updateStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-日志处理', 'infra.apiErrorLog.action.updateStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.action.updateStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-日志处理', 'infra.apiErrorLog.action.updateStatus', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'process log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.action.updateStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-日志处理', 'infra.apiErrorLog.action.updateStatus', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '日志处理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 获得 Redis 监控信息 (infra.redis.action.getmonitorinfo)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.action.getmonitorinfo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-获得Redis监控信息', 'infra.redis.action.getmonitorinfo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.action.getmonitorinfo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-获得Redis监控信息', 'infra.redis.action.getmonitorinfo', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'get redis monitor info', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.action.getmonitorinfo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-获得Redis监控信息', 'infra.redis.action.getmonitorinfo', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '获得 Redis 监控信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 获得 Redis Key 列表 (infra.redis.action.getkeylist)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.action.getkeylist';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-获得RedisKey列表', 'infra.redis.action.getkeylist', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.action.getkeylist' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-获得RedisKey列表', 'infra.redis.action.getkeylist', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'get redis key list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.action.getkeylist' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-获得RedisKey列表', 'infra.redis.action.getkeylist', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '获得 Redis Key 列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 文件配置导出 (infra.fileConfig.action.export)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-文件配置导出', 'infra.fileConfig.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-文件配置导出', 'infra.fileConfig.action.export', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export file config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-文件配置导出', 'infra.fileConfig.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '文件配置导出', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 数据源配置导出 (infra.dataSourceConfig.action.export)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-数据源配置导出', 'infra.dataSourceConfig.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-数据源配置导出', 'infra.dataSourceConfig.action.export', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export data source config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-数据源配置导出', 'infra.dataSourceConfig.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '数据源配置导出', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 示例分类查询 (infra.demo02category.action.query)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo02category.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-示例分类查询', 'infra.demo02category.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02category.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-示例分类查询', 'infra.demo02category.action.query', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query demo category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02category.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-示例分类查询', 'infra.demo02category.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '示例分类查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 示例分类创建 (infra.demo02category.action.create)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo02category.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-示例分类创建', 'infra.demo02category.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02category.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-示例分类创建', 'infra.demo02category.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create demo category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02category.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-示例分类创建', 'infra.demo02category.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '示例分类创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 示例分类更新 (infra.demo02category.action.update)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo02category.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-示例分类更新', 'infra.demo02category.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02category.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-示例分类更新', 'infra.demo02category.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update demo category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02category.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-示例分类更新', 'infra.demo02category.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '示例分类更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 示例分类删除 (infra.demo02category.action.delete)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo02category.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-示例分类删除', 'infra.demo02category.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02category.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-示例分类删除', 'infra.demo02category.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete demo category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02category.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-示例分类删除', 'infra.demo02category.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '示例分类删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 示例分类导出 (infra.demo02category.action.export)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo02category.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-示例分类导出', 'infra.demo02category.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02category.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-示例分类导出', 'infra.demo02category.action.export', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export demo category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo02category.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-示例分类导出', 'infra.demo02category.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '示例分类导出', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 学生查询 (infra.demo03student.action.query)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo03student.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-学生查询', 'infra.demo03student.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03student.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-学生查询', 'infra.demo03student.action.query', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query student', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03student.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-学生查询', 'infra.demo03student.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '学生查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 学生创建 (infra.demo03student.action.create)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo03student.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-学生创建', 'infra.demo03student.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03student.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-学生创建', 'infra.demo03student.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create student', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03student.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-学生创建', 'infra.demo03student.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '学生创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 学生更新 (infra.demo03student.action.update)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo03student.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-学生更新', 'infra.demo03student.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03student.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-学生更新', 'infra.demo03student.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update student', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03student.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-学生更新', 'infra.demo03student.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '学生更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 学生删除 (infra.demo03student.action.delete)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo03student.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-学生删除', 'infra.demo03student.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03student.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-学生删除', 'infra.demo03student.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete student', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03student.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-学生删除', 'infra.demo03student.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '学生删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 学生导出 (infra.demo03student.action.export)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo03student.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-学生导出', 'infra.demo03student.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03student.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-学生导出', 'infra.demo03student.action.export', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export student', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo03student.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-学生导出', 'infra.demo03student.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '学生导出', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. demo01contact 查询 (infra.demo01contact.action.query)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo01contact.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人查询', 'infra.demo01contact.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo01contact.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人查询', 'infra.demo01contact.action.query', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query demo01 contact', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo01contact.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人查询', 'infra.demo01contact.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'demo01联系人查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. demo01contact 创建 (infra.demo01contact.action.create)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo01contact.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人创建', 'infra.demo01contact.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo01contact.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人创建', 'infra.demo01contact.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create demo01 contact', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo01contact.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人创建', 'infra.demo01contact.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'demo01联系人创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. demo01contact 更新 (infra.demo01contact.action.update)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo01contact.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人更新', 'infra.demo01contact.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo01contact.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人更新', 'infra.demo01contact.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update demo01 contact', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo01contact.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人更新', 'infra.demo01contact.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'demo01联系人更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. demo01contact 删除 (infra.demo01contact.action.delete)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo01contact.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人删除', 'infra.demo01contact.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo01contact.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人删除', 'infra.demo01contact.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete demo01 contact', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo01contact.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人删除', 'infra.demo01contact.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'demo01联系人删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. demo01contact 导出 (infra.demo01contact.action.export)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo01contact.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人导出', 'infra.demo01contact.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo01contact.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人导出', 'infra.demo01contact.action.export', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export demo01 contact', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo01contact.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人导出', 'infra.demo01contact.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'demo01联系人导出', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. demo01contact 导入 (infra.demo01contact.action.import)
SET @MODULE_TYPE = 'infra';
DELETE FROM infra_i18n_key WHERE message_key = 'infra.demo01contact.action.import';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人导入', 'infra.demo01contact.action.import', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo01contact.action.import' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人导入', 'infra.demo01contact.action.import', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'import demo01 contact', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'infra.demo01contact.action.import' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('基础设施-demo01联系人导入', 'infra.demo01contact.action.import', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'demo01联系人导入', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- system 模块
-- =============================================

-- 27. 审计日志 (system.log.menu)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.log.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('审计日志-菜单', 'system.log.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.log.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('审计日志-菜单', 'system.log.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'audit log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.log.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('审计日志-菜单', 'system.log.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '审计日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 国际化 (system.i18n.menu)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.i18n.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化-菜单', 'system.i18n.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.i18n.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化-菜单', 'system.i18n.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'internationalization', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.i18n.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化-菜单', 'system.i18n.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '国际化', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. OAuth 2.0 (system.oauth2.menu)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2-菜单', 'system.oauth2.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2-菜单', 'system.oauth2.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'oauth 2.0', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2-菜单', 'system.oauth2.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'OAuth 2.0', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 三方登录 (system.social.menu)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('三方登录-菜单', 'system.social.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('三方登录-菜单', 'system.social.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'third-party login', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('三方登录-菜单', 'system.social.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '三方登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 消息中心 (system.messages.menu)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.messages.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息中心-菜单', 'system.messages.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.messages.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息中心-菜单', 'system.messages.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'message center', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.messages.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息中心-菜单', 'system.messages.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '消息中心', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 短信管理 (system.messages.sms.menu)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.messages.sms.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信管理-菜单', 'system.messages.sms.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.messages.sms.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信管理-菜单', 'system.messages.sms.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'sms', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.messages.sms.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信管理-菜单', 'system.messages.sms.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '短信管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 邮箱管理 (system.messages.mail.menu)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.messages.mail.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱管理-菜单', 'system.messages.mail.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.messages.mail.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱管理-菜单', 'system.messages.mail.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'email', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.messages.mail.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱管理-菜单', 'system.messages.mail.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '邮箱管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 站内信管理 (system.messages.notify.menu)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.messages.notify.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信管理-菜单', 'system.messages.notify.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.messages.notify.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信管理-菜单', 'system.messages.notify.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'notification', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.messages.notify.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信管理-菜单', 'system.messages.notify.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '站内信管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 设置角色菜单权限 (system.permission.action.assignRoleMenu)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.permission.action.assignRoleMenu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-设置角色菜单权限', 'system.permission.action.assignRoleMenu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permission.action.assignRoleMenu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-设置角色菜单权限', 'system.permission.action.assignRoleMenu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'set role menu permissions', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permission.action.assignRoleMenu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-设置角色菜单权限', 'system.permission.action.assignRoleMenu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '设置角色菜单权限', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 设置角色数据权限 (system.permission.action.assignRoleDataScope)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.permission.action.assignRoleDataScope';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-设置角色数据权限', 'system.permission.action.assignRoleDataScope', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permission.action.assignRoleDataScope' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-设置角色数据权限', 'system.permission.action.assignRoleDataScope', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'set role data scope', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permission.action.assignRoleDataScope' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-设置角色数据权限', 'system.permission.action.assignRoleDataScope', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '设置角色数据权限', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 设置用户角色 (system.permission.action.assignUserRole)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.permission.action.assignUserRole';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-设置用户角色', 'system.permission.action.assignUserRole', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permission.action.assignUserRole' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-设置用户角色', 'system.permission.action.assignUserRole', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'set user role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.permission.action.assignUserRole' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-设置用户角色', 'system.permission.action.assignUserRole', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '设置用户角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 短信渠道创建 (system.smschannel.action.create)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.smschannel.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信渠道创建', 'system.smschannel.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smschannel.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信渠道创建', 'system.smschannel.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create sms channel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smschannel.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信渠道创建', 'system.smschannel.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '短信渠道创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 短信渠道更新 (system.smschannel.action.update)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.smschannel.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信渠道更新', 'system.smschannel.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smschannel.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信渠道更新', 'system.smschannel.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update sms channel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smschannel.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信渠道更新', 'system.smschannel.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '短信渠道更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 短信渠道删除 (system.smschannel.action.delete)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.smschannel.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信渠道删除', 'system.smschannel.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smschannel.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信渠道删除', 'system.smschannel.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete sms channel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smschannel.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信渠道删除', 'system.smschannel.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '短信渠道删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 短信模板创建 (system.smstemplate.action.create)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.smstemplate.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信模板创建', 'system.smstemplate.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smstemplate.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信模板创建', 'system.smstemplate.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create sms template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smstemplate.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信模板创建', 'system.smstemplate.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '短信模板创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 短信模板更新 (system.smstemplate.action.update)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.smstemplate.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信模板更新', 'system.smstemplate.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smstemplate.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信模板更新', 'system.smstemplate.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update sms template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smstemplate.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信模板更新', 'system.smstemplate.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '短信模板更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 短信模板删除 (system.smstemplate.action.delete)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.smstemplate.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信模板删除', 'system.smstemplate.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smstemplate.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信模板删除', 'system.smstemplate.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete sms template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smstemplate.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信模板删除', 'system.smstemplate.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '短信模板删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 短信模板导出 (system.smstemplate.action.export)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.smstemplate.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信模板导出', 'system.smstemplate.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smstemplate.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信模板导出', 'system.smstemplate.action.export', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export sms template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smstemplate.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信模板导出', 'system.smstemplate.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '短信模板导出', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 发送测试短信 (system.smstemplate.action.sendSms)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.smstemplate.action.sendSms';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-发送测试短信', 'system.smstemplate.action.sendSms', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smstemplate.action.sendSms' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-发送测试短信', 'system.smstemplate.action.sendSms', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'send test sms', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smstemplate.action.sendSms' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-发送测试短信', 'system.smstemplate.action.sendSms', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '发送测试短信', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 短信日志导出 (system.smslog.action.export)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.smslog.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信日志导出', 'system.smslog.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smslog.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信日志导出', 'system.smslog.action.export', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export sms log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.smslog.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-短信日志导出', 'system.smslog.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '短信日志导出', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 账号查询 (system.mailaccount.action.query)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.mailaccount.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-账号查询', 'system.mailaccount.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailaccount.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-账号查询', 'system.mailaccount.action.query', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query email account', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailaccount.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-账号查询', 'system.mailaccount.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '账号查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 账号创建 (system.mailaccount.action.create)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.mailaccount.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-账号创建', 'system.mailaccount.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailaccount.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-账号创建', 'system.mailaccount.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create email account', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailaccount.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-账号创建', 'system.mailaccount.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '账号创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 账号更新 (system.mailaccount.action.update)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.mailaccount.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-账号更新', 'system.mailaccount.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailaccount.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-账号更新', 'system.mailaccount.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update email account', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailaccount.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-账号更新', 'system.mailaccount.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '账号更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 账号删除 (system.mailaccount.action.delete)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.mailaccount.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-账号删除', 'system.mailaccount.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailaccount.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-账号删除', 'system.mailaccount.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete email account', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.mailaccount.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-账号删除', 'system.mailaccount.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '账号删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 日志查询 (system.maillog.action.query)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.maillog.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-日志查询', 'system.maillog.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.maillog.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-日志查询', 'system.maillog.action.query', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query email log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.maillog.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-日志查询', 'system.maillog.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '日志查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 发送测试邮件 (system.mail.template.action.sendmail)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.action.sendmail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-发送测试邮件', 'system.mail.template.action.sendmail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.action.sendmail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-发送测试邮件', 'system.mail.template.action.sendmail', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'send test email', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.action.sendmail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-发送测试邮件', 'system.mail.template.action.sendmail', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '发送测试邮件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 发送测试站内信 (system.notify.template.action.sendnotify)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.action.sendnotify';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-发送测试站内信', 'system.notify.template.action.sendnotify', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.action.sendnotify' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-发送测试站内信', 'system.notify.template.action.sendnotify', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'send test notification', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.action.sendnotify' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-发送测试站内信', 'system.notify.template.action.sendnotify', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '发送测试站内信', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 站内信消息查询 (system.notifymessage.action.query)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.notifymessage.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-站内信消息查询', 'system.notifymessage.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.notifymessage.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-站内信消息查询', 'system.notifymessage.action.query', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query notification message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.notifymessage.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-站内信消息查询', 'system.notifymessage.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '站内信消息查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 租户切换 (system.tenant.action.visit)
SET @MODULE_TYPE = 'system';
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.action.visit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-租户切换', 'system.tenant.action.visit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.action.visit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-租户切换', 'system.tenant.action.visit', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'switch tenant', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.action.visit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统-租户切换', 'system.tenant.action.visit', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '租户切换', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- bpm 模块
-- =============================================

-- 56. 工作流程 (bpm.menu)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-菜单', 'bpm.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-菜单', 'bpm.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'workflow', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-菜单', 'bpm.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '工作流程', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 流程管理 (bpm.manager.menu)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.manager.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程管理-菜单', 'bpm.manager.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.manager.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程管理-菜单', 'bpm.manager.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'process', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.manager.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流程管理-菜单', 'bpm.manager.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '流程管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 我的流程 (bpm.task.my.menu)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.my.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的流程-菜单', 'bpm.task.my.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.my.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的流程-菜单', 'bpm.task.my.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'my process', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.my.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的流程-菜单', 'bpm.task.my.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '我的流程', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 发起流程 (bpm.task.create.menu)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.create.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('发起流程-菜单', 'bpm.task.create.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.create.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('发起流程-菜单', 'bpm.task.create.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'start process', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.create.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('发起流程-菜单', 'bpm.task.create.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '发起流程', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 表单导出 (bpm.form.action.export)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.form.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-表单导出', 'bpm.form.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-表单导出', 'bpm.form.action.export', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export form', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.form.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-表单导出', 'bpm.form.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '表单导出', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 模型发布 (bpm.model.action.deploy)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.action.deploy';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-模型发布', 'bpm.model.action.deploy', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.action.deploy' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-模型发布', 'bpm.model.action.deploy', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'deploy model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.action.deploy' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-模型发布', 'bpm.model.action.deploy', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '模型发布', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 流程清理 (bpm.model.action.clean)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.model.action.clean';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程清理', 'bpm.model.action.clean', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.action.clean' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程清理', 'bpm.model.action.clean', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'clean process', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.model.action.clean' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程清理', 'bpm.model.action.clean', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '流程清理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 用户组查询 (bpm.usergroup.action.query)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.usergroup.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-用户组查询', 'bpm.usergroup.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.usergroup.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-用户组查询', 'bpm.usergroup.action.query', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query user group', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.usergroup.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-用户组查询', 'bpm.usergroup.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '用户组查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 用户组创建 (bpm.usergroup.action.create)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.usergroup.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-用户组创建', 'bpm.usergroup.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.usergroup.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-用户组创建', 'bpm.usergroup.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create user group', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.usergroup.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-用户组创建', 'bpm.usergroup.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '用户组创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 用户组更新 (bpm.usergroup.action.update)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.usergroup.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-用户组更新', 'bpm.usergroup.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.usergroup.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-用户组更新', 'bpm.usergroup.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update user group', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.usergroup.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-用户组更新', 'bpm.usergroup.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '用户组更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 用户组删除 (bpm.usergroup.action.delete)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.usergroup.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-用户组删除', 'bpm.usergroup.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.usergroup.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-用户组删除', 'bpm.usergroup.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete user group', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.usergroup.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-用户组删除', 'bpm.usergroup.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '用户组删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 流程任务分配规则查询 (bpm.taskassignrule.action.query)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.taskassignrule.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程任务分配规则查询', 'bpm.taskassignrule.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskassignrule.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程任务分配规则查询', 'bpm.taskassignrule.action.query', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query task assign rule', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskassignrule.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程任务分配规则查询', 'bpm.taskassignrule.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '流程任务分配规则查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 流程任务分配规则创建 (bpm.taskassignrule.action.create)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.taskassignrule.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程任务分配规则创建', 'bpm.taskassignrule.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskassignrule.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程任务分配规则创建', 'bpm.taskassignrule.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create task assign rule', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskassignrule.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程任务分配规则创建', 'bpm.taskassignrule.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '流程任务分配规则创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 流程任务分配规则更新 (bpm.taskassignrule.action.update)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.taskassignrule.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程任务分配规则更新', 'bpm.taskassignrule.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskassignrule.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程任务分配规则更新', 'bpm.taskassignrule.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update task assign rule', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.taskassignrule.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程任务分配规则更新', 'bpm.taskassignrule.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '流程任务分配规则更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 流程实例的创建 (bpm.processInstance.action.create)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程实例的创建', 'bpm.processInstance.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程实例的创建', 'bpm.processInstance.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create process instance', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程实例的创建', 'bpm.processInstance.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '流程实例的创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 流程实例的查询（管理员）(bpm.processInstance.action.managerquery)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.action.managerquery';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程实例的查询（管理员）', 'bpm.processInstance.action.managerquery', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.action.managerquery' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程实例的查询（管理员）', 'bpm.processInstance.action.managerquery', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query process instance (admin)', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.action.managerquery' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程实例的查询（管理员）', 'bpm.processInstance.action.managerquery', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '流程实例的查询（管理员）', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 流程实例的取消（管理员）(bpm.processInstance.action.cancelbyadmin)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processInstance.action.cancelbyadmin';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程实例的取消（管理员）', 'bpm.processInstance.action.cancelbyadmin', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.action.cancelbyadmin' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程实例的取消（管理员）', 'bpm.processInstance.action.cancelbyadmin', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'cancel process instance (admin)', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processInstance.action.cancelbyadmin' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程实例的取消（管理员）', 'bpm.processInstance.action.cancelbyadmin', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '流程实例的取消（管理员）', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 流程任务的更新 (bpm.task.action.update)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.task.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程任务的更新', 'bpm.task.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程任务的更新', 'bpm.task.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update task', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.task.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程任务的更新', 'bpm.task.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '流程任务的更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 流程监听器创建 (bpm.processlistener.action.create)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processlistener.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程监听器创建', 'bpm.processlistener.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processlistener.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程监听器创建', 'bpm.processlistener.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create process listener', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processlistener.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程监听器创建', 'bpm.processlistener.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '流程监听器创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 流程监听器更新 (bpm.processlistener.action.update)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processlistener.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程监听器更新', 'bpm.processlistener.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processlistener.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程监听器更新', 'bpm.processlistener.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update process listener', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processlistener.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程监听器更新', 'bpm.processlistener.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '流程监听器更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 流程监听器删除 (bpm.processlistener.action.delete)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processlistener.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程监听器删除', 'bpm.processlistener.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processlistener.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程监听器删除', 'bpm.processlistener.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete process listener', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processlistener.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程监听器删除', 'bpm.processlistener.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '流程监听器删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 流程表达式创建 (bpm.processexpression.action.create)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processexpression.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程表达式创建', 'bpm.processexpression.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processexpression.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程表达式创建', 'bpm.processexpression.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create process expression', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processexpression.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程表达式创建', 'bpm.processexpression.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '流程表达式创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 流程表达式更新 (bpm.processexpression.action.update)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processexpression.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程表达式更新', 'bpm.processexpression.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processexpression.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程表达式更新', 'bpm.processexpression.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update process expression', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processexpression.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程表达式更新', 'bpm.processexpression.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '流程表达式更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 流程表达式删除 (bpm.processexpression.action.delete)
SET @MODULE_TYPE = 'bpm';
DELETE FROM infra_i18n_key WHERE message_key = 'bpm.processexpression.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程表达式删除', 'bpm.processexpression.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processexpression.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程表达式删除', 'bpm.processexpression.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete process expression', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'bpm.processexpression.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作流程-流程表达式删除', 'bpm.processexpression.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '流程表达式删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- crm 模块
-- =============================================

-- 80. CRM 系统 (crm.menu)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM系统-菜单', 'crm.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM系统-菜单', 'crm.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'crm system', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM系统-菜单', 'crm.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'CRM 系统', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 待办事项 (crm.backlog.menu)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.backlog.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('待办事项-菜单', 'crm.backlog.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.backlog.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('待办事项-菜单', 'crm.backlog.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'backlog', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.backlog.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('待办事项-菜单', 'crm.backlog.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '待办事项', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 排行榜 (crm.statistics.rank.menu)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.statistics.rank.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('排行榜-菜单', 'crm.statistics.rank.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.statistics.rank.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('排行榜-菜单', 'crm.statistics.rank.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'ranking', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.statistics.rank.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('排行榜-菜单', 'crm.statistics.rank.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '排行榜', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 客户分析 (crm.statistics.customer.menu)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.statistics.customer.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户分析-菜单', 'crm.statistics.customer.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.statistics.customer.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户分析-菜单', 'crm.statistics.customer.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'customer analysis', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.statistics.customer.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户分析-菜单', 'crm.statistics.customer.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '客户分析', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 员工业绩 (crm.statistics.performance.menu)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.statistics.performance.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('员工业绩-菜单', 'crm.statistics.performance.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.statistics.performance.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('员工业绩-菜单', 'crm.statistics.performance.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'employee performance', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.statistics.performance.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('员工业绩-菜单', 'crm.statistics.performance.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '员工业绩', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 客户画像 (crm.statistics.portrait.menu)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.statistics.portrait.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户画像-菜单', 'crm.statistics.portrait.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.statistics.portrait.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户画像-菜单', 'crm.statistics.portrait.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'customer portrait', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.statistics.portrait.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户画像-菜单', 'crm.statistics.portrait.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '客户画像', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 销售漏斗 (crm.statistics.funnel.menu)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.statistics.funnel.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售漏斗-菜单', 'crm.statistics.funnel.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.statistics.funnel.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售漏斗-菜单', 'crm.statistics.funnel.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'sales funnel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.statistics.funnel.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售漏斗-菜单', 'crm.statistics.funnel.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '销售漏斗', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 系统配置 (crm.config.menu)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.config.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统配置-菜单', 'crm.config.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.config.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统配置-菜单', 'crm.config.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'system config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.config.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统配置-菜单', 'crm.config.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '系统配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 客户公海配置 (crm.config.customerPoolConfig.menu)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.config.customerPoolConfig.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户公海配置-菜单', 'crm.config.customerPoolConfig.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.config.customerPoolConfig.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户公海配置-菜单', 'crm.config.customerPoolConfig.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'customer pool config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.config.customerPoolConfig.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('客户公海配置-菜单', 'crm.config.customerPoolConfig.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '客户公海配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 商机状态配置 (crm.config.businessStatus.menu)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.config.businessStatus.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态配置-菜单', 'crm.config.businessStatus.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.config.businessStatus.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态配置-菜单', 'crm.config.businessStatus.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'business status config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.config.businessStatus.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('商机状态配置-菜单', 'crm.config.businessStatus.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '商机状态配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 合同配置 (crm.config.contractConfig.menu)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.config.contractConfig.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('合同配置-菜单', 'crm.config.contractConfig.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.config.contractConfig.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('合同配置-菜单', 'crm.config.contractConfig.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'contract config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.config.contractConfig.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('合同配置-菜单', 'crm.config.contractConfig.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '合同配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 商机查询 (crm.business.action.query)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.business.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机查询', 'crm.business.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机查询', 'crm.business.action.query', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query business opportunity', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机查询', 'crm.business.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '商机查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 商机创建 (crm.business.action.create)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.business.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机创建', 'crm.business.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机创建', 'crm.business.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create business opportunity', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机创建', 'crm.business.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '商机创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 商机更新 (crm.business.action.update)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.business.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机更新', 'crm.business.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机更新', 'crm.business.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update business opportunity', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机更新', 'crm.business.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '商机更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 商机删除 (crm.business.action.delete)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.business.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机删除', 'crm.business.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机删除', 'crm.business.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete business opportunity', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机删除', 'crm.business.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '商机删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 商机导出 (crm.business.action.export)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.business.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机导出', 'crm.business.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机导出', 'crm.business.action.export', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export business opportunity', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.business.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机导出', 'crm.business.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '商机导出', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 关联商机 (crm.contact.action.createbusiness)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.contact.action.createbusiness';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-关联商机', 'crm.contact.action.createbusiness', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contact.action.createbusiness' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-关联商机', 'crm.contact.action.createbusiness', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'associate business opportunity', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contact.action.createbusiness' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-关联商机', 'crm.contact.action.createbusiness', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '关联商机', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 取关商机 (crm.contact.action.deletebusiness)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.contact.action.deletebusiness';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-取关商机', 'crm.contact.action.deletebusiness', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contact.action.deletebusiness' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-取关商机', 'crm.contact.action.deletebusiness', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'disassociate business opportunity', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contact.action.deletebusiness' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-取关商机', 'crm.contact.action.deletebusiness', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '取关商机', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 客户公海配置保存 (crm.customerPoolConfig.action.update)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.customerPoolConfig.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户公海配置保存', 'crm.customerPoolConfig.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customerPoolConfig.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户公海配置保存', 'crm.customerPoolConfig.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'save customer pool config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customerPoolConfig.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户公海配置保存', 'crm.customerPoolConfig.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '客户公海配置保存', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 客户公海配置查询 (crm.customerPoolConfig.action.query)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.customerPoolConfig.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户公海配置查询', 'crm.customerPoolConfig.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customerPoolConfig.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户公海配置查询', 'crm.customerPoolConfig.action.query', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query customer pool config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customerPoolConfig.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户公海配置查询', 'crm.customerPoolConfig.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '客户公海配置查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 客户限制配置查询 (crm.customerLimitConfig.action.query)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.customerLimitConfig.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户限制配置查询', 'crm.customerLimitConfig.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customerLimitConfig.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户限制配置查询', 'crm.customerLimitConfig.action.query', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query customer limit config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customerLimitConfig.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户限制配置查询', 'crm.customerLimitConfig.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '客户限制配置查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 客户限制配置创建 (crm.customerLimitConfig.action.create)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.customerLimitConfig.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户限制配置创建', 'crm.customerLimitConfig.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customerLimitConfig.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户限制配置创建', 'crm.customerLimitConfig.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create customer limit config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customerLimitConfig.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户限制配置创建', 'crm.customerLimitConfig.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '客户限制配置创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 客户限制配置更新 (crm.customerLimitConfig.action.update)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.customerLimitConfig.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户限制配置更新', 'crm.customerLimitConfig.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customerLimitConfig.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户限制配置更新', 'crm.customerLimitConfig.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update customer limit config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customerLimitConfig.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户限制配置更新', 'crm.customerLimitConfig.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '客户限制配置更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 客户限制配置删除 (crm.customerLimitConfig.action.delete)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.customerLimitConfig.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户限制配置删除', 'crm.customerLimitConfig.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customerLimitConfig.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户限制配置删除', 'crm.customerLimitConfig.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete customer limit config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customerLimitConfig.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户限制配置删除', 'crm.customerLimitConfig.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '客户限制配置删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 客户限制配置导出 (crm.customerLimitConfig.action.export)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.customerLimitConfig.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户限制配置导出', 'crm.customerLimitConfig.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customerLimitConfig.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户限制配置导出', 'crm.customerLimitConfig.action.export', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export customer limit config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.customerLimitConfig.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-客户限制配置导出', 'crm.customerLimitConfig.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '客户限制配置导出', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 产品分类创建 (crm.productcategory.action.create)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.productcategory.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-产品分类创建', 'crm.productcategory.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productcategory.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-产品分类创建', 'crm.productcategory.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create product category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productcategory.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-产品分类创建', 'crm.productcategory.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '产品分类创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 产品分类更新 (crm.productcategory.action.update)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.productcategory.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-产品分类更新', 'crm.productcategory.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productcategory.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-产品分类更新', 'crm.productcategory.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update product category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productcategory.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-产品分类更新', 'crm.productcategory.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '产品分类更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 产品分类删除 (crm.productcategory.action.delete)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.productcategory.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-产品分类删除', 'crm.productcategory.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productcategory.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-产品分类删除', 'crm.productcategory.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete product category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.productcategory.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-产品分类删除', 'crm.productcategory.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '产品分类删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 商机状态更新 (crm.businessStatus.action.update)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.businessStatus.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机状态更新', 'crm.businessStatus.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.businessStatus.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机状态更新', 'crm.businessStatus.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update business status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.businessStatus.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-商机状态更新', 'crm.businessStatus.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '商机状态更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 合同配置更新 (crm.contract.config.action.update)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.contract.config.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-合同配置更新', 'crm.contract.config.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contract.config.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-合同配置更新', 'crm.contract.config.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update contract config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contract.config.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-合同配置更新', 'crm.contract.config.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '合同配置更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 合同配置查询 (crm.contract.config.action.query)
SET @MODULE_TYPE = 'crm';
DELETE FROM infra_i18n_key WHERE message_key = 'crm.contract.config.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-合同配置查询', 'crm.contract.config.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contract.config.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-合同配置查询', 'crm.contract.config.action.query', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query contract config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'crm.contract.config.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('CRM-合同配置查询', 'crm.contract.config.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '合同配置查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- erp 模块
-- =============================================

-- 111. ERP 系统 (erp.menu)
SET @MODULE_TYPE = 'erp';
DELETE FROM infra_i18n_key WHERE message_key = 'erp.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP系统-菜单', 'erp.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP系统-菜单', 'erp.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'erp system', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP系统-菜单', 'erp.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'ERP 系统', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. ERP 首页 (erp.home.menu)
SET @MODULE_TYPE = 'erp';
DELETE FROM infra_i18n_key WHERE message_key = 'erp.home.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP首页-菜单', 'erp.home.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.home.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP首页-菜单', 'erp.home.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'erp home', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.home.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP首页-菜单', 'erp.home.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'ERP 首页', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 采购管理 (erp.purcharse.menu)
SET @MODULE_TYPE = 'erp';
DELETE FROM infra_i18n_key WHERE message_key = 'erp.purcharse.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购管理-菜单', 'erp.purcharse.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purcharse.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购管理-菜单', 'erp.purcharse.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'purchase', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.purcharse.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('采购管理-菜单', 'erp.purcharse.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '采购管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 销售管理 (erp.sale.menu)
SET @MODULE_TYPE = 'erp';
DELETE FROM infra_i18n_key WHERE message_key = 'erp.sale.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售管理-菜单', 'erp.sale.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.sale.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售管理-菜单', 'erp.sale.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'sales', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.sale.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('销售管理-菜单', 'erp.sale.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '销售管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 财务管理 (erp.finance.menu)
SET @MODULE_TYPE = 'erp';
DELETE FROM infra_i18n_key WHERE message_key = 'erp.finance.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('财务管理-菜单', 'erp.finance.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.finance.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('财务管理-菜单', 'erp.finance.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'financial', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.finance.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('财务管理-菜单', 'erp.finance.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '财务管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 产品分类查询 (erp.productCategory.action.query)
SET @MODULE_TYPE = 'erp';
DELETE FROM infra_i18n_key WHERE message_key = 'erp.productCategory.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-产品分类查询', 'erp.productCategory.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-产品分类查询', 'erp.productCategory.action.query', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query product category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-产品分类查询', 'erp.productCategory.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '产品分类查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 产品分类创建 (erp.productCategory.action.create)
SET @MODULE_TYPE = 'erp';
DELETE FROM infra_i18n_key WHERE message_key = 'erp.productCategory.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-产品分类创建', 'erp.productCategory.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-产品分类创建', 'erp.productCategory.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create product category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-产品分类创建', 'erp.productCategory.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '产品分类创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 产品分类更新 (erp.productCategory.action.update)
SET @MODULE_TYPE = 'erp';
DELETE FROM infra_i18n_key WHERE message_key = 'erp.productCategory.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-产品分类更新', 'erp.productCategory.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-产品分类更新', 'erp.productCategory.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update product category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-产品分类更新', 'erp.productCategory.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '产品分类更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 产品分类删除 (erp.productCategory.action.delete)
SET @MODULE_TYPE = 'erp';
DELETE FROM infra_i18n_key WHERE message_key = 'erp.productCategory.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-产品分类删除', 'erp.productCategory.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-产品分类删除', 'erp.productCategory.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete product category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-产品分类删除', 'erp.productCategory.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '产品分类删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 产品分类导出 (erp.productCategory.action.export)
SET @MODULE_TYPE = 'erp';
DELETE FROM infra_i18n_key WHERE message_key = 'erp.productCategory.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-产品分类导出', 'erp.productCategory.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-产品分类导出', 'erp.productCategory.action.export', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export product category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productCategory.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-产品分类导出', 'erp.productCategory.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '产品分类导出', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 单位查询 (erp.productUnit.action.query)
SET @MODULE_TYPE = 'erp';
DELETE FROM infra_i18n_key WHERE message_key = 'erp.productUnit.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-单位查询', 'erp.productUnit.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productUnit.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-单位查询', 'erp.productUnit.action.query', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query product unit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productUnit.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-单位查询', 'erp.productUnit.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '单位查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 单位创建 (erp.productUnit.action.create)
SET @MODULE_TYPE = 'erp';
DELETE FROM infra_i18n_key WHERE message_key = 'erp.productUnit.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-单位创建', 'erp.productUnit.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productUnit.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-单位创建', 'erp.productUnit.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create product unit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productUnit.action.create' AND locale = @LOCALE_ZN_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-单位创建', 'erp.productUnit.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '单位创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 单位更新 (erp.productUnit.action.update)
SET @MODULE_TYPE = 'erp';
DELETE FROM infra_i18n_key WHERE message_key = 'erp.productUnit.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-单位更新', 'erp.productUnit.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productUnit.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-单位更新', 'erp.productUnit.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update product unit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productUnit.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-单位更新', 'erp.productUnit.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '单位更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 单位删除 (erp.productUnit.action.delete)
SET @MODULE_TYPE = 'erp';
DELETE FROM infra_i18n_key WHERE message_key = 'erp.productUnit.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-单位删除', 'erp.productUnit.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productUnit.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-单位删除', 'erp.productUnit.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete product unit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productUnit.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-单位删除', 'erp.productUnit.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '单位删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 125. 单位导出 (erp.productUnit.action.export)
SET @MODULE_TYPE = 'erp';
DELETE FROM infra_i18n_key WHERE message_key = 'erp.productUnit.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-单位导出', 'erp.productUnit.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productUnit.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-单位导出', 'erp.productUnit.action.export', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export product unit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'erp.productUnit.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ERP-单位导出', 'erp.productUnit.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '单位导出', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- ai 模块
-- =============================================

-- 126. AI 大模型 (ai.menu)
SET @MODULE_TYPE = 'ai';
DELETE FROM infra_i18n_key WHERE message_key = 'ai.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI大模型-菜单', 'ai.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI大模型-菜单', 'ai.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'ai large model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI大模型-菜单', 'ai.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'AI 大模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 127. 控制台 (ai.console.menu)
SET @MODULE_TYPE = 'ai';
DELETE FROM infra_i18n_key WHERE message_key = 'ai.console.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('控制台-菜单', 'ai.console.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.console.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('控制台-菜单', 'ai.console.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'console', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.console.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('控制台-菜单', 'ai.console.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '控制台', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 128. 音乐管理 (ai.console.music.menu)
SET @MODULE_TYPE = 'ai';
DELETE FROM infra_i18n_key WHERE message_key = 'ai.console.music.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('音乐管理-菜单', 'ai.console.music.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.console.music.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('音乐管理-菜单', 'ai.console.music.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'music', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.console.music.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('音乐管理-菜单', 'ai.console.music.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '音乐管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 129. 导图管理 (ai.console.mindMap.menu)
SET @MODULE_TYPE = 'ai';
DELETE FROM infra_i18n_key WHERE message_key = 'ai.console.mindMap.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导图管理-菜单', 'ai.console.mindMap.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.console.mindMap.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导图管理-菜单', 'ai.console.mindMap.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'mind map', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.console.mindMap.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导图管理-菜单', 'ai.console.mindMap.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '导图管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 130. API 密钥创建 (ai.apikey.action.create)
SET @MODULE_TYPE = 'ai';
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apikey.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-API密钥创建', 'ai.apikey.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.apikey.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-API密钥创建', 'ai.apikey.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create api key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.apikey.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-API密钥创建', 'ai.apikey.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'API 密钥创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 131. API 密钥更新 (ai.apikey.action.update)
SET @MODULE_TYPE = 'ai';
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apikey.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-API密钥更新', 'ai.apikey.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.apikey.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-API密钥更新', 'ai.apikey.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update api key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.apikey.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-API密钥更新', 'ai.apikey.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'API 密钥更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 132. API 密钥删除 (ai.apikey.action.delete)
SET @MODULE_TYPE = 'ai';
DELETE FROM infra_i18n_key WHERE message_key = 'ai.apikey.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-API密钥删除', 'ai.apikey.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.apikey.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-API密钥删除', 'ai.apikey.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete api key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.apikey.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-API密钥删除', 'ai.apikey.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'API 密钥删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 133. 聊天角色创建 (ai.chatrole.action.create)
SET @MODULE_TYPE = 'ai';
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatrole.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-聊天角色创建', 'ai.chatrole.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatrole.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-聊天角色创建', 'ai.chatrole.action.create', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create chat role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatrole.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-聊天角色创建', 'ai.chatrole.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '聊天角色创建', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 134. 聊天角色更新 (ai.chatrole.action.update)
SET @MODULE_TYPE = 'ai';
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatrole.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-聊天角色更新', 'ai.chatrole.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatrole.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-聊天角色更新', 'ai.chatrole.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update chat role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatrole.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-聊天角色更新', 'ai.chatrole.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '聊天角色更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 135. 聊天角色删除 (ai.chatrole.action.delete)
SET @MODULE_TYPE = 'ai';
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatrole.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-聊天角色删除', 'ai.chatrole.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatrole.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-聊天角色删除', 'ai.chatrole.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete chat role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatrole.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-聊天角色删除', 'ai.chatrole.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '聊天角色删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 136. 会话查询 (ai.chatconversation.action.query)
SET @MODULE_TYPE = 'ai';
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatconversation.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-会话查询', 'ai.chatconversation.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatconversation.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-会话查询', 'ai.chatconversation.action.query', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query chat conversation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatconversation.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-会话查询', 'ai.chatconversation.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '会话查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. 会话删除 (ai.chatconversation.action.delete)
SET @MODULE_TYPE = 'ai';
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatconversation.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-会话删除', 'ai.chatconversation.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatconversation.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-会话删除', 'ai.chatconversation.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete chat conversation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatconversation.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-会话删除', 'ai.chatconversation.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '会话删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 138. 消息删除 (ai.chatmessage.action.delete)
SET @MODULE_TYPE = 'ai';
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chatmessage.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-消息删除', 'ai.chatmessage.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatmessage.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-消息删除', 'ai.chatmessage.action.delete', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chatmessage.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-消息删除', 'ai.chatmessage.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '消息删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 139. 绘图更新 (ai.image.action.update)
SET @MODULE_TYPE = 'ai';
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-绘图更新', 'ai.image.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-绘图更新', 'ai.image.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update image', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-绘图更新', 'ai.image.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '绘图更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 140. 音乐更新 (ai.music.action.update)
SET @MODULE_TYPE = 'ai';
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-音乐更新', 'ai.music.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-音乐更新', 'ai.music.action.update', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update music', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI-音乐更新', 'ai.music.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '音乐更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- =============================================
-- springsun 模块
-- =============================================

-- 141. 荔枝云图 (springsun.menu)
SET @MODULE_TYPE = 'springsun';
DELETE FROM infra_i18n_key WHERE message_key = 'springsun.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('荔枝云图-菜单', 'springsun.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'springsun.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('荔枝云图-菜单', 'springsun.menu', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'spring sun', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
DELETE FROM infra_i18n_message WHERE message_key = 'springsun.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('荔枝云图-菜单', 'springsun.menu', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '荔枝云图', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
