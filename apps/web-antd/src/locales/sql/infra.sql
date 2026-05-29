-- =============================================
-- INFRA i18n SQL
-- Generated: 2026-05-29
-- =============================================

SET @IS_SYSTEM = 0;
SET @MODULE_TYPE = 'infra';
SET @LOCALE_TARGET = 2;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';

SET @USE_TYPE_PUBLIC = 0; SET @ORDER_NUM_PUBLIC = 0;
SET @USE_TYPE_UI = 1; SET @ORDER_NUM_UI = 1;
SET @USE_TYPE_FORM = 2; SET @ORDER_NUM_FORM = 2;
SET @USE_TYPE_FUNCTION = 4; SET @ORDER_NUM_FUNCTION = 4;
SET @USE_TYPE_MENU = 6; SET @ORDER_NUM_MENU = 6;

-- 1. API访问日志 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API访问日志', 'infra.apiAccessLog', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. API访问日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API访问日志', 'infra.apiAccessLog', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. API访问日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API访问日志', 'infra.apiAccessLog', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'API 访问日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. API 访问日志-导出API访问日志 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-导出API访问日志', 'infra.apiAccessLog.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. API 访问日志-导出API访问日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-导出API访问日志', 'infra.apiAccessLog.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export api access log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. API 访问日志-导出API访问日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-导出API访问日志', 'infra.apiAccessLog.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出 API 访问日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. API 访问日志-API访问日志查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-API访问日志查询', 'infra.apiAccessLog.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. API 访问日志-API访问日志查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-API访问日志查询', 'infra.apiAccessLog.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'api access log query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. API 访问日志-API访问日志查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-API访问日志查询', 'infra.apiAccessLog.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'API 访问日志查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. API访问日志 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.apiAccessLog';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API访问日志', 'infra.apiAccessLog.apiAccessLog', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. API访问日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.apiAccessLog' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API访问日志', 'infra.apiAccessLog.apiAccessLog', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'api access log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. API访问日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.apiAccessLog' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API访问日志', 'infra.apiAccessLog.apiAccessLog', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'API 访问日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. API 访问日志-API访问日志详情 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.detail.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-API访问日志详情', 'infra.apiAccessLog.detail.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. API 访问日志-API访问日志详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.detail.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-API访问日志详情', 'infra.apiAccessLog.detail.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'api access log detail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. API 访问日志-API访问日志详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.detail.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-API访问日志详情', 'infra.apiAccessLog.detail.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'API 访问日志详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. API 访问日志-应用名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.applicationName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-应用名', 'infra.apiAccessLog.field.applicationName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. API 访问日志-应用名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.applicationName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-应用名', 'infra.apiAccessLog.field.applicationName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'application', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. API 访问日志-应用名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.applicationName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-应用名', 'infra.apiAccessLog.field.applicationName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '应用名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. API 访问日志-请求开始时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.beginTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求开始时间', 'infra.apiAccessLog.field.beginTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. API 访问日志-请求开始时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.beginTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求开始时间', 'infra.apiAccessLog.field.beginTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'request start time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. API 访问日志-请求开始时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.beginTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求开始时间', 'infra.apiAccessLog.field.beginTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请求开始时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. API 访问日志-请求耗时 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.duration';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求耗时', 'infra.apiAccessLog.field.duration', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. API 访问日志-请求耗时 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.duration' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求耗时', 'infra.apiAccessLog.field.duration', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'duration', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. API 访问日志-请求耗时 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.duration' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求耗时', 'infra.apiAccessLog.field.duration', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请求耗时', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. API 访问日志-请求结束时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.endTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求结束时间', 'infra.apiAccessLog.field.endTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. API 访问日志-请求结束时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.endTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求结束时间', 'infra.apiAccessLog.field.endTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'request end time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. API 访问日志-请求结束时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.endTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求结束时间', 'infra.apiAccessLog.field.endTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请求结束时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. API 访问日志-日志编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-日志编号', 'infra.apiAccessLog.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. API 访问日志-日志编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-日志编号', 'infra.apiAccessLog.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'log id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. API 访问日志-日志编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-日志编号', 'infra.apiAccessLog.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '日志编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. API 访问日志-操作模块 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.operateModule';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-操作模块', 'infra.apiAccessLog.field.operateModule', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. API 访问日志-操作模块 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.operateModule' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-操作模块', 'infra.apiAccessLog.field.operateModule', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'operate module', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. API 访问日志-操作模块 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.operateModule' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-操作模块', 'infra.apiAccessLog.field.operateModule', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '操作模块', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. API 访问日志-操作名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.operateName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-操作名', 'infra.apiAccessLog.field.operateName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. API 访问日志-操作名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.operateName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-操作名', 'infra.apiAccessLog.field.operateName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'operate name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. API 访问日志-操作名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.operateName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-操作名', 'infra.apiAccessLog.field.operateName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '操作名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. API 访问日志-操作类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.operateType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-操作类型', 'infra.apiAccessLog.field.operateType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. API 访问日志-操作类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.operateType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-操作类型', 'infra.apiAccessLog.field.operateType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'operate type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. API 访问日志-操作类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.operateType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-操作类型', 'infra.apiAccessLog.field.operateType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '操作类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. API 访问日志-请求方法 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.requestMethod';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求方法', 'infra.apiAccessLog.field.requestMethod', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. API 访问日志-请求方法 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.requestMethod' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求方法', 'infra.apiAccessLog.field.requestMethod', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'request method', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. API 访问日志-请求方法 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.requestMethod' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求方法', 'infra.apiAccessLog.field.requestMethod', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请求方法', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. API 访问日志-请求参数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.requestParams';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求参数', 'infra.apiAccessLog.field.requestParams', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. API 访问日志-请求参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.requestParams' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求参数', 'infra.apiAccessLog.field.requestParams', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'request params', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. API 访问日志-请求参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.requestParams' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求参数', 'infra.apiAccessLog.field.requestParams', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请求参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. API 访问日志-请求地址 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.requestUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求地址', 'infra.apiAccessLog.field.requestUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. API 访问日志-请求地址 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.requestUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求地址', 'infra.apiAccessLog.field.requestUrl', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'request url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. API 访问日志-请求地址 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.requestUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求地址', 'infra.apiAccessLog.field.requestUrl', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请求地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. API 访问日志-请求结果 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.responseBody';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求结果', 'infra.apiAccessLog.field.responseBody', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. API 访问日志-请求结果 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.responseBody' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求结果', 'infra.apiAccessLog.field.responseBody', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'response body', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. API 访问日志-请求结果 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.responseBody' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-请求结果', 'infra.apiAccessLog.field.responseBody', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请求结果', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. API 访问日志-结果码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.resultCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-结果码', 'infra.apiAccessLog.field.resultCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. API 访问日志-结果码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.resultCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-结果码', 'infra.apiAccessLog.field.resultCode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'result code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. API 访问日志-结果码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.resultCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-结果码', 'infra.apiAccessLog.field.resultCode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '结果码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. API 访问日志-结果信息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.resultMsg';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-结果信息', 'infra.apiAccessLog.field.resultMsg', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. API 访问日志-结果信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.resultMsg' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-结果信息', 'infra.apiAccessLog.field.resultMsg', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'result message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. API 访问日志-结果信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.resultMsg' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-结果信息', 'infra.apiAccessLog.field.resultMsg', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '结果信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. API 访问日志-链路追踪 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.traceId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-链路追踪', 'infra.apiAccessLog.field.traceId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. API 访问日志-链路追踪 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.traceId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-链路追踪', 'infra.apiAccessLog.field.traceId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'trace id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. API 访问日志-链路追踪 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.traceId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-链路追踪', 'infra.apiAccessLog.field.traceId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '链路追踪', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. API 访问日志-用户UA (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.userAgent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-用户UA', 'infra.apiAccessLog.field.userAgent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. API 访问日志-用户UA - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.userAgent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-用户UA', 'infra.apiAccessLog.field.userAgent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user agent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. API 访问日志-用户UA - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.userAgent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-用户UA', 'infra.apiAccessLog.field.userAgent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户UA', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. API 访问日志-用户编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-用户编号', 'infra.apiAccessLog.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. API 访问日志-用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-用户编号', 'infra.apiAccessLog.field.userId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. API 访问日志-用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-用户编号', 'infra.apiAccessLog.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. API 访问日志-用户IP (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.userIp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-用户IP', 'infra.apiAccessLog.field.userIp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. API 访问日志-用户IP - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.userIp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-用户IP', 'infra.apiAccessLog.field.userIp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user ip', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. API 访问日志-用户IP - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.userIp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-用户IP', 'infra.apiAccessLog.field.userIp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户IP', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. API 访问日志-用户类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.field.userType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-用户类型', 'infra.apiAccessLog.field.userType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. API 访问日志-用户类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.userType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-用户类型', 'infra.apiAccessLog.field.userType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. API 访问日志-用户类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.field.userType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-用户类型', 'infra.apiAccessLog.field.userType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. API 访问日志-API访问日志列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-API访问日志列表', 'infra.apiAccessLog.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. API 访问日志-API访问日志列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-API访问日志列表', 'infra.apiAccessLog.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api access log list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. API 访问日志-API访问日志列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-API访问日志列表', 'infra.apiAccessLog.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'API 访问日志列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. API访问日志 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API访问日志', 'infra.apiAccessLog.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. API访问日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API访问日志', 'infra.apiAccessLog.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'api access log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. API访问日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API访问日志', 'infra.apiAccessLog.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'API 访问日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. API 访问日志-失败 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.result.fail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-失败', 'infra.apiAccessLog.result.fail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. API 访问日志-失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.result.fail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-失败', 'infra.apiAccessLog.result.fail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'fail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. API 访问日志-失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.result.fail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-失败', 'infra.apiAccessLog.result.fail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. API 访问日志-成功 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.result.success';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-成功', 'infra.apiAccessLog.result.success', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. API 访问日志-成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.result.success' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-成功', 'infra.apiAccessLog.result.success', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'success', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. API 访问日志-成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.result.success' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-成功', 'infra.apiAccessLog.result.success', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. API 访问日志-ms (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiAccessLog.unit.duration';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-ms', 'infra.apiAccessLog.unit.duration', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. API 访问日志-ms - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.unit.duration' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-ms', 'infra.apiAccessLog.unit.duration', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'ms', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. API 访问日志-ms - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiAccessLog.unit.duration' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 访问日志-ms', 'infra.apiAccessLog.unit.duration', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'ms', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. API错误日志 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API错误日志', 'infra.apiErrorLog', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. API错误日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API错误日志', 'infra.apiErrorLog', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. API错误日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API错误日志', 'infra.apiErrorLog', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'API 错误日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. API 错误日志-确认标记为已处理？ (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.action.confirmMarkAsDone';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-确认标记为已处理？', 'infra.apiErrorLog.action.confirmMarkAsDone', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. API 错误日志-确认标记为已处理？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.action.confirmMarkAsDone' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-确认标记为已处理？', 'infra.apiErrorLog.action.confirmMarkAsDone', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'confirm mark as done?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. API 错误日志-确认标记为已处理？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.action.confirmMarkAsDone' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-确认标记为已处理？', 'infra.apiErrorLog.action.confirmMarkAsDone', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '确认标记为已处理？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. API 错误日志-确认标记为已忽略？ (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.action.confirmMarkAsIgnored';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-确认标记为已忽略？', 'infra.apiErrorLog.action.confirmMarkAsIgnored', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. API 错误日志-确认标记为已忽略？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.action.confirmMarkAsIgnored' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-确认标记为已忽略？', 'infra.apiErrorLog.action.confirmMarkAsIgnored', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'confirm mark as ignored?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. API 错误日志-确认标记为已忽略？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.action.confirmMarkAsIgnored' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-确认标记为已忽略？', 'infra.apiErrorLog.action.confirmMarkAsIgnored', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '确认标记为已忽略？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. API 错误日志-导出API错误日志 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-导出API错误日志', 'infra.apiErrorLog.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. API 错误日志-导出API错误日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-导出API错误日志', 'infra.apiErrorLog.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export api error log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. API 错误日志-导出API错误日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-导出API错误日志', 'infra.apiErrorLog.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出 API 错误日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. API 错误日志-已处理 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.action.markAsDone';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-已处理', 'infra.apiErrorLog.action.markAsDone', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. API 错误日志-已处理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.action.markAsDone' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-已处理', 'infra.apiErrorLog.action.markAsDone', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'mark as done', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. API 错误日志-已处理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.action.markAsDone' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-已处理', 'infra.apiErrorLog.action.markAsDone', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '已处理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. API 错误日志-已忽略 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.action.markAsIgnored';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-已忽略', 'infra.apiErrorLog.action.markAsIgnored', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. API 错误日志-已忽略 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.action.markAsIgnored' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-已忽略', 'infra.apiErrorLog.action.markAsIgnored', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'mark as ignored', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. API 错误日志-已忽略 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.action.markAsIgnored' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-已忽略', 'infra.apiErrorLog.action.markAsIgnored', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '已忽略', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. API 错误日志-API错误日志查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-API错误日志查询', 'infra.apiErrorLog.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. API 错误日志-API错误日志查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-API错误日志查询', 'infra.apiErrorLog.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'api error log query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. API 错误日志-API错误日志查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-API错误日志查询', 'infra.apiErrorLog.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'API 错误日志查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. API错误日志 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.apiErrorLog';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API错误日志', 'infra.apiErrorLog.apiErrorLog', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. API错误日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.apiErrorLog' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API错误日志', 'infra.apiErrorLog.apiErrorLog', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'api error log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. API错误日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.apiErrorLog' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API错误日志', 'infra.apiErrorLog.apiErrorLog', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'API 错误日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. API 错误日志-API错误日志详情 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.detail.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-API错误日志详情', 'infra.apiErrorLog.detail.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. API 错误日志-API错误日志详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.detail.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-API错误日志详情', 'infra.apiErrorLog.detail.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'api error log detail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. API 错误日志-API错误日志详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.detail.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-API错误日志详情', 'infra.apiErrorLog.detail.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'API 错误日志详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. API 错误日志-应用名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.field.applicationName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-应用名', 'infra.apiErrorLog.field.applicationName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. API 错误日志-应用名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.applicationName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-应用名', 'infra.apiErrorLog.field.applicationName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'application', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. API 错误日志-应用名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.applicationName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-应用名', 'infra.apiErrorLog.field.applicationName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '应用名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. API 错误日志-异常名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.field.exceptionName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-异常名', 'infra.apiErrorLog.field.exceptionName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. API 错误日志-异常名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.exceptionName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-异常名', 'infra.apiErrorLog.field.exceptionName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'exception name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. API 错误日志-异常名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.exceptionName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-异常名', 'infra.apiErrorLog.field.exceptionName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '异常名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. API 错误日志-异常堆栈 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.field.exceptionStackTrace';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-异常堆栈', 'infra.apiErrorLog.field.exceptionStackTrace', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. API 错误日志-异常堆栈 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.exceptionStackTrace' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-异常堆栈', 'infra.apiErrorLog.field.exceptionStackTrace', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'exception stack', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. API 错误日志-异常堆栈 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.exceptionStackTrace' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-异常堆栈', 'infra.apiErrorLog.field.exceptionStackTrace', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '异常堆栈', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. API 错误日志-异常发生时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.field.exceptionTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-异常发生时间', 'infra.apiErrorLog.field.exceptionTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. API 错误日志-异常发生时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.exceptionTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-异常发生时间', 'infra.apiErrorLog.field.exceptionTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'exception time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. API 错误日志-异常发生时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.exceptionTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-异常发生时间', 'infra.apiErrorLog.field.exceptionTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '异常发生时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. API 错误日志-日志编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-日志编号', 'infra.apiErrorLog.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. API 错误日志-日志编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-日志编号', 'infra.apiErrorLog.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'log id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. API 错误日志-日志编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-日志编号', 'infra.apiErrorLog.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '日志编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. API 错误日志-处理状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.field.processStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-处理状态', 'infra.apiErrorLog.field.processStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. API 错误日志-处理状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.processStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-处理状态', 'infra.apiErrorLog.field.processStatus', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'process status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. API 错误日志-处理状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.processStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-处理状态', 'infra.apiErrorLog.field.processStatus', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '处理状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. API 错误日志-处理时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.field.processTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-处理时间', 'infra.apiErrorLog.field.processTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. API 错误日志-处理时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.processTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-处理时间', 'infra.apiErrorLog.field.processTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'process time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. API 错误日志-处理时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.processTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-处理时间', 'infra.apiErrorLog.field.processTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '处理时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. API 错误日志-处理人 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.field.processUserId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-处理人', 'infra.apiErrorLog.field.processUserId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. API 错误日志-处理人 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.processUserId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-处理人', 'infra.apiErrorLog.field.processUserId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'processed by', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. API 错误日志-处理人 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.processUserId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-处理人', 'infra.apiErrorLog.field.processUserId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '处理人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. API 错误日志-请求方法 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.field.requestMethod';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-请求方法', 'infra.apiErrorLog.field.requestMethod', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. API 错误日志-请求方法 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.requestMethod' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-请求方法', 'infra.apiErrorLog.field.requestMethod', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'request method', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. API 错误日志-请求方法 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.requestMethod' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-请求方法', 'infra.apiErrorLog.field.requestMethod', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请求方法', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. API 错误日志-请求参数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.field.requestParams';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-请求参数', 'infra.apiErrorLog.field.requestParams', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. API 错误日志-请求参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.requestParams' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-请求参数', 'infra.apiErrorLog.field.requestParams', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'request params', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. API 错误日志-请求参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.requestParams' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-请求参数', 'infra.apiErrorLog.field.requestParams', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请求参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. API 错误日志-请求地址 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.field.requestUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-请求地址', 'infra.apiErrorLog.field.requestUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. API 错误日志-请求地址 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.requestUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-请求地址', 'infra.apiErrorLog.field.requestUrl', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'request url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. API 错误日志-请求地址 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.requestUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-请求地址', 'infra.apiErrorLog.field.requestUrl', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请求地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. API 错误日志-链路追踪 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.field.traceId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-链路追踪', 'infra.apiErrorLog.field.traceId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. API 错误日志-链路追踪 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.traceId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-链路追踪', 'infra.apiErrorLog.field.traceId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'trace id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. API 错误日志-链路追踪 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.traceId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-链路追踪', 'infra.apiErrorLog.field.traceId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '链路追踪', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. API 错误日志-用户UA (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.field.userAgent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-用户UA', 'infra.apiErrorLog.field.userAgent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. API 错误日志-用户UA - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.userAgent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-用户UA', 'infra.apiErrorLog.field.userAgent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user agent', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. API 错误日志-用户UA - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.userAgent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-用户UA', 'infra.apiErrorLog.field.userAgent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户UA', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. API 错误日志-用户编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-用户编号', 'infra.apiErrorLog.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. API 错误日志-用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-用户编号', 'infra.apiErrorLog.field.userId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. API 错误日志-用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-用户编号', 'infra.apiErrorLog.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. API 错误日志-用户IP (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.field.userIp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-用户IP', 'infra.apiErrorLog.field.userIp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. API 错误日志-用户IP - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.userIp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-用户IP', 'infra.apiErrorLog.field.userIp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user ip', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. API 错误日志-用户IP - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.userIp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-用户IP', 'infra.apiErrorLog.field.userIp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户IP', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. API 错误日志-用户类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.field.userType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-用户类型', 'infra.apiErrorLog.field.userType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. API 错误日志-用户类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.userType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-用户类型', 'infra.apiErrorLog.field.userType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. API 错误日志-用户类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.field.userType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-用户类型', 'infra.apiErrorLog.field.userType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. API 错误日志-API错误日志列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-API错误日志列表', 'infra.apiErrorLog.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. API 错误日志-API错误日志列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-API错误日志列表', 'infra.apiErrorLog.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api error log list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. API 错误日志-API错误日志列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 错误日志-API错误日志列表', 'infra.apiErrorLog.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'API 错误日志列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. API错误日志 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.apiErrorLog.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API错误日志', 'infra.apiErrorLog.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. API错误日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API错误日志', 'infra.apiErrorLog.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'api error log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. API错误日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.apiErrorLog.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API错误日志', 'infra.apiErrorLog.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'API 错误日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 表单设计 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.build';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计', 'infra.build', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 表单设计 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计', 'infra.build', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 表单设计 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计', 'infra.build', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '表单设计', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 表单设计-复制 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.build.action.copy';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-复制', 'infra.build.action.copy', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 表单设计-复制 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.action.copy' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-复制', 'infra.build.action.copy', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'copy', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 表单设计-复制 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.action.copy' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-复制', 'infra.build.action.copy', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '复制', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 表单设计-生成JSON (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.build.action.showJson';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-生成JSON', 'infra.build.action.showJson', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 表单设计-生成JSON - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.action.showJson' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-生成JSON', 'infra.build.action.showJson', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'generate json', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 表单设计-生成JSON - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.action.showJson' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-生成JSON', 'infra.build.action.showJson', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '生成JSON', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 表单设计-生成Options (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.build.action.showOption';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-生成Options', 'infra.build.action.showOption', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 表单设计-生成Options - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.action.showOption' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-生成Options', 'infra.build.action.showOption', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'generate options', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 表单设计-生成Options - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.action.showOption' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-生成Options', 'infra.build.action.showOption', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '生成Options', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 表单设计-生成组件 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.build.action.showTemplate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-生成组件', 'infra.build.action.showTemplate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 表单设计-生成组件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.action.showTemplate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-生成组件', 'infra.build.action.showTemplate', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'generate component', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 表单设计-生成组件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.action.showTemplate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-生成组件', 'infra.build.action.showTemplate', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '生成组件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 表单设计 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.build.build';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计', 'infra.build.build', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 表单设计 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.build' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计', 'infra.build.build', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'form design', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 表单设计 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.build' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计', 'infra.build.build', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '表单设计', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 表单设计 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.build.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计', 'infra.build.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 表单设计 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计', 'infra.build.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'form design', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 表单设计 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计', 'infra.build.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '表单设计', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 表单设计 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.build.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计', 'infra.build.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 表单设计 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计', 'infra.build.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'form design', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 表单设计 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计', 'infra.build.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '表单设计', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 表单设计-复制失败 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.build.message.copyFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-复制失败', 'infra.build.message.copyFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 表单设计-复制失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.message.copyFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-复制失败', 'infra.build.message.copyFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'copy failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 表单设计-复制失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.message.copyFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-复制失败', 'infra.build.message.copyFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '复制失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 表单设计-复制成功 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.build.message.copySuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-复制成功', 'infra.build.message.copySuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 表单设计-复制成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.message.copySuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-复制成功', 'infra.build.message.copySuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'copied to clipboard', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 表单设计-复制成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.build.message.copySuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单设计-复制成功', 'infra.build.message.copySuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '复制成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 代码生成 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成', 'infra.codegen', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 代码生成 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成', 'infra.codegen', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 代码生成 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成', 'infra.codegen', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '代码生成', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 代码生成-修改生成配置 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-修改生成配置', 'infra.codegen.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 代码生成-修改生成配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-修改生成配置', 'infra.codegen.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'edit generation config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 代码生成-修改生成配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-修改生成配置', 'infra.codegen.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改生成配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 代码生成-作者 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.author';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-作者', 'infra.codegen.author', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 代码生成-作者 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.author' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-作者', 'infra.codegen.author', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'author', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 代码生成-作者 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.author' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-作者', 'infra.codegen.author', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '作者', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 代码生成-基本信息 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.basicInfo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-基本信息', 'infra.codegen.basicInfo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 代码生成-基本信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.basicInfo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-基本信息', 'infra.codegen.basicInfo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'basic info', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 代码生成-基本信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.basicInfo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-基本信息', 'infra.codegen.basicInfo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '基本信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 代码生成-保存失败，原因：基本信息表单校验失败请检查！！！ (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.basicInfoValidationFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-保存失败，原因：基本信息表单校验失败请检查！！！', 'infra.codegen.basicInfoValidationFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 代码生成-保存失败，原因：基本信息表单校验失败请检查！！！ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.basicInfoValidationFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-保存失败，原因：基本信息表单校验失败请检查！！！', 'infra.codegen.basicInfoValidationFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'save failed, please check the basic info form validation!!!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 代码生成-保存失败，原因：基本信息表单校验失败请检查！！！ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.basicInfoValidationFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-保存失败，原因：基本信息表单校验失败请检查！！！', 'infra.codegen.basicInfoValidationFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '保存失败，原因：基本信息表单校验失败请检查！！！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 代码生成-批量生成代码 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.batchGenerateCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-批量生成代码', 'infra.codegen.batchGenerateCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 代码生成-批量生成代码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.batchGenerateCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-批量生成代码', 'infra.codegen.batchGenerateCode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'batch generate code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 代码生成-批量生成代码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.batchGenerateCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-批量生成代码', 'infra.codegen.batchGenerateCode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '批量生成代码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 代码生成-成功生成{0}个表的代码 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.batchGenerateCodeSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-成功生成{0}个表的代码', 'infra.codegen.batchGenerateCodeSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 代码生成-成功生成{0}个表的代码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.batchGenerateCodeSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-成功生成{0}个表的代码', 'infra.codegen.batchGenerateCodeSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'successfully generated code for {0} tables', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 代码生成-成功生成{0}个表的代码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.batchGenerateCodeSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-成功生成{0}个表的代码', 'infra.codegen.batchGenerateCodeSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '成功生成 {0} 个表的代码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 代码生成-正在批量生成{0}个表的代码... (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.batchGeneratingCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-正在批量生成{0}个表的代码...', 'infra.codegen.batchGeneratingCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 代码生成-正在批量生成{0}个表的代码... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.batchGeneratingCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-正在批量生成{0}个表的代码...', 'infra.codegen.batchGeneratingCode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'batch generating {0} tables code...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 代码生成-正在批量生成{0}个表的代码... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.batchGeneratingCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-正在批量生成{0}个表的代码...', 'infra.codegen.batchGeneratingCode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '正在批量生成 {0} 个表的代码...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 代码生成-业务名 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.businessName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-业务名', 'infra.codegen.businessName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 代码生成-业务名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.businessName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-业务名', 'infra.codegen.businessName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'business name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 代码生成-业务名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.businessName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-业务名', 'infra.codegen.businessName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '业务名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 代码生成-业务名，即二级目录，例如user、permission、dict等等 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.businessNameHelp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-业务名，即二级目录，例如user、permission、dict等等', 'infra.codegen.businessNameHelp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 代码生成-业务名，即二级目录，例如user、permission、dict等等 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.businessNameHelp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-业务名，即二级目录，例如user、permission、dict等等', 'infra.codegen.businessNameHelp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'business name, i.e. second level directory, e.g. user, permission, dict', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 代码生成-业务名，即二级目录，例如user、permission、dict等等 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.businessNameHelp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-业务名，即二级目录，例如user、permission、dict等等', 'infra.codegen.businessNameHelp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '业务名，即二级目录，例如 user、permission、dict 等等', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 代码生成-类描述 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.classComment';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-类描述', 'infra.codegen.classComment', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 代码生成-类描述 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.classComment' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-类描述', 'infra.codegen.classComment', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'class comment', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 代码生成-类描述 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.classComment' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-类描述', 'infra.codegen.classComment', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '类描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 代码生成-用作类描述，例如用户 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.classCommentHelp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-用作类描述，例如用户', 'infra.codegen.classCommentHelp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 代码生成-用作类描述，例如用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.classCommentHelp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-用作类描述，例如用户', 'infra.codegen.classCommentHelp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'used as class description, e.g. user', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 代码生成-用作类描述，例如用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.classCommentHelp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-用作类描述，例如用户', 'infra.codegen.classCommentHelp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '用作类描述，例如 用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 代码生成-类名称 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.className';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-类名称', 'infra.codegen.className', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 代码生成-类名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.className' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-类名称', 'infra.codegen.className', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'class name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 代码生成-类名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.className' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-类名称', 'infra.codegen.className', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '类名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 代码生成-类名称（首字母大写），例如SysUser、SysMenu、SysDictData等等 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.classNameHelp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-类名称（首字母大写），例如SysUser、SysMenu、SysDictData等等', 'infra.codegen.classNameHelp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 代码生成-类名称（首字母大写），例如SysUser、SysMenu、SysDictData等等 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.classNameHelp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-类名称（首字母大写），例如SysUser、SysMenu、SysDictData等等', 'infra.codegen.classNameHelp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'class name (capitalized), e.g. sysuser, sysmenu, sysdictdata', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 代码生成-类名称（首字母大写），例如SysUser、SysMenu、SysDictData等等 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.classNameHelp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-类名称（首字母大写），例如SysUser、SysMenu、SysDictData等等', 'infra.codegen.classNameHelp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '类名称（首字母大写），例如SysUser、SysMenu、SysDictData 等等', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 代码生成-字段描述 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.columnComment';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字段描述', 'infra.codegen.columnComment', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 代码生成-字段描述 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.columnComment' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字段描述', 'infra.codegen.columnComment', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'column comment', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 代码生成-字段描述 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.columnComment' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字段描述', 'infra.codegen.columnComment', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字段描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 代码生成-字段信息 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.columnInfo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字段信息', 'infra.codegen.columnInfo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 代码生成-字段信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.columnInfo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字段信息', 'infra.codegen.columnInfo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'column info', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 代码生成-字段信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.columnInfo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字段信息', 'infra.codegen.columnInfo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字段信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 代码生成-字段列名 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.columnName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字段列名', 'infra.codegen.columnName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 代码生成-字段列名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.columnName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字段列名', 'infra.codegen.columnName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'column name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 代码生成-字段列名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.columnName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字段列名', 'infra.codegen.columnName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字段列名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 代码生成-创建时间 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-创建时间', 'infra.codegen.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 代码生成-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-创建时间', 'infra.codegen.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 代码生成-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-创建时间', 'infra.codegen.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 代码生成-数据源 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.dataSource';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-数据源', 'infra.codegen.dataSource', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 代码生成-数据源 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.dataSource' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-数据源', 'infra.codegen.dataSource', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'data source', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 代码生成-数据源 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.dataSource' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-数据源', 'infra.codegen.dataSource', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '数据源', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 代码生成-物理类型 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.dataType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-物理类型', 'infra.codegen.dataType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 代码生成-物理类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.dataType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-物理类型', 'infra.codegen.dataType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'data type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 代码生成-物理类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.dataType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-物理类型', 'infra.codegen.dataType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '物理类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 代码生成-删除 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-删除', 'infra.codegen.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 代码生成-删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-删除', 'infra.codegen.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 代码生成-删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-删除', 'infra.codegen.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 代码生成-字典类型 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.dictType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字典类型', 'infra.codegen.dictType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 代码生成-字典类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.dictType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字典类型', 'infra.codegen.dictType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'dict type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 代码生成-字典类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.dictType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-字典类型', 'infra.codegen.dictType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字典类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 代码生成-显示类型 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.displayType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-显示类型', 'infra.codegen.displayType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 代码生成-显示类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.displayType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-显示类型', 'infra.codegen.displayType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'display type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 代码生成-显示类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.displayType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-显示类型', 'infra.codegen.displayType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '显示类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 代码生成-抽屉 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.drawer';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-抽屉', 'infra.codegen.drawer', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 代码生成-抽屉 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.drawer' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-抽屉', 'infra.codegen.drawer', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'drawer', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 代码生成-抽屉 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.drawer' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-抽屉', 'infra.codegen.drawer', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '抽屉', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 代码生成-编辑 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.edit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-编辑', 'infra.codegen.edit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 代码生成-编辑 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.edit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-编辑', 'infra.codegen.edit', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'edit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 代码生成-编辑 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.edit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-编辑', 'infra.codegen.edit', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '编辑', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 代码生成-实体 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.entity';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-实体', 'infra.codegen.entity', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 代码生成-实体 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.entity' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-实体', 'infra.codegen.entity', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'entity', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 代码生成-实体 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.entity' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-实体', 'infra.codegen.entity', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '实体', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 代码生成-示例 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.example';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-示例', 'infra.codegen.example', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 代码生成-示例 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.example' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-示例', 'infra.codegen.example', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'example', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 代码生成-示例 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.example' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-示例', 'infra.codegen.example', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '示例', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 代码生成-前端类型 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.frontType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-前端类型', 'infra.codegen.frontType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 代码生成-前端类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.frontType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-前端类型', 'infra.codegen.frontType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'front type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 代码生成-前端类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.frontType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-前端类型', 'infra.codegen.frontType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '前端类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 代码生成-生成代码 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.generateCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-生成代码', 'infra.codegen.generateCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 代码生成-生成代码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.generateCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-生成代码', 'infra.codegen.generateCode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'generate code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 代码生成-生成代码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.generateCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-生成代码', 'infra.codegen.generateCode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '生成代码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 代码生成-代码生成成功 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.generateSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-代码生成成功', 'infra.codegen.generateSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 代码生成-代码生成成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.generateSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-代码生成成功', 'infra.codegen.generateSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'code generated successfully', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 代码生成-代码生成成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.generateSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-代码生成成功', 'infra.codegen.generateSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '代码生成成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 代码生成-正在生成代码... (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.generatingCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-正在生成代码...', 'infra.codegen.generatingCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 代码生成-正在生成代码... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.generatingCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-正在生成代码...', 'infra.codegen.generatingCode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'generating code...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 代码生成-正在生成代码... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.generatingCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-正在生成代码...', 'infra.codegen.generatingCode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '正在生成代码...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 代码生成-生成信息 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.generationInfo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-生成信息', 'infra.codegen.generationInfo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 代码生成-生成信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.generationInfo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-生成信息', 'infra.codegen.generationInfo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'generation info', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 代码生成-生成信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.generationInfo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-生成信息', 'infra.codegen.generationInfo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '生成信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 代码生成-保存失败，原因：生成信息表单校验失败请检查！！！ (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.generationInfoValidationFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-保存失败，原因：生成信息表单校验失败请检查！！！', 'infra.codegen.generationInfoValidationFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 代码生成-保存失败，原因：生成信息表单校验失败请检查！！！ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.generationInfoValidationFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-保存失败，原因：生成信息表单校验失败请检查！！！', 'infra.codegen.generationInfoValidationFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'save failed, please check the generation info form validation!!!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 代码生成-保存失败，原因：生成信息表单校验失败请检查！！！ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.generationInfoValidationFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-保存失败，原因：生成信息表单校验失败请检查！！！', 'infra.codegen.generationInfoValidationFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '保存失败，原因：生成信息表单校验失败请检查！！！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 代码生成-获取数据源配置失败 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.getDataSourceConfigFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-获取数据源配置失败', 'infra.codegen.getDataSourceConfigFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 代码生成-获取数据源配置失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.getDataSourceConfigFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-获取数据源配置失败', 'infra.codegen.getDataSourceConfigFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'failed to get data source config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 代码生成-获取数据源配置失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.getDataSourceConfigFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-获取数据源配置失败', 'infra.codegen.getDataSourceConfigFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '获取数据源配置失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 代码生成-复选框 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.htmlTypeCheckbox';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-复选框', 'infra.codegen.htmlTypeCheckbox', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 代码生成-复选框 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeCheckbox' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-复选框', 'infra.codegen.htmlTypeCheckbox', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'checkbox', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 代码生成-复选框 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeCheckbox' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-复选框', 'infra.codegen.htmlTypeCheckbox', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '复选框', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 代码生成-日期控件 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.htmlTypeDatetime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-日期控件', 'infra.codegen.htmlTypeDatetime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 代码生成-日期控件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeDatetime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-日期控件', 'infra.codegen.htmlTypeDatetime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'datetime', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 代码生成-日期控件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeDatetime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-日期控件', 'infra.codegen.htmlTypeDatetime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '日期控件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 代码生成-富文本控件 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.htmlTypeEditor';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-富文本控件', 'infra.codegen.htmlTypeEditor', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 代码生成-富文本控件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeEditor' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-富文本控件', 'infra.codegen.htmlTypeEditor', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'editor', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 代码生成-富文本控件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeEditor' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-富文本控件', 'infra.codegen.htmlTypeEditor', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '富文本控件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 代码生成-文件上传 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.htmlTypeFileUpload';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-文件上传', 'infra.codegen.htmlTypeFileUpload', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 代码生成-文件上传 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeFileUpload' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-文件上传', 'infra.codegen.htmlTypeFileUpload', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'file upload', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 代码生成-文件上传 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeFileUpload' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-文件上传', 'infra.codegen.htmlTypeFileUpload', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '文件上传', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 代码生成-图片上传 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.htmlTypeImageUpload';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-图片上传', 'infra.codegen.htmlTypeImageUpload', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 代码生成-图片上传 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeImageUpload' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-图片上传', 'infra.codegen.htmlTypeImageUpload', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'image upload', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 代码生成-图片上传 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeImageUpload' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-图片上传', 'infra.codegen.htmlTypeImageUpload', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '图片上传', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 代码生成-文本框 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.htmlTypeInput';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-文本框', 'infra.codegen.htmlTypeInput', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 代码生成-文本框 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeInput' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-文本框', 'infra.codegen.htmlTypeInput', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'input', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 代码生成-文本框 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeInput' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-文本框', 'infra.codegen.htmlTypeInput', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '文本框', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 代码生成-数字输入框 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.htmlTypeInputNumber';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-数字输入框', 'infra.codegen.htmlTypeInputNumber', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 代码生成-数字输入框 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeInputNumber' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-数字输入框', 'infra.codegen.htmlTypeInputNumber', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'input number', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 代码生成-数字输入框 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeInputNumber' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-数字输入框', 'infra.codegen.htmlTypeInputNumber', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '数字输入框', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 代码生成-单选框 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.htmlTypeRadio';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-单选框', 'infra.codegen.htmlTypeRadio', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 代码生成-单选框 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeRadio' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-单选框', 'infra.codegen.htmlTypeRadio', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'radio', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 代码生成-单选框 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeRadio' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-单选框', 'infra.codegen.htmlTypeRadio', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '单选框', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 代码生成-下拉框 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.htmlTypeSelect';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-下拉框', 'infra.codegen.htmlTypeSelect', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 代码生成-下拉框 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeSelect' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-下拉框', 'infra.codegen.htmlTypeSelect', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'select', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 代码生成-下拉框 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeSelect' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-下拉框', 'infra.codegen.htmlTypeSelect', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '下拉框', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 代码生成-文本域 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.htmlTypeTextarea';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-文本域', 'infra.codegen.htmlTypeTextarea', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 代码生成-文本域 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeTextarea' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-文本域', 'infra.codegen.htmlTypeTextarea', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'textarea', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 代码生成-文本域 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.htmlTypeTextarea' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-文本域', 'infra.codegen.htmlTypeTextarea', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '文本域', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 代码生成-国际化模块 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.i18nModuleType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-国际化模块', 'infra.codegen.i18nModuleType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 代码生成-国际化模块 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.i18nModuleType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-国际化模块', 'infra.codegen.i18nModuleType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'i18n module', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 代码生成-国际化模块 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.i18nModuleType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-国际化模块', 'infra.codegen.i18nModuleType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '国际化模块', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 代码生成-选择国际化信息的所属模块，用于生成对应的国际化key (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.i18nModuleTypeHelp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-选择国际化信息的所属模块，用于生成对应的国际化key', 'infra.codegen.i18nModuleTypeHelp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 代码生成-选择国际化信息的所属模块，用于生成对应的国际化key - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.i18nModuleTypeHelp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-选择国际化信息的所属模块，用于生成对应的国际化key', 'infra.codegen.i18nModuleTypeHelp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'select the module for i18n messages, used to generate corresponding i18n keys', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 代码生成-选择国际化信息的所属模块，用于生成对应的国际化key - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.i18nModuleTypeHelp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-选择国际化信息的所属模块，用于生成对应的国际化key', 'infra.codegen.i18nModuleTypeHelp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '选择国际化信息的所属模块，用于生成对应的国际化 key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 代码生成-导入表 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.importTable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-导入表', 'infra.codegen.importTable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 代码生成-导入表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.importTable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-导入表', 'infra.codegen.importTable', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'import table', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 代码生成-导入表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.importTable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-导入表', 'infra.codegen.importTable', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '导入表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 代码生成-正在导入... (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.importing';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-正在导入...', 'infra.codegen.importing', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 代码生成-正在导入... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.importing' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-正在导入...', 'infra.codegen.importing', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'importing...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 代码生成-正在导入... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.importing' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-正在导入...', 'infra.codegen.importing', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '正在导入...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 代码生成-插入 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.insert';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-插入', 'infra.codegen.insert', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 代码生成-插入 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.insert' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-插入', 'infra.codegen.insert', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'insert', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 代码生成-插入 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.insert' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-插入', 'infra.codegen.insert', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '插入', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 代码生成-国际化 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.isI18n';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-国际化', 'infra.codegen.isI18n', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 代码生成-国际化 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.isI18n' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-国际化', 'infra.codegen.isI18n', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'internationalization', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 代码生成-国际化 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.isI18n' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-国际化', 'infra.codegen.isI18n', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '国际化', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 代码生成-开启后，将在代码中生成国际化相关的配置 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.isI18nHelp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-开启后，将在代码中生成国际化相关的配置', 'infra.codegen.isI18nHelp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 代码生成-开启后，将在代码中生成国际化相关的配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.isI18nHelp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-开启后，将在代码中生成国际化相关的配置', 'infra.codegen.isI18nHelp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'when enabled, internationalization configuration will be generated in the code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 代码生成-开启后，将在代码中生成国际化相关的配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.isI18nHelp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-开启后，将在代码中生成国际化相关的配置', 'infra.codegen.isI18nHelp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '开启后，将在代码中生成国际化相关的配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 代码生成-导入 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.isImport';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-导入', 'infra.codegen.isImport', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 代码生成-导入 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.isImport' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-导入', 'infra.codegen.isImport', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'import', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 代码生成-导入 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.isImport' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-导入', 'infra.codegen.isImport', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '导入', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 代码生成-开启后，将在代码中生成Excel导入功能 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.isImportHelp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-开启后，将在代码中生成Excel导入功能', 'infra.codegen.isImportHelp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 代码生成-开启后，将在代码中生成Excel导入功能 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.isImportHelp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-开启后，将在代码中生成Excel导入功能', 'infra.codegen.isImportHelp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'when enabled, excel import functionality will be generated in the code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 代码生成-开启后，将在代码中生成Excel导入功能 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.isImportHelp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-开启后，将在代码中生成Excel导入功能', 'infra.codegen.isImportHelp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '开启后，将在代码中生成 Excel 导入功能', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 代码生成-Java属性 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.javaField';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-Java属性', 'infra.codegen.javaField', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 代码生成-Java属性 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.javaField' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-Java属性', 'infra.codegen.javaField', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'java field', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 代码生成-Java属性 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.javaField' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-Java属性', 'infra.codegen.javaField', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Java 属性', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 代码生成-Java类型 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.javaType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-Java类型', 'infra.codegen.javaType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 代码生成-Java类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.javaType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-Java类型', 'infra.codegen.javaType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'java type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 代码生成-Java类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.javaType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-Java类型', 'infra.codegen.javaType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Java 类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 代码生成-关联关系 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.joinRelation';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-关联关系', 'infra.codegen.joinRelation', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 代码生成-关联关系 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.joinRelation' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-关联关系', 'infra.codegen.joinRelation', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'join relation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 代码生成-关联关系 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.joinRelation' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-关联关系', 'infra.codegen.joinRelation', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '关联关系', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 代码生成-主表与子表的关联关系 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.joinRelationHelp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-主表与子表的关联关系', 'infra.codegen.joinRelationHelp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 代码生成-主表与子表的关联关系 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.joinRelationHelp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-主表与子表的关联关系', 'infra.codegen.joinRelationHelp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'join relationship between master and sub tables', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 代码生成-主表与子表的关联关系 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.joinRelationHelp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-主表与子表的关联关系', 'infra.codegen.joinRelationHelp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '主表与子表的关联关系', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 代码生成-列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-列表', 'infra.codegen.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 代码生成-列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-列表', 'infra.codegen.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 代码生成-列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-列表', 'infra.codegen.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 125. 代码生成-代码生成列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.listTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-代码生成列表', 'infra.codegen.listTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 125. 代码生成-代码生成列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.listTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-代码生成列表', 'infra.codegen.listTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'code generation list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 125. 代码生成-代码生成列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.listTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-代码生成列表', 'infra.codegen.listTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '代码生成列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 126. 代码生成-关联的主表 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.masterTable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-关联的主表', 'infra.codegen.masterTable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 126. 代码生成-关联的主表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.masterTable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-关联的主表', 'infra.codegen.masterTable', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'master table', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 126. 代码生成-关联的主表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.masterTable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-关联的主表', 'infra.codegen.masterTable', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '关联的主表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 127. 代码生成-关联主表（父表）的表名，如：system_user (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.masterTableHelp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-关联主表（父表）的表名，如：system_user', 'infra.codegen.masterTableHelp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 127. 代码生成-关联主表（父表）的表名，如：system_user - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.masterTableHelp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-关联主表（父表）的表名，如：system_user', 'infra.codegen.masterTableHelp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'master table (parent table) name, e.g. system_user', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 127. 代码生成-关联主表（父表）的表名，如：system_user - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.masterTableHelp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-关联主表（父表）的表名，如：system_user', 'infra.codegen.masterTableHelp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '关联主表（父表）的表名，如：system_user', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 128. 代码生成 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成', 'infra.codegen.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 128. 代码生成 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成', 'infra.codegen.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'code generation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 128. 代码生成 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成', 'infra.codegen.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '代码生成', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 129. 代码生成-弹窗 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.modal';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-弹窗', 'infra.codegen.modal', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 129. 代码生成-弹窗 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.modal' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-弹窗', 'infra.codegen.modal', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'modal', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 129. 代码生成-弹窗 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.modal' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-弹窗', 'infra.codegen.modal', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '弹窗', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 130. 代码生成-模块名 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.moduleName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-模块名', 'infra.codegen.moduleName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 130. 代码生成-模块名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.moduleName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-模块名', 'infra.codegen.moduleName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'module name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 130. 代码生成-模块名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.moduleName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-模块名', 'infra.codegen.moduleName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '模块名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 131. 代码生成-模块名，即一级目录，例如system、infra、tool等等 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.moduleNameHelp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-模块名，即一级目录，例如system、infra、tool等等', 'infra.codegen.moduleNameHelp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 131. 代码生成-模块名，即一级目录，例如system、infra、tool等等 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.moduleNameHelp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-模块名，即一级目录，例如system、infra、tool等等', 'infra.codegen.moduleNameHelp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'module name, i.e. first level directory, e.g. system, infra, tool', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 131. 代码生成-模块名，即一级目录，例如system、infra、tool等等 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.moduleNameHelp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-模块名，即一级目录，例如system、infra、tool等等', 'infra.codegen.moduleNameHelp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '模块名，即一级目录，例如 system、infra、tool 等等', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 132. 代码生成-下一步 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.nextStep';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-下一步', 'infra.codegen.nextStep', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 132. 代码生成-下一步 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.nextStep' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-下一步', 'infra.codegen.nextStep', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'next', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 132. 代码生成-下一步 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.nextStep' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-下一步', 'infra.codegen.nextStep', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '下一步', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 133. 代码生成-允许空 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.nullable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-允许空', 'infra.codegen.nullable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 133. 代码生成-允许空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.nullable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-允许空', 'infra.codegen.nullable', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'nullable', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 133. 代码生成-允许空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.nullable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-允许空', 'infra.codegen.nullable', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '允许空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 134. 代码生成-一对多 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.oneToMany';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-一对多', 'infra.codegen.oneToMany', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 134. 代码生成-一对多 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.oneToMany' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-一对多', 'infra.codegen.oneToMany', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'one to many', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 134. 代码生成-一对多 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.oneToMany' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-一对多', 'infra.codegen.oneToMany', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '一对多', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 135. 代码生成-一对一 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.oneToOne';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-一对一', 'infra.codegen.oneToOne', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 135. 代码生成-一对一 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.oneToOne' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-一对一', 'infra.codegen.oneToOne', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'one to one', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 135. 代码生成-一对一 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.oneToOne' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-一对一', 'infra.codegen.oneToOne', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '一对一', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 136. 代码生成-操作 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.operation';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-操作', 'infra.codegen.operation', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 136. 代码生成-操作 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.operation' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-操作', 'infra.codegen.operation', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'operation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 136. 代码生成-操作 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.operation' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-操作', 'infra.codegen.operation', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '操作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. 代码生成-上级菜单 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.parentMenu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-上级菜单', 'infra.codegen.parentMenu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. 代码生成-上级菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.parentMenu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-上级菜单', 'infra.codegen.parentMenu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'parent menu', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. 代码生成-上级菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.parentMenu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-上级菜单', 'infra.codegen.parentMenu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '上级菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 138. 代码生成-分配到指定菜单下，例如系统管理 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.parentMenuHelp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-分配到指定菜单下，例如系统管理', 'infra.codegen.parentMenuHelp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 138. 代码生成-分配到指定菜单下，例如系统管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.parentMenuHelp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-分配到指定菜单下，例如系统管理', 'infra.codegen.parentMenuHelp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'assign to a specified menu, e.g. system management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 138. 代码生成-分配到指定菜单下，例如系统管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.parentMenuHelp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-分配到指定菜单下，例如系统管理', 'infra.codegen.parentMenuHelp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '分配到指定菜单下，例如 系统管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 139. 代码生成-弹窗类型 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.popupType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-弹窗类型', 'infra.codegen.popupType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 139. 代码生成-弹窗类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.popupType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-弹窗类型', 'infra.codegen.popupType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'popup type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 139. 代码生成-弹窗类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.popupType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-弹窗类型', 'infra.codegen.popupType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '弹窗类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 140. 代码生成-选择详情页弹窗的展示方式 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.popupTypeHelp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-选择详情页弹窗的展示方式', 'infra.codegen.popupTypeHelp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 140. 代码生成-选择详情页弹窗的展示方式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.popupTypeHelp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-选择详情页弹窗的展示方式', 'infra.codegen.popupTypeHelp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'select the display mode for the detail page popup', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 140. 代码生成-选择详情页弹窗的展示方式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.popupTypeHelp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-选择详情页弹窗的展示方式', 'infra.codegen.popupTypeHelp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '选择详情页弹窗的展示方式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 141. 代码生成-上一步 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.prevStep';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-上一步', 'infra.codegen.prevStep', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 141. 代码生成-上一步 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.prevStep' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-上一步', 'infra.codegen.prevStep', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'previous', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 141. 代码生成-上一步 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.prevStep' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-上一步', 'infra.codegen.prevStep', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '上一步', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 142. 代码生成-预览 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.preview';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-预览', 'infra.codegen.preview', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 142. 代码生成-预览 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.preview' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-预览', 'infra.codegen.preview', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'preview', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 142. 代码生成-预览 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.preview' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-预览', 'infra.codegen.preview', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '预览', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 143. 代码生成-查询 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-查询', 'infra.codegen.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 143. 代码生成-查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-查询', 'infra.codegen.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 143. 代码生成-查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-查询', 'infra.codegen.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 144. 代码生成-查询方式 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.queryType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-查询方式', 'infra.codegen.queryType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 144. 代码生成-查询方式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.queryType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-查询方式', 'infra.codegen.queryType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'query type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 144. 代码生成-查询方式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.queryType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-查询方式', 'infra.codegen.queryType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '查询方式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 145. 代码生成-备注 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-备注', 'infra.codegen.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 145. 代码生成-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-备注', 'infra.codegen.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 145. 代码生成-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-备注', 'infra.codegen.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 146. 代码生成-保存 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.save';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-保存', 'infra.codegen.save', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 146. 代码生成-保存 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.save' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-保存', 'infra.codegen.save', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'save', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 146. 代码生成-保存 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.save' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-保存', 'infra.codegen.save', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '保存', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 147. 代码生成-保存失败 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.saveFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-保存失败', 'infra.codegen.saveFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 147. 代码生成-保存失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.saveFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-保存失败', 'infra.codegen.saveFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'save failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 147. 代码生成-保存失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.saveFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-保存失败', 'infra.codegen.saveFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '保存失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 148. 代码生成-生成场景 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.scene';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-生成场景', 'infra.codegen.scene', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 148. 代码生成-生成场景 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.scene' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-生成场景', 'infra.codegen.scene', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'scene', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 148. 代码生成-生成场景 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.scene' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-生成场景', 'infra.codegen.scene', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '生成场景', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 149. 代码生成-请选择数据源 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.selectDataSource';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-请选择数据源', 'infra.codegen.selectDataSource', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 149. 代码生成-请选择数据源 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.selectDataSource' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-请选择数据源', 'infra.codegen.selectDataSource', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'please select data source', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 149. 代码生成-请选择数据源 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.selectDataSource' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-请选择数据源', 'infra.codegen.selectDataSource', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '请选择数据源', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 150. 代码生成-请选择需要导入的表 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.selectTables';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-请选择需要导入的表', 'infra.codegen.selectTables', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 150. 代码生成-请选择需要导入的表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.selectTables' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-请选择需要导入的表', 'infra.codegen.selectTables', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'please select tables to import', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 150. 代码生成-请选择需要导入的表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.selectTables' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-请选择需要导入的表', 'infra.codegen.selectTables', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '请选择需要导入的表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 151. 代码生成-请选择需要生成代码的表 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.selectTablesTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-请选择需要生成代码的表', 'infra.codegen.selectTablesTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 151. 代码生成-请选择需要生成代码的表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.selectTablesTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-请选择需要生成代码的表', 'infra.codegen.selectTablesTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'please select tables to generate code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 151. 代码生成-请选择需要生成代码的表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.selectTablesTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-请选择需要生成代码的表', 'infra.codegen.selectTablesTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '请选择需要生成代码的表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 152. 代码生成-排序 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.sort';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-排序', 'infra.codegen.sort', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 152. 代码生成-排序 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.sort' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-排序', 'infra.codegen.sort', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'sort', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 152. 代码生成-排序 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.sort' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-排序', 'infra.codegen.sort', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '排序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 153. 代码生成-设置字段在列表中的排序规则，且字段必须可以查询才有效，勾选后该字段将参与排序 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.sortHelp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-设置字段在列表中的排序规则，且字段必须可以查询才有效，勾选后该字段将参与排序', 'infra.codegen.sortHelp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 153. 代码生成-设置字段在列表中的排序规则，且字段必须可以查询才有效，勾选后该字段将参与排序 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.sortHelp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-设置字段在列表中的排序规则，且字段必须可以查询才有效，勾选后该字段将参与排序', 'infra.codegen.sortHelp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'set sorting rules for fields in the list. fields must be queryable to be effective', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 153. 代码生成-设置字段在列表中的排序规则，且字段必须可以查询才有效，勾选后该字段将参与排序 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.sortHelp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-设置字段在列表中的排序规则，且字段必须可以查询才有效，勾选后该字段将参与排序', 'infra.codegen.sortHelp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '设置字段在列表中的排序规则，且字段必须可以查询才有效，勾选后该字段将参与排序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 154. 代码生成-子表关联的字段 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.subJoinColumn';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-子表关联的字段', 'infra.codegen.subJoinColumn', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 154. 代码生成-子表关联的字段 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.subJoinColumn' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-子表关联的字段', 'infra.codegen.subJoinColumn', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'sub table join column', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 154. 代码生成-子表关联的字段 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.subJoinColumn' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-子表关联的字段', 'infra.codegen.subJoinColumn', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '子表关联的字段', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 155. 代码生成-子表关联的字段，如：user_id (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.subJoinColumnHelp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-子表关联的字段，如：user_id', 'infra.codegen.subJoinColumnHelp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 155. 代码生成-子表关联的字段，如：user_id - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.subJoinColumnHelp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-子表关联的字段，如：user_id', 'infra.codegen.subJoinColumnHelp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'sub table join column, e.g. user_id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 155. 代码生成-子表关联的字段，如：user_id - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.subJoinColumnHelp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-子表关联的字段，如：user_id', 'infra.codegen.subJoinColumnHelp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '子表关联的字段，如：user_id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 156. 代码生成-主子表信息 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.subTableInfo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-主子表信息', 'infra.codegen.subTableInfo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 156. 代码生成-主子表信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.subTableInfo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-主子表信息', 'infra.codegen.subTableInfo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'master-sub table info', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 156. 代码生成-主子表信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.subTableInfo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-主子表信息', 'infra.codegen.subTableInfo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '主子表信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 157. 代码生成-同步 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.sync';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-同步', 'infra.codegen.sync', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 157. 代码生成-同步 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.sync' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-同步', 'infra.codegen.sync', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'sync', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 157. 代码生成-同步 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.sync' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-同步', 'infra.codegen.sync', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '同步', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 158. 代码生成-表描述 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.tableComment';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-表描述', 'infra.codegen.tableComment', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 158. 代码生成-表描述 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.tableComment' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-表描述', 'infra.codegen.tableComment', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'table comment', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 158. 代码生成-表描述 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.tableComment' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-表描述', 'infra.codegen.tableComment', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '表描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 159. 代码生成-表名称 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.tableName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-表名称', 'infra.codegen.tableName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 159. 代码生成-表名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.tableName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-表名称', 'infra.codegen.tableName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'table name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 159. 代码生成-表名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.tableName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-表名称', 'infra.codegen.tableName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '表名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 160. 代码生成-生成模板 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.templateType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-生成模板', 'infra.codegen.templateType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 160. 代码生成-生成模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.templateType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-生成模板', 'infra.codegen.templateType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'template type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 160. 代码生成-生成模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.templateType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-生成模板', 'infra.codegen.templateType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '生成模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 161. 代码生成-顶级菜单 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.topMenu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-顶级菜单', 'infra.codegen.topMenu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 161. 代码生成-顶级菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.topMenu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-顶级菜单', 'infra.codegen.topMenu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'top level', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 161. 代码生成-顶级菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.topMenu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-顶级菜单', 'infra.codegen.topMenu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '顶级菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 162. 代码生成-树表信息 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.treeInfo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-树表信息', 'infra.codegen.treeInfo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 162. 代码生成-树表信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.treeInfo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-树表信息', 'infra.codegen.treeInfo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'tree info', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 162. 代码生成-树表信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.treeInfo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-树表信息', 'infra.codegen.treeInfo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '树表信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 163. 代码生成-名称字段 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.treeNameColumn';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-名称字段', 'infra.codegen.treeNameColumn', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 163. 代码生成-名称字段 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.treeNameColumn' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-名称字段', 'infra.codegen.treeNameColumn', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'name column', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 163. 代码生成-名称字段 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.treeNameColumn' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-名称字段', 'infra.codegen.treeNameColumn', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '名称字段', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 164. 代码生成-树节点显示的名称字段，一般是name (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.treeNameColumnHelp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-树节点显示的名称字段，一般是name', 'infra.codegen.treeNameColumnHelp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 164. 代码生成-树节点显示的名称字段，一般是name - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.treeNameColumnHelp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-树节点显示的名称字段，一般是name', 'infra.codegen.treeNameColumnHelp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'name field for tree node display, usually name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 164. 代码生成-树节点显示的名称字段，一般是name - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.treeNameColumnHelp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-树节点显示的名称字段，一般是name', 'infra.codegen.treeNameColumnHelp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '树节点显示的名称字段，一般是 name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 165. 代码生成-父编号字段 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.treeParentColumn';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-父编号字段', 'infra.codegen.treeParentColumn', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 165. 代码生成-父编号字段 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.treeParentColumn' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-父编号字段', 'infra.codegen.treeParentColumn', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'parent column', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 165. 代码生成-父编号字段 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.treeParentColumn' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-父编号字段', 'infra.codegen.treeParentColumn', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '父编号字段', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 166. 代码生成-树显示的父编码字段名，例如parent_Id (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.treeParentColumnHelp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-树显示的父编码字段名，例如parent_Id', 'infra.codegen.treeParentColumnHelp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 166. 代码生成-树显示的父编码字段名，例如parent_Id - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.treeParentColumnHelp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-树显示的父编码字段名，例如parent_Id', 'infra.codegen.treeParentColumnHelp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'parent code field name for tree display, e.g. parent_id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 166. 代码生成-树显示的父编码字段名，例如parent_Id - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.treeParentColumnHelp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-树显示的父编码字段名，例如parent_Id', 'infra.codegen.treeParentColumnHelp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '树显示的父编码字段名，例如 parent_Id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 167. 代码生成-更新时间 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.codegen.updateTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-更新时间', 'infra.codegen.updateTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 167. 代码生成-更新时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.updateTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-更新时间', 'infra.codegen.updateTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'update time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 167. 代码生成-更新时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.codegen.updateTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('代码生成-更新时间', 'infra.codegen.updateTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '更新时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 168. 参数配置 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置', 'infra.config', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 168. 参数配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置', 'infra.config', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 168. 参数配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置', 'infra.config', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '参数配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 169. 参数配置-新增参数 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-新增参数', 'infra.config.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 169. 参数配置-新增参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-新增参数', 'infra.config.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 169. 参数配置-新增参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-新增参数', 'infra.config.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 170. 参数配置-删除参数 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-删除参数', 'infra.config.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 170. 参数配置-删除参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-删除参数', 'infra.config.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 170. 参数配置-删除参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-删除参数', 'infra.config.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 171. 参数配置-导出参数 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-导出参数', 'infra.config.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 171. 参数配置-导出参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-导出参数', 'infra.config.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 171. 参数配置-导出参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-导出参数', 'infra.config.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 172. 参数配置-参数查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数查询', 'infra.config.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 172. 参数配置-参数查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数查询', 'infra.config.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'config query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 172. 参数配置-参数查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数查询', 'infra.config.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '参数查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 173. 参数配置-修改参数 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-修改参数', 'infra.config.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 173. 参数配置-修改参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-修改参数', 'infra.config.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 173. 参数配置-修改参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-修改参数', 'infra.config.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 174. 参数配置 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.config';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置', 'infra.config.config', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 174. 参数配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.config' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置', 'infra.config.config', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 174. 参数配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.config' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置', 'infra.config.config', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '参数配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 175. 参数配置-参数分类 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.field.category';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数分类', 'infra.config.field.category', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 175. 参数配置-参数分类 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.category' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数分类', 'infra.config.field.category', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 175. 参数配置-参数分类 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.category' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数分类', 'infra.config.field.category', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '参数分类', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 176. 参数配置-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-创建时间', 'infra.config.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 176. 参数配置-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-创建时间', 'infra.config.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 176. 参数配置-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-创建时间', 'infra.config.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 177. 参数配置-参数主键 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数主键', 'infra.config.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 177. 参数配置-参数主键 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数主键', 'infra.config.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 177. 参数配置-参数主键 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数主键', 'infra.config.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '参数主键', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 178. 参数配置-参数键名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.field.key';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数键名', 'infra.config.field.key', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 178. 参数配置-参数键名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.key' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数键名', 'infra.config.field.key', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'config key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 178. 参数配置-参数键名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.key' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数键名', 'infra.config.field.key', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '参数键名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 179. 参数配置-参数名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数名称', 'infra.config.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 179. 参数配置-参数名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数名称', 'infra.config.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'config name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 179. 参数配置-参数名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数名称', 'infra.config.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '参数名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 180. 参数配置-备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-备注', 'infra.config.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 180. 参数配置-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-备注', 'infra.config.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 180. 参数配置-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-备注', 'infra.config.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 181. 参数配置-系统内置 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-系统内置', 'infra.config.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 181. 参数配置-系统内置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-系统内置', 'infra.config.field.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 181. 参数配置-系统内置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-系统内置', 'infra.config.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '系统内置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 182. 参数配置-参数键值 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.field.value';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数键值', 'infra.config.field.value', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 182. 参数配置-参数键值 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.value' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数键值', 'infra.config.field.value', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'config value', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 182. 参数配置-参数键值 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.value' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数键值', 'infra.config.field.value', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '参数键值', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 183. 参数配置-是否可见 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.field.visible';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-是否可见', 'infra.config.field.visible', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 183. 参数配置-是否可见 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.visible' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-是否可见', 'infra.config.field.visible', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'visible', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 183. 参数配置-是否可见 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.field.visible' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-是否可见', 'infra.config.field.visible', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否可见', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 184. 参数配置-参数列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数列表', 'infra.config.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 184. 参数配置-参数列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数列表', 'infra.config.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'config list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 184. 参数配置-参数列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置-参数列表', 'infra.config.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '参数列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 185. 参数配置 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.config.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置', 'infra.config.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 185. 参数配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置', 'infra.config.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 185. 参数配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.config.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('参数配置', 'infra.config.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '参数配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 186. 数据源 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源', 'infra.dataSourceConfig', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 186. 数据源 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源', 'infra.dataSourceConfig', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 186. 数据源 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源', 'infra.dataSourceConfig', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '数据源', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 187. 数据源-新增数据源 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-新增数据源', 'infra.dataSourceConfig.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 187. 数据源-新增数据源 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-新增数据源', 'infra.dataSourceConfig.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create data source', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 187. 数据源-新增数据源 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-新增数据源', 'infra.dataSourceConfig.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增数据源', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 188. 数据源-删除数据源 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-删除数据源', 'infra.dataSourceConfig.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 188. 数据源-删除数据源 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-删除数据源', 'infra.dataSourceConfig.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete data source', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 188. 数据源-删除数据源 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-删除数据源', 'infra.dataSourceConfig.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除数据源', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 189. 数据源-数据源查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-数据源查询', 'infra.dataSourceConfig.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 189. 数据源-数据源查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-数据源查询', 'infra.dataSourceConfig.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'data source query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 189. 数据源-数据源查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-数据源查询', 'infra.dataSourceConfig.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '数据源查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 190. 数据源-修改数据源 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-修改数据源', 'infra.dataSourceConfig.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 190. 数据源-修改数据源 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-修改数据源', 'infra.dataSourceConfig.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update data source', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 190. 数据源-修改数据源 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-修改数据源', 'infra.dataSourceConfig.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改数据源', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 191. 数据源 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig.dataSourceConfig';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源', 'infra.dataSourceConfig.dataSourceConfig', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 191. 数据源 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.dataSourceConfig' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源', 'infra.dataSourceConfig.dataSourceConfig', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'data source', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 191. 数据源 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.dataSourceConfig' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源', 'infra.dataSourceConfig.dataSourceConfig', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '数据源', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 192. 数据源-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-创建时间', 'infra.dataSourceConfig.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 192. 数据源-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-创建时间', 'infra.dataSourceConfig.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 192. 数据源-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-创建时间', 'infra.dataSourceConfig.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 193. 数据源-主键编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-主键编号', 'infra.dataSourceConfig.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 193. 数据源-主键编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-主键编号', 'infra.dataSourceConfig.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 193. 数据源-主键编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-主键编号', 'infra.dataSourceConfig.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '主键编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 194. 数据源-数据源名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-数据源名称', 'infra.dataSourceConfig.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 194. 数据源-数据源名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-数据源名称', 'infra.dataSourceConfig.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'data source name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 194. 数据源-数据源名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-数据源名称', 'infra.dataSourceConfig.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '数据源名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 195. 数据源-密码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig.field.password';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-密码', 'infra.dataSourceConfig.field.password', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 195. 数据源-密码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.field.password' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-密码', 'infra.dataSourceConfig.field.password', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 195. 数据源-密码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.field.password' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-密码', 'infra.dataSourceConfig.field.password', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 196. 数据源-数据源连接 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig.field.url';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-数据源连接', 'infra.dataSourceConfig.field.url', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 196. 数据源-数据源连接 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.field.url' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-数据源连接', 'infra.dataSourceConfig.field.url', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'data source url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 196. 数据源-数据源连接 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.field.url' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-数据源连接', 'infra.dataSourceConfig.field.url', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '数据源连接', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 197. 数据源-用户名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig.field.username';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-用户名', 'infra.dataSourceConfig.field.username', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 197. 数据源-用户名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.field.username' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-用户名', 'infra.dataSourceConfig.field.username', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'username', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 197. 数据源-用户名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.field.username' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-用户名', 'infra.dataSourceConfig.field.username', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 198. 数据源-数据源列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-数据源列表', 'infra.dataSourceConfig.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 198. 数据源-数据源列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-数据源列表', 'infra.dataSourceConfig.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'data source list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 198. 数据源-数据源列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-数据源列表', 'infra.dataSourceConfig.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '数据源列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 199. 数据源-数据源管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.dataSourceConfig.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-数据源管理', 'infra.dataSourceConfig.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 199. 数据源-数据源管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-数据源管理', 'infra.dataSourceConfig.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'data source', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 199. 数据源-数据源管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.dataSourceConfig.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据源-数据源管理', 'infra.dataSourceConfig.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '数据源管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 200. 文件 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件', 'infra.file', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 200. 文件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件', 'infra.file', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 200. 文件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件', 'infra.file', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '文件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 201. 文件-上传图片 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-上传图片', 'infra.file.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 201. 文件-上传图片 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-上传图片', 'infra.file.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'upload image', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 201. 文件-上传图片 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-上传图片', 'infra.file.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '上传图片', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 202. 文件-删除文件 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-删除文件', 'infra.file.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 202. 文件-删除文件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-删除文件', 'infra.file.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete file', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 202. 文件-删除文件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-删除文件', 'infra.file.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除文件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 203. 文件-文件查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件查询', 'infra.file.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 203. 文件-文件查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件查询', 'infra.file.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'file query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 203. 文件-文件查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件查询', 'infra.file.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '文件查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 204. 文件-复制链接 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.copyUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-复制链接', 'infra.file.copyUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 204. 文件-复制链接 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.copyUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-复制链接', 'infra.file.copyUrl', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'copy link', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 204. 文件-复制链接 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.copyUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-复制链接', 'infra.file.copyUrl', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '复制链接', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 205. 文件-绝对路径 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.field.absolutePath';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-绝对路径', 'infra.file.field.absolutePath', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 205. 文件-绝对路径 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.absolutePath' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-绝对路径', 'infra.file.field.absolutePath', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'absolute path', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 205. 文件-绝对路径 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.absolutePath' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-绝对路径', 'infra.file.field.absolutePath', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '绝对路径', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 206. 文件-配置 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.field.configKey';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-配置', 'infra.file.field.configKey', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 206. 文件-配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.configKey' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-配置', 'infra.file.field.configKey', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 206. 文件-配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.configKey' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-配置', 'infra.file.field.configKey', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 207. 文件-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-创建时间', 'infra.file.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 207. 文件-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-创建时间', 'infra.file.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 207. 文件-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-创建时间', 'infra.file.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 208. 文件-文件上传 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.field.file';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件上传', 'infra.file.field.file', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 208. 文件-文件上传 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.file' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件上传', 'infra.file.field.file', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file upload', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 208. 文件-文件上传 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.file' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件上传', 'infra.file.field.file', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文件上传', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 209. 文件-文件编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件编号', 'infra.file.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 209. 文件-文件编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件编号', 'infra.file.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 209. 文件-文件编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件编号', 'infra.file.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文件编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 210. 文件-模块 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.field.moduleType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-模块', 'infra.file.field.moduleType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 210. 文件-模块 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.moduleType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-模块', 'infra.file.field.moduleType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'module', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 210. 文件-模块 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.moduleType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-模块', 'infra.file.field.moduleType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模块', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 211. 文件-文件名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件名', 'infra.file.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 211. 文件-文件名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件名', 'infra.file.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 211. 文件-文件名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件名', 'infra.file.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文件名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 212. 文件-文件路径 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.field.path';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件路径', 'infra.file.field.path', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 212. 文件-文件路径 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.path' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件路径', 'infra.file.field.path', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file path', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 212. 文件-文件路径 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.path' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件路径', 'infra.file.field.path', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文件路径', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 213. 文件-相对路径 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.field.relativePath';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-相对路径', 'infra.file.field.relativePath', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 213. 文件-相对路径 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.relativePath' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-相对路径', 'infra.file.field.relativePath', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'relative path', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 213. 文件-相对路径 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.relativePath' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-相对路径', 'infra.file.field.relativePath', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '相对路径', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 214. 文件-文件大小 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.field.size';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件大小', 'infra.file.field.size', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 214. 文件-文件大小 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.size' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件大小', 'infra.file.field.size', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file size', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 214. 文件-文件大小 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.size' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件大小', 'infra.file.field.size', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文件大小', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 215. 文件-文件类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件类型', 'infra.file.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 215. 文件-文件类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件类型', 'infra.file.field.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 215. 文件-文件类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件类型', 'infra.file.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文件类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 216. 文件-上传时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.field.uploadTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-上传时间', 'infra.file.field.uploadTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 216. 文件-上传时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.uploadTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-上传时间', 'infra.file.field.uploadTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'upload time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 216. 文件-上传时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.field.uploadTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-上传时间', 'infra.file.field.uploadTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '上传时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 217. 文件 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.file';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件', 'infra.file.file', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 217. 文件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.file' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件', 'infra.file.file', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'file', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 217. 文件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.file' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件', 'infra.file.file', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '文件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 218. 文件-文件列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件列表', 'infra.file.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 218. 文件-文件列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件列表', 'infra.file.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 218. 文件-文件列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件列表', 'infra.file.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文件列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 219. 文件-文件管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件管理', 'infra.file.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 219. 文件-文件管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件管理', 'infra.file.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'file', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 219. 文件-文件管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件管理', 'infra.file.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '文件管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 220. 文件-复制失败 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.message.copyFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-复制失败', 'infra.file.message.copyFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 220. 文件-复制失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.message.copyFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-复制失败', 'infra.file.message.copyFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'copy failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 220. 文件-复制失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.message.copyFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-复制失败', 'infra.file.message.copyFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '复制失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 221. 文件-文件URL为空 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.message.urlEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件URL为空', 'infra.file.message.urlEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 221. 文件-文件URL为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.message.urlEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件URL为空', 'infra.file.message.urlEmpty', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file url is empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 221. 文件-文件URL为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.message.urlEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-文件URL为空', 'infra.file.message.urlEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文件 URL 为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 222. 文件-0B (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.sizeZero';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-0B', 'infra.file.sizeZero', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 222. 文件-0B - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.sizeZero' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-0B', 'infra.file.sizeZero', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '0 b', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 222. 文件-0B - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.sizeZero' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-0B', 'infra.file.sizeZero', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '0 B', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 223. 文件-点击或拖拽文件到此区域上传 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.upload.dragText';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-点击或拖拽文件到此区域上传', 'infra.file.upload.dragText', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 223. 文件-点击或拖拽文件到此区域上传 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.upload.dragText' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-点击或拖拽文件到此区域上传', 'infra.file.upload.dragText', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'click or drag files to this area to upload', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 223. 文件-点击或拖拽文件到此区域上传 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.upload.dragText' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-点击或拖拽文件到此区域上传', 'infra.file.upload.dragText', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '点击或拖拽文件到此区域上传', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 224. 文件-支持.jpg、.png、.gif、.webp格式图片文件 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.upload.hint';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-支持.jpg、.png、.gif、.webp格式图片文件', 'infra.file.upload.hint', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 224. 文件-支持.jpg、.png、.gif、.webp格式图片文件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.upload.hint' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-支持.jpg、.png、.gif、.webp格式图片文件', 'infra.file.upload.hint', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'supports .jpg, .png, .gif, .webp image files', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 224. 文件-支持.jpg、.png、.gif、.webp格式图片文件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.upload.hint' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-支持.jpg、.png、.gif、.webp格式图片文件', 'infra.file.upload.hint', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '支持 .jpg、.png、.gif、.webp 格式图片文件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 225. 文件-上传图片 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.upload.modalTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-上传图片', 'infra.file.upload.modalTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 225. 文件-上传图片 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.upload.modalTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-上传图片', 'infra.file.upload.modalTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'upload image', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 225. 文件-上传图片 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.upload.modalTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-上传图片', 'infra.file.upload.modalTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '上传图片', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 226. 文件-请选择要上传的文件 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.file.upload.placeholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-请选择要上传的文件', 'infra.file.upload.placeholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 226. 文件-请选择要上传的文件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.upload.placeholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-请选择要上传的文件', 'infra.file.upload.placeholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'select a file to upload', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 226. 文件-请选择要上传的文件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.file.upload.placeholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件-请选择要上传的文件', 'infra.file.upload.placeholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '请选择要上传的文件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 227. 文件配置 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置', 'infra.fileConfig', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 227. 文件配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置', 'infra.fileConfig', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 227. 文件配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置', 'infra.fileConfig', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '文件配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 228. 文件配置-新增文件配置 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-新增文件配置', 'infra.fileConfig.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 228. 文件配置-新增文件配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-新增文件配置', 'infra.fileConfig.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create file config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 228. 文件配置-新增文件配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-新增文件配置', 'infra.fileConfig.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增文件配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 229. 文件配置-删除文件配置 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-删除文件配置', 'infra.fileConfig.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 229. 文件配置-删除文件配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-删除文件配置', 'infra.fileConfig.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete file config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 229. 文件配置-删除文件配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-删除文件配置', 'infra.fileConfig.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除文件配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 230. 文件配置-文件配置查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-文件配置查询', 'infra.fileConfig.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 230. 文件配置-文件配置查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-文件配置查询', 'infra.fileConfig.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'file config query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 230. 文件配置-文件配置查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-文件配置查询', 'infra.fileConfig.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '文件配置查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 231. 文件配置-测试 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.action.test';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-测试', 'infra.fileConfig.action.test', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 231. 文件配置-测试 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.action.test' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-测试', 'infra.fileConfig.action.test', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'test', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 231. 文件配置-测试 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.action.test' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-测试', 'infra.fileConfig.action.test', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '测试', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 232. 文件配置-修改文件配置 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-修改文件配置', 'infra.fileConfig.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 232. 文件配置-修改文件配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-修改文件配置', 'infra.fileConfig.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update file config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 232. 文件配置-修改文件配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-修改文件配置', 'infra.fileConfig.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改文件配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 233. 文件配置-accessKey (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.accessKey';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-accessKey', 'infra.fileConfig.field.accessKey', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 233. 文件配置-accessKey - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.accessKey' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-accessKey', 'infra.fileConfig.field.accessKey', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'access key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 233. 文件配置-accessKey - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.accessKey' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-accessKey', 'infra.fileConfig.field.accessKey', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'accessKey', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 234. 文件配置-accessSecret (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.accessSecret';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-accessSecret', 'infra.fileConfig.field.accessSecret', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 234. 文件配置-accessSecret - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.accessSecret' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-accessSecret', 'infra.fileConfig.field.accessSecret', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'access secret', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 234. 文件配置-accessSecret - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.accessSecret' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-accessSecret', 'infra.fileConfig.field.accessSecret', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'accessSecret', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 235. 文件配置-基础路径 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.basePath';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-基础路径', 'infra.fileConfig.field.basePath', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 235. 文件配置-基础路径 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.basePath' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-基础路径', 'infra.fileConfig.field.basePath', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'base path', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 235. 文件配置-基础路径 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.basePath' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-基础路径', 'infra.fileConfig.field.basePath', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '基础路径', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 236. 文件配置-存储bucket (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.bucket';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-存储bucket', 'infra.fileConfig.field.bucket', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 236. 文件配置-存储bucket - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.bucket' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-存储bucket', 'infra.fileConfig.field.bucket', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'storage bucket', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 236. 文件配置-存储bucket - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.bucket' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-存储bucket', 'infra.fileConfig.field.bucket', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '存储 bucket', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 237. 文件配置-存储配置 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.config';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-存储配置', 'infra.fileConfig.field.config', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 237. 文件配置-存储配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.config' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-存储配置', 'infra.fileConfig.field.config', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'storage config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 237. 文件配置-存储配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.config' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-存储配置', 'infra.fileConfig.field.config', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '存储配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 238. 文件配置-配置键 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.configKey';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-配置键', 'infra.fileConfig.field.configKey', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 238. 文件配置-配置键 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.configKey' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-配置键', 'infra.fileConfig.field.configKey', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'config key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 238. 文件配置-配置键 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.configKey' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-配置键', 'infra.fileConfig.field.configKey', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '配置键', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 239. 文件配置-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-创建时间', 'infra.fileConfig.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 239. 文件配置-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-创建时间', 'infra.fileConfig.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 239. 文件配置-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-创建时间', 'infra.fileConfig.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 240. 文件配置-自定义域名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.domain';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-自定义域名', 'infra.fileConfig.field.domain', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 240. 文件配置-自定义域名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.domain' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-自定义域名', 'infra.fileConfig.field.domain', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'custom domain', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 240. 文件配置-自定义域名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.domain' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-自定义域名', 'infra.fileConfig.field.domain', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '自定义域名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 241. 文件配置-是否PathStyle (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.enablePathStyleAccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-是否PathStyle', 'infra.fileConfig.field.enablePathStyleAccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 241. 文件配置-是否PathStyle - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.enablePathStyleAccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-是否PathStyle', 'infra.fileConfig.field.enablePathStyleAccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'path style', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 241. 文件配置-是否PathStyle - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.enablePathStyleAccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-是否PathStyle', 'infra.fileConfig.field.enablePathStyleAccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否 Path Style', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 242. 文件配置-节点地址 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.endpoint';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-节点地址', 'infra.fileConfig.field.endpoint', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 242. 文件配置-节点地址 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.endpoint' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-节点地址', 'infra.fileConfig.field.endpoint', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'endpoint', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 242. 文件配置-节点地址 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.endpoint' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-节点地址', 'infra.fileConfig.field.endpoint', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '节点地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 243. 文件配置-文件类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.fileType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-文件类型', 'infra.fileConfig.field.fileType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 243. 文件配置-文件类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.fileType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-文件类型', 'infra.fileConfig.field.fileType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 243. 文件配置-文件类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.fileType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-文件类型', 'infra.fileConfig.field.fileType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文件类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 244. 文件配置-主机地址 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.host';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主机地址', 'infra.fileConfig.field.host', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 244. 文件配置-主机地址 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.host' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主机地址', 'infra.fileConfig.field.host', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'host', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 244. 文件配置-主机地址 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.host' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主机地址', 'infra.fileConfig.field.host', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '主机地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 245. 文件配置-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-编号', 'infra.fileConfig.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 245. 文件配置-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-编号', 'infra.fileConfig.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 245. 文件配置-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-编号', 'infra.fileConfig.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 246. 文件配置-是否为主配置 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.master';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-是否为主配置', 'infra.fileConfig.field.master', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 246. 文件配置-是否为主配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.master' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-是否为主配置', 'infra.fileConfig.field.master', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'primary config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 246. 文件配置-是否为主配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.master' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-是否为主配置', 'infra.fileConfig.field.master', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否为主配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 247. 文件配置-文件大小 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.maxSize';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-文件大小', 'infra.fileConfig.field.maxSize', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 247. 文件配置-文件大小 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.maxSize' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-文件大小', 'infra.fileConfig.field.maxSize', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file size', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 247. 文件配置-文件大小 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.maxSize' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-文件大小', 'infra.fileConfig.field.maxSize', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文件大小', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 248. 文件配置-连接模式 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.mode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-连接模式', 'infra.fileConfig.field.mode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 248. 文件配置-连接模式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.mode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-连接模式', 'infra.fileConfig.field.mode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'connection mode', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 248. 文件配置-连接模式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.mode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-连接模式', 'infra.fileConfig.field.mode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '连接模式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 249. 文件配置-配置名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-配置名', 'infra.fileConfig.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 249. 文件配置-配置名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-配置名', 'infra.fileConfig.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'config name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 249. 文件配置-配置名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-配置名', 'infra.fileConfig.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '配置名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 250. 文件配置-密码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.password';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-密码', 'infra.fileConfig.field.password', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 250. 文件配置-密码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.password' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-密码', 'infra.fileConfig.field.password', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 250. 文件配置-密码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.password' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-密码', 'infra.fileConfig.field.password', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 251. 文件配置-路径类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.pathType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-路径类型', 'infra.fileConfig.field.pathType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 251. 文件配置-路径类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.pathType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-路径类型', 'infra.fileConfig.field.pathType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'path type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 251. 文件配置-路径类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.pathType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-路径类型', 'infra.fileConfig.field.pathType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '路径类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 252. 文件配置-主机端口 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.port';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主机端口', 'infra.fileConfig.field.port', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 252. 文件配置-主机端口 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.port' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主机端口', 'infra.fileConfig.field.port', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'port', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 252. 文件配置-主机端口 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.port' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主机端口', 'infra.fileConfig.field.port', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '主机端口', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 253. 文件配置-备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-备注', 'infra.fileConfig.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 253. 文件配置-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-备注', 'infra.fileConfig.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 253. 文件配置-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-备注', 'infra.fileConfig.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 254. 文件配置-返回类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.returnType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-返回类型', 'infra.fileConfig.field.returnType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 254. 文件配置-返回类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.returnType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-返回类型', 'infra.fileConfig.field.returnType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'return type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 254. 文件配置-返回类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.returnType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-返回类型', 'infra.fileConfig.field.returnType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '返回类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 255. 文件配置-存储器 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.storage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-存储器', 'infra.fileConfig.field.storage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 255. 文件配置-存储器 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.storage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-存储器', 'infra.fileConfig.field.storage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'storage', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 255. 文件配置-存储器 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.storage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-存储器', 'infra.fileConfig.field.storage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '存储器', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 256. 文件配置-用户名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.field.username';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-用户名', 'infra.fileConfig.field.username', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 256. 文件配置-用户名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.username' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-用户名', 'infra.fileConfig.field.username', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'username', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 256. 文件配置-用户名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.field.username' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-用户名', 'infra.fileConfig.field.username', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 257. 文件配置 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.fileConfig';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置', 'infra.fileConfig.fileConfig', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 257. 文件配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.fileConfig' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置', 'infra.fileConfig.fileConfig', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'file config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 257. 文件配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.fileConfig' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置', 'infra.fileConfig.fileConfig', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '文件配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 258. 文件配置-限制的文件类型，all表示不限制，选择的例如png表示只可以上传png。 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.help.fileType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-限制的文件类型，all表示不限制，选择的例如png表示只可以上传png。', 'infra.fileConfig.help.fileType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 258. 文件配置-限制的文件类型，all表示不限制，选择的例如png表示只可以上传png。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.help.fileType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-限制的文件类型，all表示不限制，选择的例如png表示只可以上传png。', 'infra.fileConfig.help.fileType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'allowed file types; all means no limit; e.g. png allows png only.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 258. 文件配置-限制的文件类型，all表示不限制，选择的例如png表示只可以上传png。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.help.fileType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-限制的文件类型，all表示不限制，选择的例如png表示只可以上传png。', 'infra.fileConfig.help.fileType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '限制的文件类型，all表示不限制，选择的例如png表示只可以上传png。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 259. 文件配置-文件最大上传大小，单位为MB，例如：1024表示1GB。 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.help.maxSize';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-文件最大上传大小，单位为MB，例如：1024表示1GB。', 'infra.fileConfig.help.maxSize', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 259. 文件配置-文件最大上传大小，单位为MB，例如：1024表示1GB。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.help.maxSize' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-文件最大上传大小，单位为MB，例如：1024表示1GB。', 'infra.fileConfig.help.maxSize', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'max upload size in mb, e.g. 1024 means 1gb.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 259. 文件配置-文件最大上传大小，单位为MB，例如：1024表示1GB。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.help.maxSize' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-文件最大上传大小，单位为MB，例如：1024表示1GB。', 'infra.fileConfig.help.maxSize', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '文件最大上传大小，单位为MB，例如：1024表示1GB。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 260. 文件配置-返回的路径类型，绝对路径表示返回全路径，相对路径表示返回相对路径。 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.help.pathType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-返回的路径类型，绝对路径表示返回全路径，相对路径表示返回相对路径。', 'infra.fileConfig.help.pathType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 260. 文件配置-返回的路径类型，绝对路径表示返回全路径，相对路径表示返回相对路径。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.help.pathType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-返回的路径类型，绝对路径表示返回全路径，相对路径表示返回相对路径。', 'infra.fileConfig.help.pathType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'returned path type: absolute returns full path, relative returns relative path.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 260. 文件配置-返回的路径类型，绝对路径表示返回全路径，相对路径表示返回相对路径。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.help.pathType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-返回的路径类型，绝对路径表示返回全路径，相对路径表示返回相对路径。', 'infra.fileConfig.help.pathType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '返回的路径类型，绝对路径表示返回全路径，相对路径表示返回相对路径。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 261. 文件配置-请求后端返回的类型，后端下载表示后端先下载再返回，返回URL表示后端直接返回URL重定向。 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.help.returnType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-请求后端返回的类型，后端下载表示后端先下载再返回，返回URL表示后端直接返回URL重定向。', 'infra.fileConfig.help.returnType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 261. 文件配置-请求后端返回的类型，后端下载表示后端先下载再返回，返回URL表示后端直接返回URL重定向。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.help.returnType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-请求后端返回的类型，后端下载表示后端先下载再返回，返回URL表示后端直接返回URL重定向。', 'infra.fileConfig.help.returnType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'backend return type: backend download means download on server first then return; return url means redirect with url.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 261. 文件配置-请求后端返回的类型，后端下载表示后端先下载再返回，返回URL表示后端直接返回URL重定向。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.help.returnType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-请求后端返回的类型，后端下载表示后端先下载再返回，返回URL表示后端直接返回URL重定向。', 'infra.fileConfig.help.returnType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '请求后端返回的类型，后端下载表示后端先下载再返回，返回URL表示后端直接返回URL重定向。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 262. 文件配置-文件配置列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-文件配置列表', 'infra.fileConfig.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 262. 文件配置-文件配置列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-文件配置列表', 'infra.fileConfig.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file config list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 262. 文件配置-文件配置列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-文件配置列表', 'infra.fileConfig.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文件配置列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 263. 文件配置 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置', 'infra.fileConfig.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 263. 文件配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置', 'infra.fileConfig.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'file config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 263. 文件配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置', 'infra.fileConfig.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '文件配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 264. 文件配置-是否要将{0}设为主配置？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.message.confirmSetMaster';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-是否要将{0}设为主配置？', 'infra.fileConfig.message.confirmSetMaster', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 264. 文件配置-是否要将{0}设为主配置？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.message.confirmSetMaster' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-是否要将{0}设为主配置？', 'infra.fileConfig.message.confirmSetMaster', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'set {0} as primary config?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 264. 文件配置-是否要将{0}设为主配置？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.message.confirmSetMaster' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-是否要将{0}设为主配置？', 'infra.fileConfig.message.confirmSetMaster', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否要将 {0} 设为主配置？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 265. 文件配置-主配置 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.message.master';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主配置', 'infra.fileConfig.message.master', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 265. 文件配置-主配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.message.master' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主配置', 'infra.fileConfig.message.master', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'primary', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 265. 文件配置-主配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.message.master' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主配置', 'infra.fileConfig.message.master', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '主配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 266. 文件配置-是否要访问该文件？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.message.testSuccessContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-是否要访问该文件？', 'infra.fileConfig.message.testSuccessContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 266. 文件配置-是否要访问该文件？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.message.testSuccessContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-是否要访问该文件？', 'infra.fileConfig.message.testSuccessContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'open this file?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 266. 文件配置-是否要访问该文件？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.message.testSuccessContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-是否要访问该文件？', 'infra.fileConfig.message.testSuccessContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否要访问该文件？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 267. 文件配置-测试上传成功 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.message.testSuccessTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-测试上传成功', 'infra.fileConfig.message.testSuccessTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 267. 文件配置-测试上传成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.message.testSuccessTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-测试上传成功', 'infra.fileConfig.message.testSuccessTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'test upload succeeded', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 267. 文件配置-测试上传成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.message.testSuccessTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-测试上传成功', 'infra.fileConfig.message.testSuccessTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '测试上传成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 268. 文件配置-测试上传中... (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.message.testingUpload';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-测试上传中...', 'infra.fileConfig.message.testingUpload', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 268. 文件配置-测试上传中... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.message.testingUpload' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-测试上传中...', 'infra.fileConfig.message.testingUpload', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'testing upload...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 268. 文件配置-测试上传中... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.message.testingUpload' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-测试上传中...', 'infra.fileConfig.message.testingUpload', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '测试上传中...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 269. 文件配置-访问 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.message.visit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-访问', 'infra.fileConfig.message.visit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 269. 文件配置-访问 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.message.visit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-访问', 'infra.fileConfig.message.visit', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'open', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 269. 文件配置-访问 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.message.visit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-访问', 'infra.fileConfig.message.visit', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '访问', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 270. 文件配置-主动模式 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.option.activeMode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主动模式', 'infra.fileConfig.option.activeMode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 270. 文件配置-主动模式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.option.activeMode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主动模式', 'infra.fileConfig.option.activeMode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'active mode', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 270. 文件配置-主动模式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.option.activeMode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-主动模式', 'infra.fileConfig.option.activeMode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '主动模式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 271. 文件配置-禁用 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.option.disable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-禁用', 'infra.fileConfig.option.disable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 271. 文件配置-禁用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.option.disable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-禁用', 'infra.fileConfig.option.disable', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'disable', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 271. 文件配置-禁用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.option.disable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-禁用', 'infra.fileConfig.option.disable', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '禁用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 272. 文件配置-启用 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.option.enable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-启用', 'infra.fileConfig.option.enable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 272. 文件配置-启用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.option.enable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-启用', 'infra.fileConfig.option.enable', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'enable', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 272. 文件配置-启用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.option.enable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-启用', 'infra.fileConfig.option.enable', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '启用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 273. 文件配置-被动模式 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.fileConfig.option.passiveMode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-被动模式', 'infra.fileConfig.option.passiveMode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 273. 文件配置-被动模式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.option.passiveMode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-被动模式', 'infra.fileConfig.option.passiveMode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'passive mode', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 273. 文件配置-被动模式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.fileConfig.option.passiveMode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件配置-被动模式', 'infra.fileConfig.option.passiveMode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '被动模式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 274. 国家地区 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区', 'infra.i18nLocale', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 274. 国家地区 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区', 'infra.i18nLocale', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 274. 国家地区 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区', 'infra.i18nLocale', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '国家地区', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 275. 国家地区-新增国家地区 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-新增国家地区', 'infra.i18nLocale.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 275. 国家地区-新增国家地区 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-新增国家地区', 'infra.i18nLocale.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create locale', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 275. 国家地区-新增国家地区 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-新增国家地区', 'infra.i18nLocale.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增国家地区', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 276. 国家地区-删除国家地区 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-删除国家地区', 'infra.i18nLocale.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 276. 国家地区-删除国家地区 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-删除国家地区', 'infra.i18nLocale.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete locale', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 276. 国家地区-删除国家地区 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-删除国家地区', 'infra.i18nLocale.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除国家地区', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 277. 国家地区-导出国家地区 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-导出国家地区', 'infra.i18nLocale.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 277. 国家地区-导出国家地区 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-导出国家地区', 'infra.i18nLocale.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export locale', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 277. 国家地区-导出国家地区 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-导出国家地区', 'infra.i18nLocale.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出国家地区', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 278. 国家地区-国家地区查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-国家地区查询', 'infra.i18nLocale.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 278. 国家地区-国家地区查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-国家地区查询', 'infra.i18nLocale.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'locale query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 278. 国家地区-国家地区查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-国家地区查询', 'infra.i18nLocale.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '国家地区查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 279. 国家地区-修改国家地区 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-修改国家地区', 'infra.i18nLocale.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 279. 国家地区-修改国家地区 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-修改国家地区', 'infra.i18nLocale.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update locale', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 279. 国家地区-修改国家地区 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-修改国家地区', 'infra.i18nLocale.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改国家地区', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 280. 国家地区-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-创建时间', 'infra.i18nLocale.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 280. 国家地区-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-创建时间', 'infra.i18nLocale.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 280. 国家地区-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-创建时间', 'infra.i18nLocale.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 281. 国家地区-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-编号', 'infra.i18nLocale.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 281. 国家地区-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-编号', 'infra.i18nLocale.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 281. 国家地区-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-编号', 'infra.i18nLocale.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 282. 国家地区-默认 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.field.isDefault';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-默认', 'infra.i18nLocale.field.isDefault', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 282. 国家地区-默认 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.isDefault' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-默认', 'infra.i18nLocale.field.isDefault', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'default', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 282. 国家地区-默认 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.isDefault' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-默认', 'infra.i18nLocale.field.isDefault', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '默认', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 283. 国家地区-简称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.field.locale';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-简称', 'infra.i18nLocale.field.locale', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 283. 国家地区-简称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.locale' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-简称', 'infra.i18nLocale.field.locale', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'locale code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 283. 国家地区-简称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.locale' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-简称', 'infra.i18nLocale.field.locale', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '简称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 284. 国家地区 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.field.localeName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区', 'infra.i18nLocale.field.localeName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 284. 国家地区 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.localeName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区', 'infra.i18nLocale.field.localeName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'locale', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 284. 国家地区 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.localeName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区', 'infra.i18nLocale.field.localeName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '国家地区', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 285. 国家地区-状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.field.localeStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-状态', 'infra.i18nLocale.field.localeStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 285. 国家地区-状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.localeStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-状态', 'infra.i18nLocale.field.localeStatus', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 285. 国家地区-状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.localeStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-状态', 'infra.i18nLocale.field.localeStatus', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 286. 国家地区-使用端 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.field.localeTarget';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-使用端', 'infra.i18nLocale.field.localeTarget', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 286. 国家地区-使用端 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.localeTarget' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-使用端', 'infra.i18nLocale.field.localeTarget', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'target', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 286. 国家地区-使用端 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.localeTarget' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-使用端', 'infra.i18nLocale.field.localeTarget', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '使用端', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 287. 国家地区-显示顺序 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.field.orderNum';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-显示顺序', 'infra.i18nLocale.field.orderNum', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 287. 国家地区-显示顺序 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.orderNum' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-显示顺序', 'infra.i18nLocale.field.orderNum', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'order', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 287. 国家地区-显示顺序 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.orderNum' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-显示顺序', 'infra.i18nLocale.field.orderNum', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '显示顺序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 288. 国家地区-备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-备注', 'infra.i18nLocale.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 288. 国家地区-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-备注', 'infra.i18nLocale.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 288. 国家地区-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-备注', 'infra.i18nLocale.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 289. 国家地区-是否是默认语言，每个使用端只允许一个默认 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.help.isDefault';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-是否是默认语言，每个使用端只允许一个默认', 'infra.i18nLocale.help.isDefault', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 289. 国家地区-是否是默认语言，每个使用端只允许一个默认 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.help.isDefault' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-是否是默认语言，每个使用端只允许一个默认', 'infra.i18nLocale.help.isDefault', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'whether it is the default language; only one default is allowed per target.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 289. 国家地区-是否是默认语言，每个使用端只允许一个默认 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.help.isDefault' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-是否是默认语言，每个使用端只允许一个默认', 'infra.i18nLocale.help.isDefault', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '是否是默认语言，每个使用端只允许一个默认', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 290. 国家地区-展示的区域，例如通用所有端都展示，后台只是后台展示，请不要随意修改，如若修改请及时同步message (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.help.localeTarget';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-展示的区域，例如通用所有端都展示，后台只是后台展示，请不要随意修改，如若修改请及时同步message', 'infra.i18nLocale.help.localeTarget', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 290. 国家地区-展示的区域，例如通用所有端都展示，后台只是后台展示，请不要随意修改，如若修改请及时同步message - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.help.localeTarget' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-展示的区域，例如通用所有端都展示，后台只是后台展示，请不要随意修改，如若修改请及时同步message', 'infra.i18nLocale.help.localeTarget', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'display target, e.g. common for all ends, admin only for backend. do not modify casually, sync messages if changed.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 290. 国家地区-展示的区域，例如通用所有端都展示，后台只是后台展示，请不要随意修改，如若修改请及时同步message - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.help.localeTarget' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-展示的区域，例如通用所有端都展示，后台只是后台展示，请不要随意修改，如若修改请及时同步message', 'infra.i18nLocale.help.localeTarget', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '展示的区域，例如通用所有端都展示，后台只是后台展示，请不要随意修改，如若修改请及时同步message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 291. 国家地区 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.i18nLocale';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区', 'infra.i18nLocale.i18nLocale', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 291. 国家地区 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.i18nLocale' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区', 'infra.i18nLocale.i18nLocale', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'locale', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 291. 国家地区 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.i18nLocale' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区', 'infra.i18nLocale.i18nLocale', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '国家地区', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 292. 国家地区-国家地区列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-国家地区列表', 'infra.i18nLocale.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 292. 国家地区-国家地区列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-国家地区列表', 'infra.i18nLocale.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'locale list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 292. 国家地区-国家地区列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区-国家地区列表', 'infra.i18nLocale.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '国家地区列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 293. 国家地区 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nLocale.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区', 'infra.i18nLocale.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 293. 国家地区 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区', 'infra.i18nLocale.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'locale', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 293. 国家地区 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nLocale.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国家地区', 'infra.i18nLocale.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '国家地区', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 294. 国际化管理 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理', 'infra.i18nMessage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 294. 国际化管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理', 'infra.i18nMessage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 294. 国际化管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理', 'infra.i18nMessage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '国际化管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 295. 国际化管理-新增国际化键名 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-新增国际化键名', 'infra.i18nMessage.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 295. 国际化管理-新增国际化键名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-新增国际化键名', 'infra.i18nMessage.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create i18n key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 295. 国际化管理-新增国际化键名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-新增国际化键名', 'infra.i18nMessage.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增国际化键名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 296. 国际化管理-删除国际化键名 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-删除国际化键名', 'infra.i18nMessage.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 296. 国际化管理-删除国际化键名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-删除国际化键名', 'infra.i18nMessage.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete i18n key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 296. 国际化管理-删除国际化键名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-删除国际化键名', 'infra.i18nMessage.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除国际化键名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 297. 国际化管理-导出国际化键名 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-导出国际化键名', 'infra.i18nMessage.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 297. 国际化管理-导出国际化键名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-导出国际化键名', 'infra.i18nMessage.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export i18n key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 297. 国际化管理-导出国际化键名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-导出国际化键名', 'infra.i18nMessage.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出国际化键名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 298. 国际化管理-国际化键名查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化键名查询', 'infra.i18nMessage.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 298. 国际化管理-国际化键名查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化键名查询', 'infra.i18nMessage.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'i18n key query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 298. 国际化管理-国际化键名查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化键名查询', 'infra.i18nMessage.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '国际化键名查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 299. 国际化管理-修改国际化键名 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-修改国际化键名', 'infra.i18nMessage.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 299. 国际化管理-修改国际化键名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-修改国际化键名', 'infra.i18nMessage.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update i18n key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 299. 国际化管理-修改国际化键名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-修改国际化键名', 'infra.i18nMessage.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改国际化键名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 300. 国际化管理-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-创建时间', 'infra.i18nMessage.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 300. 国际化管理-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-创建时间', 'infra.i18nMessage.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 300. 国际化管理-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-创建时间', 'infra.i18nMessage.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 301. 国际化管理-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-编号', 'infra.i18nMessage.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 301. 国际化管理-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-编号', 'infra.i18nMessage.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 301. 国际化管理-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-编号', 'infra.i18nMessage.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 302. 国际化管理-是否内置 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.field.isSystem';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-是否内置', 'infra.i18nMessage.field.isSystem', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 302. 国际化管理-是否内置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.isSystem' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-是否内置', 'infra.i18nMessage.field.isSystem', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'built-in', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 302. 国际化管理-是否内置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.isSystem' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-是否内置', 'infra.i18nMessage.field.isSystem', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否内置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 303. 国际化管理-简称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.field.locale';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-简称', 'infra.i18nMessage.field.locale', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 303. 国际化管理-简称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.locale' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-简称', 'infra.i18nMessage.field.locale', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'locale code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 303. 国际化管理-简称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.locale' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-简称', 'infra.i18nMessage.field.locale', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '简称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 304. 国际化管理-使用端 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.field.localeTarget';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-使用端', 'infra.i18nMessage.field.localeTarget', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 304. 国际化管理-使用端 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.localeTarget' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-使用端', 'infra.i18nMessage.field.localeTarget', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'target', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 304. 国际化管理-使用端 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.localeTarget' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-使用端', 'infra.i18nMessage.field.localeTarget', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '使用端', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 305. 国际化管理-消息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.field.messageContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-消息', 'infra.i18nMessage.field.messageContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 305. 国际化管理-消息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.messageContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-消息', 'infra.i18nMessage.field.messageContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'message content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 305. 国际化管理-消息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.messageContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-消息', 'infra.i18nMessage.field.messageContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '消息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 306. 国际化管理-键 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.field.messageKey';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-键', 'infra.i18nMessage.field.messageKey', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 306. 国际化管理-键 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.messageKey' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-键', 'infra.i18nMessage.field.messageKey', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 306. 国际化管理-键 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.messageKey' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-键', 'infra.i18nMessage.field.messageKey', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '键', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 307. 国际化管理-名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.field.messageName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-名称', 'infra.i18nMessage.field.messageName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 307. 国际化管理-名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.messageName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-名称', 'infra.i18nMessage.field.messageName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 307. 国际化管理-名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.messageName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-名称', 'infra.i18nMessage.field.messageName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 308. 国际化管理-模块 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.field.moduleType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-模块', 'infra.i18nMessage.field.moduleType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 308. 国际化管理-模块 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.moduleType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-模块', 'infra.i18nMessage.field.moduleType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'module', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 308. 国际化管理-模块 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.moduleType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-模块', 'infra.i18nMessage.field.moduleType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模块', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 309. 国际化管理-显示顺序 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.field.orderNum';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-显示顺序', 'infra.i18nMessage.field.orderNum', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 309. 国际化管理-显示顺序 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.orderNum' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-显示顺序', 'infra.i18nMessage.field.orderNum', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'order', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 309. 国际化管理-显示顺序 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.orderNum' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-显示顺序', 'infra.i18nMessage.field.orderNum', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '显示顺序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 310. 国际化管理-备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-备注', 'infra.i18nMessage.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 310. 国际化管理-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-备注', 'infra.i18nMessage.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 310. 国际化管理-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-备注', 'infra.i18nMessage.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 311. 国际化管理-使用类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.field.useType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-使用类型', 'infra.i18nMessage.field.useType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 311. 国际化管理-使用类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.useType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-使用类型', 'infra.i18nMessage.field.useType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'use type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 311. 国际化管理-使用类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.field.useType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-使用类型', 'infra.i18nMessage.field.useType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '使用类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 312. 国际化管理 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.i18nMessage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理', 'infra.i18nMessage.i18nMessage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 312. 国际化管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.i18nMessage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理', 'infra.i18nMessage.i18nMessage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'i18n management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 312. 国际化管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.i18nMessage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理', 'infra.i18nMessage.i18nMessage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '国际化管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 313. 国际化管理-国际化键名 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.key';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化键名', 'infra.i18nMessage.key', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 313. 国际化管理-国际化键名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.key' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化键名', 'infra.i18nMessage.key', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'i18n key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 313. 国际化管理-国际化键名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.key' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化键名', 'infra.i18nMessage.key', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '国际化键名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 314. 国际化管理-国际化键名列表 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.keyList';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化键名列表', 'infra.i18nMessage.keyList', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 314. 国际化管理-国际化键名列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.keyList' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化键名列表', 'infra.i18nMessage.keyList', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'i18n key list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 314. 国际化管理-国际化键名列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.keyList' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化键名列表', 'infra.i18nMessage.keyList', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '国际化键名列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 315. 国际化管理-国际化国家 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.locale';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化国家', 'infra.i18nMessage.locale', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 315. 国际化管理-国际化国家 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.locale' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化国家', 'infra.i18nMessage.locale', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'i18n locale', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 315. 国际化管理-国际化国家 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.locale' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化国家', 'infra.i18nMessage.locale', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '国际化国家', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 316. 国际化管理-国家地区列表 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.localeList';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国家地区列表', 'infra.i18nMessage.localeList', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 316. 国际化管理-国家地区列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.localeList' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国家地区列表', 'infra.i18nMessage.localeList', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'locale list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 316. 国际化管理-国家地区列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.localeList' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国家地区列表', 'infra.i18nMessage.localeList', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '国家地区列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 317. 国际化管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理', 'infra.i18nMessage.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 317. 国际化管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理', 'infra.i18nMessage.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'i18n management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 317. 国际化管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理', 'infra.i18nMessage.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '国际化管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 318. 国际化管理-确认删除国际化键名{0}吗？删除该键名会同步删除其所有语言的消息。 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.message.confirmDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-确认删除国际化键名{0}吗？删除该键名会同步删除其所有语言的消息。', 'infra.i18nMessage.message.confirmDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 318. 国际化管理-确认删除国际化键名{0}吗？删除该键名会同步删除其所有语言的消息。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.message.confirmDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-确认删除国际化键名{0}吗？删除该键名会同步删除其所有语言的消息。', 'infra.i18nMessage.message.confirmDelete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'confirm delete i18n key {0}? deleting this key will also delete all language messages.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 318. 国际化管理-确认删除国际化键名{0}吗？删除该键名会同步删除其所有语言的消息。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.message.confirmDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-确认删除国际化键名{0}吗？删除该键名会同步删除其所有语言的消息。', 'infra.i18nMessage.message.confirmDelete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '确认删除国际化键名 {0} 吗？删除该键名会同步删除其所有语言的消息。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 319. 国际化管理-国际化信息 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.messageLabel';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化信息', 'infra.i18nMessage.messageLabel', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 319. 国际化管理-国际化信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.messageLabel' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化信息', 'infra.i18nMessage.messageLabel', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'i18n message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 319. 国际化管理-国际化信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.messageLabel' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化信息', 'infra.i18nMessage.messageLabel', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '国际化信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 320. 国际化管理-国际化信息列表 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.i18nMessage.messageList';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化信息列表', 'infra.i18nMessage.messageList', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 320. 国际化管理-国际化信息列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.messageList' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化信息列表', 'infra.i18nMessage.messageList', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'i18n message list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 320. 国际化管理-国际化信息列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.i18nMessage.messageList' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('国际化管理-国际化信息列表', 'infra.i18nMessage.messageList', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '国际化信息列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 321. 定时任务 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务', 'infra.job', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 321. 定时任务 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务', 'infra.job', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 321. 定时任务 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务', 'infra.job', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '定时任务', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 322. 定时任务-确定停用{0}吗？ (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.action.confirmPause';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-确定停用{0}吗？', 'infra.job.action.confirmPause', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 322. 定时任务-确定停用{0}吗？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.confirmPause' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-确定停用{0}吗？', 'infra.job.action.confirmPause', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'disable job {0}?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 322. 定时任务-确定停用{0}吗？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.confirmPause' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-确定停用{0}吗？', 'infra.job.action.confirmPause', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '确定停用 {0} 吗？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 323. 定时任务-确定启用{0}吗？ (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.action.confirmStart';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-确定启用{0}吗？', 'infra.job.action.confirmStart', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 323. 定时任务-确定启用{0}吗？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.confirmStart' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-确定启用{0}吗？', 'infra.job.action.confirmStart', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'enable job {0}?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 323. 定时任务-确定启用{0}吗？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.confirmStart' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-确定启用{0}吗？', 'infra.job.action.confirmStart', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '确定启用 {0} 吗？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 324. 定时任务-确定执行一次{0}吗？ (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.action.confirmTrigger';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-确定执行一次{0}吗？', 'infra.job.action.confirmTrigger', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 324. 定时任务-确定执行一次{0}吗？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.confirmTrigger' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-确定执行一次{0}吗？', 'infra.job.action.confirmTrigger', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'trigger job {0} now?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 324. 定时任务-确定执行一次{0}吗？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.confirmTrigger' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-确定执行一次{0}吗？', 'infra.job.action.confirmTrigger', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '确定执行一次 {0} 吗？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 325. 定时任务-新增任务 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-新增任务', 'infra.job.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 325. 定时任务-新增任务 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-新增任务', 'infra.job.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create job', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 325. 定时任务-新增任务 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-新增任务', 'infra.job.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增任务', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 326. 定时任务-删除任务 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-删除任务', 'infra.job.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 326. 定时任务-删除任务 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-删除任务', 'infra.job.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete job', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 326. 定时任务-删除任务 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-删除任务', 'infra.job.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除任务', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 327. 定时任务-任务详情 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.action.detail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务详情', 'infra.job.action.detail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 327. 定时任务-任务详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.detail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务详情', 'infra.job.action.detail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'job detail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 327. 定时任务-任务详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.detail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务详情', 'infra.job.action.detail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '任务详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 328. 定时任务-导出任务 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-导出任务', 'infra.job.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 328. 定时任务-导出任务 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-导出任务', 'infra.job.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export job', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 328. 定时任务-导出任务 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-导出任务', 'infra.job.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出任务', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 329. 定时任务-暂停 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.action.pause';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-暂停', 'infra.job.action.pause', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 329. 定时任务-暂停 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.pause' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-暂停', 'infra.job.action.pause', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'pause', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 329. 定时任务-暂停 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.pause' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-暂停', 'infra.job.action.pause', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '暂停', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 330. 定时任务-任务查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务查询', 'infra.job.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 330. 定时任务-任务查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务查询', 'infra.job.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'job query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 330. 定时任务-任务查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务查询', 'infra.job.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '任务查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 331. 定时任务-开启 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.action.start';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-开启', 'infra.job.action.start', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 331. 定时任务-开启 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.start' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-开启', 'infra.job.action.start', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'start', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 331. 定时任务-开启 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.start' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-开启', 'infra.job.action.start', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '开启', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 332. 定时任务-执行任务 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.action.trigger';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-执行任务', 'infra.job.action.trigger', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 332. 定时任务-执行任务 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.trigger' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-执行任务', 'infra.job.action.trigger', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'trigger job', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 332. 定时任务-执行任务 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.trigger' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-执行任务', 'infra.job.action.trigger', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '执行任务', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 333. 定时任务-修改任务 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-修改任务', 'infra.job.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 333. 定时任务-修改任务 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-修改任务', 'infra.job.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update job', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 333. 定时任务-修改任务 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-修改任务', 'infra.job.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改任务', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 334. 定时任务-任务详情 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.detail.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务详情', 'infra.job.detail.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 334. 定时任务-任务详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.detail.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务详情', 'infra.job.detail.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'job detail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 334. 定时任务-任务详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.detail.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务详情', 'infra.job.detail.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '任务详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 335. 定时任务-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-创建时间', 'infra.job.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 335. 定时任务-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-创建时间', 'infra.job.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 335. 定时任务-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-创建时间', 'infra.job.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 336. 定时任务-CRON表达式 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.field.cronExpression';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-CRON表达式', 'infra.job.field.cronExpression', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 336. 定时任务-CRON表达式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.cronExpression' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-CRON表达式', 'infra.job.field.cronExpression', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'cron expression', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 336. 定时任务-CRON表达式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.cronExpression' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-CRON表达式', 'infra.job.field.cronExpression', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'CRON 表达式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 337. 定时任务-处理器名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.field.handlerName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-处理器名称', 'infra.job.field.handlerName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 337. 定时任务-处理器名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.handlerName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-处理器名称', 'infra.job.field.handlerName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'handler name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 337. 定时任务-处理器名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.handlerName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-处理器名称', 'infra.job.field.handlerName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '处理器名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 338. 定时任务-处理器参数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.field.handlerParam';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-处理器参数', 'infra.job.field.handlerParam', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 338. 定时任务-处理器参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.handlerParam' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-处理器参数', 'infra.job.field.handlerParam', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'handler param', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 338. 定时任务-处理器参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.handlerParam' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-处理器参数', 'infra.job.field.handlerParam', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '处理器参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 339. 定时任务-任务编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务编号', 'infra.job.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 339. 定时任务-任务编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务编号', 'infra.job.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'job id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 339. 定时任务-任务编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务编号', 'infra.job.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '任务编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 340. 定时任务-监控超时时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.field.monitorTimeout';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-监控超时时间', 'infra.job.field.monitorTimeout', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 340. 定时任务-监控超时时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.monitorTimeout' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-监控超时时间', 'infra.job.field.monitorTimeout', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'monitor timeout', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 340. 定时任务-监控超时时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.monitorTimeout' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-监控超时时间', 'infra.job.field.monitorTimeout', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '监控超时时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 341. 定时任务-未开启 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.field.monitorTimeoutDisabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-未开启', 'infra.job.field.monitorTimeoutDisabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 341. 定时任务-未开启 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.monitorTimeoutDisabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-未开启', 'infra.job.field.monitorTimeoutDisabled', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'disabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 341. 定时任务-未开启 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.monitorTimeoutDisabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-未开启', 'infra.job.field.monitorTimeoutDisabled', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '未开启', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 342. 定时任务-毫秒 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.field.monitorTimeoutUnit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-毫秒', 'infra.job.field.monitorTimeoutUnit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 342. 定时任务-毫秒 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.monitorTimeoutUnit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-毫秒', 'infra.job.field.monitorTimeoutUnit', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'ms', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 342. 定时任务-毫秒 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.monitorTimeoutUnit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-毫秒', 'infra.job.field.monitorTimeoutUnit', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '毫秒', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 343. 定时任务-任务名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务名称', 'infra.job.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 343. 定时任务-任务名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务名称', 'infra.job.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'job name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 343. 定时任务-任务名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务名称', 'infra.job.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '任务名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 344. 定时任务-后续执行时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.field.nextTimes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-后续执行时间', 'infra.job.field.nextTimes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 344. 定时任务-后续执行时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.nextTimes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-后续执行时间', 'infra.job.field.nextTimes', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'next run times', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 344. 定时任务-后续执行时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.nextTimes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-后续执行时间', 'infra.job.field.nextTimes', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '后续执行时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 345. 定时任务-无后续执行时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.field.noNextTimes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-无后续执行时间', 'infra.job.field.noNextTimes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 345. 定时任务-无后续执行时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.noNextTimes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-无后续执行时间', 'infra.job.field.noNextTimes', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'no next run times', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 345. 定时任务-无后续执行时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.noNextTimes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-无后续执行时间', 'infra.job.field.noNextTimes', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '无后续执行时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 346. 定时任务-重试次数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.field.retryCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-重试次数', 'infra.job.field.retryCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 346. 定时任务-重试次数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.retryCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-重试次数', 'infra.job.field.retryCount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'retry count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 346. 定时任务-重试次数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.retryCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-重试次数', 'infra.job.field.retryCount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '重试次数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 347. 定时任务-重试间隔 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.field.retryInterval';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-重试间隔', 'infra.job.field.retryInterval', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 347. 定时任务-重试间隔 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.retryInterval' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-重试间隔', 'infra.job.field.retryInterval', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'retry interval', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 347. 定时任务-重试间隔 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.retryInterval' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-重试间隔', 'infra.job.field.retryInterval', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '重试间隔', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 348. 定时任务-任务状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务状态', 'infra.job.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 348. 定时任务-任务状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务状态', 'infra.job.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 348. 定时任务-任务状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-任务状态', 'infra.job.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '任务状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 349. 定时任务 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.job';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务', 'infra.job.job', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 349. 定时任务 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.job' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务', 'infra.job.job', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'scheduled job', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 349. 定时任务 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.job' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务', 'infra.job.job', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '定时任务', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 350. 定时任务-定时任务列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-定时任务列表', 'infra.job.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 350. 定时任务-定时任务列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-定时任务列表', 'infra.job.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'job list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 350. 定时任务-定时任务列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-定时任务列表', 'infra.job.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '定时任务列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 351. 定时任务-执行日志 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.log';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-执行日志', 'infra.job.log', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 351. 定时任务-执行日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.log' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-执行日志', 'infra.job.log', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'job log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 351. 定时任务-执行日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.log' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务-执行日志', 'infra.job.log', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '执行日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 352. 定时任务 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.job.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务', 'infra.job.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 352. 定时任务 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务', 'infra.job.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'scheduled job', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 352. 定时任务 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.job.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时任务', 'infra.job.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '定时任务', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 353. 任务日志 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志', 'infra.jobLog', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 353. 任务日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志', 'infra.jobLog', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 353. 任务日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志', 'infra.jobLog', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '任务日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 354. 任务日志-导出任务日志 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-导出任务日志', 'infra.jobLog.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 354. 任务日志-导出任务日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-导出任务日志', 'infra.jobLog.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export job log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 354. 任务日志-导出任务日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-导出任务日志', 'infra.jobLog.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出任务日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 355. 任务日志-任务日志查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-任务日志查询', 'infra.jobLog.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 355. 任务日志-任务日志查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-任务日志查询', 'infra.jobLog.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'job log query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 355. 任务日志-任务日志查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-任务日志查询', 'infra.jobLog.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '任务日志查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 356. 任务日志-日志详情 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.detail.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-日志详情', 'infra.jobLog.detail.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 356. 任务日志-日志详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.detail.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-日志详情', 'infra.jobLog.detail.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'log detail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 356. 任务日志-日志详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.detail.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-日志详情', 'infra.jobLog.detail.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '日志详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 357. 任务日志-执行开始时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.field.beginTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-执行开始时间', 'infra.jobLog.field.beginTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 357. 任务日志-执行开始时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.beginTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-执行开始时间', 'infra.jobLog.field.beginTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'start time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 357. 任务日志-执行开始时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.beginTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-执行开始时间', 'infra.jobLog.field.beginTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '执行开始时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 358. 任务日志-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-创建时间', 'infra.jobLog.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 358. 任务日志-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-创建时间', 'infra.jobLog.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 358. 任务日志-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-创建时间', 'infra.jobLog.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 359. 任务日志-执行时长 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.field.duration';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-执行时长', 'infra.jobLog.field.duration', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 359. 任务日志-执行时长 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.duration' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-执行时长', 'infra.jobLog.field.duration', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'duration', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 359. 任务日志-执行时长 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.duration' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-执行时长', 'infra.jobLog.field.duration', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '执行时长', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 360. 任务日志-毫秒 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.field.durationUnit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-毫秒', 'infra.jobLog.field.durationUnit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 360. 任务日志-毫秒 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.durationUnit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-毫秒', 'infra.jobLog.field.durationUnit', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'ms', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 360. 任务日志-毫秒 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.durationUnit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-毫秒', 'infra.jobLog.field.durationUnit', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '毫秒', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 361. 任务日志-执行结束时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.field.endTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-执行结束时间', 'infra.jobLog.field.endTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 361. 任务日志-执行结束时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.endTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-执行结束时间', 'infra.jobLog.field.endTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'end time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 361. 任务日志-执行结束时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.endTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-执行结束时间', 'infra.jobLog.field.endTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '执行结束时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 362. 任务日志-第几次执行 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.field.executeIndex';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-第几次执行', 'infra.jobLog.field.executeIndex', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 362. 任务日志-第几次执行 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.executeIndex' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-第几次执行', 'infra.jobLog.field.executeIndex', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'execution #', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 362. 任务日志-第几次执行 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.executeIndex' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-第几次执行', 'infra.jobLog.field.executeIndex', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '第几次执行', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 363. 任务日志-处理器名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.field.handlerName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-处理器名称', 'infra.jobLog.field.handlerName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 363. 任务日志-处理器名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.handlerName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-处理器名称', 'infra.jobLog.field.handlerName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'handler name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 363. 任务日志-处理器名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.handlerName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-处理器名称', 'infra.jobLog.field.handlerName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '处理器名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 364. 任务日志-处理器参数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.field.handlerParam';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-处理器参数', 'infra.jobLog.field.handlerParam', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 364. 任务日志-处理器参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.handlerParam' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-处理器参数', 'infra.jobLog.field.handlerParam', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'handler param', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 364. 任务日志-处理器参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.handlerParam' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-处理器参数', 'infra.jobLog.field.handlerParam', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '处理器参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 365. 任务日志-日志编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-日志编号', 'infra.jobLog.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 365. 任务日志-日志编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-日志编号', 'infra.jobLog.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'log id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 365. 任务日志-日志编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-日志编号', 'infra.jobLog.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '日志编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 366. 任务日志-任务编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.field.jobId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-任务编号', 'infra.jobLog.field.jobId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 366. 任务日志-任务编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.jobId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-任务编号', 'infra.jobLog.field.jobId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'job id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 366. 任务日志-任务编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.jobId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-任务编号', 'infra.jobLog.field.jobId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '任务编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 367. 任务日志-执行结果 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.field.result';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-执行结果', 'infra.jobLog.field.result', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 367. 任务日志-执行结果 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.result' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-执行结果', 'infra.jobLog.field.result', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'result', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 367. 任务日志-执行结果 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.result' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-执行结果', 'infra.jobLog.field.result', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '执行结果', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 368. 任务日志-任务状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-任务状态', 'infra.jobLog.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 368. 任务日志-任务状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-任务状态', 'infra.jobLog.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 368. 任务日志-任务状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-任务状态', 'infra.jobLog.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '任务状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 369. 任务日志 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.jobLog';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志', 'infra.jobLog.jobLog', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 369. 任务日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.jobLog' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志', 'infra.jobLog.jobLog', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'job log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 369. 任务日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.jobLog' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志', 'infra.jobLog.jobLog', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '任务日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 370. 任务日志-任务日志列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-任务日志列表', 'infra.jobLog.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 370. 任务日志-任务日志列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-任务日志列表', 'infra.jobLog.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'job log list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 370. 任务日志-任务日志列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志-任务日志列表', 'infra.jobLog.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '任务日志列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 371. 任务日志 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.jobLog.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志', 'infra.jobLog.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 371. 任务日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志', 'infra.jobLog.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'job log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 371. 任务日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.jobLog.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('任务日志', 'infra.jobLog.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '任务日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 372. Redis缓存 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis缓存', 'infra.redis', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 372. Redis缓存 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis缓存', 'infra.redis', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 372. Redis缓存 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis缓存', 'infra.redis', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Redis 缓存', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 373. Redis 缓存-命令统计 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.commandStats';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-命令统计', 'infra.redis.commandStats', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 373. Redis 缓存-命令统计 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.commandStats' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-命令统计', 'infra.redis.commandStats', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'command stats', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 373. Redis 缓存-命令统计 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.commandStats' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-命令统计', 'infra.redis.commandStats', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '命令统计', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 374. Redis 缓存-AOF是否开启 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.aofEnabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-AOF是否开启', 'infra.redis.field.aofEnabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 374. Redis 缓存-AOF是否开启 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.aofEnabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-AOF是否开启', 'infra.redis.field.aofEnabled', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'aof enabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 374. Redis 缓存-AOF是否开启 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.aofEnabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-AOF是否开启', 'infra.redis.field.aofEnabled', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'AOF 是否开启', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 375. Redis 缓存-客户端数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.clients';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-客户端数', 'infra.redis.field.clients', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 375. Redis 缓存-客户端数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.clients' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-客户端数', 'infra.redis.field.clients', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'clients', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 375. Redis 缓存-客户端数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.clients' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-客户端数', 'infra.redis.field.clients', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '客户端数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 376. Redis 缓存-集群 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.cluster';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-集群', 'infra.redis.field.cluster', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 376. Redis 缓存-集群 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.cluster' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-集群', 'infra.redis.field.cluster', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'cluster', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 376. Redis 缓存-集群 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.cluster' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-集群', 'infra.redis.field.cluster', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '集群', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 377. Redis 缓存-命令统计 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.commandTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-命令统计', 'infra.redis.field.commandTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 377. Redis 缓存-命令统计 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.commandTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-命令统计', 'infra.redis.field.commandTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'command stats', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 377. Redis 缓存-命令统计 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.commandTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-命令统计', 'infra.redis.field.commandTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '命令统计', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 378. Redis 缓存-Key数量 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.keyCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-Key数量', 'infra.redis.field.keyCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 378. Redis 缓存-Key数量 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.keyCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-Key数量', 'infra.redis.field.keyCount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'key count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 378. Redis 缓存-Key数量 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.keyCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-Key数量', 'infra.redis.field.keyCount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Key 数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 379. Redis 缓存-内存配置 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.maxMemory';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-内存配置', 'infra.redis.field.maxMemory', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 379. Redis 缓存-内存配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.maxMemory' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-内存配置', 'infra.redis.field.maxMemory', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'max memory', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 379. Redis 缓存-内存配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.maxMemory' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-内存配置', 'infra.redis.field.maxMemory', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '内存配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 380. Redis 缓存-内存消耗 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.memoryConsume';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-内存消耗', 'infra.redis.field.memoryConsume', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 380. Redis 缓存-内存消耗 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.memoryConsume' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-内存消耗', 'infra.redis.field.memoryConsume', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'memory usage', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 380. Redis 缓存-内存消耗 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.memoryConsume' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-内存消耗', 'infra.redis.field.memoryConsume', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '内存消耗', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 381. Redis 缓存-内存使用情况 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.memoryUsageTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-内存使用情况', 'infra.redis.field.memoryUsageTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 381. Redis 缓存-内存使用情况 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.memoryUsageTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-内存使用情况', 'infra.redis.field.memoryUsageTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'memory usage', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 381. Redis 缓存-内存使用情况 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.memoryUsageTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-内存使用情况', 'infra.redis.field.memoryUsageTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '内存使用情况', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 382. Redis 缓存-网络入口/出口 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.networkTraffic';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-网络入口/出口', 'infra.redis.field.networkTraffic', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 382. Redis 缓存-网络入口/出口 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.networkTraffic' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-网络入口/出口', 'infra.redis.field.networkTraffic', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'network in/out', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 382. Redis 缓存-网络入口/出口 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.networkTraffic' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-网络入口/出口', 'infra.redis.field.networkTraffic', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '网络入口/出口', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 383. Redis 缓存-端口 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.port';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-端口', 'infra.redis.field.port', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 383. Redis 缓存-端口 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.port' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-端口', 'infra.redis.field.port', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'port', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 383. Redis 缓存-端口 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.port' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-端口', 'infra.redis.field.port', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '端口', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 384. Redis 缓存-RDB是否成功 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.rdbStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-RDB是否成功', 'infra.redis.field.rdbStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 384. Redis 缓存-RDB是否成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.rdbStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-RDB是否成功', 'infra.redis.field.rdbStatus', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'rdb status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 384. Redis 缓存-RDB是否成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.rdbStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-RDB是否成功', 'infra.redis.field.rdbStatus', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'RDB 是否成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 385. Redis 缓存-运行模式 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.redisMode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-运行模式', 'infra.redis.field.redisMode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 385. Redis 缓存-运行模式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.redisMode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-运行模式', 'infra.redis.field.redisMode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'run mode', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 385. Redis 缓存-运行模式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.redisMode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-运行模式', 'infra.redis.field.redisMode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '运行模式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 386. Redis 缓存-Redis版本 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.redisVersion';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-Redis版本', 'infra.redis.field.redisVersion', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 386. Redis 缓存-Redis版本 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.redisVersion' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-Redis版本', 'infra.redis.field.redisVersion', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'redis version', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 386. Redis 缓存-Redis版本 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.redisVersion' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-Redis版本', 'infra.redis.field.redisVersion', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Redis 版本', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 387. Redis 缓存-单机 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.standalone';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-单机', 'infra.redis.field.standalone', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 387. Redis 缓存-单机 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.standalone' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-单机', 'infra.redis.field.standalone', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'standalone', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 387. Redis 缓存-单机 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.standalone' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-单机', 'infra.redis.field.standalone', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '单机', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 388. Redis 缓存-运行时间(天) (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.uptimeInDays';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-运行时间(天)', 'infra.redis.field.uptimeInDays', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 388. Redis 缓存-运行时间(天) - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.uptimeInDays' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-运行时间(天)', 'infra.redis.field.uptimeInDays', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'uptime (days)', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 388. Redis 缓存-运行时间(天) - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.uptimeInDays' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-运行时间(天)', 'infra.redis.field.uptimeInDays', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '运行时间(天)', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 389. Redis 缓存-使用CPU (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.usedCpu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-使用CPU', 'infra.redis.field.usedCpu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 389. Redis 缓存-使用CPU - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.usedCpu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-使用CPU', 'infra.redis.field.usedCpu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'used cpu', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 389. Redis 缓存-使用CPU - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.usedCpu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-使用CPU', 'infra.redis.field.usedCpu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '使用 CPU', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 390. Redis 缓存-使用内存 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.field.usedMemory';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-使用内存', 'infra.redis.field.usedMemory', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 390. Redis 缓存-使用内存 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.usedMemory' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-使用内存', 'infra.redis.field.usedMemory', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'used memory', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 390. Redis 缓存-使用内存 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.field.usedMemory' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-使用内存', 'infra.redis.field.usedMemory', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '使用内存', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 391. Redis 缓存-加载Redis数据失败 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.loadFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-加载Redis数据失败', 'infra.redis.loadFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 391. Redis 缓存-加载Redis数据失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.loadFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-加载Redis数据失败', 'infra.redis.loadFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'failed to load redis data', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 391. Redis 缓存-加载Redis数据失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.loadFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-加载Redis数据失败', 'infra.redis.loadFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '加载 Redis 数据失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 392. Redis 缓存-内存使用 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.memoryUsage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-内存使用', 'infra.redis.memoryUsage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 392. Redis 缓存-内存使用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.memoryUsage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-内存使用', 'infra.redis.memoryUsage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'memory usage', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 392. Redis 缓存-内存使用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.memoryUsage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-内存使用', 'infra.redis.memoryUsage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '内存使用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 393. Redis缓存 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis缓存', 'infra.redis.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 393. Redis缓存 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis缓存', 'infra.redis.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'redis cache', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 393. Redis缓存 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis缓存', 'infra.redis.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'Redis 缓存', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 394. Redis 缓存-Redis概览 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.overview';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-Redis概览', 'infra.redis.overview', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 394. Redis 缓存-Redis概览 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.overview' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-Redis概览', 'infra.redis.overview', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'redis overview', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 394. Redis 缓存-Redis概览 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.overview' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis 缓存-Redis概览', 'infra.redis.overview', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Redis 概览', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 395. Redis缓存 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.redis.redis';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis缓存', 'infra.redis.redis', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 395. Redis缓存 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.redis' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis缓存', 'infra.redis.redis', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'redis cache', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 395. Redis缓存 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.redis.redis' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('Redis缓存', 'infra.redis.redis', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Redis 缓存', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 396. 服务监控 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.server';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('服务监控', 'infra.server', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 396. 服务监控 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.server' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('服务监控', 'infra.server', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 396. 服务监控 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.server' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('服务监控', 'infra.server', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '服务监控', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 397. 服务监控 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.server.docTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('服务监控', 'infra.server.docTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 397. 服务监控 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.server.docTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('服务监控', 'infra.server.docTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'service monitor', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 397. 服务监控 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.server.docTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('服务监控', 'infra.server.docTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '服务监控', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 398. 服务监控-服务监控列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.server.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('服务监控-服务监控列表', 'infra.server.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 398. 服务监控-服务监控列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.server.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('服务监控-服务监控列表', 'infra.server.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'service monitor list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 398. 服务监控-服务监控列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.server.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('服务监控-服务监控列表', 'infra.server.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '服务监控列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 399. 服务监控 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.server.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('服务监控', 'infra.server.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 399. 服务监控 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.server.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('服务监控', 'infra.server.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'service monitor', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 399. 服务监控 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.server.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('服务监控', 'infra.server.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '服务监控', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 400. 服务监控 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.server.server';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('服务监控', 'infra.server.server', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 400. 服务监控 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.server.server' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('服务监控', 'infra.server.server', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'service monitor', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 400. 服务监控 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.server.server' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('服务监控', 'infra.server.server', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '服务监控', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 401. SkyWalking监控 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.skywalking';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SkyWalking监控', 'infra.skywalking', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 401. SkyWalking监控 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.skywalking' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SkyWalking监控', 'infra.skywalking', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 401. SkyWalking监控 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.skywalking' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SkyWalking监控', 'infra.skywalking', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'SkyWalking 监控', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 402. SkyWalking 监控-服务监控 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.skywalking.docTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SkyWalking 监控-服务监控', 'infra.skywalking.docTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 402. SkyWalking 监控-服务监控 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.skywalking.docTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SkyWalking 监控-服务监控', 'infra.skywalking.docTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'service monitor', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 402. SkyWalking 监控-服务监控 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.skywalking.docTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SkyWalking 监控-服务监控', 'infra.skywalking.docTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '服务监控', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 403. SkyWalking 监控-SkyWalking监控列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.skywalking.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SkyWalking 监控-SkyWalking监控列表', 'infra.skywalking.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 403. SkyWalking 监控-SkyWalking监控列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.skywalking.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SkyWalking 监控-SkyWalking监控列表', 'infra.skywalking.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'skywalking list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 403. SkyWalking 监控-SkyWalking监控列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.skywalking.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SkyWalking 监控-SkyWalking监控列表', 'infra.skywalking.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'SkyWalking 监控列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 404. SkyWalking监控 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.skywalking.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SkyWalking监控', 'infra.skywalking.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 404. SkyWalking监控 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.skywalking.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SkyWalking监控', 'infra.skywalking.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'skywalking', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 404. SkyWalking监控 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.skywalking.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SkyWalking监控', 'infra.skywalking.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'SkyWalking 监控', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 405. SkyWalking监控 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.skywalking.skywalking';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SkyWalking监控', 'infra.skywalking.skywalking', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 405. SkyWalking监控 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.skywalking.skywalking' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SkyWalking监控', 'infra.skywalking.skywalking', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'skywalking', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 405. SkyWalking监控 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.skywalking.skywalking' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SkyWalking监控', 'infra.skywalking.skywalking', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'SkyWalking 监控', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 406. WebSocket通信 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket通信', 'infra.webSocket', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 406. WebSocket通信 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket通信', 'infra.webSocket', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 406. WebSocket通信 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket通信', 'infra.webSocket', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'WebSocket 通信', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 407. WebSocket 通信-WebSocket查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-WebSocket查询', 'infra.webSocket.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 407. WebSocket 通信-WebSocket查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-WebSocket查询', 'infra.webSocket.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'websocket query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 407. WebSocket 通信-WebSocket查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-WebSocket查询', 'infra.webSocket.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'WebSocket 查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 408. WebSocket 通信-所有人 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.all';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-所有人', 'infra.webSocket.all', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 408. WebSocket 通信-所有人 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.all' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-所有人', 'infra.webSocket.all', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'all', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 408. WebSocket 通信-所有人 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.all' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-所有人', 'infra.webSocket.all', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '所有人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 409. WebSocket 通信-关闭连接 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.closeConnection';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-关闭连接', 'infra.webSocket.closeConnection', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 409. WebSocket 通信-关闭连接 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.closeConnection' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-关闭连接', 'infra.webSocket.closeConnection', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'close connection', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 409. WebSocket 通信-关闭连接 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.closeConnection' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-关闭连接', 'infra.webSocket.closeConnection', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '关闭连接', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 410. WebSocket 通信-已连接 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.connected';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-已连接', 'infra.webSocket.connected', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 410. WebSocket 通信-已连接 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.connected' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-已连接', 'infra.webSocket.connected', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'connected', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 410. WebSocket 通信-已连接 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.connected' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-已连接', 'infra.webSocket.connected', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '已连接', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 411. WebSocket 通信-连接管理 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.connection';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-连接管理', 'infra.webSocket.connection', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 411. WebSocket 通信-连接管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.connection' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-连接管理', 'infra.webSocket.connection', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'connection management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 411. WebSocket 通信-连接管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.connection' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-连接管理', 'infra.webSocket.connection', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '连接管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 412. WebSocket 通信-连接状态 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.connectionStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-连接状态', 'infra.webSocket.connectionStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 412. WebSocket 通信-连接状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.connectionStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-连接状态', 'infra.webSocket.connectionStatus', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'connection status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 412. WebSocket 通信-连接状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.connectionStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-连接状态', 'infra.webSocket.connectionStatus', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '连接状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 413. WebSocket 通信-未连接 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.disconnected';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-未连接', 'infra.webSocket.disconnected', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 413. WebSocket 通信-未连接 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.disconnected' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-未连接', 'infra.webSocket.disconnected', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'disconnected', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 413. WebSocket 通信-未连接 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.disconnected' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-未连接', 'infra.webSocket.disconnected', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '未连接', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 414. WebSocket 通信-WebSocket实时通信 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.docTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-WebSocket实时通信', 'infra.webSocket.docTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 414. WebSocket 通信-WebSocket实时通信 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.docTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-WebSocket实时通信', 'infra.webSocket.docTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'websocket realtime communication', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 414. WebSocket 通信-WebSocket实时通信 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.docTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-WebSocket实时通信', 'infra.webSocket.docTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'WebSocket 实时通信', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 415. WebSocket 通信-群发 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.group';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-群发', 'infra.webSocket.group', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 415. WebSocket 通信-群发 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.group' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-群发', 'infra.webSocket.group', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'group', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 415. WebSocket 通信-群发 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.group' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-群发', 'infra.webSocket.group', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '群发', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 416. WebSocket 通信-请输入你要发送的消息... (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.inputMessage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-请输入你要发送的消息...', 'infra.webSocket.inputMessage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 416. WebSocket 通信-请输入你要发送的消息... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.inputMessage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-请输入你要发送的消息...', 'infra.webSocket.inputMessage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'enter message to send...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 416. WebSocket 通信-请输入你要发送的消息... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.inputMessage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-请输入你要发送的消息...', 'infra.webSocket.inputMessage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '请输入你要发送的消息...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 417. WebSocket 通信-WebSocket消息列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-WebSocket消息列表', 'infra.webSocket.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 417. WebSocket 通信-WebSocket消息列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-WebSocket消息列表', 'infra.webSocket.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'websocket message list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 417. WebSocket 通信-WebSocket消息列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-WebSocket消息列表', 'infra.webSocket.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'WebSocket 消息列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 418. WebSocket通信 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket通信', 'infra.webSocket.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 418. WebSocket通信 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket通信', 'infra.webSocket.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'websocket', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 418. WebSocket通信 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket通信', 'infra.webSocket.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'WebSocket 通信', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 419. WebSocket 通信-消息内容不能为空 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.message.messageContentEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-消息内容不能为空', 'infra.webSocket.message.messageContentEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 419. WebSocket 通信-消息内容不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.message.messageContentEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-消息内容不能为空', 'infra.webSocket.message.messageContentEmpty', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'message content cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 419. WebSocket 通信-消息内容不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.message.messageContentEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-消息内容不能为空', 'infra.webSocket.message.messageContentEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '消息内容不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 420. WebSocket 通信-处理消息发生异常：{0} (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.message.messageError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-处理消息发生异常：{0}', 'infra.webSocket.message.messageError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 420. WebSocket 通信-处理消息发生异常：{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.message.messageError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-处理消息发生异常：{0}', 'infra.webSocket.message.messageError', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'message error: {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 420. WebSocket 通信-处理消息发生异常：{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.message.messageError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-处理消息发生异常：{0}', 'infra.webSocket.message.messageError', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '处理消息发生异常：{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 421. WebSocket 通信-未处理消息：{0} (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.message.unhandledMessage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-未处理消息：{0}', 'infra.webSocket.message.unhandledMessage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 421. WebSocket 通信-未处理消息：{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.message.unhandledMessage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-未处理消息：{0}', 'infra.webSocket.message.unhandledMessage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'unhandled message: {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 421. WebSocket 通信-未处理消息：{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.message.unhandledMessage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-未处理消息：{0}', 'infra.webSocket.message.unhandledMessage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '未处理消息：{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 422. WebSocket 通信-未知的消息类型：{0} (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.message.unknownMessageType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-未知的消息类型：{0}', 'infra.webSocket.message.unknownMessageType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 422. WebSocket 通信-未知的消息类型：{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.message.unknownMessageType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-未知的消息类型：{0}', 'infra.webSocket.message.unknownMessageType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'unknown message type: {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 422. WebSocket 通信-未知的消息类型：{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.message.unknownMessageType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-未知的消息类型：{0}', 'infra.webSocket.message.unknownMessageType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '未知的消息类型：{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 423. WebSocket 通信-{0}条 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.messageCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-{0}条', 'infra.webSocket.messageCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 423. WebSocket 通信-{0}条 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.messageCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-{0}条', 'infra.webSocket.messageCount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '{0} items', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 423. WebSocket 通信-{0}条 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.messageCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-{0}条', 'infra.webSocket.messageCount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '{0} 条', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 424. WebSocket 通信-消息记录 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.messageRecord';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-消息记录', 'infra.webSocket.messageRecord', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 424. WebSocket 通信-消息记录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.messageRecord' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-消息记录', 'infra.webSocket.messageRecord', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'message record', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 424. WebSocket 通信-消息记录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.messageRecord' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-消息记录', 'infra.webSocket.messageRecord', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '消息记录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 425. WebSocket 通信-消息发送 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.messageSend';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-消息发送', 'infra.webSocket.messageSend', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 425. WebSocket 通信-消息发送 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.messageSend' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-消息发送', 'infra.webSocket.messageSend', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'message send', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 425. WebSocket 通信-消息发送 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.messageSend' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-消息发送', 'infra.webSocket.messageSend', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '消息发送', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 426. WebSocket 通信-暂无消息记录 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.noMessage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-暂无消息记录', 'infra.webSocket.noMessage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 426. WebSocket 通信-暂无消息记录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.noMessage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-暂无消息记录', 'infra.webSocket.noMessage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'no message record', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 426. WebSocket 通信-暂无消息记录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.noMessage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-暂无消息记录', 'infra.webSocket.noMessage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '暂无消息记录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 427. WebSocket 通信-开启连接 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.openConnection';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-开启连接', 'infra.webSocket.openConnection', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 427. WebSocket 通信-开启连接 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.openConnection' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-开启连接', 'infra.webSocket.openConnection', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'open connection', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 427. WebSocket 通信-开启连接 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.openConnection' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-开启连接', 'infra.webSocket.openConnection', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '开启连接', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 428. WebSocket 通信-接收人 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.receiver';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-接收人', 'infra.webSocket.receiver', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 428. WebSocket 通信-接收人 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.receiver' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-接收人', 'infra.webSocket.receiver', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'receiver', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 428. WebSocket 通信-接收人 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.receiver' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-接收人', 'infra.webSocket.receiver', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '接收人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 429. WebSocket 通信-请选择接收人 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.selectReceiver';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-请选择接收人', 'infra.webSocket.selectReceiver', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 429. WebSocket 通信-请选择接收人 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.selectReceiver' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-请选择接收人', 'infra.webSocket.selectReceiver', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'please select receiver', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 429. WebSocket 通信-请选择接收人 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.selectReceiver' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-请选择接收人', 'infra.webSocket.selectReceiver', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '请选择接收人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 430. WebSocket 通信-发送消息 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.sendMessage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-发送消息', 'infra.webSocket.sendMessage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 430. WebSocket 通信-发送消息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.sendMessage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-发送消息', 'infra.webSocket.sendMessage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'send message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 430. WebSocket 通信-发送消息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.sendMessage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-发送消息', 'infra.webSocket.sendMessage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '发送消息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 431. WebSocket 通信-服务地址 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.serverAddress';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-服务地址', 'infra.webSocket.serverAddress', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 431. WebSocket 通信-服务地址 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.serverAddress' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-服务地址', 'infra.webSocket.serverAddress', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'server address', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 431. WebSocket 通信-服务地址 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.serverAddress' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-服务地址', 'infra.webSocket.serverAddress', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '服务地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 432. WebSocket 通信-单发 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.single';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-单发', 'infra.webSocket.single', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 432. WebSocket 通信-单发 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.single' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-单发', 'infra.webSocket.single', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'single', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 432. WebSocket 通信-单发 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.single' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-单发', 'infra.webSocket.single', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '单发', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 433. WebSocket 通信-系统 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.system';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-系统', 'infra.webSocket.system', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 433. WebSocket 通信-系统 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.system' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-系统', 'infra.webSocket.system', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'system', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 433. WebSocket 通信-系统 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.system' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-系统', 'infra.webSocket.system', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '系统', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 434. WebSocket 通信-未知 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.unknown';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-未知', 'infra.webSocket.unknown', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 434. WebSocket 通信-未知 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.unknown' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-未知', 'infra.webSocket.unknown', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'unknown', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 434. WebSocket 通信-未知 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.unknown' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-未知', 'infra.webSocket.unknown', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '未知', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 435. WebSocket 通信-用户ID (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-用户ID', 'infra.webSocket.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 435. WebSocket 通信-用户ID - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-用户ID', 'infra.webSocket.userId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 435. WebSocket 通信-用户ID - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket 通信-用户ID', 'infra.webSocket.userId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '用户 ID', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 436. WebSocket通信 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'infra.webSocket.webSocket';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket通信', 'infra.webSocket.webSocket', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 436. WebSocket通信 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.webSocket' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket通信', 'infra.webSocket.webSocket', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'websocket', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 436. WebSocket通信 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'infra.webSocket.webSocket' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('WebSocket通信', 'infra.webSocket.webSocket', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'WebSocket 通信', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
