-- =============================================
-- SYSTEM i18n SQL
-- Generated: 2026-05-29
-- =============================================

SET @IS_SYSTEM = 0;
SET @MODULE_TYPE = 'system';
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

-- 1. 地区信息 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息', 'system.area', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 地区信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息', 'system.area', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 地区信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息', 'system.area', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '地区信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 地区信息-新增地区 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-新增地区', 'system.area.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 地区信息-新增地区 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-新增地区', 'system.area.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create area', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 地区信息-新增地区 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-新增地区', 'system.area.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增地区', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 地区信息-删除地区 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-删除地区', 'system.area.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 地区信息-删除地区 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-删除地区', 'system.area.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete area', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 地区信息-删除地区 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-删除地区', 'system.area.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除地区', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 地区信息-导出地区 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-导出地区', 'system.area.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 地区信息-导出地区 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-导出地区', 'system.area.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export area', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 地区信息-导出地区 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-导出地区', 'system.area.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出地区', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 地区信息-地区查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-地区查询', 'system.area.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 地区信息-地区查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-地区查询', 'system.area.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'area query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 地区信息-地区查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-地区查询', 'system.area.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '地区查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 地区信息-修改地区 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-修改地区', 'system.area.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 地区信息-修改地区 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-修改地区', 'system.area.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update area', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 地区信息-修改地区 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-修改地区', 'system.area.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改地区', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 地区信息 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.area';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息', 'system.area.area', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 地区信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.area' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息', 'system.area.area', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'area', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 地区信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.area' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息', 'system.area.area', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '地区信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 地区信息-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-创建时间', 'system.area.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 地区信息-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-创建时间', 'system.area.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 地区信息-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-创建时间', 'system.area.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 地区信息-GeoJson (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.field.geoJson';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-GeoJson', 'system.area.field.geoJson', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 地区信息-GeoJson - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.geoJson' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-GeoJson', 'system.area.field.geoJson', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'geo json', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 地区信息-GeoJson - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.geoJson' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-GeoJson', 'system.area.field.geoJson', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'GeoJson', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 地区信息-ID (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-ID', 'system.area.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 地区信息-ID - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-ID', 'system.area.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 地区信息-ID - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-ID', 'system.area.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'ID', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 地区信息-纬度 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.field.latitude';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-纬度', 'system.area.field.latitude', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 地区信息-纬度 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.latitude' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-纬度', 'system.area.field.latitude', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'latitude', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 地区信息-纬度 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.latitude' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-纬度', 'system.area.field.latitude', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '纬度', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 地区信息-层级 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.field.level';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-层级', 'system.area.field.level', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 地区信息-层级 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.level' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-层级', 'system.area.field.level', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'level', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 地区信息-层级 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.level' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-层级', 'system.area.field.level', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '层级', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 地区信息-经度 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.field.longitude';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-经度', 'system.area.field.longitude', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 地区信息-经度 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.longitude' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-经度', 'system.area.field.longitude', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'longitude', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 地区信息-经度 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.longitude' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-经度', 'system.area.field.longitude', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '经度', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 地区信息-地区名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-地区名称', 'system.area.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 地区信息-地区名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-地区名称', 'system.area.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'area name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 地区信息-地区名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-地区名称', 'system.area.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '地区名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 地区信息-父级ID (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.field.parentId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-父级ID', 'system.area.field.parentId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 地区信息-父级ID - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.parentId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-父级ID', 'system.area.field.parentId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'parent id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 地区信息-父级ID - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.parentId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-父级ID', 'system.area.field.parentId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '父级ID', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 地区信息-上级地区 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.field.parentIdName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-上级地区', 'system.area.field.parentIdName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 地区信息-上级地区 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.parentIdName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-上级地区', 'system.area.field.parentIdName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'parent area', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 地区信息-上级地区 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.parentIdName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-上级地区', 'system.area.field.parentIdName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '上级地区', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 地区信息-邮政编码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.field.postalCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-邮政编码', 'system.area.field.postalCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 地区信息-邮政编码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.postalCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-邮政编码', 'system.area.field.postalCode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'postal code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 地区信息-邮政编码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.postalCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-邮政编码', 'system.area.field.postalCode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '邮政编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 地区信息-排序号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.field.sortNum';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-排序号', 'system.area.field.sortNum', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 地区信息-排序号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.sortNum' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-排序号', 'system.area.field.sortNum', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sort order', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 地区信息-排序号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.sortNum' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-排序号', 'system.area.field.sortNum', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '排序号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 地区信息-数据来源 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.field.source';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-数据来源', 'system.area.field.source', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 地区信息-数据来源 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.source' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-数据来源', 'system.area.field.source', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'data source', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 地区信息-数据来源 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.field.source' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-数据来源', 'system.area.field.source', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '数据来源', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 地区信息-地区信息列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-地区信息列表', 'system.area.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 地区信息-地区信息列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-地区信息列表', 'system.area.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'area list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 地区信息-地区信息列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息-地区信息列表', 'system.area.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '地区信息列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 地区信息 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.area.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息', 'system.area.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 地区信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息', 'system.area.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'area', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 地区信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.area.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('地区信息', 'system.area.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '地区信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 部门 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门', 'system.dept', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 部门 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门', 'system.dept', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 部门 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门', 'system.dept', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '部门', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 部门-新增部门 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-新增部门', 'system.dept.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 部门-新增部门 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-新增部门', 'system.dept.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create department', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 部门-新增部门 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-新增部门', 'system.dept.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增部门', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 部门-删除部门 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-删除部门', 'system.dept.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 部门-删除部门 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-删除部门', 'system.dept.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete department', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 部门-删除部门 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-删除部门', 'system.dept.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除部门', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 部门-部门查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-部门查询', 'system.dept.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 部门-部门查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-部门查询', 'system.dept.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'department query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 部门-部门查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-部门查询', 'system.dept.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '部门查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 部门-修改部门 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-修改部门', 'system.dept.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 部门-修改部门 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-修改部门', 'system.dept.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update department', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 部门-修改部门 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-修改部门', 'system.dept.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改部门', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 部门 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.dept';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门', 'system.dept.dept', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 部门 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.dept' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门', 'system.dept.dept', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'department', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 部门 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.dept' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门', 'system.dept.dept', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '部门', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 部门-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-创建时间', 'system.dept.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 部门-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-创建时间', 'system.dept.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 部门-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-创建时间', 'system.dept.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 部门-邮箱 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.field.email';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-邮箱', 'system.dept.field.email', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 部门-邮箱 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.email' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-邮箱', 'system.dept.field.email', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'email', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 部门-邮箱 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.email' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-邮箱', 'system.dept.field.email', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '邮箱', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 部门-部门编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-部门编号', 'system.dept.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 部门-部门编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-部门编号', 'system.dept.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'department id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 部门-部门编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-部门编号', 'system.dept.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '部门编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 部门-负责人 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.field.leaderUserId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-负责人', 'system.dept.field.leaderUserId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 部门-负责人 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.leaderUserId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-负责人', 'system.dept.field.leaderUserId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'leader', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 部门-负责人 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.leaderUserId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-负责人', 'system.dept.field.leaderUserId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '负责人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 部门-负责人 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.field.leaderUserIdName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-负责人', 'system.dept.field.leaderUserIdName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 部门-负责人 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.leaderUserIdName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-负责人', 'system.dept.field.leaderUserIdName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'leader', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 部门-负责人 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.leaderUserIdName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-负责人', 'system.dept.field.leaderUserIdName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '负责人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 部门-部门名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-部门名称', 'system.dept.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 部门-部门名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-部门名称', 'system.dept.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'department name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 部门-部门名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-部门名称', 'system.dept.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '部门名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 部门-上级部门 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.field.parentId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-上级部门', 'system.dept.field.parentId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 部门-上级部门 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.parentId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-上级部门', 'system.dept.field.parentId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'parent department', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 部门-上级部门 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.parentId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-上级部门', 'system.dept.field.parentId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '上级部门', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 部门-上级部门 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.field.parentIdName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-上级部门', 'system.dept.field.parentIdName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 部门-上级部门 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.parentIdName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-上级部门', 'system.dept.field.parentIdName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'parent department', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 部门-上级部门 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.parentIdName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-上级部门', 'system.dept.field.parentIdName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '上级部门', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 部门-联系电话 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.field.phone';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-联系电话', 'system.dept.field.phone', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 部门-联系电话 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.phone' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-联系电话', 'system.dept.field.phone', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'phone', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 部门-联系电话 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.phone' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-联系电话', 'system.dept.field.phone', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '联系电话', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 部门-显示顺序 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.field.sort';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-显示顺序', 'system.dept.field.sort', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 部门-显示顺序 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.sort' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-显示顺序', 'system.dept.field.sort', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sort order', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 部门-显示顺序 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.sort' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-显示顺序', 'system.dept.field.sort', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '显示顺序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 部门-状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-状态', 'system.dept.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 部门-状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-状态', 'system.dept.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 部门-状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-状态', 'system.dept.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 部门-部门列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-部门列表', 'system.dept.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 部门-部门列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-部门列表', 'system.dept.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'department list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 部门-部门列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-部门列表', 'system.dept.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '部门列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 部门-部门管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dept.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-部门管理', 'system.dept.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 部门-部门管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-部门管理', 'system.dept.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'department management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 部门-部门管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dept.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门-部门管理', 'system.dept.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '部门管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 字典管理 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理', 'system.dict', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 字典管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理', 'system.dict', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 字典管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理', 'system.dict', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字典管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 字典管理-新增字典 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-新增字典', 'system.dict.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 字典管理-新增字典 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-新增字典', 'system.dict.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create dict', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 字典管理-新增字典 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-新增字典', 'system.dict.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增字典', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 字典管理-创建国际化 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.action.createI18n';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-创建国际化', 'system.dict.action.createI18n', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 字典管理-创建国际化 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.action.createI18n' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-创建国际化', 'system.dict.action.createI18n', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create i18n', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 字典管理-创建国际化 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.action.createI18n' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-创建国际化', 'system.dict.action.createI18n', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '创建国际化', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 字典管理-删除字典 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-删除字典', 'system.dict.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 字典管理-删除字典 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-删除字典', 'system.dict.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete dict', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 字典管理-删除字典 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-删除字典', 'system.dict.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除字典', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 字典管理-导出字典 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-导出字典', 'system.dict.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 字典管理-导出字典 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-导出字典', 'system.dict.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export dict', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 字典管理-导出字典 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-导出字典', 'system.dict.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出字典', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 字典管理-字典查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典查询', 'system.dict.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 字典管理-字典查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典查询', 'system.dict.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'dict query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 字典管理-字典查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典查询', 'system.dict.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '字典查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 字典管理-修改字典 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-修改字典', 'system.dict.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 字典管理-修改字典 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-修改字典', 'system.dict.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update dict', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 字典管理-修改字典 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-修改字典', 'system.dict.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改字典', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 字典管理-字典数据 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.data';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典数据', 'system.dict.data', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 字典管理-字典数据 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.data' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典数据', 'system.dict.data', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'dict data', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 字典管理-字典数据 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.data' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典数据', 'system.dict.data', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字典数据', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 字典管理-颜色类型 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.dataField.colorType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-颜色类型', 'system.dict.dataField.colorType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 字典管理-颜色类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.colorType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-颜色类型', 'system.dict.dataField.colorType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'color type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 字典管理-颜色类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.colorType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-颜色类型', 'system.dict.dataField.colorType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '颜色类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 字典管理-创建时间 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.dataField.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-创建时间', 'system.dict.dataField.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 字典管理-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-创建时间', 'system.dict.dataField.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 字典管理-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-创建时间', 'system.dict.dataField.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 字典管理-CSSClass (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.dataField.cssClass';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-CSSClass', 'system.dict.dataField.cssClass', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 字典管理-CSSClass - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.cssClass' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-CSSClass', 'system.dict.dataField.cssClass', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'css class', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 字典管理-CSSClass - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.cssClass' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-CSSClass', 'system.dict.dataField.cssClass', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'CSS Class', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 字典管理-字典类型 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.dataField.dictType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典类型', 'system.dict.dataField.dictType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 字典管理-字典类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.dictType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典类型', 'system.dict.dataField.dictType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'dict type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 字典管理-字典类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.dictType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典类型', 'system.dict.dataField.dictType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字典类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 字典管理-国际化 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.dataField.i18n';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-国际化', 'system.dict.dataField.i18n', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 字典管理-国际化 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.i18n' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-国际化', 'system.dict.dataField.i18n', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'i18n', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 字典管理-国际化 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.i18n' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-国际化', 'system.dict.dataField.i18n', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '国际化', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 字典管理-字典编号 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.dataField.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典编号', 'system.dict.dataField.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 字典管理-字典编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典编号', 'system.dict.dataField.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'dict code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 字典管理-字典编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典编号', 'system.dict.dataField.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字典编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 字典管理-字典标签 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.dataField.label';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典标签', 'system.dict.dataField.label', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 字典管理-字典标签 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.label' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典标签', 'system.dict.dataField.label', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'dict label', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 字典管理-字典标签 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.label' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典标签', 'system.dict.dataField.label', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字典标签', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 字典管理-字典标签 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.dataField.labelName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典标签', 'system.dict.dataField.labelName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 字典管理-字典标签 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.labelName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典标签', 'system.dict.dataField.labelName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'dict label', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 字典管理-字典标签 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.labelName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典标签', 'system.dict.dataField.labelName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字典标签', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 字典管理-备注 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.dataField.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-备注', 'system.dict.dataField.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 字典管理-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-备注', 'system.dict.dataField.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 字典管理-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-备注', 'system.dict.dataField.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 字典管理-排序 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.dataField.sort';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-排序', 'system.dict.dataField.sort', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 字典管理-排序 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.sort' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-排序', 'system.dict.dataField.sort', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'sort order', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 字典管理-排序 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.sort' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-排序', 'system.dict.dataField.sort', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '排序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 字典管理-状态 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.dataField.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-状态', 'system.dict.dataField.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 字典管理-状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-状态', 'system.dict.dataField.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 字典管理-状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-状态', 'system.dict.dataField.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 字典管理-字典键值 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.dataField.value';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典键值', 'system.dict.dataField.value', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 字典管理-字典键值 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.value' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典键值', 'system.dict.dataField.value', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'dict value', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 字典管理-字典键值 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataField.value' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典键值', 'system.dict.dataField.value', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字典键值', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 字典管理-字典数据列表 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.dataList';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典数据列表', 'system.dict.dataList', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 字典管理-字典数据列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataList' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典数据列表', 'system.dict.dataList', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'dict data list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 字典管理-字典数据列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dataList' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典数据列表', 'system.dict.dataList', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字典数据列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 字典管理 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.dict';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理', 'system.dict.dict', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 字典管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dict' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理', 'system.dict.dict', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'dictionary', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 字典管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.dict' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理', 'system.dict.dict', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字典管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 字典管理-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-创建时间', 'system.dict.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 字典管理-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-创建时间', 'system.dict.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 字典管理-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-创建时间', 'system.dict.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 字典管理-字典编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典编号', 'system.dict.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 字典管理-字典编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典编号', 'system.dict.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'dict id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 字典管理-字典编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典编号', 'system.dict.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '字典编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 字典管理-字典名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典名称', 'system.dict.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 字典管理-字典名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典名称', 'system.dict.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'dict name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 字典管理-字典名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典名称', 'system.dict.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '字典名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 字典管理-备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-备注', 'system.dict.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 字典管理-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-备注', 'system.dict.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 字典管理-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-备注', 'system.dict.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 字典管理-状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-状态', 'system.dict.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 字典管理-状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-状态', 'system.dict.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 字典管理-状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-状态', 'system.dict.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 字典管理-字典类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典类型', 'system.dict.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 字典管理-字典类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典类型', 'system.dict.field.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'dict type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 字典管理-字典类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典类型', 'system.dict.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '字典类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 字典管理-请输入十六进制颜色代码，如#108ee9 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.help.cssClass';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-请输入十六进制颜色代码，如#108ee9', 'system.dict.help.cssClass', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 字典管理-请输入十六进制颜色代码，如#108ee9 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.help.cssClass' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-请输入十六进制颜色代码，如#108ee9', 'system.dict.help.cssClass', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'enter hex color code, e.g. #108ee9', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 字典管理-请输入十六进制颜色代码，如#108ee9 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.help.cssClass' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-请输入十六进制颜色代码，如#108ee9', 'system.dict.help.cssClass', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '请输入十六进制颜色代码，如 #108ee9', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 字典管理-您可以填写国际化键或内容，如果您填写的内容没有使用国际化或没有匹配到国际化键，将直接显示内容 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.help.label';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-您可以填写国际化键或内容，如果您填写的内容没有使用国际化或没有匹配到国际化键，将直接显示内容', 'system.dict.help.label', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 字典管理-您可以填写国际化键或内容，如果您填写的内容没有使用国际化或没有匹配到国际化键，将直接显示内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.help.label' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-您可以填写国际化键或内容，如果您填写的内容没有使用国际化或没有匹配到国际化键，将直接显示内容', 'system.dict.help.label', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'you can fill in an i18n key or content. if the filled content does not use i18n or does not match an i18n key, the content will be displayed directly', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 字典管理-您可以填写国际化键或内容，如果您填写的内容没有使用国际化或没有匹配到国际化键，将直接显示内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.help.label' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-您可以填写国际化键或内容，如果您填写的内容没有使用国际化或没有匹配到国际化键，将直接显示内容', 'system.dict.help.label', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '您可以填写国际化键或内容，如果您填写的内容没有使用国际化或没有匹配到国际化键，将直接显示内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 字典管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理', 'system.dict.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 字典管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理', 'system.dict.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'dictionary management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 字典管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理', 'system.dict.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '字典管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 字典管理-字典类型 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典类型', 'system.dict.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 字典管理-字典类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典类型', 'system.dict.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'dict type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 字典管理-字典类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典类型', 'system.dict.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字典类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 字典管理-创建时间 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.typeField.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-创建时间', 'system.dict.typeField.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 字典管理-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.typeField.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-创建时间', 'system.dict.typeField.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 字典管理-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.typeField.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-创建时间', 'system.dict.typeField.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 字典管理-字典编号 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.typeField.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典编号', 'system.dict.typeField.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 字典管理-字典编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.typeField.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典编号', 'system.dict.typeField.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'dict id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 字典管理-字典编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.typeField.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典编号', 'system.dict.typeField.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字典编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 字典管理-字典名称 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.typeField.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典名称', 'system.dict.typeField.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 字典管理-字典名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.typeField.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典名称', 'system.dict.typeField.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'dict name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 字典管理-字典名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.typeField.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典名称', 'system.dict.typeField.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字典名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 字典管理-备注 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.typeField.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-备注', 'system.dict.typeField.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 字典管理-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.typeField.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-备注', 'system.dict.typeField.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 字典管理-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.typeField.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-备注', 'system.dict.typeField.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 字典管理-状态 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.typeField.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-状态', 'system.dict.typeField.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 字典管理-状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.typeField.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-状态', 'system.dict.typeField.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 字典管理-状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.typeField.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-状态', 'system.dict.typeField.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 字典管理-字典类型 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.typeField.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典类型', 'system.dict.typeField.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 字典管理-字典类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.typeField.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典类型', 'system.dict.typeField.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'dict type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 字典管理-字典类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.typeField.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典类型', 'system.dict.typeField.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字典类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 字典管理-字典类型列表 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.dict.typeList';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典类型列表', 'system.dict.typeList', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 字典管理-字典类型列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.typeList' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典类型列表', 'system.dict.typeList', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'dict type list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 字典管理-字典类型列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.dict.typeList' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典管理-字典类型列表', 'system.dict.typeList', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '字典类型列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 登录日志 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.loginlog';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志', 'system.loginlog', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 登录日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志', 'system.loginlog', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 登录日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志', 'system.loginlog', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '登录日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 登录日志-导出登录日志 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.loginlog.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-导出登录日志', 'system.loginlog.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 登录日志-导出登录日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-导出登录日志', 'system.loginlog.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export login log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 登录日志-导出登录日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-导出登录日志', 'system.loginlog.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出登录日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 登录日志-登录日志查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.loginlog.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录日志查询', 'system.loginlog.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 登录日志-登录日志查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录日志查询', 'system.loginlog.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'login log query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 登录日志-登录日志查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录日志查询', 'system.loginlog.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '登录日志查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 登录日志-登录日期 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.loginlog.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录日期', 'system.loginlog.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 登录日志-登录日期 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录日期', 'system.loginlog.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'login date', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 登录日志-登录日期 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录日期', 'system.loginlog.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '登录日期', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 登录日志-日志编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.loginlog.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-日志编号', 'system.loginlog.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 登录日志-日志编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-日志编号', 'system.loginlog.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'log id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 登录日志-日志编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-日志编号', 'system.loginlog.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '日志编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 登录日志-操作类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.loginlog.field.logType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-操作类型', 'system.loginlog.field.logType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 登录日志-操作类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.field.logType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-操作类型', 'system.loginlog.field.logType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'log type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 登录日志-操作类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.field.logType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-操作类型', 'system.loginlog.field.logType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '操作类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 登录日志-登录结果 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.loginlog.field.result';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录结果', 'system.loginlog.field.result', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 登录日志-登录结果 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.field.result' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录结果', 'system.loginlog.field.result', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'login result', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 登录日志-登录结果 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.field.result' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录结果', 'system.loginlog.field.result', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '登录结果', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 登录日志-浏览器 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.loginlog.field.userAgent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-浏览器', 'system.loginlog.field.userAgent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 登录日志-浏览器 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.field.userAgent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-浏览器', 'system.loginlog.field.userAgent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'browser', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 登录日志-浏览器 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.field.userAgent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-浏览器', 'system.loginlog.field.userAgent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '浏览器', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 登录日志-登录地址 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.loginlog.field.userIp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录地址', 'system.loginlog.field.userIp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 登录日志-登录地址 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.field.userIp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录地址', 'system.loginlog.field.userIp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'login ip', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 登录日志-登录地址 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.field.userIp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录地址', 'system.loginlog.field.userIp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '登录地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 登录日志-用户名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.loginlog.field.username';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-用户名称', 'system.loginlog.field.username', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 登录日志-用户名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.field.username' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-用户名称', 'system.loginlog.field.username', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'username', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 登录日志-用户名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.field.username' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-用户名称', 'system.loginlog.field.username', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 登录日志-登录日志列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.loginlog.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录日志列表', 'system.loginlog.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 登录日志-登录日志列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录日志列表', 'system.loginlog.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'login log list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 登录日志-登录日志列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录日志列表', 'system.loginlog.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '登录日志列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 登录日志 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.loginlog.loginlog';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志', 'system.loginlog.loginlog', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 登录日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.loginlog' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志', 'system.loginlog.loginlog', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'login log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 登录日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.loginlog' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志', 'system.loginlog.loginlog', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '登录日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 登录日志 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.loginlog.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志', 'system.loginlog.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 登录日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志', 'system.loginlog.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'login log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 登录日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志', 'system.loginlog.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '登录日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 登录日志-登录日志详情 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.loginlog.message.detail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录日志详情', 'system.loginlog.message.detail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 登录日志-登录日志详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.message.detail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录日志详情', 'system.loginlog.message.detail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'login log detail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 登录日志-登录日志详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.message.detail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-登录日志详情', 'system.loginlog.message.detail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '登录日志详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 登录日志-系统日志 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.loginlog.message.systemLog';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-系统日志', 'system.loginlog.message.systemLog', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 登录日志-系统日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.message.systemLog' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-系统日志', 'system.loginlog.message.systemLog', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'system log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 登录日志-系统日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.loginlog.message.systemLog' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录日志-系统日志', 'system.loginlog.message.systemLog', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '系统日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 邮箱账号 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号', 'system.mail.account', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 邮箱账号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号', 'system.mail.account', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 邮箱账号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号', 'system.mail.account', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '邮箱账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 邮箱账号 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.account';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号', 'system.mail.account.account', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 邮箱账号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.account' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号', 'system.mail.account.account', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'mail account', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 邮箱账号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.account' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号', 'system.mail.account.account', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '邮箱账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 邮箱账号-新增邮箱账号 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-新增邮箱账号', 'system.mail.account.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 邮箱账号-新增邮箱账号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-新增邮箱账号', 'system.mail.account.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create mail account', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 邮箱账号-新增邮箱账号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-新增邮箱账号', 'system.mail.account.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增邮箱账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 邮箱账号-删除邮箱账号 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-删除邮箱账号', 'system.mail.account.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 邮箱账号-删除邮箱账号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-删除邮箱账号', 'system.mail.account.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete mail account', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 邮箱账号-删除邮箱账号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-删除邮箱账号', 'system.mail.account.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除邮箱账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 邮箱账号-邮箱账号查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-邮箱账号查询', 'system.mail.account.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 邮箱账号-邮箱账号查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-邮箱账号查询', 'system.mail.account.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'mail account query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 邮箱账号-邮箱账号查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-邮箱账号查询', 'system.mail.account.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '邮箱账号查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 邮箱账号-修改邮箱账号 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-修改邮箱账号', 'system.mail.account.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 邮箱账号-修改邮箱账号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-修改邮箱账号', 'system.mail.account.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update mail account', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 邮箱账号-修改邮箱账号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-修改邮箱账号', 'system.mail.account.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改邮箱账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 邮箱账号-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-创建时间', 'system.mail.account.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 邮箱账号-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-创建时间', 'system.mail.account.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 邮箱账号-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-创建时间', 'system.mail.account.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 邮箱账号-SMTP服务器域名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.field.host';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-SMTP服务器域名', 'system.mail.account.field.host', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 邮箱账号-SMTP服务器域名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.host' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-SMTP服务器域名', 'system.mail.account.field.host', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'smtp server', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 邮箱账号-SMTP服务器域名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.host' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-SMTP服务器域名', 'system.mail.account.field.host', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'SMTP 服务器域名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 邮箱账号-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-编号', 'system.mail.account.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 邮箱账号-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-编号', 'system.mail.account.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 邮箱账号-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-编号', 'system.mail.account.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 邮箱账号-邮箱 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.field.mail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-邮箱', 'system.mail.account.field.mail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 邮箱账号-邮箱 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.mail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-邮箱', 'system.mail.account.field.mail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'email', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 邮箱账号-邮箱 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.mail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-邮箱', 'system.mail.account.field.mail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '邮箱', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 邮箱账号-密码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.field.password';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-密码', 'system.mail.account.field.password', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 邮箱账号-密码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.password' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-密码', 'system.mail.account.field.password', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 邮箱账号-密码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.password' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-密码', 'system.mail.account.field.password', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 邮箱账号-SMTP服务器端口 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.field.port';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-SMTP服务器端口', 'system.mail.account.field.port', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 邮箱账号-SMTP服务器端口 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.port' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-SMTP服务器端口', 'system.mail.account.field.port', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'smtp port', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 邮箱账号-SMTP服务器端口 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.port' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-SMTP服务器端口', 'system.mail.account.field.port', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'SMTP 服务器端口', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 邮箱账号-备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-备注', 'system.mail.account.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 邮箱账号-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-备注', 'system.mail.account.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 邮箱账号-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-备注', 'system.mail.account.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 邮箱账号-是否开启SSL (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.field.sslEnable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-是否开启SSL', 'system.mail.account.field.sslEnable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 邮箱账号-是否开启SSL - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.sslEnable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-是否开启SSL', 'system.mail.account.field.sslEnable', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'enable ssl', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 邮箱账号-是否开启SSL - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.sslEnable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-是否开启SSL', 'system.mail.account.field.sslEnable', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否开启 SSL', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 邮箱账号-是否开启STARTTLS (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.field.starttlsEnable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-是否开启STARTTLS', 'system.mail.account.field.starttlsEnable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 邮箱账号-是否开启STARTTLS - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.starttlsEnable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-是否开启STARTTLS', 'system.mail.account.field.starttlsEnable', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'enable starttls', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 邮箱账号-是否开启STARTTLS - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.starttlsEnable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-是否开启STARTTLS', 'system.mail.account.field.starttlsEnable', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否开启 STARTTLS', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 邮箱账号-用户名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.field.username';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-用户名', 'system.mail.account.field.username', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 邮箱账号-用户名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.username' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-用户名', 'system.mail.account.field.username', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'username', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 邮箱账号-用户名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.field.username' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-用户名', 'system.mail.account.field.username', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 邮箱账号-邮箱账号列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-邮箱账号列表', 'system.mail.account.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 邮箱账号-邮箱账号列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-邮箱账号列表', 'system.mail.account.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mail account list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 邮箱账号-邮箱账号列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-邮箱账号列表', 'system.mail.account.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '邮箱账号列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 邮箱账号 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.mailAccount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号', 'system.mail.account.mailAccount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 邮箱账号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.mailAccount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号', 'system.mail.account.mailAccount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'mail account', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 邮箱账号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.mailAccount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号', 'system.mail.account.mailAccount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '邮箱账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 邮箱账号 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号', 'system.mail.account.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 邮箱账号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号', 'system.mail.account.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'mail account', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 邮箱账号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号', 'system.mail.account.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '邮箱账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 邮箱账号-邮件配置 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.account.message.config';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-邮件配置', 'system.mail.account.message.config', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 邮箱账号-邮件配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.message.config' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-邮件配置', 'system.mail.account.message.config', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mail config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 邮箱账号-邮件配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.account.message.config' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱账号-邮件配置', 'system.mail.account.message.config', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '邮件配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 邮件日志 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志', 'system.mail.log', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 邮件日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志', 'system.mail.log', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 邮件日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志', 'system.mail.log', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '邮件日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 邮件日志-导出邮件日志 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-导出邮件日志', 'system.mail.log.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 邮件日志-导出邮件日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-导出邮件日志', 'system.mail.log.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export mail log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 邮件日志-导出邮件日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-导出邮件日志', 'system.mail.log.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出邮件日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 邮件日志-邮件日志查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮件日志查询', 'system.mail.log.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 邮件日志-邮件日志查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮件日志查询', 'system.mail.log.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'mail log query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 邮件日志-邮件日志查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮件日志查询', 'system.mail.log.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '邮件日志查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 邮件日志-邮箱账号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.field.accountId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮箱账号', 'system.mail.log.field.accountId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 邮件日志-邮箱账号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.accountId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮箱账号', 'system.mail.log.field.accountId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mail account', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 邮件日志-邮箱账号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.accountId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮箱账号', 'system.mail.log.field.accountId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '邮箱账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 邮件日志-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-创建时间', 'system.mail.log.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 邮件日志-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-创建时间', 'system.mail.log.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 邮件日志-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-创建时间', 'system.mail.log.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 邮件日志-发送邮箱 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.field.fromMail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-发送邮箱', 'system.mail.log.field.fromMail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 邮件日志-发送邮箱 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.fromMail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-发送邮箱', 'system.mail.log.field.fromMail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sender', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 邮件日志-发送邮箱 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.fromMail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-发送邮箱', 'system.mail.log.field.fromMail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送邮箱', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 邮件日志-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-编号', 'system.mail.log.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 邮件日志-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-编号', 'system.mail.log.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 邮件日志-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-编号', 'system.mail.log.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 邮件日志-发送异常 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.field.sendException';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-发送异常', 'system.mail.log.field.sendException', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 邮件日志-发送异常 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.sendException' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-发送异常', 'system.mail.log.field.sendException', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'send exception', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 邮件日志-发送异常 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.sendException' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-发送异常', 'system.mail.log.field.sendException', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送异常', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 邮件日志-发送消息编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.field.sendMessageId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-发送消息编号', 'system.mail.log.field.sendMessageId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 邮件日志-发送消息编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.sendMessageId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-发送消息编号', 'system.mail.log.field.sendMessageId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'send message id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 邮件日志-发送消息编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.sendMessageId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-发送消息编号', 'system.mail.log.field.sendMessageId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送消息编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 邮件日志-发送状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.field.sendStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-发送状态', 'system.mail.log.field.sendStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 邮件日志-发送状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.sendStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-发送状态', 'system.mail.log.field.sendStatus', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'send status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 邮件日志-发送状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.sendStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-发送状态', 'system.mail.log.field.sendStatus', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 125. 邮件日志-发送时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.field.sendTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-发送时间', 'system.mail.log.field.sendTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 125. 邮件日志-发送时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.sendTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-发送时间', 'system.mail.log.field.sendTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'send time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 125. 邮件日志-发送时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.sendTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-发送时间', 'system.mail.log.field.sendTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 126. 邮件日志-模板编码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.field.templateCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-模板编码', 'system.mail.log.field.templateCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 126. 邮件日志-模板编码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.templateCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-模板编码', 'system.mail.log.field.templateCode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 126. 邮件日志-模板编码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.templateCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-模板编码', 'system.mail.log.field.templateCode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 127. 邮件日志-邮件内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.field.templateContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮件内容', 'system.mail.log.field.templateContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 127. 邮件日志-邮件内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.templateContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮件内容', 'system.mail.log.field.templateContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mail content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 127. 邮件日志-邮件内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.templateContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮件内容', 'system.mail.log.field.templateContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '邮件内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 128. 邮件日志-模板编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.field.templateId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-模板编号', 'system.mail.log.field.templateId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 128. 邮件日志-模板编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.templateId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-模板编号', 'system.mail.log.field.templateId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 128. 邮件日志-模板编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.templateId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-模板编号', 'system.mail.log.field.templateId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 129. 邮件日志-邮件标题 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.field.templateTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮件标题', 'system.mail.log.field.templateTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 129. 邮件日志-邮件标题 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.templateTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮件标题', 'system.mail.log.field.templateTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mail title', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 129. 邮件日志-邮件标题 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.templateTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮件标题', 'system.mail.log.field.templateTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '邮件标题', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 130. 邮件日志-收件邮箱 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.field.toMail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-收件邮箱', 'system.mail.log.field.toMail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 130. 邮件日志-收件邮箱 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.toMail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-收件邮箱', 'system.mail.log.field.toMail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'recipient', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 130. 邮件日志-收件邮箱 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.toMail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-收件邮箱', 'system.mail.log.field.toMail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '收件邮箱', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 131. 邮件日志-用户编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-用户编号', 'system.mail.log.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 131. 邮件日志-用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-用户编号', 'system.mail.log.field.userId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 131. 邮件日志-用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-用户编号', 'system.mail.log.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 132. 邮件日志-用户类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.field.userType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-用户类型', 'system.mail.log.field.userType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 132. 邮件日志-用户类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.userType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-用户类型', 'system.mail.log.field.userType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 132. 邮件日志-用户类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.field.userType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-用户类型', 'system.mail.log.field.userType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 133. 邮件日志-邮件日志列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮件日志列表', 'system.mail.log.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 133. 邮件日志-邮件日志列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮件日志列表', 'system.mail.log.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mail log list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 133. 邮件日志-邮件日志列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮件日志列表', 'system.mail.log.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '邮件日志列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 134. 邮件日志 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.log';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志', 'system.mail.log.log', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 134. 邮件日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.log' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志', 'system.mail.log.log', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'mail log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 134. 邮件日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.log' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志', 'system.mail.log.log', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '邮件日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 135. 邮件日志 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志', 'system.mail.log.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 135. 邮件日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志', 'system.mail.log.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'mail log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 135. 邮件日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志', 'system.mail.log.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '邮件日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 136. 邮件日志-邮件日志详情 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.log.message.detail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮件日志详情', 'system.mail.log.message.detail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 136. 邮件日志-邮件日志详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.message.detail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮件日志详情', 'system.mail.log.message.detail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mail log detail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 136. 邮件日志-邮件日志详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.log.message.detail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件日志-邮件日志详情', 'system.mail.log.message.detail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '邮件日志详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. 邮件模板 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板', 'system.mail.template', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. 邮件模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板', 'system.mail.template', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. 邮件模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板', 'system.mail.template', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '邮件模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 138. 邮件模板-新增邮件模板 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-新增邮件模板', 'system.mail.template.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 138. 邮件模板-新增邮件模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-新增邮件模板', 'system.mail.template.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create mail template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 138. 邮件模板-新增邮件模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-新增邮件模板', 'system.mail.template.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增邮件模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 139. 邮件模板-删除邮件模板 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-删除邮件模板', 'system.mail.template.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 139. 邮件模板-删除邮件模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-删除邮件模板', 'system.mail.template.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete mail template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 139. 邮件模板-删除邮件模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-删除邮件模板', 'system.mail.template.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除邮件模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 140. 邮件模板-导出邮件模板 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-导出邮件模板', 'system.mail.template.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 140. 邮件模板-导出邮件模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-导出邮件模板', 'system.mail.template.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export mail template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 140. 邮件模板-导出邮件模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-导出邮件模板', 'system.mail.template.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出邮件模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 141. 邮件模板-邮件模板查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-邮件模板查询', 'system.mail.template.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 141. 邮件模板-邮件模板查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-邮件模板查询', 'system.mail.template.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'mail template query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 141. 邮件模板-邮件模板查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-邮件模板查询', 'system.mail.template.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '邮件模板查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 142. 邮件模板-测试 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.action.test';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-测试', 'system.mail.template.action.test', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 142. 邮件模板-测试 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.action.test' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-测试', 'system.mail.template.action.test', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'test', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 142. 邮件模板-测试 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.action.test' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-测试', 'system.mail.template.action.test', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '测试', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 143. 邮件模板-修改邮件模板 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-修改邮件模板', 'system.mail.template.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 143. 邮件模板-修改邮件模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-修改邮件模板', 'system.mail.template.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update mail template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 143. 邮件模板-修改邮件模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-修改邮件模板', 'system.mail.template.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改邮件模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 144. 邮件模板-邮箱账号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.field.accountId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-邮箱账号', 'system.mail.template.field.accountId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 144. 邮件模板-邮箱账号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.accountId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-邮箱账号', 'system.mail.template.field.accountId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mail account', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 144. 邮件模板-邮箱账号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.accountId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-邮箱账号', 'system.mail.template.field.accountId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '邮箱账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 145. 邮件模板-模板编码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板编码', 'system.mail.template.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 145. 邮件模板-模板编码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板编码', 'system.mail.template.field.code', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 145. 邮件模板-模板编码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板编码', 'system.mail.template.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 146. 邮件模板-模板内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.field.content';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板内容', 'system.mail.template.field.content', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 146. 邮件模板-模板内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.content' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板内容', 'system.mail.template.field.content', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 146. 邮件模板-模板内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.content' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板内容', 'system.mail.template.field.content', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 147. 邮件模板-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-创建时间', 'system.mail.template.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 147. 邮件模板-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-创建时间', 'system.mail.template.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 147. 邮件模板-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-创建时间', 'system.mail.template.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 148. 邮件模板-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-编号', 'system.mail.template.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 148. 邮件模板-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-编号', 'system.mail.template.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 148. 邮件模板-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-编号', 'system.mail.template.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 149. 邮件模板-收件邮箱 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.field.mail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-收件邮箱', 'system.mail.template.field.mail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 149. 邮件模板-收件邮箱 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.mail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-收件邮箱', 'system.mail.template.field.mail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'recipient email', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 149. 邮件模板-收件邮箱 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.mail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-收件邮箱', 'system.mail.template.field.mail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '收件邮箱', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 150. 邮件模板-模板名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板名称', 'system.mail.template.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 150. 邮件模板-模板名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板名称', 'system.mail.template.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 150. 邮件模板-模板名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板名称', 'system.mail.template.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 151. 邮件模板-发送人名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.field.nickname';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-发送人名称', 'system.mail.template.field.nickname', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 151. 邮件模板-发送人名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.nickname' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-发送人名称', 'system.mail.template.field.nickname', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sender name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 151. 邮件模板-发送人名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.nickname' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-发送人名称', 'system.mail.template.field.nickname', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送人名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 152. 邮件模板-模板参数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.field.params';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板参数', 'system.mail.template.field.params', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 152. 邮件模板-模板参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.params' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板参数', 'system.mail.template.field.params', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template params', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 152. 邮件模板-模板参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.params' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板参数', 'system.mail.template.field.params', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 153. 邮件模板-备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-备注', 'system.mail.template.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 153. 邮件模板-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-备注', 'system.mail.template.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 153. 邮件模板-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-备注', 'system.mail.template.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 154. 邮件模板-开启状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-开启状态', 'system.mail.template.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 154. 邮件模板-开启状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-开启状态', 'system.mail.template.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 154. 邮件模板-开启状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-开启状态', 'system.mail.template.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '开启状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 155. 邮件模板-模板参数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.field.templateParams';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板参数', 'system.mail.template.field.templateParams', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 155. 邮件模板-模板参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.templateParams' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板参数', 'system.mail.template.field.templateParams', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template params', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 155. 邮件模板-模板参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.templateParams' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板参数', 'system.mail.template.field.templateParams', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 156. 邮件模板-模板标题 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.field.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板标题', 'system.mail.template.field.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 156. 邮件模板-模板标题 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板标题', 'system.mail.template.field.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template title', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 156. 邮件模板-模板标题 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.field.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-模板标题', 'system.mail.template.field.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板标题', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 157. 邮件模板-邮件模板列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-邮件模板列表', 'system.mail.template.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 157. 邮件模板-邮件模板列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-邮件模板列表', 'system.mail.template.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mail template list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 157. 邮件模板-邮件模板列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-邮件模板列表', 'system.mail.template.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '邮件模板列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 158. 邮件模板 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板', 'system.mail.template.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 158. 邮件模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板', 'system.mail.template.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'mail template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 158. 邮件模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板', 'system.mail.template.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '邮件模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 159. 邮件模板-参数{0} (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.message.param';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-参数{0}', 'system.mail.template.message.param', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 159. 邮件模板-参数{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.message.param' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-参数{0}', 'system.mail.template.message.param', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'param {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 159. 邮件模板-参数{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.message.param' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-参数{0}', 'system.mail.template.message.param', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '参数 {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 160. 邮件模板-发送邮件失败 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.message.sendFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-发送邮件失败', 'system.mail.template.message.sendFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 160. 邮件模板-发送邮件失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.message.sendFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-发送邮件失败', 'system.mail.template.message.sendFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'failed to send mail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 160. 邮件模板-发送邮件失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.message.sendFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-发送邮件失败', 'system.mail.template.message.sendFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送邮件失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 161. 邮件模板-邮件发送成功 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.message.sendSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-邮件发送成功', 'system.mail.template.message.sendSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 161. 邮件模板-邮件发送成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.message.sendSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-邮件发送成功', 'system.mail.template.message.sendSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mail sent successfully', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 161. 邮件模板-邮件发送成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.message.sendSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-邮件发送成功', 'system.mail.template.message.sendSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '邮件发送成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 162. 邮件模板-测试 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.message.test';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-测试', 'system.mail.template.message.test', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 162. 邮件模板-测试 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.message.test' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-测试', 'system.mail.template.message.test', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'test', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 162. 邮件模板-测试 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.message.test' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-测试', 'system.mail.template.message.test', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '测试', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 163. 邮件模板-测试发送邮件 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.message.testSend';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-测试发送邮件', 'system.mail.template.message.testSend', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 163. 邮件模板-测试发送邮件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.message.testSend' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-测试发送邮件', 'system.mail.template.message.testSend', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'test send mail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 163. 邮件模板-测试发送邮件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.message.testSend' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板-测试发送邮件', 'system.mail.template.message.testSend', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '测试发送邮件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 164. 邮件模板 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.mail.template.template';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板', 'system.mail.template.template', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 164. 邮件模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.template' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板', 'system.mail.template.template', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'mail template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 164. 邮件模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.mail.template.template' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮件模板', 'system.mail.template.template', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '邮件模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 165. 菜单管理 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理', 'system.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 165. 菜单管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理', 'system.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 165. 菜单管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理', 'system.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '菜单管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 166. 菜单管理-新增菜单 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-新增菜单', 'system.menu.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 166. 菜单管理-新增菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-新增菜单', 'system.menu.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create menu', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 166. 菜单管理-新增菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-新增菜单', 'system.menu.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 167. 菜单管理-删除菜单 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-删除菜单', 'system.menu.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 167. 菜单管理-删除菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-删除菜单', 'system.menu.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete menu', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 167. 菜单管理-删除菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-删除菜单', 'system.menu.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 168. 菜单管理-菜单查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单查询', 'system.menu.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 168. 菜单管理-菜单查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单查询', 'system.menu.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'menu query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 168. 菜单管理-菜单查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单查询', 'system.menu.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '菜单查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 169. 菜单管理-修改菜单 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-修改菜单', 'system.menu.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 169. 菜单管理-修改菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-修改菜单', 'system.menu.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update menu', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 169. 菜单管理-修改菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-修改菜单', 'system.menu.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 170. 菜单管理-不是 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.alwaysShow.no';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-不是', 'system.menu.alwaysShow.no', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 170. 菜单管理-不是 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.alwaysShow.no' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-不是', 'system.menu.alwaysShow.no', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'not', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 170. 菜单管理-不是 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.alwaysShow.no' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-不是', 'system.menu.alwaysShow.no', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '不是', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 171. 菜单管理-总是 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.alwaysShow.yes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-总是', 'system.menu.alwaysShow.yes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 171. 菜单管理-总是 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.alwaysShow.yes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-总是', 'system.menu.alwaysShow.yes', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'always', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 171. 菜单管理-总是 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.alwaysShow.yes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-总是', 'system.menu.alwaysShow.yes', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '总是', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 172. 菜单管理-总是显示 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.alwaysShow';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-总是显示', 'system.menu.field.alwaysShow', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 172. 菜单管理-总是显示 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.alwaysShow' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-总是显示', 'system.menu.field.alwaysShow', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'always show', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 172. 菜单管理-总是显示 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.alwaysShow' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-总是显示', 'system.menu.field.alwaysShow', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '总是显示', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 173. 菜单管理-组件地址 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.component';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-组件地址', 'system.menu.field.component', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 173. 菜单管理-组件地址 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.component' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-组件地址', 'system.menu.field.component', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'component path', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 173. 菜单管理-组件地址 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.component' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-组件地址', 'system.menu.field.component', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '组件地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 174. 菜单管理-组件名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.componentName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-组件名称', 'system.menu.field.componentName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 174. 菜单管理-组件名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.componentName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-组件名称', 'system.menu.field.componentName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'component name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 174. 菜单管理-组件名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.componentName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-组件名称', 'system.menu.field.componentName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '组件名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 175. 菜单管理-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-创建时间', 'system.menu.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 175. 菜单管理-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-创建时间', 'system.menu.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 175. 菜单管理-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-创建时间', 'system.menu.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 176. 菜单管理-国际化 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.i18n';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-国际化', 'system.menu.field.i18n', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 176. 菜单管理-国际化 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.i18n' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-国际化', 'system.menu.field.i18n', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'i18n', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 176. 菜单管理-国际化 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.i18n' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-国际化', 'system.menu.field.i18n', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '国际化', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 177. 菜单管理-菜单图标 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.icon';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单图标', 'system.menu.field.icon', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 177. 菜单管理-菜单图标 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.icon' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单图标', 'system.menu.field.icon', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'menu icon', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 177. 菜单管理-菜单图标 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.icon' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单图标', 'system.menu.field.icon', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '菜单图标', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 178. 菜单管理-菜单编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单编号', 'system.menu.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 178. 菜单管理-菜单编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单编号', 'system.menu.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'menu id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 178. 菜单管理-菜单编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单编号', 'system.menu.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '菜单编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 179. 菜单管理-缓存状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.keepAlive';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-缓存状态', 'system.menu.field.keepAlive', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 179. 菜单管理-缓存状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.keepAlive' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-缓存状态', 'system.menu.field.keepAlive', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'cache status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 179. 菜单管理-缓存状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.keepAlive' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-缓存状态', 'system.menu.field.keepAlive', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '缓存状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 180. 菜单管理-布局 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.layout';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-布局', 'system.menu.field.layout', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 180. 菜单管理-布局 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.layout' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-布局', 'system.menu.field.layout', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'layout', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 180. 菜单管理-布局 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.layout' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-布局', 'system.menu.field.layout', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '布局', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 181. 菜单管理-菜单名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单名称', 'system.menu.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 181. 菜单管理-菜单名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单名称', 'system.menu.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'menu name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 181. 菜单管理-菜单名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单名称', 'system.menu.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '菜单名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 182. 菜单管理-新窗口 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.newWindows';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-新窗口', 'system.menu.field.newWindows', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 182. 菜单管理-新窗口 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.newWindows' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-新窗口', 'system.menu.field.newWindows', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'new windows', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 182. 菜单管理-新窗口 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.newWindows' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-新窗口', 'system.menu.field.newWindows', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '新窗口', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 183. 菜单管理-上级菜单 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.parentId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-上级菜单', 'system.menu.field.parentId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 183. 菜单管理-上级菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.parentId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-上级菜单', 'system.menu.field.parentId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'parent menu', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 183. 菜单管理-上级菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.parentId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-上级菜单', 'system.menu.field.parentId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '上级菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 184. 菜单管理-路由地址 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.path';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-路由地址', 'system.menu.field.path', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 184. 菜单管理-路由地址 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.path' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-路由地址', 'system.menu.field.path', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'route path', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 184. 菜单管理-路由地址 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.path' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-路由地址', 'system.menu.field.path', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '路由地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 185. 菜单管理-权限标识 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.permission';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-权限标识', 'system.menu.field.permission', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 185. 菜单管理-权限标识 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.permission' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-权限标识', 'system.menu.field.permission', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'permission', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 185. 菜单管理-权限标识 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.permission' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-权限标识', 'system.menu.field.permission', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '权限标识', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 186. 菜单管理-菜单备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单备注', 'system.menu.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 186. 菜单管理-菜单备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单备注', 'system.menu.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 186. 菜单管理-菜单备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单备注', 'system.menu.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '菜单备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 187. 菜单管理-显示顺序 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.sort';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-显示顺序', 'system.menu.field.sort', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 187. 菜单管理-显示顺序 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.sort' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-显示顺序', 'system.menu.field.sort', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sort order', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 187. 菜单管理-显示顺序 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.sort' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-显示顺序', 'system.menu.field.sort', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '显示顺序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 188. 菜单管理-菜单状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单状态', 'system.menu.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 188. 菜单管理-菜单状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单状态', 'system.menu.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'menu status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 188. 菜单管理-菜单状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单状态', 'system.menu.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '菜单状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 189. 菜单管理-菜单类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单类型', 'system.menu.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 189. 菜单管理-菜单类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单类型', 'system.menu.field.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'menu type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 189. 菜单管理-菜单类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单类型', 'system.menu.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '菜单类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 190. 菜单管理-选择不是时，不显示自己以及所有子菜单 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.help.alwaysShowTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-选择不是时，不显示自己以及所有子菜单', 'system.menu.help.alwaysShowTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 190. 菜单管理-选择不是时，不显示自己以及所有子菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.alwaysShowTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-选择不是时，不显示自己以及所有子菜单', 'system.menu.help.alwaysShowTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'when disabled, this menu and all child menus will not be displayed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 190. 菜单管理-选择不是时，不显示自己以及所有子菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.alwaysShowTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-选择不是时，不显示自己以及所有子菜单', 'system.menu.help.alwaysShowTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '选择不是时，不显示自己以及所有子菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 191. 菜单管理-当填入键之后，菜单将以国际化信息显示 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.help.i18nTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-当填入键之后，菜单将以国际化信息显示', 'system.menu.help.i18nTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 191. 菜单管理-当填入键之后，菜单将以国际化信息显示 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.i18nTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-当填入键之后，菜单将以国际化信息显示', 'system.menu.help.i18nTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'after entering the i18n key, the menu will be displayed in localized language.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 191. 菜单管理-当填入键之后，菜单将以国际化信息显示 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.i18nTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-当填入键之后，菜单将以国际化信息显示', 'system.menu.help.i18nTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '当填入键之后，菜单将以国际化信息显示', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 192. 菜单管理-选择缓存时，则会被`keep-alive`缓存，必须填写「组件名称」字段 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.help.keepAliveTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-选择缓存时，则会被`keep-alive`缓存，必须填写「组件名称」字段', 'system.menu.help.keepAliveTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 192. 菜单管理-选择缓存时，则会被`keep-alive`缓存，必须填写「组件名称」字段 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.keepAliveTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-选择缓存时，则会被`keep-alive`缓存，必须填写「组件名称」字段', 'system.menu.help.keepAliveTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'when enabled, the component will be cached by `keep-alive`. component name must be filled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 192. 菜单管理-选择缓存时，则会被`keep-alive`缓存，必须填写「组件名称」字段 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.keepAliveTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-选择缓存时，则会被`keep-alive`缓存，必须填写「组件名称」字段', 'system.menu.help.keepAliveTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '选择缓存时，则会被 `keep-alive` 缓存，必须填写「组件名称」字段', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 193. 菜单管理-选择不同的布局排版，例如BasicLayout布局为后台有侧边栏、顶部栏布局，StandaloneLayout布局为无侧边栏顶、部栏布局 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.help.layoutTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-选择不同的布局排版，例如BasicLayout布局为后台有侧边栏、顶部栏布局，StandaloneLayout布局为无侧边栏顶、部栏布局', 'system.menu.help.layoutTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 193. 菜单管理-选择不同的布局排版，例如BasicLayout布局为后台有侧边栏、顶部栏布局，StandaloneLayout布局为无侧边栏顶、部栏布局 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.layoutTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-选择不同的布局排版，例如BasicLayout布局为后台有侧边栏、顶部栏布局，StandaloneLayout布局为无侧边栏顶、部栏布局', 'system.menu.help.layoutTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Choose from different layout options. For example, the BasicLayout includes a sidebar and a top bar at the back end, while the StandaloneLayout lacks both a sidebar and a top bar', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 193. 菜单管理-选择不同的布局排版，例如BasicLayout布局为后台有侧边栏、顶部栏布局，StandaloneLayout布局为无侧边栏顶、部栏布局 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.layoutTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-选择不同的布局排版，例如BasicLayout布局为后台有侧边栏、顶部栏布局，StandaloneLayout布局为无侧边栏顶、部栏布局', 'system.menu.help.layoutTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '选择不同的布局排版，例如BasicLayout布局为后台有侧边栏、顶部栏布局，StandaloneLayout布局为无侧边栏顶、部栏布局', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 194. 菜单管理-选择开启时，会使用新窗口打开 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.help.newWindowsTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-选择开启时，会使用新窗口打开', 'system.menu.help.newWindowsTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 194. 菜单管理-选择开启时，会使用新窗口打开 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.newWindowsTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-选择开启时，会使用新窗口打开', 'system.menu.help.newWindowsTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'when enabled, the link will open in a new window', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 194. 菜单管理-选择开启时，会使用新窗口打开 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.newWindowsTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-选择开启时，会使用新窗口打开', 'system.menu.help.newWindowsTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '选择开启时，会使用新窗口打开', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 195. 菜单管理-路由地址不能为空 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.help.pathEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-路由地址不能为空', 'system.menu.help.pathEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 195. 菜单管理-路由地址不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.pathEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-路由地址不能为空', 'system.menu.help.pathEmpty', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'route path cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 195. 菜单管理-路由地址不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.pathEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-路由地址不能为空', 'system.menu.help.pathEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '路由地址不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 196. 菜单管理-路径不能以/开头 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.help.pathNoStart';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-路径不能以/开头', 'system.menu.help.pathNoStart', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 196. 菜单管理-路径不能以/开头 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.pathNoStart' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-路径不能以/开头', 'system.menu.help.pathNoStart', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'path cannot start with /', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 196. 菜单管理-路径不能以/开头 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.pathNoStart' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-路径不能以/开头', 'system.menu.help.pathNoStart', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '路径不能以 / 开头', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 197. 菜单管理-路径必须以/开头 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.help.pathRootStart';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-路径必须以/开头', 'system.menu.help.pathRootStart', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 197. 菜单管理-路径必须以/开头 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.pathRootStart' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-路径必须以/开头', 'system.menu.help.pathRootStart', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'path must start with /', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 197. 菜单管理-路径必须以/开头 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.pathRootStart' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-路径必须以/开头', 'system.menu.help.pathRootStart', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '路径必须以 / 开头', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 198. 菜单管理-访问的路由地址，如：`user`。如需外网地址时，则以`http(s)://`开头 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.help.pathTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-访问的路由地址，如：`user`。如需外网地址时，则以`http(s)://`开头', 'system.menu.help.pathTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 198. 菜单管理-访问的路由地址，如：`user`。如需外网地址时，则以`http(s)://`开头 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.pathTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-访问的路由地址，如：`user`。如需外网地址时，则以`http(s)://`开头', 'system.menu.help.pathTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'route path, e.g. `user`. for external urls, start with `http(s)://`', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 198. 菜单管理-访问的路由地址，如：`user`。如需外网地址时，则以`http(s)://`开头 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.help.pathTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-访问的路由地址，如：`user`。如需外网地址时，则以`http(s)://`开头', 'system.menu.help.pathTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '访问的路由地址，如：`user`。如需外网地址时，则以 `http(s)://` 开头', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 199. 菜单管理-不缓存 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.keepAlive.no';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-不缓存', 'system.menu.keepAlive.no', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 199. 菜单管理-不缓存 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.keepAlive.no' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-不缓存', 'system.menu.keepAlive.no', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'not cached', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 199. 菜单管理-不缓存 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.keepAlive.no' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-不缓存', 'system.menu.keepAlive.no', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '不缓存', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 200. 菜单管理-缓存 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.keepAlive.yes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-缓存', 'system.menu.keepAlive.yes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 200. 菜单管理-缓存 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.keepAlive.yes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-缓存', 'system.menu.keepAlive.yes', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'cached', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 200. 菜单管理-缓存 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.keepAlive.yes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-缓存', 'system.menu.keepAlive.yes', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '缓存', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 201. 菜单管理-菜单列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单列表', 'system.menu.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 201. 菜单管理-菜单列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单列表', 'system.menu.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'menu list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 201. 菜单管理-菜单列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单列表', 'system.menu.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '菜单列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 202. 菜单管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理', 'system.menu.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 202. 菜单管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理', 'system.menu.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'menu management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 202. 菜单管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理', 'system.menu.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '菜单管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 203. 菜单管理-新增下级 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.message.append';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-新增下级', 'system.menu.message.append', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 203. 菜单管理-新增下级 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.message.append' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-新增下级', 'system.menu.message.append', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'add child', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 203. 菜单管理-新增下级 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.message.append' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-新增下级', 'system.menu.message.append', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '新增下级', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 204. 菜单管理-收缩 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.message.collapse';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-收缩', 'system.menu.message.collapse', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 204. 菜单管理-收缩 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.message.collapse' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-收缩', 'system.menu.message.collapse', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'collapse', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 204. 菜单管理-收缩 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.message.collapse' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-收缩', 'system.menu.message.collapse', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '收缩', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 205. 菜单管理-展开 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.message.expand';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-展开', 'system.menu.message.expand', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 205. 菜单管理-展开 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.message.expand' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-展开', 'system.menu.message.expand', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'expand', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 205. 菜单管理-展开 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.message.expand' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-展开', 'system.menu.message.expand', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '展开', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 206. 菜单管理-菜单路由 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.message.route';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单路由', 'system.menu.message.route', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 206. 菜单管理-菜单路由 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.message.route' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单路由', 'system.menu.message.route', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'menu routes', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 206. 菜单管理-菜单路由 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.message.route' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-菜单路由', 'system.menu.message.route', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '菜单路由', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 207. 菜单管理-不打开 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.newWindows.no';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-不打开', 'system.menu.newWindows.no', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 207. 菜单管理-不打开 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.newWindows.no' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-不打开', 'system.menu.newWindows.no', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'no', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 207. 菜单管理-不打开 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.newWindows.no' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-不打开', 'system.menu.newWindows.no', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '不打开', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 208. 菜单管理-打开 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.newWindows.yes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-打开', 'system.menu.newWindows.yes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 208. 菜单管理-打开 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.newWindows.yes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-打开', 'system.menu.newWindows.yes', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'yes', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 208. 菜单管理-打开 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.newWindows.yes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-打开', 'system.menu.newWindows.yes', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '打开', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 209. 菜单管理-关闭 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.sidebar.no';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-关闭', 'system.menu.sidebar.no', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 209. 菜单管理-关闭 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.sidebar.no' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-关闭', 'system.menu.sidebar.no', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'close', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 209. 菜单管理-关闭 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.sidebar.no' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-关闭', 'system.menu.sidebar.no', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '关闭', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 210. 菜单管理-开启 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.menu.sidebar.yes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-开启', 'system.menu.sidebar.yes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 210. 菜单管理-开启 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.sidebar.yes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-开启', 'system.menu.sidebar.yes', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'open', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 210. 菜单管理-开启 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.menu.sidebar.yes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单管理-开启', 'system.menu.sidebar.yes', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '开启', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 211. 公告 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告', 'system.notice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 211. 公告 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告', 'system.notice', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 211. 公告 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告', 'system.notice', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '公告', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 212. 公告-新增公告 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-新增公告', 'system.notice.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 212. 公告-新增公告 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-新增公告', 'system.notice.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create notice', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 212. 公告-新增公告 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-新增公告', 'system.notice.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增公告', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 213. 公告-删除公告 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-删除公告', 'system.notice.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 213. 公告-删除公告 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-删除公告', 'system.notice.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete notice', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 213. 公告-删除公告 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-删除公告', 'system.notice.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除公告', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 214. 公告-导出公告 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-导出公告', 'system.notice.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 214. 公告-导出公告 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-导出公告', 'system.notice.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export notice', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 214. 公告-导出公告 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-导出公告', 'system.notice.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出公告', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 215. 公告-推送 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.action.push';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-推送', 'system.notice.action.push', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 215. 公告-推送 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.action.push' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-推送', 'system.notice.action.push', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'push', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 215. 公告-推送 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.action.push' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-推送', 'system.notice.action.push', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '推送', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 216. 公告-公告查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告查询', 'system.notice.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 216. 公告-公告查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告查询', 'system.notice.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'notice query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 216. 公告-公告查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告查询', 'system.notice.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '公告查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 217. 公告-修改公告 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-修改公告', 'system.notice.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 217. 公告-修改公告 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-修改公告', 'system.notice.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update notice', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 217. 公告-修改公告 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-修改公告', 'system.notice.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改公告', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 218. 公告-附件 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.field.appendixUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-附件', 'system.notice.field.appendixUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 218. 公告-附件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.field.appendixUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-附件', 'system.notice.field.appendixUrl', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'attachment', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 218. 公告-附件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.field.appendixUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-附件', 'system.notice.field.appendixUrl', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '附件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 219. 公告-公告内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.field.content';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告内容', 'system.notice.field.content', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 219. 公告-公告内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.field.content' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告内容', 'system.notice.field.content', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'notice content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 219. 公告-公告内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.field.content' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告内容', 'system.notice.field.content', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '公告内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 220. 公告-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-创建时间', 'system.notice.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 220. 公告-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-创建时间', 'system.notice.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 220. 公告-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-创建时间', 'system.notice.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 221. 公告-公告编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告编号', 'system.notice.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 221. 公告-公告编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告编号', 'system.notice.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'notice id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 221. 公告-公告编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告编号', 'system.notice.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '公告编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 222. 公告-备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-备注', 'system.notice.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 222. 公告-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-备注', 'system.notice.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 222. 公告-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-备注', 'system.notice.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 223. 公告-公告状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告状态', 'system.notice.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 223. 公告-公告状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告状态', 'system.notice.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'notice status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 223. 公告-公告状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告状态', 'system.notice.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '公告状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 224. 公告-公告标题 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.field.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告标题', 'system.notice.field.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 224. 公告-公告标题 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.field.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告标题', 'system.notice.field.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'notice title', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 224. 公告-公告标题 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.field.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告标题', 'system.notice.field.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '公告标题', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 225. 公告-公告类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告类型', 'system.notice.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 225. 公告-公告类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告类型', 'system.notice.field.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'notice type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 225. 公告-公告类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告类型', 'system.notice.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '公告类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 226. 公告-公告列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告列表', 'system.notice.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 226. 公告-公告列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告列表', 'system.notice.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'notice list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 226. 公告-公告列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告列表', 'system.notice.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '公告列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 227. 公告-公告管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告管理', 'system.notice.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 227. 公告-公告管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告管理', 'system.notice.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'notice management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 227. 公告-公告管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告管理', 'system.notice.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '公告管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 228. 公告-公告详情 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.message.detail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告详情', 'system.notice.message.detail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 228. 公告-公告详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.message.detail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告详情', 'system.notice.message.detail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'notice detail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 228. 公告-公告详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.message.detail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-公告详情', 'system.notice.message.detail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '公告详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 229. 公告-推送 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.message.push';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-推送', 'system.notice.message.push', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 229. 公告-推送 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.message.push' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-推送', 'system.notice.message.push', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'push', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 229. 公告-推送 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.message.push' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-推送', 'system.notice.message.push', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '推送', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 230. 公告-查看 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.message.view';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-查看', 'system.notice.message.view', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 230. 公告-查看 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.message.view' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-查看', 'system.notice.message.view', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'view', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 230. 公告-查看 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.message.view' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告-查看', 'system.notice.message.view', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '查看', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 231. 公告 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notice.notice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告', 'system.notice.notice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 231. 公告 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.notice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告', 'system.notice.notice', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'notice', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 231. 公告 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notice.notice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公告', 'system.notice.notice', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '公告', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 232. 站内信 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信', 'system.notify.message', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 232. 站内信 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信', 'system.notify.message', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 232. 站内信 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信', 'system.notify.message', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '站内信', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 233. 站内信-站内信查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-站内信查询', 'system.notify.message.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 233. 站内信-站内信查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-站内信查询', 'system.notify.message.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'notify message query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 233. 站内信-站内信查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-站内信查询', 'system.notify.message.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '站内信查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 234. 站内信详情 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.detail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信详情', 'system.notify.message.detail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 234. 站内信详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.detail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信详情', 'system.notify.message.detail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 234. 站内信详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.detail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信详情', 'system.notify.message.detail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '站内信详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 235. 站内信详情 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.detail.detail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信详情', 'system.notify.message.detail.detail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 235. 站内信详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.detail.detail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信详情', 'system.notify.message.detail.detail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'notify message detail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 235. 站内信详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.detail.detail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信详情', 'system.notify.message.detail.detail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '站内信详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 236. 站内信-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-创建时间', 'system.notify.message.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 236. 站内信-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-创建时间', 'system.notify.message.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 236. 站内信-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-创建时间', 'system.notify.message.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 237. 站内信-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-编号', 'system.notify.message.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 237. 站内信-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-编号', 'system.notify.message.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 237. 站内信-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-编号', 'system.notify.message.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 238. 站内信-是否已读 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.field.readStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-是否已读', 'system.notify.message.field.readStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 238. 站内信-是否已读 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.readStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-是否已读', 'system.notify.message.field.readStatus', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'read status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 238. 站内信-是否已读 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.readStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-是否已读', 'system.notify.message.field.readStatus', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否已读', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 239. 站内信-阅读时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.field.readTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-阅读时间', 'system.notify.message.field.readTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 239. 站内信-阅读时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.readTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-阅读时间', 'system.notify.message.field.readTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'read time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 239. 站内信-阅读时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.readTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-阅读时间', 'system.notify.message.field.readTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '阅读时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 240. 站内信-模板编码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.field.templateCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-模板编码', 'system.notify.message.field.templateCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 240. 站内信-模板编码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.templateCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-模板编码', 'system.notify.message.field.templateCode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 240. 站内信-模板编码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.templateCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-模板编码', 'system.notify.message.field.templateCode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 241. 站内信-模版内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.field.templateContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-模版内容', 'system.notify.message.field.templateContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 241. 站内信-模版内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.templateContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-模版内容', 'system.notify.message.field.templateContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 241. 站内信-模版内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.templateContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-模版内容', 'system.notify.message.field.templateContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模版内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 242. 站内信-模版编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.field.templateId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-模版编号', 'system.notify.message.field.templateId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 242. 站内信-模版编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.templateId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-模版编号', 'system.notify.message.field.templateId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 242. 站内信-模版编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.templateId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-模版编号', 'system.notify.message.field.templateId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模版编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 243. 站内信-发送人名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.field.templateNickname';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-发送人名称', 'system.notify.message.field.templateNickname', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 243. 站内信-发送人名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.templateNickname' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-发送人名称', 'system.notify.message.field.templateNickname', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sender name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 243. 站内信-发送人名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.templateNickname' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-发送人名称', 'system.notify.message.field.templateNickname', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送人名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 244. 站内信-模版参数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.field.templateParams';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-模版参数', 'system.notify.message.field.templateParams', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 244. 站内信-模版参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.templateParams' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-模版参数', 'system.notify.message.field.templateParams', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template params', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 244. 站内信-模版参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.templateParams' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-模版参数', 'system.notify.message.field.templateParams', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模版参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 245. 站内信-模版类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.field.templateType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-模版类型', 'system.notify.message.field.templateType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 245. 站内信-模版类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.templateType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-模版类型', 'system.notify.message.field.templateType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 245. 站内信-模版类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.templateType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-模版类型', 'system.notify.message.field.templateType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模版类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 246. 站内信-用户编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-用户编号', 'system.notify.message.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 246. 站内信-用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-用户编号', 'system.notify.message.field.userId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 246. 站内信-用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-用户编号', 'system.notify.message.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 247. 站内信-用户类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.field.userType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-用户类型', 'system.notify.message.field.userType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 247. 站内信-用户类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.userType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-用户类型', 'system.notify.message.field.userType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 247. 站内信-用户类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.field.userType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-用户类型', 'system.notify.message.field.userType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 248. 站内信-站内信列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-站内信列表', 'system.notify.message.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 248. 站内信-站内信列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-站内信列表', 'system.notify.message.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'notify message list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 248. 站内信-站内信列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信-站内信列表', 'system.notify.message.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '站内信列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 249. 站内信 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信', 'system.notify.message.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 249. 站内信 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信', 'system.notify.message.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'notify message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 249. 站内信 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信', 'system.notify.message.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '站内信', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 250. 站内信 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.message.message';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信', 'system.notify.message.message', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 250. 站内信 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.message' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信', 'system.notify.message.message', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'notify message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 250. 站内信 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.message.message' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信', 'system.notify.message.message', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '站内信', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 251. 我的站内信 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信', 'system.notify.my', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 251. 我的站内信 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信', 'system.notify.my', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 251. 我的站内信 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信', 'system.notify.my', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '我的站内信', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 252. 我的站内信-我的站内信查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-我的站内信查询', 'system.notify.my.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 252. 我的站内信-我的站内信查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-我的站内信查询', 'system.notify.my.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'my notify query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 252. 我的站内信-我的站内信查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-我的站内信查询', 'system.notify.my.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '我的站内信查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 253. 我的站内信-发送时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-发送时间', 'system.notify.my.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 253. 我的站内信-发送时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-发送时间', 'system.notify.my.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'send time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 253. 我的站内信-发送时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-发送时间', 'system.notify.my.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 254. 我的站内信-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-编号', 'system.notify.my.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 254. 我的站内信-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-编号', 'system.notify.my.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 254. 我的站内信-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-编号', 'system.notify.my.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 255. 我的站内信-是否已读 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.field.readStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-是否已读', 'system.notify.my.field.readStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 255. 我的站内信-是否已读 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.field.readStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-是否已读', 'system.notify.my.field.readStatus', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'read status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 255. 我的站内信-是否已读 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.field.readStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-是否已读', 'system.notify.my.field.readStatus', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否已读', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 256. 我的站内信-阅读时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.field.readTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-阅读时间', 'system.notify.my.field.readTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 256. 我的站内信-阅读时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.field.readTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-阅读时间', 'system.notify.my.field.readTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'read time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 256. 我的站内信-阅读时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.field.readTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-阅读时间', 'system.notify.my.field.readTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '阅读时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 257. 我的站内信-发送时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.field.sendTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-发送时间', 'system.notify.my.field.sendTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 257. 我的站内信-发送时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.field.sendTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-发送时间', 'system.notify.my.field.sendTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'send time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 257. 我的站内信-发送时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.field.sendTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-发送时间', 'system.notify.my.field.sendTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 258. 我的站内信-消息内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.field.templateContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-消息内容', 'system.notify.my.field.templateContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 258. 我的站内信-消息内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.field.templateContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-消息内容', 'system.notify.my.field.templateContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'message content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 258. 我的站内信-消息内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.field.templateContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-消息内容', 'system.notify.my.field.templateContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '消息内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 259. 我的站内信-发送人 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.field.templateNickname';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-发送人', 'system.notify.my.field.templateNickname', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 259. 我的站内信-发送人 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.field.templateNickname' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-发送人', 'system.notify.my.field.templateNickname', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sender', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 259. 我的站内信-发送人 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.field.templateNickname' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-发送人', 'system.notify.my.field.templateNickname', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 260. 我的站内信-类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.field.templateType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-类型', 'system.notify.my.field.templateType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 260. 我的站内信-类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.field.templateType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-类型', 'system.notify.my.field.templateType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 260. 我的站内信-类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.field.templateType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-类型', 'system.notify.my.field.templateType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 261. 我的站内信 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信', 'system.notify.my.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 261. 我的站内信 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信', 'system.notify.my.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'my notify messages', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 261. 我的站内信 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信', 'system.notify.my.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '我的站内信', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 262. 我的站内信 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信', 'system.notify.my.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 262. 我的站内信 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信', 'system.notify.my.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'my notify', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 262. 我的站内信 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信', 'system.notify.my.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '我的站内信', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 263. 我的站内信-消息详情 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.message.detail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-消息详情', 'system.notify.my.message.detail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 263. 我的站内信-消息详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.detail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-消息详情', 'system.notify.my.message.detail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'message detail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 263. 我的站内信-消息详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.detail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-消息详情', 'system.notify.my.message.detail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '消息详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 264. 我的站内信-全部已读 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.message.markAllRead';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-全部已读', 'system.notify.my.message.markAllRead', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 264. 我的站内信-全部已读 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.markAllRead' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-全部已读', 'system.notify.my.message.markAllRead', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mark all as read', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 264. 我的站内信-全部已读 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.markAllRead' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-全部已读', 'system.notify.my.message.markAllRead', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '全部已读', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 265. 我的站内信-全部标记已读成功 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.message.markAllReadSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-全部标记已读成功', 'system.notify.my.message.markAllReadSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 265. 我的站内信-全部标记已读成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.markAllReadSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-全部标记已读成功', 'system.notify.my.message.markAllReadSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'all marked as read successfully', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 265. 我的站内信-全部标记已读成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.markAllReadSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-全部标记已读成功', 'system.notify.my.message.markAllReadSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '全部标记已读成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 266. 我的站内信-标记已读 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.message.markRead';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-标记已读', 'system.notify.my.message.markRead', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 266. 我的站内信-标记已读 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.markRead' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-标记已读', 'system.notify.my.message.markRead', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mark as read', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 266. 我的站内信-标记已读 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.markRead' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-标记已读', 'system.notify.my.message.markRead', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '标记已读', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 267. 我的站内信-标记已读成功 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.message.markReadSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-标记已读成功', 'system.notify.my.message.markReadSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 267. 我的站内信-标记已读成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.markReadSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-标记已读成功', 'system.notify.my.message.markReadSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'marked as read successfully', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 267. 我的站内信-标记已读成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.markReadSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-标记已读成功', 'system.notify.my.message.markReadSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '标记已读成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 268. 我的站内信-正在标记全部已读... (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.message.markingAllRead';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-正在标记全部已读...', 'system.notify.my.message.markingAllRead', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 268. 我的站内信-正在标记全部已读... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.markingAllRead' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-正在标记全部已读...', 'system.notify.my.message.markingAllRead', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'marking all as read...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 268. 我的站内信-正在标记全部已读... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.markingAllRead' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-正在标记全部已读...', 'system.notify.my.message.markingAllRead', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '正在标记全部已读...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 269. 我的站内信-正在标记已读... (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.message.markingRead';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-正在标记已读...', 'system.notify.my.message.markingRead', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 269. 我的站内信-正在标记已读... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.markingRead' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-正在标记已读...', 'system.notify.my.message.markingRead', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'marking as read...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 269. 我的站内信-正在标记已读... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.markingRead' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-正在标记已读...', 'system.notify.my.message.markingRead', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '正在标记已读...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 270. 我的站内信-已读 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.message.read';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-已读', 'system.notify.my.message.read', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 270. 我的站内信-已读 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.read' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-已读', 'system.notify.my.message.read', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'read', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 270. 我的站内信-已读 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.read' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-已读', 'system.notify.my.message.read', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '已读', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 271. 我的站内信-查看 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.message.view';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-查看', 'system.notify.my.message.view', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 271. 我的站内信-查看 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.view' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-查看', 'system.notify.my.message.view', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'view', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 271. 我的站内信-查看 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.message.view' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信-查看', 'system.notify.my.message.view', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '查看', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 272. 我的站内信 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.my.my';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信', 'system.notify.my.my', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 272. 我的站内信 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.my' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信', 'system.notify.my.my', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'my notify', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 272. 我的站内信 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.my.my' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我的站内信', 'system.notify.my.my', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '我的站内信', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 273. 站内信模板 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板', 'system.notify.template', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 273. 站内信模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板', 'system.notify.template', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 273. 站内信模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板', 'system.notify.template', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '站内信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 274. 站内信模板-新增站内信模板 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-新增站内信模板', 'system.notify.template.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 274. 站内信模板-新增站内信模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-新增站内信模板', 'system.notify.template.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create notify template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 274. 站内信模板-新增站内信模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-新增站内信模板', 'system.notify.template.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增站内信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 275. 站内信模板-删除站内信模板 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-删除站内信模板', 'system.notify.template.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 275. 站内信模板-删除站内信模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-删除站内信模板', 'system.notify.template.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete notify template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 275. 站内信模板-删除站内信模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-删除站内信模板', 'system.notify.template.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除站内信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 276. 站内信模板-导出站内信模板 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-导出站内信模板', 'system.notify.template.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 276. 站内信模板-导出站内信模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-导出站内信模板', 'system.notify.template.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export notify template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 276. 站内信模板-导出站内信模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-导出站内信模板', 'system.notify.template.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出站内信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 277. 站内信模板-站内信模板查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-站内信模板查询', 'system.notify.template.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 277. 站内信模板-站内信模板查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-站内信模板查询', 'system.notify.template.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'notify template query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 277. 站内信模板-站内信模板查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-站内信模板查询', 'system.notify.template.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '站内信模板查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 278. 站内信模板-测试 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.action.test';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-测试', 'system.notify.template.action.test', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 278. 站内信模板-测试 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.action.test' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-测试', 'system.notify.template.action.test', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'test', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 278. 站内信模板-测试 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.action.test' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-测试', 'system.notify.template.action.test', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '测试', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 279. 站内信模板-修改站内信模板 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-修改站内信模板', 'system.notify.template.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 279. 站内信模板-修改站内信模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-修改站内信模板', 'system.notify.template.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update notify template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 279. 站内信模板-修改站内信模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-修改站内信模板', 'system.notify.template.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改站内信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 280. 站内信模板-模板编码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板编码', 'system.notify.template.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 280. 站内信模板-模板编码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板编码', 'system.notify.template.field.code', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 280. 站内信模板-模板编码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板编码', 'system.notify.template.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 281. 站内信模板-模板内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.field.content';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板内容', 'system.notify.template.field.content', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 281. 站内信模板-模板内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.content' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板内容', 'system.notify.template.field.content', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 281. 站内信模板-模板内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.content' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板内容', 'system.notify.template.field.content', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 282. 站内信模板-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-创建时间', 'system.notify.template.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 282. 站内信模板-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-创建时间', 'system.notify.template.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 282. 站内信模板-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-创建时间', 'system.notify.template.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 283. 站内信模板-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-编号', 'system.notify.template.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 283. 站内信模板-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-编号', 'system.notify.template.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 283. 站内信模板-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-编号', 'system.notify.template.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 284. 站内信模板-模板名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板名称', 'system.notify.template.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 284. 站内信模板-模板名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板名称', 'system.notify.template.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 284. 站内信模板-模板名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板名称', 'system.notify.template.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 285. 站内信模板-发送人名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.field.nickname';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-发送人名称', 'system.notify.template.field.nickname', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 285. 站内信模板-发送人名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.nickname' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-发送人名称', 'system.notify.template.field.nickname', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sender name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 285. 站内信模板-发送人名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.nickname' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-发送人名称', 'system.notify.template.field.nickname', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送人名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 286. 站内信模板-参数{0} (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.field.param';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-参数{0}', 'system.notify.template.field.param', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 286. 站内信模板-参数{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.param' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-参数{0}', 'system.notify.template.field.param', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'param {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 286. 站内信模板-参数{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.param' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-参数{0}', 'system.notify.template.field.param', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '参数 {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 287. 站内信模板-模板参数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.field.params';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板参数', 'system.notify.template.field.params', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 287. 站内信模板-模板参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.params' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板参数', 'system.notify.template.field.params', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template params', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 287. 站内信模板-模板参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.params' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板参数', 'system.notify.template.field.params', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 288. 站内信模板-接收人 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.field.receiver';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-接收人', 'system.notify.template.field.receiver', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 288. 站内信模板-接收人 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.receiver' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-接收人', 'system.notify.template.field.receiver', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'receiver', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 288. 站内信模板-接收人 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.receiver' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-接收人', 'system.notify.template.field.receiver', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '接收人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 289. 站内信模板-接收人ID (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.field.receiverId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-接收人ID', 'system.notify.template.field.receiverId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 289. 站内信模板-接收人ID - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.receiverId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-接收人ID', 'system.notify.template.field.receiverId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'receiver id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 289. 站内信模板-接收人ID - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.receiverId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-接收人ID', 'system.notify.template.field.receiverId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '接收人ID', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 290. 站内信模板-备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-备注', 'system.notify.template.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 290. 站内信模板-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-备注', 'system.notify.template.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 290. 站内信模板-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-备注', 'system.notify.template.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 291. 站内信模板-状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-状态', 'system.notify.template.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 291. 站内信模板-状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-状态', 'system.notify.template.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 291. 站内信模板-状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-状态', 'system.notify.template.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 292. 站内信模板-模板参数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.field.templateParams';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板参数', 'system.notify.template.field.templateParams', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 292. 站内信模板-模板参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.templateParams' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板参数', 'system.notify.template.field.templateParams', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template params', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 292. 站内信模板-模板参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.templateParams' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板参数', 'system.notify.template.field.templateParams', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 293. 站内信模板-模板类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板类型', 'system.notify.template.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 293. 站内信模板-模板类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板类型', 'system.notify.template.field.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 293. 站内信模板-模板类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-模板类型', 'system.notify.template.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 294. 站内信模板-接收人ID (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-接收人ID', 'system.notify.template.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 294. 站内信模板-接收人ID - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-接收人ID', 'system.notify.template.field.userId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'receiver id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 294. 站内信模板-接收人ID - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-接收人ID', 'system.notify.template.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '接收人ID', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 295. 站内信模板-用户类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.field.userType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-用户类型', 'system.notify.template.field.userType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 295. 站内信模板-用户类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.userType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-用户类型', 'system.notify.template.field.userType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 295. 站内信模板-用户类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.field.userType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-用户类型', 'system.notify.template.field.userType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 296. 站内信模板-站内信模板列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-站内信模板列表', 'system.notify.template.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 296. 站内信模板-站内信模板列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-站内信模板列表', 'system.notify.template.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'notify template list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 296. 站内信模板-站内信模板列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-站内信模板列表', 'system.notify.template.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '站内信模板列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 297. 站内信模板 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板', 'system.notify.template.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 297. 站内信模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板', 'system.notify.template.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'notify template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 297. 站内信模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板', 'system.notify.template.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '站内信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 298. 站内信模板-参数{0} (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.message.param';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-参数{0}', 'system.notify.template.message.param', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 298. 站内信模板-参数{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.message.param' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-参数{0}', 'system.notify.template.message.param', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'param {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 298. 站内信模板-参数{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.message.param' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-参数{0}', 'system.notify.template.message.param', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '参数 {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 299. 站内信模板-发送站内信失败 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.message.sendFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-发送站内信失败', 'system.notify.template.message.sendFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 299. 站内信模板-发送站内信失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.message.sendFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-发送站内信失败', 'system.notify.template.message.sendFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'failed to send notify', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 299. 站内信模板-发送站内信失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.message.sendFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-发送站内信失败', 'system.notify.template.message.sendFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送站内信失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 300. 站内信模板-发送成功 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.message.sendSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-发送成功', 'system.notify.template.message.sendSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 300. 站内信模板-发送成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.message.sendSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-发送成功', 'system.notify.template.message.sendSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sent successfully', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 300. 站内信模板-发送成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.message.sendSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-发送成功', 'system.notify.template.message.sendSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 301. 站内信模板-测试 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.message.test';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-测试', 'system.notify.template.message.test', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 301. 站内信模板-测试 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.message.test' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-测试', 'system.notify.template.message.test', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'test', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 301. 站内信模板-测试 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.message.test' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-测试', 'system.notify.template.message.test', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '测试', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 302. 站内信模板-测试发送站内信 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.message.testSend';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-测试发送站内信', 'system.notify.template.message.testSend', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 302. 站内信模板-测试发送站内信 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.message.testSend' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-测试发送站内信', 'system.notify.template.message.testSend', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'test send notify', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 302. 站内信模板-测试发送站内信 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.message.testSend' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板-测试发送站内信', 'system.notify.template.message.testSend', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '测试发送站内信', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 303. 站内信模板 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.notify.template.template';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板', 'system.notify.template.template', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 303. 站内信模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.template' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板', 'system.notify.template.template', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'notify template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 303. 站内信模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.notify.template.template' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('站内信模板', 'system.notify.template.template', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '站内信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 304. OAuth2客户端 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端', 'system.oauth2.client', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 304. OAuth2客户端 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端', 'system.oauth2.client', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 304. OAuth2客户端 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端', 'system.oauth2.client', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'OAuth2 客户端', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 305. OAuth2 客户端-新增OAuth2客户端 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-新增OAuth2客户端', 'system.oauth2.client.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 305. OAuth2 客户端-新增OAuth2客户端 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-新增OAuth2客户端', 'system.oauth2.client.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create oauth2 client', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 305. OAuth2 客户端-新增OAuth2客户端 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-新增OAuth2客户端', 'system.oauth2.client.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增 OAuth2 客户端', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 306. OAuth2 客户端-删除OAuth2客户端 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-删除OAuth2客户端', 'system.oauth2.client.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 306. OAuth2 客户端-删除OAuth2客户端 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-删除OAuth2客户端', 'system.oauth2.client.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete oauth2 client', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 306. OAuth2 客户端-删除OAuth2客户端 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-删除OAuth2客户端', 'system.oauth2.client.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除 OAuth2 客户端', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 307. OAuth2 客户端-OAuth2客户端查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-OAuth2客户端查询', 'system.oauth2.client.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 307. OAuth2 客户端-OAuth2客户端查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-OAuth2客户端查询', 'system.oauth2.client.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'oauth2 client query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 307. OAuth2 客户端-OAuth2客户端查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-OAuth2客户端查询', 'system.oauth2.client.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'OAuth2 客户端查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 308. OAuth2 客户端-修改OAuth2客户端 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-修改OAuth2客户端', 'system.oauth2.client.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 308. OAuth2 客户端-修改OAuth2客户端 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-修改OAuth2客户端', 'system.oauth2.client.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update oauth2 client', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 308. OAuth2 客户端-修改OAuth2客户端 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-修改OAuth2客户端', 'system.oauth2.client.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改 OAuth2 客户端', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 309. OAuth2客户端 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.client';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端', 'system.oauth2.client.client', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 309. OAuth2客户端 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.client' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端', 'system.oauth2.client.client', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'oauth2 client', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 309. OAuth2客户端 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.client' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端', 'system.oauth2.client.client', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'OAuth2 客户端', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 310. OAuth2 客户端-访问令牌的有效期 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.accessTokenValiditySeconds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-访问令牌的有效期', 'system.oauth2.client.field.accessTokenValiditySeconds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 310. OAuth2 客户端-访问令牌的有效期 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.accessTokenValiditySeconds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-访问令牌的有效期', 'system.oauth2.client.field.accessTokenValiditySeconds', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'access token validity', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 310. OAuth2 客户端-访问令牌的有效期 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.accessTokenValiditySeconds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-访问令牌的有效期', 'system.oauth2.client.field.accessTokenValiditySeconds', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '访问令牌的有效期', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 311. OAuth2 客户端-附加信息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.additionalInformation';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-附加信息', 'system.oauth2.client.field.additionalInformation', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 311. OAuth2 客户端-附加信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.additionalInformation' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-附加信息', 'system.oauth2.client.field.additionalInformation', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'additional info', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 311. OAuth2 客户端-附加信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.additionalInformation' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-附加信息', 'system.oauth2.client.field.additionalInformation', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '附加信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 312. OAuth2 客户端-权限 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.authorities';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-权限', 'system.oauth2.client.field.authorities', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 312. OAuth2 客户端-权限 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.authorities' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-权限', 'system.oauth2.client.field.authorities', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'authorities', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 312. OAuth2 客户端-权限 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.authorities' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-权限', 'system.oauth2.client.field.authorities', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '权限', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 313. OAuth2 客户端-授权类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.authorizedGrantTypes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-授权类型', 'system.oauth2.client.field.authorizedGrantTypes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 313. OAuth2 客户端-授权类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.authorizedGrantTypes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-授权类型', 'system.oauth2.client.field.authorizedGrantTypes', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'grant types', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 313. OAuth2 客户端-授权类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.authorizedGrantTypes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-授权类型', 'system.oauth2.client.field.authorizedGrantTypes', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '授权类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 314. OAuth2 客户端-自动授权范围 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.autoApproveScopes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-自动授权范围', 'system.oauth2.client.field.autoApproveScopes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 314. OAuth2 客户端-自动授权范围 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.autoApproveScopes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-自动授权范围', 'system.oauth2.client.field.autoApproveScopes', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'auto approve scopes', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 314. OAuth2 客户端-自动授权范围 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.autoApproveScopes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-自动授权范围', 'system.oauth2.client.field.autoApproveScopes', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '自动授权范围', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 315. OAuth2 客户端-客户端编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.clientId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端编号', 'system.oauth2.client.field.clientId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 315. OAuth2 客户端-客户端编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.clientId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端编号', 'system.oauth2.client.field.clientId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'client id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 315. OAuth2 客户端-客户端编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.clientId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端编号', 'system.oauth2.client.field.clientId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '客户端编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 316. OAuth2 客户端-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-创建时间', 'system.oauth2.client.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 316. OAuth2 客户端-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-创建时间', 'system.oauth2.client.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 316. OAuth2 客户端-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-创建时间', 'system.oauth2.client.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 317. OAuth2 客户端-应用描述 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.description';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用描述', 'system.oauth2.client.field.description', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 317. OAuth2 客户端-应用描述 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.description' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用描述', 'system.oauth2.client.field.description', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'app description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 317. OAuth2 客户端-应用描述 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.description' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用描述', 'system.oauth2.client.field.description', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '应用描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 318. OAuth2 客户端-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-编号', 'system.oauth2.client.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 318. OAuth2 客户端-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-编号', 'system.oauth2.client.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 318. OAuth2 客户端-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-编号', 'system.oauth2.client.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 319. OAuth2 客户端-应用图标 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.logo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用图标', 'system.oauth2.client.field.logo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 319. OAuth2 客户端-应用图标 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.logo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用图标', 'system.oauth2.client.field.logo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'app logo', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 319. OAuth2 客户端-应用图标 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.logo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用图标', 'system.oauth2.client.field.logo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '应用图标', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 320. OAuth2 客户端-应用名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用名', 'system.oauth2.client.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 320. OAuth2 客户端-应用名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用名', 'system.oauth2.client.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'app name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 320. OAuth2 客户端-应用名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-应用名', 'system.oauth2.client.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '应用名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 321. OAuth2 客户端-可重定向的URI地址 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.redirectUris';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-可重定向的URI地址', 'system.oauth2.client.field.redirectUris', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 321. OAuth2 客户端-可重定向的URI地址 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.redirectUris' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-可重定向的URI地址', 'system.oauth2.client.field.redirectUris', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'redirect uris', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 321. OAuth2 客户端-可重定向的URI地址 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.redirectUris' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-可重定向的URI地址', 'system.oauth2.client.field.redirectUris', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '可重定向的 URI 地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 322. OAuth2 客户端-刷新令牌的有效期 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.refreshTokenValiditySeconds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-刷新令牌的有效期', 'system.oauth2.client.field.refreshTokenValiditySeconds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 322. OAuth2 客户端-刷新令牌的有效期 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.refreshTokenValiditySeconds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-刷新令牌的有效期', 'system.oauth2.client.field.refreshTokenValiditySeconds', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'refresh token validity', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 322. OAuth2 客户端-刷新令牌的有效期 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.refreshTokenValiditySeconds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-刷新令牌的有效期', 'system.oauth2.client.field.refreshTokenValiditySeconds', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '刷新令牌的有效期', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 323. OAuth2 客户端-资源 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.resourceIds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-资源', 'system.oauth2.client.field.resourceIds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 323. OAuth2 客户端-资源 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.resourceIds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-资源', 'system.oauth2.client.field.resourceIds', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'resource ids', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 323. OAuth2 客户端-资源 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.resourceIds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-资源', 'system.oauth2.client.field.resourceIds', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '资源', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 324. OAuth2 客户端-授权范围 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.scopes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-授权范围', 'system.oauth2.client.field.scopes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 324. OAuth2 客户端-授权范围 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.scopes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-授权范围', 'system.oauth2.client.field.scopes', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'scopes', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 324. OAuth2 客户端-授权范围 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.scopes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-授权范围', 'system.oauth2.client.field.scopes', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '授权范围', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 325. OAuth2 客户端-客户端密钥 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.secret';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端密钥', 'system.oauth2.client.field.secret', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 325. OAuth2 客户端-客户端密钥 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.secret' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端密钥', 'system.oauth2.client.field.secret', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'client secret', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 325. OAuth2 客户端-客户端密钥 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.secret' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-客户端密钥', 'system.oauth2.client.field.secret', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '客户端密钥', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 326. OAuth2 客户端-状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-状态', 'system.oauth2.client.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 326. OAuth2 客户端-状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-状态', 'system.oauth2.client.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 326. OAuth2 客户端-状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-状态', 'system.oauth2.client.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 327. OAuth2 客户端-请输入访问令牌的有效期，单位：秒 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.help.accessTokenValidity';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-请输入访问令牌的有效期，单位：秒', 'system.oauth2.client.help.accessTokenValidity', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 327. OAuth2 客户端-请输入访问令牌的有效期，单位：秒 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.help.accessTokenValidity' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-请输入访问令牌的有效期，单位：秒', 'system.oauth2.client.help.accessTokenValidity', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'access token validity, unit: seconds', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 327. OAuth2 客户端-请输入访问令牌的有效期，单位：秒 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.help.accessTokenValidity' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-请输入访问令牌的有效期，单位：秒', 'system.oauth2.client.help.accessTokenValidity', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '请输入访问令牌的有效期，单位：秒', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 328. OAuth2 客户端-请输入附加信息，JSON格式数据 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.help.additionalInformation';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-请输入附加信息，JSON格式数据', 'system.oauth2.client.help.additionalInformation', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 328. OAuth2 客户端-请输入附加信息，JSON格式数据 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.help.additionalInformation' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-请输入附加信息，JSON格式数据', 'system.oauth2.client.help.additionalInformation', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'additional info, JSON format', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 328. OAuth2 客户端-请输入附加信息，JSON格式数据 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.help.additionalInformation' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-请输入附加信息，JSON格式数据', 'system.oauth2.client.help.additionalInformation', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '请输入附加信息，JSON 格式数据', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 329. OAuth2 客户端-请输入刷新令牌的有效期，单位：秒 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.help.refreshTokenValidity';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-请输入刷新令牌的有效期，单位：秒', 'system.oauth2.client.help.refreshTokenValidity', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 329. OAuth2 客户端-请输入刷新令牌的有效期，单位：秒 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.help.refreshTokenValidity' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-请输入刷新令牌的有效期，单位：秒', 'system.oauth2.client.help.refreshTokenValidity', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'refresh token validity, unit: seconds', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 329. OAuth2 客户端-请输入刷新令牌的有效期，单位：秒 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.help.refreshTokenValidity' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-请输入刷新令牌的有效期，单位：秒', 'system.oauth2.client.help.refreshTokenValidity', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '请输入刷新令牌的有效期，单位：秒', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 330. OAuth2 客户端-OAuth2客户端列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-OAuth2客户端列表', 'system.oauth2.client.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 330. OAuth2 客户端-OAuth2客户端列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-OAuth2客户端列表', 'system.oauth2.client.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'oauth2 client list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 330. OAuth2 客户端-OAuth2客户端列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-OAuth2客户端列表', 'system.oauth2.client.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'OAuth2 客户端列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 331. OAuth2 客户端-OAuth2客户端管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.client.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-OAuth2客户端管理', 'system.oauth2.client.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 331. OAuth2 客户端-OAuth2客户端管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-OAuth2客户端管理', 'system.oauth2.client.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'oauth2 client management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 331. OAuth2 客户端-OAuth2客户端管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.client.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 客户端-OAuth2客户端管理', 'system.oauth2.client.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'OAuth2 客户端管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 332. OAuth2.0 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.sso';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2.0', 'system.oauth2.sso', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 332. OAuth2.0 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.sso' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2.0', 'system.oauth2.sso', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'oAuth2.0', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 332. OAuth2.0 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.sso' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2.0', 'system.oauth2.sso', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'OAuth2.0', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 333. OAuth2令牌 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.token';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2令牌', 'system.oauth2.token', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 333. OAuth2令牌 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2令牌', 'system.oauth2.token', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 333. OAuth2令牌 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2令牌', 'system.oauth2.token', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'OAuth2 令牌', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 334. OAuth2 令牌-强退令牌 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.token.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-强退令牌', 'system.oauth2.token.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 334. OAuth2 令牌-强退令牌 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-强退令牌', 'system.oauth2.token.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'force logout token', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 334. OAuth2 令牌-强退令牌 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-强退令牌', 'system.oauth2.token.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '强退令牌', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 335. OAuth2 令牌-OAuth2令牌查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.token.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-OAuth2令牌查询', 'system.oauth2.token.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 335. OAuth2 令牌-OAuth2令牌查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-OAuth2令牌查询', 'system.oauth2.token.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'oauth2 token query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 335. OAuth2 令牌-OAuth2令牌查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-OAuth2令牌查询', 'system.oauth2.token.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'OAuth2 令牌查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 336. OAuth2 令牌-访问令牌 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.token.field.accessToken';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-访问令牌', 'system.oauth2.token.field.accessToken', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 336. OAuth2 令牌-访问令牌 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.field.accessToken' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-访问令牌', 'system.oauth2.token.field.accessToken', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'access token', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 336. OAuth2 令牌-访问令牌 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.field.accessToken' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-访问令牌', 'system.oauth2.token.field.accessToken', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '访问令牌', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 337. OAuth2 令牌-客户端编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.token.field.clientId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-客户端编号', 'system.oauth2.token.field.clientId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 337. OAuth2 令牌-客户端编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.field.clientId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-客户端编号', 'system.oauth2.token.field.clientId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'client id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 337. OAuth2 令牌-客户端编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.field.clientId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-客户端编号', 'system.oauth2.token.field.clientId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '客户端编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 338. OAuth2 令牌-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.token.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-创建时间', 'system.oauth2.token.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 338. OAuth2 令牌-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-创建时间', 'system.oauth2.token.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 338. OAuth2 令牌-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-创建时间', 'system.oauth2.token.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 339. OAuth2 令牌-过期时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.token.field.expiresTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-过期时间', 'system.oauth2.token.field.expiresTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 339. OAuth2 令牌-过期时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.field.expiresTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-过期时间', 'system.oauth2.token.field.expiresTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'expires at', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 339. OAuth2 令牌-过期时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.field.expiresTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-过期时间', 'system.oauth2.token.field.expiresTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '过期时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 340. OAuth2 令牌-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.token.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-编号', 'system.oauth2.token.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 340. OAuth2 令牌-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-编号', 'system.oauth2.token.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 340. OAuth2 令牌-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-编号', 'system.oauth2.token.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 341. OAuth2 令牌-刷新令牌 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.token.field.refreshToken';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-刷新令牌', 'system.oauth2.token.field.refreshToken', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 341. OAuth2 令牌-刷新令牌 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.field.refreshToken' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-刷新令牌', 'system.oauth2.token.field.refreshToken', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'refresh token', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 341. OAuth2 令牌-刷新令牌 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.field.refreshToken' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-刷新令牌', 'system.oauth2.token.field.refreshToken', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '刷新令牌', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 342. OAuth2 令牌-用户编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.token.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-用户编号', 'system.oauth2.token.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 342. OAuth2 令牌-用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-用户编号', 'system.oauth2.token.field.userId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 342. OAuth2 令牌-用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-用户编号', 'system.oauth2.token.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 343. OAuth2 令牌-用户类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.token.field.userType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-用户类型', 'system.oauth2.token.field.userType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 343. OAuth2 令牌-用户类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.field.userType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-用户类型', 'system.oauth2.token.field.userType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 343. OAuth2 令牌-用户类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.field.userType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-用户类型', 'system.oauth2.token.field.userType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 344. OAuth2 令牌-OAuth2令牌列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.token.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-OAuth2令牌列表', 'system.oauth2.token.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 344. OAuth2 令牌-OAuth2令牌列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-OAuth2令牌列表', 'system.oauth2.token.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'oauth2 token list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 344. OAuth2 令牌-OAuth2令牌列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-OAuth2令牌列表', 'system.oauth2.token.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'OAuth2 令牌列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 345. OAuth2 令牌-OAuth2令牌管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.token.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-OAuth2令牌管理', 'system.oauth2.token.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 345. OAuth2 令牌-OAuth2令牌管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-OAuth2令牌管理', 'system.oauth2.token.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'oauth2 token management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 345. OAuth2 令牌-OAuth2令牌管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-OAuth2令牌管理', 'system.oauth2.token.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'OAuth2 令牌管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 346. OAuth2 令牌-强退后，令牌将立即失效，确定强退吗？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.token.message.deleteTokenConfirm';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-强退后，令牌将立即失效，确定强退吗？', 'system.oauth2.token.message.deleteTokenConfirm', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 346. OAuth2 令牌-强退后，令牌将立即失效，确定强退吗？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.message.deleteTokenConfirm' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-强退后，令牌将立即失效，确定强退吗？', 'system.oauth2.token.message.deleteTokenConfirm', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'token will be invalidated immediately, confirm force logout?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 346. OAuth2 令牌-强退后，令牌将立即失效，确定强退吗？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.message.deleteTokenConfirm' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-强退后，令牌将立即失效，确定强退吗？', 'system.oauth2.token.message.deleteTokenConfirm', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '强退后，令牌将立即失效，确定强退吗？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 347. OAuth2 令牌-强退 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.token.message.forceLogout';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-强退', 'system.oauth2.token.message.forceLogout', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 347. OAuth2 令牌-强退 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.message.forceLogout' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-强退', 'system.oauth2.token.message.forceLogout', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'force logout', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 347. OAuth2 令牌-强退 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.message.forceLogout' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2 令牌-强退', 'system.oauth2.token.message.forceLogout', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '强退', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 348. OAuth2令牌 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.oauth2.token.token';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2令牌', 'system.oauth2.token.token', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 348. OAuth2令牌 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.token' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2令牌', 'system.oauth2.token.token', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'oauth2 token', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 348. OAuth2令牌 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.oauth2.token.token' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2令牌', 'system.oauth2.token.token', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'OAuth2 令牌', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 349. 操作日志 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志', 'system.operatelog', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 349. 操作日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志', 'system.operatelog', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 349. 操作日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志', 'system.operatelog', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '操作日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 350. 操作日志-导出操作日志 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-导出操作日志', 'system.operatelog.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 350. 操作日志-导出操作日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-导出操作日志', 'system.operatelog.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export operation log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 350. 操作日志-导出操作日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-导出操作日志', 'system.operatelog.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出操作日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 351. 操作日志-操作日志查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作日志查询', 'system.operatelog.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 351. 操作日志-操作日志查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作日志查询', 'system.operatelog.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'operation log query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 351. 操作日志-操作日志查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作日志查询', 'system.operatelog.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '操作日志查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 352. 操作日志-操作内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.field.action';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作内容', 'system.operatelog.field.action', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 352. 操作日志-操作内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.action' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作内容', 'system.operatelog.field.action', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'operation content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 352. 操作日志-操作内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.action' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作内容', 'system.operatelog.field.action', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '操作内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 353. 操作日志-业务编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.field.bizId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-业务编号', 'system.operatelog.field.bizId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 353. 操作日志-业务编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.bizId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-业务编号', 'system.operatelog.field.bizId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'business id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 353. 操作日志-业务编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.bizId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-业务编号', 'system.operatelog.field.bizId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '业务编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 354. 操作日志-操作时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作时间', 'system.operatelog.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 354. 操作日志-操作时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作时间', 'system.operatelog.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'operation time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 354. 操作日志-操作时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作时间', 'system.operatelog.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '操作时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 355. 操作日志-操作拓展参数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.field.extra';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作拓展参数', 'system.operatelog.field.extra', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 355. 操作日志-操作拓展参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.extra' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作拓展参数', 'system.operatelog.field.extra', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'extra params', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 355. 操作日志-操作拓展参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.extra' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作拓展参数', 'system.operatelog.field.extra', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '操作拓展参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 356. 操作日志-日志编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-日志编号', 'system.operatelog.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 356. 操作日志-日志编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-日志编号', 'system.operatelog.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'log id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 356. 操作日志-日志编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-日志编号', 'system.operatelog.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '日志编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 357. 操作日志-请求方式 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.field.requestMethod';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-请求方式', 'system.operatelog.field.requestMethod', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 357. 操作日志-请求方式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.requestMethod' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-请求方式', 'system.operatelog.field.requestMethod', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'request method', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 357. 操作日志-请求方式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.requestMethod' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-请求方式', 'system.operatelog.field.requestMethod', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请求方式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 358. 操作日志-请求URL (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.field.requestUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-请求URL', 'system.operatelog.field.requestUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 358. 操作日志-请求URL - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.requestUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-请求URL', 'system.operatelog.field.requestUrl', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'request url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 358. 操作日志-请求URL - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.requestUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-请求URL', 'system.operatelog.field.requestUrl', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请求URL', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 359. 操作日志-操作名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.field.subType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作名', 'system.operatelog.field.subType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 359. 操作日志-操作名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.subType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作名', 'system.operatelog.field.subType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'operation name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 359. 操作日志-操作名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.subType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作名', 'system.operatelog.field.subType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '操作名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 360. 操作日志-链路追踪 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.field.traceId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-链路追踪', 'system.operatelog.field.traceId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 360. 操作日志-链路追踪 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.traceId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-链路追踪', 'system.operatelog.field.traceId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'trace id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 360. 操作日志-链路追踪 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.traceId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-链路追踪', 'system.operatelog.field.traceId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '链路追踪', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 361. 操作日志-操作模块 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作模块', 'system.operatelog.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 361. 操作日志-操作模块 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作模块', 'system.operatelog.field.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'module', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 361. 操作日志-操作模块 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作模块', 'system.operatelog.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '操作模块', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 362. 操作日志-操作人UA (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.field.userAgent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作人UA', 'system.operatelog.field.userAgent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 362. 操作日志-操作人UA - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.userAgent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作人UA', 'system.operatelog.field.userAgent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'operator ua', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 362. 操作日志-操作人UA - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.userAgent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作人UA', 'system.operatelog.field.userAgent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '操作人UA', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 363. 操作日志-操作人编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作人编号', 'system.operatelog.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 363. 操作日志-操作人编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作人编号', 'system.operatelog.field.userId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 363. 操作日志-操作人编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作人编号', 'system.operatelog.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '操作人编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 364. 操作日志-操作人IP (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.field.userIp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作人IP', 'system.operatelog.field.userIp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 364. 操作日志-操作人IP - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.userIp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作人IP', 'system.operatelog.field.userIp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'operator ip', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 364. 操作日志-操作人IP - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.userIp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作人IP', 'system.operatelog.field.userIp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '操作人IP', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 365. 操作日志-操作人名字 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.field.userName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作人名字', 'system.operatelog.field.userName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 365. 操作日志-操作人名字 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.userName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作人名字', 'system.operatelog.field.userName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'operator name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 365. 操作日志-操作人名字 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.field.userName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作人名字', 'system.operatelog.field.userName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '操作人名字', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 366. 操作日志-操作日志列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作日志列表', 'system.operatelog.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 366. 操作日志-操作日志列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作日志列表', 'system.operatelog.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'operation log list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 366. 操作日志-操作日志列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作日志列表', 'system.operatelog.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '操作日志列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 367. 操作日志 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志', 'system.operatelog.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 367. 操作日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志', 'system.operatelog.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'operation log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 367. 操作日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志', 'system.operatelog.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '操作日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 368. 操作日志-操作日志详情 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.message.detail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作日志详情', 'system.operatelog.message.detail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 368. 操作日志-操作日志详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.message.detail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作日志详情', 'system.operatelog.message.detail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'operation log detail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 368. 操作日志-操作日志详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.message.detail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志-操作日志详情', 'system.operatelog.message.detail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '操作日志详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 369. 操作日志 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.operatelog.operatelog';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志', 'system.operatelog.operatelog', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 369. 操作日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.operatelog' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志', 'system.operatelog.operatelog', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'operation log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 369. 操作日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.operatelog.operatelog' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作日志', 'system.operatelog.operatelog', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '操作日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 370. 岗位 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.post';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位', 'system.post', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 370. 岗位 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位', 'system.post', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 370. 岗位 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位', 'system.post', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '岗位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 371. 岗位-新增岗位 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.post.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-新增岗位', 'system.post.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 371. 岗位-新增岗位 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-新增岗位', 'system.post.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create post', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 371. 岗位-新增岗位 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-新增岗位', 'system.post.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增岗位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 372. 岗位-删除岗位 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.post.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-删除岗位', 'system.post.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 372. 岗位-删除岗位 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-删除岗位', 'system.post.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete post', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 372. 岗位-删除岗位 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-删除岗位', 'system.post.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除岗位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 373. 岗位-导出岗位 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.post.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-导出岗位', 'system.post.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 373. 岗位-导出岗位 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-导出岗位', 'system.post.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export post', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 373. 岗位-导出岗位 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-导出岗位', 'system.post.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出岗位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 374. 岗位-岗位查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.post.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位查询', 'system.post.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 374. 岗位-岗位查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位查询', 'system.post.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'post query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 374. 岗位-岗位查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位查询', 'system.post.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '岗位查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 375. 岗位-修改岗位 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.post.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-修改岗位', 'system.post.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 375. 岗位-修改岗位 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-修改岗位', 'system.post.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update post', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 375. 岗位-修改岗位 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-修改岗位', 'system.post.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改岗位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 376. 岗位-岗位编码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.post.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位编码', 'system.post.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 376. 岗位-岗位编码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位编码', 'system.post.field.code', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'post code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 376. 岗位-岗位编码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位编码', 'system.post.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '岗位编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 377. 岗位-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.post.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-创建时间', 'system.post.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 377. 岗位-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-创建时间', 'system.post.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 377. 岗位-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-创建时间', 'system.post.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 378. 岗位-岗位编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.post.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位编号', 'system.post.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 378. 岗位-岗位编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位编号', 'system.post.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'post id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 378. 岗位-岗位编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位编号', 'system.post.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '岗位编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 379. 岗位-岗位名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.post.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位名称', 'system.post.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 379. 岗位-岗位名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位名称', 'system.post.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'post name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 379. 岗位-岗位名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位名称', 'system.post.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '岗位名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 380. 岗位-岗位备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.post.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位备注', 'system.post.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 380. 岗位-岗位备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位备注', 'system.post.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'post remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 380. 岗位-岗位备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位备注', 'system.post.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '岗位备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 381. 岗位-显示顺序 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.post.field.sort';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-显示顺序', 'system.post.field.sort', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 381. 岗位-显示顺序 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.field.sort' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-显示顺序', 'system.post.field.sort', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sort order', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 381. 岗位-显示顺序 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.field.sort' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-显示顺序', 'system.post.field.sort', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '显示顺序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 382. 岗位-岗位状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.post.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位状态', 'system.post.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 382. 岗位-岗位状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位状态', 'system.post.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'post status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 382. 岗位-岗位状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位状态', 'system.post.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '岗位状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 383. 岗位-岗位列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.post.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位列表', 'system.post.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 383. 岗位-岗位列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位列表', 'system.post.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'post list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 383. 岗位-岗位列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位列表', 'system.post.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '岗位列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 384. 岗位-岗位管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.post.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位管理', 'system.post.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 384. 岗位-岗位管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位管理', 'system.post.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'post management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 384. 岗位-岗位管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位-岗位管理', 'system.post.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '岗位管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 385. 岗位 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.post.post';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位', 'system.post.post', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 385. 岗位 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.post' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位', 'system.post.post', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'post', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 385. 岗位 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.post.post' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('岗位', 'system.post.post', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '岗位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 386. 角色 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色', 'system.role', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 386. 角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色', 'system.role', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 386. 角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色', 'system.role', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 387. 角色-新增角色 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-新增角色', 'system.role.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 387. 角色-新增角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-新增角色', 'system.role.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 387. 角色-新增角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-新增角色', 'system.role.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 388. 角色-删除角色 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-删除角色', 'system.role.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 388. 角色-删除角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-删除角色', 'system.role.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 388. 角色-删除角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-删除角色', 'system.role.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 389. 角色-导出角色 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-导出角色', 'system.role.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 389. 角色-导出角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-导出角色', 'system.role.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 389. 角色-导出角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-导出角色', 'system.role.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 390. 角色-角色查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色查询', 'system.role.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 390. 角色-角色查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色查询', 'system.role.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'role query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 390. 角色-角色查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色查询', 'system.role.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '角色查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 391. 角色-修改角色 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-修改角色', 'system.role.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 391. 角色-修改角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-修改角色', 'system.role.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 391. 角色-修改角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-修改角色', 'system.role.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 392. 角色-角色标识 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色标识', 'system.role.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 392. 角色-角色标识 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色标识', 'system.role.field.code', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 392. 角色-角色标识 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色标识', 'system.role.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色标识', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 393. 角色-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-创建时间', 'system.role.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 393. 角色-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-创建时间', 'system.role.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 393. 角色-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-创建时间', 'system.role.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 394. 角色-权限范围 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.field.dataScope';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-权限范围', 'system.role.field.dataScope', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 394. 角色-权限范围 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.dataScope' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-权限范围', 'system.role.field.dataScope', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'data scope', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 394. 角色-权限范围 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.dataScope' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-权限范围', 'system.role.field.dataScope', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '权限范围', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 395. 角色-部门范围 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.field.dataScopeDeptIds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-部门范围', 'system.role.field.dataScopeDeptIds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 395. 角色-部门范围 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.dataScopeDeptIds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-部门范围', 'system.role.field.dataScopeDeptIds', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'department scope', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 395. 角色-部门范围 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.dataScopeDeptIds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-部门范围', 'system.role.field.dataScopeDeptIds', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '部门范围', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 396. 角色-角色编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色编号', 'system.role.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 396. 角色-角色编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色编号', 'system.role.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 396. 角色-角色编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色编号', 'system.role.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 397. 角色-菜单权限 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.field.menuIds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-菜单权限', 'system.role.field.menuIds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 397. 角色-菜单权限 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.menuIds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-菜单权限', 'system.role.field.menuIds', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'menu permission', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 397. 角色-菜单权限 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.menuIds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-菜单权限', 'system.role.field.menuIds', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '菜单权限', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 398. 角色-角色名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色名称', 'system.role.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 398. 角色-角色名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色名称', 'system.role.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 398. 角色-角色名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色名称', 'system.role.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 399. 角色-角色备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色备注', 'system.role.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 399. 角色-角色备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色备注', 'system.role.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 399. 角色-角色备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色备注', 'system.role.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 400. 角色-显示顺序 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.field.sort';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-显示顺序', 'system.role.field.sort', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 400. 角色-显示顺序 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.sort' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-显示顺序', 'system.role.field.sort', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sort order', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 400. 角色-显示顺序 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.sort' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-显示顺序', 'system.role.field.sort', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '显示顺序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 401. 角色-角色状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色状态', 'system.role.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 401. 角色-角色状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色状态', 'system.role.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 401. 角色-角色状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色状态', 'system.role.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 402. 角色-角色类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色类型', 'system.role.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 402. 角色-角色类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色类型', 'system.role.field.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 402. 角色-角色类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色类型', 'system.role.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 403. 角色-角色列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色列表', 'system.role.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 403. 角色-角色列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色列表', 'system.role.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 403. 角色-角色列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色列表', 'system.role.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 404. 角色-角色管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色管理', 'system.role.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 404. 角色-角色管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色管理', 'system.role.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'role management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 404. 角色-角色管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-角色管理', 'system.role.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '角色管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 405. 角色-数据权限 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.message.dataPermission';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-数据权限', 'system.role.message.dataPermission', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 405. 角色-数据权限 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.message.dataPermission' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-数据权限', 'system.role.message.dataPermission', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'data permission', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 405. 角色-数据权限 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.message.dataPermission' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-数据权限', 'system.role.message.dataPermission', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '数据权限', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 406. 角色-菜单权限 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.message.menuPermission';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-菜单权限', 'system.role.message.menuPermission', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 406. 角色-菜单权限 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.message.menuPermission' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-菜单权限', 'system.role.message.menuPermission', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'menu permission', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 406. 角色-菜单权限 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.message.menuPermission' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色-菜单权限', 'system.role.message.menuPermission', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '菜单权限', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 407. 角色 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.role.role';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色', 'system.role.role', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 407. 角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.role' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色', 'system.role.role', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 407. 角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.role.role' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('角色', 'system.role.role', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 408. 短信渠道 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道', 'system.sms.channel', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 408. 短信渠道 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道', 'system.sms.channel', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 408. 短信渠道 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道', 'system.sms.channel', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '短信渠道', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 409. 短信渠道-新增短信渠道 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-新增短信渠道', 'system.sms.channel.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 409. 短信渠道-新增短信渠道 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-新增短信渠道', 'system.sms.channel.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create sms channel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 409. 短信渠道-新增短信渠道 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-新增短信渠道', 'system.sms.channel.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增短信渠道', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 410. 短信渠道-删除短信渠道 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-删除短信渠道', 'system.sms.channel.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 410. 短信渠道-删除短信渠道 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-删除短信渠道', 'system.sms.channel.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete sms channel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 410. 短信渠道-删除短信渠道 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-删除短信渠道', 'system.sms.channel.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除短信渠道', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 411. 短信渠道-导出短信渠道 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-导出短信渠道', 'system.sms.channel.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 411. 短信渠道-导出短信渠道 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-导出短信渠道', 'system.sms.channel.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export sms channel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 411. 短信渠道-导出短信渠道 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-导出短信渠道', 'system.sms.channel.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出短信渠道', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 412. 短信渠道-短信渠道查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信渠道查询', 'system.sms.channel.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 412. 短信渠道-短信渠道查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信渠道查询', 'system.sms.channel.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'sms channel query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 412. 短信渠道-短信渠道查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信渠道查询', 'system.sms.channel.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '短信渠道查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 413. 短信渠道-修改短信渠道 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-修改短信渠道', 'system.sms.channel.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 413. 短信渠道-修改短信渠道 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-修改短信渠道', 'system.sms.channel.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update sms channel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 413. 短信渠道-修改短信渠道 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-修改短信渠道', 'system.sms.channel.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改短信渠道', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 414. 短信渠道 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.channel';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道', 'system.sms.channel.channel', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 414. 短信渠道 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.channel' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道', 'system.sms.channel.channel', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'sms channel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 414. 短信渠道 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.channel' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道', 'system.sms.channel.channel', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '短信渠道', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 415. 短信渠道-短信API的账号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.field.apiKey';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信API的账号', 'system.sms.channel.field.apiKey', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 415. 短信渠道-短信API的账号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.apiKey' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信API的账号', 'system.sms.channel.field.apiKey', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms api account', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 415. 短信渠道-短信API的账号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.apiKey' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信API的账号', 'system.sms.channel.field.apiKey', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信 API 的账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 416. 短信渠道-短信API的密钥 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.field.apiSecret';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信API的密钥', 'system.sms.channel.field.apiSecret', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 416. 短信渠道-短信API的密钥 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.apiSecret' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信API的密钥', 'system.sms.channel.field.apiSecret', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms api secret', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 416. 短信渠道-短信API的密钥 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.apiSecret' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信API的密钥', 'system.sms.channel.field.apiSecret', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信 API 的密钥', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 417. 短信渠道-短信发送回调URL (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.field.callbackUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信发送回调URL', 'system.sms.channel.field.callbackUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 417. 短信渠道-短信发送回调URL - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.callbackUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信发送回调URL', 'system.sms.channel.field.callbackUrl', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms callback url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 417. 短信渠道-短信发送回调URL - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.callbackUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信发送回调URL', 'system.sms.channel.field.callbackUrl', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信发送回调 URL', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 418. 短信渠道-渠道编码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-渠道编码', 'system.sms.channel.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 418. 短信渠道-渠道编码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-渠道编码', 'system.sms.channel.field.code', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'channel code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 418. 短信渠道-渠道编码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-渠道编码', 'system.sms.channel.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '渠道编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 419. 短信渠道-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-创建时间', 'system.sms.channel.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 419. 短信渠道-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-创建时间', 'system.sms.channel.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 419. 短信渠道-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-创建时间', 'system.sms.channel.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 420. 短信渠道-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-编号', 'system.sms.channel.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 420. 短信渠道-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-编号', 'system.sms.channel.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 420. 短信渠道-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-编号', 'system.sms.channel.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 421. 短信渠道-备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-备注', 'system.sms.channel.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 421. 短信渠道-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-备注', 'system.sms.channel.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 421. 短信渠道-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-备注', 'system.sms.channel.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 422. 短信渠道-短信签名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.field.signature';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信签名', 'system.sms.channel.field.signature', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 422. 短信渠道-短信签名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.signature' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信签名', 'system.sms.channel.field.signature', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms signature', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 422. 短信渠道-短信签名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.signature' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信签名', 'system.sms.channel.field.signature', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信签名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 423. 短信渠道-启用状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-启用状态', 'system.sms.channel.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 423. 短信渠道-启用状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-启用状态', 'system.sms.channel.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 423. 短信渠道-启用状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-启用状态', 'system.sms.channel.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '启用状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 424. 短信渠道-短信渠道列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信渠道列表', 'system.sms.channel.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 424. 短信渠道-短信渠道列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信渠道列表', 'system.sms.channel.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms channel list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 424. 短信渠道-短信渠道列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道-短信渠道列表', 'system.sms.channel.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信渠道列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 425. 短信渠道 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.channel.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道', 'system.sms.channel.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 425. 短信渠道 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道', 'system.sms.channel.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'sms channel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 425. 短信渠道 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.channel.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信渠道', 'system.sms.channel.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '短信渠道', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 426. 短信日志 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志', 'system.sms.log', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 426. 短信日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志', 'system.sms.log', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 426. 短信日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志', 'system.sms.log', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '短信日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 427. 短信日志-导出短信日志 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-导出短信日志', 'system.sms.log.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 427. 短信日志-导出短信日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-导出短信日志', 'system.sms.log.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export sms log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 427. 短信日志-导出短信日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-导出短信日志', 'system.sms.log.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出短信日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 428. 短信日志-短信日志查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信日志查询', 'system.sms.log.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 428. 短信日志-短信日志查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信日志查询', 'system.sms.log.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'sms log query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 428. 短信日志-短信日志查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信日志查询', 'system.sms.log.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '短信日志查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 429. 短信日志-API接收编码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.apiReceiveCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API接收编码', 'system.sms.log.field.apiReceiveCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 429. 短信日志-API接收编码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.apiReceiveCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API接收编码', 'system.sms.log.field.apiReceiveCode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api receive code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 429. 短信日志-API接收编码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.apiReceiveCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API接收编码', 'system.sms.log.field.apiReceiveCode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'API 接收编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 430. 短信日志-API接收消息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.apiReceiveMsg';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API接收消息', 'system.sms.log.field.apiReceiveMsg', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 430. 短信日志-API接收消息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.apiReceiveMsg' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API接收消息', 'system.sms.log.field.apiReceiveMsg', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api receive message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 430. 短信日志-API接收消息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.apiReceiveMsg' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API接收消息', 'system.sms.log.field.apiReceiveMsg', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'API 接收消息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 431. 短信日志-API请求ID (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.apiRequestId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API请求ID', 'system.sms.log.field.apiRequestId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 431. 短信日志-API请求ID - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.apiRequestId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API请求ID', 'system.sms.log.field.apiRequestId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api request id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 431. 短信日志-API请求ID - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.apiRequestId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API请求ID', 'system.sms.log.field.apiRequestId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'API 请求 ID', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 432. 短信日志-API发送编码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.apiSendCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API发送编码', 'system.sms.log.field.apiSendCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 432. 短信日志-API发送编码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.apiSendCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API发送编码', 'system.sms.log.field.apiSendCode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api send code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 432. 短信日志-API发送编码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.apiSendCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API发送编码', 'system.sms.log.field.apiSendCode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'API 发送编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 433. 短信日志-API发送消息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.apiSendMsg';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API发送消息', 'system.sms.log.field.apiSendMsg', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 433. 短信日志-API发送消息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.apiSendMsg' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API发送消息', 'system.sms.log.field.apiSendMsg', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api send message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 433. 短信日志-API发送消息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.apiSendMsg' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API发送消息', 'system.sms.log.field.apiSendMsg', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'API 发送消息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 434. 短信日志-API序列号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.apiSerialNo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API序列号', 'system.sms.log.field.apiSerialNo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 434. 短信日志-API序列号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.apiSerialNo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API序列号', 'system.sms.log.field.apiSerialNo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api serial no', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 434. 短信日志-API序列号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.apiSerialNo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-API序列号', 'system.sms.log.field.apiSerialNo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'API 序列号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 435. 短信日志-短信渠道 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.channelCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信渠道', 'system.sms.log.field.channelCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 435. 短信日志-短信渠道 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.channelCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信渠道', 'system.sms.log.field.channelCode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms channel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 435. 短信日志-短信渠道 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.channelCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信渠道', 'system.sms.log.field.channelCode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信渠道', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 436. 短信日志-短信渠道 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.channelId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信渠道', 'system.sms.log.field.channelId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 436. 短信日志-短信渠道 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.channelId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信渠道', 'system.sms.log.field.channelId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms channel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 436. 短信日志-短信渠道 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.channelId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信渠道', 'system.sms.log.field.channelId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信渠道', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 437. 短信日志-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-创建时间', 'system.sms.log.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 437. 短信日志-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-创建时间', 'system.sms.log.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 437. 短信日志-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-创建时间', 'system.sms.log.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 438. 短信日志-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-编号', 'system.sms.log.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 438. 短信日志-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-编号', 'system.sms.log.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 438. 短信日志-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-编号', 'system.sms.log.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 439. 短信日志-手机号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.mobile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-手机号', 'system.sms.log.field.mobile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 439. 短信日志-手机号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.mobile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-手机号', 'system.sms.log.field.mobile', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mobile', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 439. 短信日志-手机号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.mobile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-手机号', 'system.sms.log.field.mobile', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '手机号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 440. 短信日志-接收状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.receiveStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收状态', 'system.sms.log.field.receiveStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 440. 短信日志-接收状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.receiveStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收状态', 'system.sms.log.field.receiveStatus', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'receive status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 440. 短信日志-接收状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.receiveStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收状态', 'system.sms.log.field.receiveStatus', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '接收状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 441. 短信日志-接收时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.receiveTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收时间', 'system.sms.log.field.receiveTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 441. 短信日志-接收时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.receiveTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收时间', 'system.sms.log.field.receiveTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'receive time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 441. 短信日志-接收时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.receiveTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-接收时间', 'system.sms.log.field.receiveTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '接收时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 442. 短信日志-发送状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.sendStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送状态', 'system.sms.log.field.sendStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 442. 短信日志-发送状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.sendStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送状态', 'system.sms.log.field.sendStatus', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'send status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 442. 短信日志-发送状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.sendStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送状态', 'system.sms.log.field.sendStatus', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 443. 短信日志-发送时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.sendTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送时间', 'system.sms.log.field.sendTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 443. 短信日志-发送时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.sendTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送时间', 'system.sms.log.field.sendTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'send time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 443. 短信日志-发送时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.sendTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-发送时间', 'system.sms.log.field.sendTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 444. 短信日志-短信内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.templateContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信内容', 'system.sms.log.field.templateContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 444. 短信日志-短信内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.templateContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信内容', 'system.sms.log.field.templateContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 444. 短信日志-短信内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.templateContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信内容', 'system.sms.log.field.templateContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 445. 短信日志-模板编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.templateId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-模板编号', 'system.sms.log.field.templateId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 445. 短信日志-模板编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.templateId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-模板编号', 'system.sms.log.field.templateId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 445. 短信日志-模板编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.templateId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-模板编号', 'system.sms.log.field.templateId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 446. 短信日志-短信类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.field.templateType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信类型', 'system.sms.log.field.templateType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 446. 短信日志-短信类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.templateType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信类型', 'system.sms.log.field.templateType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 446. 短信日志-短信类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.field.templateType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信类型', 'system.sms.log.field.templateType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 447. 短信日志-短信日志列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信日志列表', 'system.sms.log.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 447. 短信日志-短信日志列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信日志列表', 'system.sms.log.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms log list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 447. 短信日志-短信日志列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信日志列表', 'system.sms.log.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信日志列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 448. 短信日志 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.log';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志', 'system.sms.log.log', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 448. 短信日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.log' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志', 'system.sms.log.log', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'sms log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 448. 短信日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.log' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志', 'system.sms.log.log', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '短信日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 449. 短信日志 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志', 'system.sms.log.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 449. 短信日志 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志', 'system.sms.log.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'sms log', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 449. 短信日志 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志', 'system.sms.log.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '短信日志', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 450. 短信日志-短信日志详情 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.log.message.detail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信日志详情', 'system.sms.log.message.detail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 450. 短信日志-短信日志详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.message.detail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信日志详情', 'system.sms.log.message.detail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms log detail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 450. 短信日志-短信日志详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.log.message.detail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信日志-短信日志详情', 'system.sms.log.message.detail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信日志详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 451. 短信模板 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板', 'system.sms.template', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 451. 短信模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板', 'system.sms.template', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 451. 短信模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板', 'system.sms.template', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '短信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 452. 短信模板-新增短信模板 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-新增短信模板', 'system.sms.template.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 452. 短信模板-新增短信模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-新增短信模板', 'system.sms.template.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create sms template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 452. 短信模板-新增短信模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-新增短信模板', 'system.sms.template.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增短信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 453. 短信模板-删除短信模板 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-删除短信模板', 'system.sms.template.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 453. 短信模板-删除短信模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-删除短信模板', 'system.sms.template.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete sms template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 453. 短信模板-删除短信模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-删除短信模板', 'system.sms.template.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除短信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 454. 短信模板-导出短信模板 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-导出短信模板', 'system.sms.template.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 454. 短信模板-导出短信模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-导出短信模板', 'system.sms.template.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export sms template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 454. 短信模板-导出短信模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-导出短信模板', 'system.sms.template.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出短信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 455. 短信模板-短信模板查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信模板查询', 'system.sms.template.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 455. 短信模板-短信模板查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信模板查询', 'system.sms.template.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'sms template query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 455. 短信模板-短信模板查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信模板查询', 'system.sms.template.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '短信模板查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 456. 短信模板-发送短信 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.action.send';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-发送短信', 'system.sms.template.action.send', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 456. 短信模板-发送短信 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.action.send' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-发送短信', 'system.sms.template.action.send', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'send sms', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 456. 短信模板-发送短信 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.action.send' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-发送短信', 'system.sms.template.action.send', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '发送短信', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 457. 短信模板-修改短信模板 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-修改短信模板', 'system.sms.template.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 457. 短信模板-修改短信模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-修改短信模板', 'system.sms.template.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update sms template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 457. 短信模板-修改短信模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-修改短信模板', 'system.sms.template.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改短信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 458. 短信模板-短信API的模板编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.field.apiTemplateId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信API的模板编号', 'system.sms.template.field.apiTemplateId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 458. 短信模板-短信API的模板编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.apiTemplateId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信API的模板编号', 'system.sms.template.field.apiTemplateId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms api template id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 458. 短信模板-短信API的模板编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.apiTemplateId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信API的模板编号', 'system.sms.template.field.apiTemplateId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信 API 的模板编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 459. 短信模板-短信渠道 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.field.channelCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道', 'system.sms.template.field.channelCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 459. 短信模板-短信渠道 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.channelCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道', 'system.sms.template.field.channelCode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms channel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 459. 短信模板-短信渠道 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.channelCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道', 'system.sms.template.field.channelCode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信渠道', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 460. 短信模板-短信渠道 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.field.channelId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道', 'system.sms.template.field.channelId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 460. 短信模板-短信渠道 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.channelId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道', 'system.sms.template.field.channelId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms channel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 460. 短信模板-短信渠道 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.channelId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信渠道', 'system.sms.template.field.channelId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信渠道', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 461. 短信模板-模板编码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码', 'system.sms.template.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 461. 短信模板-模板编码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码', 'system.sms.template.field.code', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 461. 短信模板-模板编码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板编码', 'system.sms.template.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 462. 短信模板-模板内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.field.content';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板内容', 'system.sms.template.field.content', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 462. 短信模板-模板内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.content' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板内容', 'system.sms.template.field.content', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 462. 短信模板-模板内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.content' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板内容', 'system.sms.template.field.content', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 463. 短信模板-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-创建时间', 'system.sms.template.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 463. 短信模板-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-创建时间', 'system.sms.template.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 463. 短信模板-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-创建时间', 'system.sms.template.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 464. 短信模板-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-编号', 'system.sms.template.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 464. 短信模板-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-编号', 'system.sms.template.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 464. 短信模板-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-编号', 'system.sms.template.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 465. 短信模板-手机号码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.field.mobile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-手机号码', 'system.sms.template.field.mobile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 465. 短信模板-手机号码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.mobile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-手机号码', 'system.sms.template.field.mobile', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mobile', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 465. 短信模板-手机号码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.mobile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-手机号码', 'system.sms.template.field.mobile', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '手机号码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 466. 短信模板-模板名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板名称', 'system.sms.template.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 466. 短信模板-模板名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板名称', 'system.sms.template.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 466. 短信模板-模板名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板名称', 'system.sms.template.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 467. 短信模板-备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-备注', 'system.sms.template.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 467. 短信模板-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-备注', 'system.sms.template.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 467. 短信模板-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-备注', 'system.sms.template.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 468. 短信模板-开启状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-开启状态', 'system.sms.template.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 468. 短信模板-开启状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-开启状态', 'system.sms.template.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 468. 短信模板-开启状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-开启状态', 'system.sms.template.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '开启状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 469. 短信模板-模板参数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.field.templateParams';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板参数', 'system.sms.template.field.templateParams', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 469. 短信模板-模板参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.templateParams' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板参数', 'system.sms.template.field.templateParams', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'template params', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 469. 短信模板-模板参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.templateParams' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-模板参数', 'system.sms.template.field.templateParams', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模板参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 470. 短信模板-短信类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信类型', 'system.sms.template.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 470. 短信模板-短信类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信类型', 'system.sms.template.field.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 470. 短信模板-短信类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信类型', 'system.sms.template.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 471. 短信模板-短信模板列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信模板列表', 'system.sms.template.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 471. 短信模板-短信模板列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信模板列表', 'system.sms.template.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms template list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 471. 短信模板-短信模板列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信模板列表', 'system.sms.template.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信模板列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 472. 短信模板 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板', 'system.sms.template.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 472. 短信模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板', 'system.sms.template.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'sms template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 472. 短信模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板', 'system.sms.template.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '短信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 473. 短信模板-参数{0} (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.message.param';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-参数{0}', 'system.sms.template.message.param', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 473. 短信模板-参数{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.message.param' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-参数{0}', 'system.sms.template.message.param', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'param {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 473. 短信模板-参数{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.message.param' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-参数{0}', 'system.sms.template.message.param', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '参数 {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 474. 短信模板-发送短信 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.message.send';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-发送短信', 'system.sms.template.message.send', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 474. 短信模板-发送短信 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.message.send' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-发送短信', 'system.sms.template.message.send', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'send sms', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 474. 短信模板-发送短信 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.message.send' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-发送短信', 'system.sms.template.message.send', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送短信', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 475. 短信模板-发送短信失败 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.message.sendFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-发送短信失败', 'system.sms.template.message.sendFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 475. 短信模板-发送短信失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.message.sendFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-发送短信失败', 'system.sms.template.message.sendFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'failed to send sms', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 475. 短信模板-发送短信失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.message.sendFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-发送短信失败', 'system.sms.template.message.sendFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送短信失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 476. 短信模板-短信发送成功 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.message.sendSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信发送成功', 'system.sms.template.message.sendSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 476. 短信模板-短信发送成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.message.sendSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信发送成功', 'system.sms.template.message.sendSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sms sent successfully', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 476. 短信模板-短信发送成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.message.sendSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板-短信发送成功', 'system.sms.template.message.sendSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '短信发送成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 477. 短信模板 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.sms.template.template';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板', 'system.sms.template.template', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 477. 短信模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.template' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板', 'system.sms.template.template', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'sms template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 477. 短信模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.sms.template.template' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('短信模板', 'system.sms.template.template', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '短信模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 478. 社交客户端 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端', 'system.social.client', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 478. 社交客户端 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端', 'system.social.client', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 478. 社交客户端 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端', 'system.social.client', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '社交客户端', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 479. 社交客户端-新增社交客户端 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-新增社交客户端', 'system.social.client.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 479. 社交客户端-新增社交客户端 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-新增社交客户端', 'system.social.client.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create social client', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 479. 社交客户端-新增社交客户端 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-新增社交客户端', 'system.social.client.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增社交客户端', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 480. 社交客户端-删除社交客户端 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-删除社交客户端', 'system.social.client.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 480. 社交客户端-删除社交客户端 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-删除社交客户端', 'system.social.client.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete social client', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 480. 社交客户端-删除社交客户端 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-删除社交客户端', 'system.social.client.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除社交客户端', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 481. 社交客户端-社交客户端查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-社交客户端查询', 'system.social.client.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 481. 社交客户端-社交客户端查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-社交客户端查询', 'system.social.client.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'social client query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 481. 社交客户端-社交客户端查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-社交客户端查询', 'system.social.client.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '社交客户端查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 482. 社交客户端-修改社交客户端 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-修改社交客户端', 'system.social.client.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 482. 社交客户端-修改社交客户端 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-修改社交客户端', 'system.social.client.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update social client', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 482. 社交客户端-修改社交客户端 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-修改社交客户端', 'system.social.client.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改社交客户端', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 483. 社交客户端 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client.client';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端', 'system.social.client.client', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 483. 社交客户端 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.client' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端', 'system.social.client.client', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'social client', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 483. 社交客户端 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.client' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端', 'system.social.client.client', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '社交客户端', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 484. 社交客户端-agentId (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client.field.agentId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-agentId', 'system.social.client.field.agentId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 484. 社交客户端-agentId - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.agentId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-agentId', 'system.social.client.field.agentId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'agent id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 484. 社交客户端-agentId - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.agentId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-agentId', 'system.social.client.field.agentId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'agentId', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 485. 社交客户端-客户端编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client.field.clientId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-客户端编号', 'system.social.client.field.clientId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 485. 社交客户端-客户端编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.clientId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-客户端编号', 'system.social.client.field.clientId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'client id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 485. 社交客户端-客户端编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.clientId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-客户端编号', 'system.social.client.field.clientId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '客户端编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 486. 社交客户端-客户端密钥 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client.field.clientSecret';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-客户端密钥', 'system.social.client.field.clientSecret', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 486. 社交客户端-客户端密钥 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.clientSecret' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-客户端密钥', 'system.social.client.field.clientSecret', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'client secret', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 486. 社交客户端-客户端密钥 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.clientSecret' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-客户端密钥', 'system.social.client.field.clientSecret', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '客户端密钥', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 487. 社交客户端-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-创建时间', 'system.social.client.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 487. 社交客户端-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-创建时间', 'system.social.client.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 487. 社交客户端-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-创建时间', 'system.social.client.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 488. 社交客户端-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-编号', 'system.social.client.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 488. 社交客户端-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-编号', 'system.social.client.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 488. 社交客户端-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-编号', 'system.social.client.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 489. 社交客户端-应用名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-应用名', 'system.social.client.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 489. 社交客户端-应用名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-应用名', 'system.social.client.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'app name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 489. 社交客户端-应用名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-应用名', 'system.social.client.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '应用名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 490. 社交客户端-社交平台 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client.field.socialType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-社交平台', 'system.social.client.field.socialType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 490. 社交客户端-社交平台 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.socialType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-社交平台', 'system.social.client.field.socialType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'social platform', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 490. 社交客户端-社交平台 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.socialType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-社交平台', 'system.social.client.field.socialType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '社交平台', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 491. 社交客户端-状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-状态', 'system.social.client.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 491. 社交客户端-状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-状态', 'system.social.client.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 491. 社交客户端-状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-状态', 'system.social.client.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 492. 社交客户端-用户类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client.field.userType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-用户类型', 'system.social.client.field.userType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 492. 社交客户端-用户类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.userType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-用户类型', 'system.social.client.field.userType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 492. 社交客户端-用户类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.field.userType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-用户类型', 'system.social.client.field.userType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 493. 社交客户端-社交客户端列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-社交客户端列表', 'system.social.client.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 493. 社交客户端-社交客户端列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-社交客户端列表', 'system.social.client.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'social client list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 493. 社交客户端-社交客户端列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-社交客户端列表', 'system.social.client.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '社交客户端列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 494. 社交客户端-社交客户端管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.client.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-社交客户端管理', 'system.social.client.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 494. 社交客户端-社交客户端管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-社交客户端管理', 'system.social.client.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'social client management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 494. 社交客户端-社交客户端管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.client.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交客户端-社交客户端管理', 'system.social.client.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '社交客户端管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 495. 社交用户 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户', 'system.social.user', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 495. 社交用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户', 'system.social.user', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 495. 社交用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户', 'system.social.user', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '社交用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 496. 社交用户-社交用户查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交用户查询', 'system.social.user.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 496. 社交用户-社交用户查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交用户查询', 'system.social.user.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'social user query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 496. 社交用户-社交用户查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交用户查询', 'system.social.user.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '社交用户查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 497. 社交用户-用户头像 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.field.avatar';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-用户头像', 'system.social.user.field.avatar', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 497. 社交用户-用户头像 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.avatar' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-用户头像', 'system.social.user.field.avatar', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'avatar', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 497. 社交用户-用户头像 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.avatar' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-用户头像', 'system.social.user.field.avatar', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户头像', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 498. 社交用户-最后一次的认证code (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-最后一次的认证code', 'system.social.user.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 498. 社交用户-最后一次的认证code - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-最后一次的认证code', 'system.social.user.field.code', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'auth code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 498. 社交用户-最后一次的认证code - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-最后一次的认证code', 'system.social.user.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '最后一次的认证 code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 499. 社交用户-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-创建时间', 'system.social.user.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 499. 社交用户-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-创建时间', 'system.social.user.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 499. 社交用户-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-创建时间', 'system.social.user.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 500. 社交用户-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-编号', 'system.social.user.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 500. 社交用户-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-编号', 'system.social.user.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 500. 社交用户-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-编号', 'system.social.user.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 501. 社交用户-用户昵称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.field.nickname';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-用户昵称', 'system.social.user.field.nickname', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 501. 社交用户-用户昵称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.nickname' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-用户昵称', 'system.social.user.field.nickname', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'nickname', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 501. 社交用户-用户昵称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.nickname' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-用户昵称', 'system.social.user.field.nickname', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户昵称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 502. 社交用户-社交openid (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.field.openid';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交openid', 'system.social.user.field.openid', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 502. 社交用户-社交openid - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.openid' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交openid', 'system.social.user.field.openid', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'social openid', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 502. 社交用户-社交openid - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.openid' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交openid', 'system.social.user.field.openid', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '社交 openid', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 503. 社交用户-原始Token数据 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.field.rawTokenInfo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-原始Token数据', 'system.social.user.field.rawTokenInfo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 503. 社交用户-原始Token数据 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.rawTokenInfo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-原始Token数据', 'system.social.user.field.rawTokenInfo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'raw token info', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 503. 社交用户-原始Token数据 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.rawTokenInfo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-原始Token数据', 'system.social.user.field.rawTokenInfo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '原始 Token 数据', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 504. 社交用户-原始User数据 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.field.rawUserInfo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-原始User数据', 'system.social.user.field.rawUserInfo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 504. 社交用户-原始User数据 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.rawUserInfo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-原始User数据', 'system.social.user.field.rawUserInfo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'raw user info', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 504. 社交用户-原始User数据 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.rawUserInfo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-原始User数据', 'system.social.user.field.rawUserInfo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '原始 User 数据', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 505. 社交用户-最后一次的认证state (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.field.state';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-最后一次的认证state', 'system.social.user.field.state', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 505. 社交用户-最后一次的认证state - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.state' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-最后一次的认证state', 'system.social.user.field.state', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'auth state', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 505. 社交用户-最后一次的认证state - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.state' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-最后一次的认证state', 'system.social.user.field.state', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '最后一次的认证 state', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 506. 社交用户-社交token (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.field.token';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交token', 'system.social.user.field.token', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 506. 社交用户-社交token - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.token' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交token', 'system.social.user.field.token', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'social token', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 506. 社交用户-社交token - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.token' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交token', 'system.social.user.field.token', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '社交 token', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 507. 社交用户-社交平台 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交平台', 'system.social.user.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 507. 社交用户-社交平台 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交平台', 'system.social.user.field.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'social platform', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 507. 社交用户-社交平台 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交平台', 'system.social.user.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '社交平台', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 508. 社交用户-更新时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.field.updateTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-更新时间', 'system.social.user.field.updateTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 508. 社交用户-更新时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.updateTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-更新时间', 'system.social.user.field.updateTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'update time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 508. 社交用户-更新时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.updateTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-更新时间', 'system.social.user.field.updateTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '更新时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 509. 社交用户-用户编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-用户编号', 'system.social.user.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 509. 社交用户-用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-用户编号', 'system.social.user.field.userId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 509. 社交用户-用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-用户编号', 'system.social.user.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 510. 社交用户-社交用户列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交用户列表', 'system.social.user.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 510. 社交用户-社交用户列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交用户列表', 'system.social.user.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'social user list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 510. 社交用户-社交用户列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交用户列表', 'system.social.user.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '社交用户列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 511. 社交用户-社交用户管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交用户管理', 'system.social.user.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 511. 社交用户-社交用户管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交用户管理', 'system.social.user.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'social user management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 511. 社交用户-社交用户管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交用户管理', 'system.social.user.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '社交用户管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 512. 社交用户-社交用户详情 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.message.detail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交用户详情', 'system.social.user.message.detail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 512. 社交用户-社交用户详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.message.detail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交用户详情', 'system.social.user.message.detail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'social user detail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 512. 社交用户-社交用户详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.message.detail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户-社交用户详情', 'system.social.user.message.detail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '社交用户详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 513. 社交用户 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.social.user.user';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户', 'system.social.user.user', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 513. 社交用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.user' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户', 'system.social.user.user', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'social user', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 513. 社交用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.social.user.user' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('社交用户', 'system.social.user.user', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '社交用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 514. 租户 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户', 'system.tenant', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 514. 租户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户', 'system.tenant', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 514. 租户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户', 'system.tenant', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '租户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 515. 租户-新增租户 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-新增租户', 'system.tenant.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 515. 租户-新增租户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-新增租户', 'system.tenant.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create tenant', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 515. 租户-新增租户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-新增租户', 'system.tenant.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增租户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 516. 租户-删除租户 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-删除租户', 'system.tenant.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 516. 租户-删除租户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-删除租户', 'system.tenant.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete tenant', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 516. 租户-删除租户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-删除租户', 'system.tenant.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除租户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 517. 租户-导出租户 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-导出租户', 'system.tenant.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 517. 租户-导出租户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-导出租户', 'system.tenant.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export tenant', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 517. 租户-导出租户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-导出租户', 'system.tenant.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出租户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 518. 租户-菜单授权 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.action.grantMenu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-菜单授权', 'system.tenant.action.grantMenu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 518. 租户-菜单授权 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.action.grantMenu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-菜单授权', 'system.tenant.action.grantMenu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'menu authorization', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 518. 租户-菜单授权 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.action.grantMenu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-菜单授权', 'system.tenant.action.grantMenu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '菜单授权', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 519. 租户-租户查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户查询', 'system.tenant.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 519. 租户-租户查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户查询', 'system.tenant.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'tenant query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 519. 租户-租户查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户查询', 'system.tenant.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '租户查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 520. 租户-修改租户 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-修改租户', 'system.tenant.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 520. 租户-修改租户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-修改租户', 'system.tenant.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update tenant', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 520. 租户-修改租户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-修改租户', 'system.tenant.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改租户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 521. 租户-账号数量 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.accountCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-账号数量', 'system.tenant.field.accountCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 521. 租户-账号数量 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.accountCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-账号数量', 'system.tenant.field.accountCount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'account count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 521. 租户-账号数量 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.accountCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-账号数量', 'system.tenant.field.accountCount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '账号数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 522. 租户-地区 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.addressCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-地区', 'system.tenant.field.addressCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 522. 租户-地区 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.addressCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-地区', 'system.tenant.field.addressCode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'area', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 522. 租户-地区 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.addressCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-地区', 'system.tenant.field.addressCode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '地区', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 523. 租户-地址 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.addressDetail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-地址', 'system.tenant.field.addressDetail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 523. 租户-地址 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.addressDetail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-地址', 'system.tenant.field.addressDetail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'address', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 523. 租户-地址 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.addressDetail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-地址', 'system.tenant.field.addressDetail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 524. 租户-余额 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.balanceAmount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-余额', 'system.tenant.field.balanceAmount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 524. 租户-余额 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.balanceAmount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-余额', 'system.tenant.field.balanceAmount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'balance', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 524. 租户-余额 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.balanceAmount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-余额', 'system.tenant.field.balanceAmount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '余额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 525. 租户-编码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-编码', 'system.tenant.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 525. 租户-编码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-编码', 'system.tenant.field.code', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 525. 租户-编码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-编码', 'system.tenant.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 526. 租户-联系手机 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.contactMobile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-联系手机', 'system.tenant.field.contactMobile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 526. 租户-联系手机 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.contactMobile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-联系手机', 'system.tenant.field.contactMobile', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'contact mobile', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 526. 租户-联系手机 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.contactMobile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-联系手机', 'system.tenant.field.contactMobile', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '联系手机', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 527. 租户-联系人 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.contactName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-联系人', 'system.tenant.field.contactName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 527. 租户-联系人 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.contactName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-联系人', 'system.tenant.field.contactName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'contact name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 527. 租户-联系人 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.contactName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-联系人', 'system.tenant.field.contactName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '联系人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 528. 租户-联系人的用户编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.contactUserId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-联系人的用户编号', 'system.tenant.field.contactUserId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 528. 租户-联系人的用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.contactUserId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-联系人的用户编号', 'system.tenant.field.contactUserId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'contact user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 528. 租户-联系人的用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.contactUserId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-联系人的用户编号', 'system.tenant.field.contactUserId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '联系人的用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 529. 租户-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-创建时间', 'system.tenant.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 529. 租户-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-创建时间', 'system.tenant.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 529. 租户-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-创建时间', 'system.tenant.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 530. 租户-当前数量 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.currentAccountCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-当前数量', 'system.tenant.field.currentAccountCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 530. 租户-当前数量 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.currentAccountCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-当前数量', 'system.tenant.field.currentAccountCount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'current count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 530. 租户-当前数量 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.currentAccountCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-当前数量', 'system.tenant.field.currentAccountCount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '当前数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 531. 租户-租户编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户编号', 'system.tenant.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 531. 租户-租户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户编号', 'system.tenant.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tenant id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 531. 租户-租户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户编号', 'system.tenant.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '租户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 532. 租户-行业 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.industry';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-行业', 'system.tenant.field.industry', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 532. 租户-行业 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.industry' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-行业', 'system.tenant.field.industry', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'industry', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 532. 租户-行业 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.industry' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-行业', 'system.tenant.field.industry', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '行业', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 533. 租户-租户名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户名', 'system.tenant.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 533. 租户-租户名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户名', 'system.tenant.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tenant name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 533. 租户-租户名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户名', 'system.tenant.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '租户名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 534. 租户-用户密码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.password';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-用户密码', 'system.tenant.field.password', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 534. 租户-用户密码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.password' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-用户密码', 'system.tenant.field.password', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 534. 租户-用户密码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.password' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-用户密码', 'system.tenant.field.password', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 535. 租户-支付金额 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.paymentAmount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-支付金额', 'system.tenant.field.paymentAmount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 535. 租户-支付金额 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.paymentAmount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-支付金额', 'system.tenant.field.paymentAmount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'payment amount', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 535. 租户-支付金额 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.paymentAmount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-支付金额', 'system.tenant.field.paymentAmount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '支付金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 536. 租户-相关资质 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.qualifications';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-相关资质', 'system.tenant.field.qualifications', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 536. 租户-相关资质 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.qualifications' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-相关资质', 'system.tenant.field.qualifications', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'qualifications', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 536. 租户-相关资质 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.qualifications' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-相关资质', 'system.tenant.field.qualifications', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '相关资质', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 537. 租户-充值金额 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.rechargeAmount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-充值金额', 'system.tenant.field.rechargeAmount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 537. 租户-充值金额 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.rechargeAmount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-充值金额', 'system.tenant.field.rechargeAmount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'recharge amount', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 537. 租户-充值金额 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.rechargeAmount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-充值金额', 'system.tenant.field.rechargeAmount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '充值金额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 538. 租户-租户状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户状态', 'system.tenant.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 538. 租户-租户状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户状态', 'system.tenant.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tenant status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 538. 租户-租户状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户状态', 'system.tenant.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '租户状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 539. 租户-类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-类型', 'system.tenant.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 539. 租户-类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-类型', 'system.tenant.field.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 539. 租户-类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-类型', 'system.tenant.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 540. 租户-用户名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.username';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-用户名称', 'system.tenant.field.username', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 540. 租户-用户名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.username' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-用户名称', 'system.tenant.field.username', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'username', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 540. 租户-用户名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.username' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-用户名称', 'system.tenant.field.username', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 541. 租户-绑定域名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.field.website';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-绑定域名', 'system.tenant.field.website', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 541. 租户-绑定域名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.website' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-绑定域名', 'system.tenant.field.website', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'domain', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 541. 租户-绑定域名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.field.website' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-绑定域名', 'system.tenant.field.website', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '绑定域名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 542. 租户-租户列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户列表', 'system.tenant.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 542. 租户-租户列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户列表', 'system.tenant.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tenant list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 542. 租户-租户列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户列表', 'system.tenant.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '租户列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 543. 租户-租户管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户管理', 'system.tenant.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 543. 租户-租户管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户管理', 'system.tenant.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'tenant management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 543. 租户-租户管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-租户管理', 'system.tenant.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '租户管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 544. 租户-SaaS多租户 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.message.saas';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-SaaS多租户', 'system.tenant.message.saas', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 544. 租户-SaaS多租户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.message.saas' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-SaaS多租户', 'system.tenant.message.saas', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'saas multi-tenant', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 544. 租户-SaaS多租户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.message.saas' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户-SaaS多租户', 'system.tenant.message.saas', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'SaaS 多租户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 545. 租户 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenant.tenant';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户', 'system.tenant.tenant', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 545. 租户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.tenant' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户', 'system.tenant.tenant', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'tenant', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 545. 租户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenant.tenant' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户', 'system.tenant.tenant', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '租户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 546. 租户套餐 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐', 'system.tenantPackage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 546. 租户套餐 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐', 'system.tenantPackage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 546. 租户套餐 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐', 'system.tenantPackage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '租户套餐', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 547. 租户套餐-新增租户套餐 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-新增租户套餐', 'system.tenantPackage.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 547. 租户套餐-新增租户套餐 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-新增租户套餐', 'system.tenantPackage.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create tenant package', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 547. 租户套餐-新增租户套餐 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-新增租户套餐', 'system.tenantPackage.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增租户套餐', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 548. 租户套餐-删除租户套餐 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-删除租户套餐', 'system.tenantPackage.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 548. 租户套餐-删除租户套餐 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-删除租户套餐', 'system.tenantPackage.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete tenant package', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 548. 租户套餐-删除租户套餐 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-删除租户套餐', 'system.tenantPackage.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除租户套餐', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 549. 租户套餐-导出租户套餐 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-导出租户套餐', 'system.tenantPackage.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 549. 租户套餐-导出租户套餐 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-导出租户套餐', 'system.tenantPackage.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export tenant package', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 549. 租户套餐-导出租户套餐 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-导出租户套餐', 'system.tenantPackage.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出租户套餐', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 550. 租户套餐-菜单授权 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.action.grant';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-菜单授权', 'system.tenantPackage.action.grant', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 550. 租户套餐-菜单授权 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.action.grant' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-菜单授权', 'system.tenantPackage.action.grant', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'menu authorization', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 550. 租户套餐-菜单授权 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.action.grant' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-菜单授权', 'system.tenantPackage.action.grant', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '菜单授权', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 551. 租户套餐-租户套餐查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-租户套餐查询', 'system.tenantPackage.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 551. 租户套餐-租户套餐查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-租户套餐查询', 'system.tenantPackage.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'tenant package query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 551. 租户套餐-租户套餐查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-租户套餐查询', 'system.tenantPackage.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '租户套餐查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 552. 租户套餐-修改租户套餐 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-修改租户套餐', 'system.tenantPackage.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 552. 租户套餐-修改租户套餐 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-修改租户套餐', 'system.tenantPackage.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update tenant package', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 552. 租户套餐-修改租户套餐 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-修改租户套餐', 'system.tenantPackage.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改租户套餐', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 553. 租户套餐-套餐编码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐编码', 'system.tenantPackage.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 553. 租户套餐-套餐编码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐编码', 'system.tenantPackage.field.code', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'package code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 553. 租户套餐-套餐编码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐编码', 'system.tenantPackage.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '套餐编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 554. 租户套餐-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-创建时间', 'system.tenantPackage.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 554. 租户套餐-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-创建时间', 'system.tenantPackage.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 554. 租户套餐-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-创建时间', 'system.tenantPackage.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 555. 租户套餐-套餐描述 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.field.description';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐描述', 'system.tenantPackage.field.description', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 555. 租户套餐-套餐描述 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.description' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐描述', 'system.tenantPackage.field.description', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 555. 租户套餐-套餐描述 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.description' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐描述', 'system.tenantPackage.field.description', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '套餐描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 556. 租户套餐-套餐编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐编号', 'system.tenantPackage.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 556. 租户套餐-套餐编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐编号', 'system.tenantPackage.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'package id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 556. 租户套餐-套餐编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐编号', 'system.tenantPackage.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '套餐编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 557. 租户套餐-LOGO (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.field.logo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-LOGO', 'system.tenantPackage.field.logo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 557. 租户套餐-LOGO - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.logo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-LOGO', 'system.tenantPackage.field.logo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'logo', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 557. 租户套餐-LOGO - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.logo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-LOGO', 'system.tenantPackage.field.logo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'LOGO', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 558. 租户套餐-套餐名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐名', 'system.tenantPackage.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 558. 租户套餐-套餐名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐名', 'system.tenantPackage.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'package name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 558. 租户套餐-套餐名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐名', 'system.tenantPackage.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '套餐名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 559. 租户套餐-排序 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.field.orderNum';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-排序', 'system.tenantPackage.field.orderNum', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 559. 租户套餐-排序 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.orderNum' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-排序', 'system.tenantPackage.field.orderNum', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sort order', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 559. 租户套餐-排序 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.orderNum' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-排序', 'system.tenantPackage.field.orderNum', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '排序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 560. 租户套餐-套餐价格 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.field.price';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐价格', 'system.tenantPackage.field.price', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 560. 租户套餐-套餐价格 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.price' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐价格', 'system.tenantPackage.field.price', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 560. 租户套餐-套餐价格 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.price' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐价格', 'system.tenantPackage.field.price', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '套餐价格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 561. 租户套餐-是否发布 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.field.published';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-是否发布', 'system.tenantPackage.field.published', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 561. 租户套餐-是否发布 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.published' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-是否发布', 'system.tenantPackage.field.published', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'published', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 561. 租户套餐-是否发布 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.published' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-是否发布', 'system.tenantPackage.field.published', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否发布', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 562. 租户套餐-备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-备注', 'system.tenantPackage.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 562. 租户套餐-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-备注', 'system.tenantPackage.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 562. 租户套餐-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-备注', 'system.tenantPackage.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 563. 租户套餐-套餐状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐状态', 'system.tenantPackage.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 563. 租户套餐-套餐状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐状态', 'system.tenantPackage.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 563. 租户套餐-套餐状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐状态', 'system.tenantPackage.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '套餐状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 564. 租户套餐-订阅数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.field.subscriptionNum';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-订阅数', 'system.tenantPackage.field.subscriptionNum', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 564. 租户套餐-订阅数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.subscriptionNum' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-订阅数', 'system.tenantPackage.field.subscriptionNum', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'subscription count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 564. 租户套餐-订阅数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.subscriptionNum' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-订阅数', 'system.tenantPackage.field.subscriptionNum', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '订阅数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 565. 租户套餐-订阅总额 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.field.subscriptionTotalAmount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-订阅总额', 'system.tenantPackage.field.subscriptionTotalAmount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 565. 租户套餐-订阅总额 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.subscriptionTotalAmount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-订阅总额', 'system.tenantPackage.field.subscriptionTotalAmount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'subscription total', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 565. 租户套餐-订阅总额 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.subscriptionTotalAmount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-订阅总额', 'system.tenantPackage.field.subscriptionTotalAmount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '订阅总额', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 566. 租户套餐-套餐类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐类型', 'system.tenantPackage.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 566. 租户套餐-套餐类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐类型', 'system.tenantPackage.field.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'package type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 566. 租户套餐-套餐类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-套餐类型', 'system.tenantPackage.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '套餐类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 567. 租户套餐-租户套餐列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-租户套餐列表', 'system.tenantPackage.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 567. 租户套餐-租户套餐列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-租户套餐列表', 'system.tenantPackage.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tenant package list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 567. 租户套餐-租户套餐列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-租户套餐列表', 'system.tenantPackage.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '租户套餐列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 568. 租户套餐-租户套餐管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-租户套餐管理', 'system.tenantPackage.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 568. 租户套餐-租户套餐管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-租户套餐管理', 'system.tenantPackage.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'tenant package management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 568. 租户套餐-租户套餐管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐-租户套餐管理', 'system.tenantPackage.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '租户套餐管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 569. 租户套餐 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackage.tenantPackage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐', 'system.tenantPackage.tenantPackage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 569. 租户套餐 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.tenantPackage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐', 'system.tenantPackage.tenantPackage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'tenant package', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 569. 租户套餐 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackage.tenantPackage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐', 'system.tenantPackage.tenantPackage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '租户套餐', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 570. 租户套餐订阅 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅', 'system.tenantPackageSubscribe', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 570. 租户套餐订阅 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅', 'system.tenantPackageSubscribe', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 570. 租户套餐订阅 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅', 'system.tenantPackageSubscribe', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '租户套餐订阅', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 571. 租户套餐订阅-新增租户套餐订阅 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-新增租户套餐订阅', 'system.tenantPackageSubscribe.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 571. 租户套餐订阅-新增租户套餐订阅 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-新增租户套餐订阅', 'system.tenantPackageSubscribe.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create tenant package subscription', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 571. 租户套餐订阅-新增租户套餐订阅 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-新增租户套餐订阅', 'system.tenantPackageSubscribe.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增租户套餐订阅', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 572. 租户套餐订阅-删除租户套餐订阅 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-删除租户套餐订阅', 'system.tenantPackageSubscribe.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 572. 租户套餐订阅-删除租户套餐订阅 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-删除租户套餐订阅', 'system.tenantPackageSubscribe.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete tenant package subscription', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 572. 租户套餐订阅-删除租户套餐订阅 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-删除租户套餐订阅', 'system.tenantPackageSubscribe.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除租户套餐订阅', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 573. 租户套餐订阅-导出租户套餐订阅 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-导出租户套餐订阅', 'system.tenantPackageSubscribe.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 573. 租户套餐订阅-导出租户套餐订阅 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-导出租户套餐订阅', 'system.tenantPackageSubscribe.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export tenant package subscription', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 573. 租户套餐订阅-导出租户套餐订阅 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-导出租户套餐订阅', 'system.tenantPackageSubscribe.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出租户套餐订阅', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 574. 租户套餐订阅-租户套餐订阅查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户套餐订阅查询', 'system.tenantPackageSubscribe.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 574. 租户套餐订阅-租户套餐订阅查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户套餐订阅查询', 'system.tenantPackageSubscribe.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'tenant package subscription query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 574. 租户套餐订阅-租户套餐订阅查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户套餐订阅查询', 'system.tenantPackageSubscribe.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '租户套餐订阅查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 575. 租户套餐订阅-修改租户套餐订阅 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-修改租户套餐订阅', 'system.tenantPackageSubscribe.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 575. 租户套餐订阅-修改租户套餐订阅 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-修改租户套餐订阅', 'system.tenantPackageSubscribe.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update tenant package subscription', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 575. 租户套餐订阅-修改租户套餐订阅 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-修改租户套餐订阅', 'system.tenantPackageSubscribe.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改租户套餐订阅', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 576. 租户套餐订阅-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-创建时间', 'system.tenantPackageSubscribe.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 576. 租户套餐订阅-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-创建时间', 'system.tenantPackageSubscribe.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 576. 租户套餐订阅-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-创建时间', 'system.tenantPackageSubscribe.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 577. 租户套餐订阅-天数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.days';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-天数', 'system.tenantPackageSubscribe.field.days', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 577. 租户套餐订阅-天数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.days' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-天数', 'system.tenantPackageSubscribe.field.days', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'days', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 577. 租户套餐订阅-天数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.days' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-天数', 'system.tenantPackageSubscribe.field.days', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '天数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 578. 租户套餐订阅-优惠价格 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.discountPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-优惠价格', 'system.tenantPackageSubscribe.field.discountPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 578. 租户套餐订阅-优惠价格 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.discountPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-优惠价格', 'system.tenantPackageSubscribe.field.discountPrice', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'discount price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 578. 租户套餐订阅-优惠价格 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.discountPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-优惠价格', 'system.tenantPackageSubscribe.field.discountPrice', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '优惠价格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 579. 租户套餐订阅-结束时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.endTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-结束时间', 'system.tenantPackageSubscribe.field.endTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 579. 租户套餐订阅-结束时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.endTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-结束时间', 'system.tenantPackageSubscribe.field.endTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'end time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 579. 租户套餐订阅-结束时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.endTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-结束时间', 'system.tenantPackageSubscribe.field.endTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '结束时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 580. 租户套餐订阅-套餐编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐编号', 'system.tenantPackageSubscribe.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 580. 租户套餐订阅-套餐编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐编号', 'system.tenantPackageSubscribe.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'subscription id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 580. 租户套餐订阅-套餐编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐编号', 'system.tenantPackageSubscribe.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '套餐编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 581. 租户套餐订阅-套餐编码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.packageCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐编码', 'system.tenantPackageSubscribe.field.packageCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 581. 租户套餐订阅-套餐编码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.packageCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐编码', 'system.tenantPackageSubscribe.field.packageCode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'package code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 581. 租户套餐订阅-套餐编码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.packageCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐编码', 'system.tenantPackageSubscribe.field.packageCode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '套餐编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 582. 租户套餐订阅-LOGO (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.packageLogo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-LOGO', 'system.tenantPackageSubscribe.field.packageLogo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 582. 租户套餐订阅-LOGO - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.packageLogo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-LOGO', 'system.tenantPackageSubscribe.field.packageLogo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'logo', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 582. 租户套餐订阅-LOGO - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.packageLogo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-LOGO', 'system.tenantPackageSubscribe.field.packageLogo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'LOGO', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 583. 租户套餐订阅-套餐名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.packageName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐名', 'system.tenantPackageSubscribe.field.packageName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 583. 租户套餐订阅-套餐名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.packageName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐名', 'system.tenantPackageSubscribe.field.packageName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'package name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 583. 租户套餐订阅-套餐名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.packageName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐名', 'system.tenantPackageSubscribe.field.packageName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '套餐名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 584. 租户套餐订阅-套餐状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.packageStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐状态', 'system.tenantPackageSubscribe.field.packageStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 584. 租户套餐订阅-套餐状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.packageStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐状态', 'system.tenantPackageSubscribe.field.packageStatus', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'package status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 584. 租户套餐订阅-套餐状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.packageStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐状态', 'system.tenantPackageSubscribe.field.packageStatus', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '套餐状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 585. 租户套餐订阅-套餐类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.packageType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐类型', 'system.tenantPackageSubscribe.field.packageType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 585. 租户套餐订阅-套餐类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.packageType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐类型', 'system.tenantPackageSubscribe.field.packageType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'package type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 585. 租户套餐订阅-套餐类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.packageType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐类型', 'system.tenantPackageSubscribe.field.packageType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '套餐类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 586. 租户套餐订阅-支付状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.payStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-支付状态', 'system.tenantPackageSubscribe.field.payStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 586. 租户套餐订阅-支付状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.payStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-支付状态', 'system.tenantPackageSubscribe.field.payStatus', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'payment status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 586. 租户套餐订阅-支付状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.payStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-支付状态', 'system.tenantPackageSubscribe.field.payStatus', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '支付状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 587. 租户套餐订阅-套餐价格 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.price';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐价格', 'system.tenantPackageSubscribe.field.price', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 587. 租户套餐订阅-套餐价格 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.price' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐价格', 'system.tenantPackageSubscribe.field.price', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 587. 租户套餐订阅-套餐价格 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.price' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-套餐价格', 'system.tenantPackageSubscribe.field.price', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '套餐价格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 588. 租户套餐订阅-备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-备注', 'system.tenantPackageSubscribe.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 588. 租户套餐订阅-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-备注', 'system.tenantPackageSubscribe.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 588. 租户套餐订阅-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-备注', 'system.tenantPackageSubscribe.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 589. 租户套餐订阅-开始时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.startTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-开始时间', 'system.tenantPackageSubscribe.field.startTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 589. 租户套餐订阅-开始时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.startTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-开始时间', 'system.tenantPackageSubscribe.field.startTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'start time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 589. 租户套餐订阅-开始时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.startTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-开始时间', 'system.tenantPackageSubscribe.field.startTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '开始时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 590. 租户套餐订阅-订阅状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-订阅状态', 'system.tenantPackageSubscribe.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 590. 租户套餐订阅-订阅状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-订阅状态', 'system.tenantPackageSubscribe.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'subscription status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 590. 租户套餐订阅-订阅状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-订阅状态', 'system.tenantPackageSubscribe.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '订阅状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 591. 租户套餐订阅-租户编码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.tenantCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户编码', 'system.tenantPackageSubscribe.field.tenantCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 591. 租户套餐订阅-租户编码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.tenantCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户编码', 'system.tenantPackageSubscribe.field.tenantCode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tenant code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 591. 租户套餐订阅-租户编码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.tenantCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户编码', 'system.tenantPackageSubscribe.field.tenantCode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '租户编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 592. 租户套餐订阅-租户名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.tenantName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户名', 'system.tenantPackageSubscribe.field.tenantName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 592. 租户套餐订阅-租户名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.tenantName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户名', 'system.tenantPackageSubscribe.field.tenantName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tenant name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 592. 租户套餐订阅-租户名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.tenantName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户名', 'system.tenantPackageSubscribe.field.tenantName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '租户名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 593. 租户套餐订阅-总价格 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.field.totalPrice';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-总价格', 'system.tenantPackageSubscribe.field.totalPrice', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 593. 租户套餐订阅-总价格 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.totalPrice' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-总价格', 'system.tenantPackageSubscribe.field.totalPrice', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'total price', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 593. 租户套餐订阅-总价格 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.field.totalPrice' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-总价格', 'system.tenantPackageSubscribe.field.totalPrice', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '总价格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 594. 租户套餐订阅-租户套餐订阅列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户套餐订阅列表', 'system.tenantPackageSubscribe.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 594. 租户套餐订阅-租户套餐订阅列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户套餐订阅列表', 'system.tenantPackageSubscribe.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tenant package subscription list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 594. 租户套餐订阅-租户套餐订阅列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户套餐订阅列表', 'system.tenantPackageSubscribe.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '租户套餐订阅列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 595. 租户套餐订阅-租户套餐订阅管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户套餐订阅管理', 'system.tenantPackageSubscribe.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 595. 租户套餐订阅-租户套餐订阅管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户套餐订阅管理', 'system.tenantPackageSubscribe.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'tenant package subscription management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 595. 租户套餐订阅-租户套餐订阅管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅-租户套餐订阅管理', 'system.tenantPackageSubscribe.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '租户套餐订阅管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 596. 租户套餐订阅 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.tenantPackageSubscribe.tenantPackageSubscribe';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅', 'system.tenantPackageSubscribe.tenantPackageSubscribe', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 596. 租户套餐订阅 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.tenantPackageSubscribe' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅', 'system.tenantPackageSubscribe.tenantPackageSubscribe', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'tenant package subscription', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 596. 租户套餐订阅 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.tenantPackageSubscribe.tenantPackageSubscribe' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户套餐订阅', 'system.tenantPackageSubscribe.tenantPackageSubscribe', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '租户套餐订阅', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 597. 用户 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户', 'system.user', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 597. 用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户', 'system.user', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 597. 用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户', 'system.user', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 598. 用户-分配角色 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.action.assignRole';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-分配角色', 'system.user.action.assignRole', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 598. 用户-分配角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.action.assignRole' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-分配角色', 'system.user.action.assignRole', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'assign role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 598. 用户-分配角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.action.assignRole' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-分配角色', 'system.user.action.assignRole', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '分配角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 599. 用户-新增用户 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-新增用户', 'system.user.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 599. 用户-新增用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-新增用户', 'system.user.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create user', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 599. 用户-新增用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-新增用户', 'system.user.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新增用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 600. 用户-删除用户 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-删除用户', 'system.user.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 600. 用户-删除用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-删除用户', 'system.user.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete user', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 600. 用户-删除用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-删除用户', 'system.user.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 601. 用户-导出用户 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-导出用户', 'system.user.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 601. 用户-导出用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-导出用户', 'system.user.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'export user', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 601. 用户-导出用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-导出用户', 'system.user.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导出用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 602. 用户-导入用户 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.action.import';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-导入用户', 'system.user.action.import', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 602. 用户-导入用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.action.import' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-导入用户', 'system.user.action.import', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'import user', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 602. 用户-导入用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.action.import' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-导入用户', 'system.user.action.import', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '导入用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 603. 用户-用户查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户查询', 'system.user.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 603. 用户-用户查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户查询', 'system.user.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'user query', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 603. 用户-用户查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户查询', 'system.user.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '用户查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 604. 用户-重置密码 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.action.resetPassword';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-重置密码', 'system.user.action.resetPassword', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 604. 用户-重置密码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.action.resetPassword' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-重置密码', 'system.user.action.resetPassword', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'reset password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 604. 用户-重置密码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.action.resetPassword' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-重置密码', 'system.user.action.resetPassword', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '重置密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 605. 用户-修改用户 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-修改用户', 'system.user.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 605. 用户-修改用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-修改用户', 'system.user.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update user', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 605. 用户-修改用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-修改用户', 'system.user.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 606. 用户-确认密码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.confirmPassword';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-确认密码', 'system.user.field.confirmPassword', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 606. 用户-确认密码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.confirmPassword' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-确认密码', 'system.user.field.confirmPassword', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'confirm password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 606. 用户-确认密码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.confirmPassword' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-确认密码', 'system.user.field.confirmPassword', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '确认密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 607. 用户-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-创建时间', 'system.user.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 607. 用户-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-创建时间', 'system.user.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 607. 用户-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-创建时间', 'system.user.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 608. 用户-归属部门 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.deptId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-归属部门', 'system.user.field.deptId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 608. 用户-归属部门 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.deptId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-归属部门', 'system.user.field.deptId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'department', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 608. 用户-归属部门 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.deptId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-归属部门', 'system.user.field.deptId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '归属部门', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 609. 用户-部门 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.deptName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-部门', 'system.user.field.deptName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 609. 用户-部门 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.deptName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-部门', 'system.user.field.deptName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'department', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 609. 用户-部门 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.deptName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-部门', 'system.user.field.deptName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '部门', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 610. 用户-邮箱 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.email';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-邮箱', 'system.user.field.email', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 610. 用户-邮箱 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.email' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-邮箱', 'system.user.field.email', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'email', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 610. 用户-邮箱 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.email' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-邮箱', 'system.user.field.email', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '邮箱', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 611. 用户-用户数据 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.file';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户数据', 'system.user.field.file', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 611. 用户-用户数据 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.file' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户数据', 'system.user.field.file', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user data', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 611. 用户-用户数据 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.file' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户数据', 'system.user.field.file', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户数据', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 612. 用户-用户编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户编号', 'system.user.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 612. 用户-用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户编号', 'system.user.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 612. 用户-用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户编号', 'system.user.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 613. 用户-手机号码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.mobile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-手机号码', 'system.user.field.mobile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 613. 用户-手机号码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.mobile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-手机号码', 'system.user.field.mobile', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mobile', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 613. 用户-手机号码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.mobile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-手机号码', 'system.user.field.mobile', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '手机号码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 614. 用户-新密码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.newPassword';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-新密码', 'system.user.field.newPassword', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 614. 用户-新密码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.newPassword' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-新密码', 'system.user.field.newPassword', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'new password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 614. 用户-新密码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.newPassword' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-新密码', 'system.user.field.newPassword', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '新密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 615. 用户-用户昵称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.nickname';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户昵称', 'system.user.field.nickname', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 615. 用户-用户昵称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.nickname' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户昵称', 'system.user.field.nickname', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'nickname', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 615. 用户-用户昵称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.nickname' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户昵称', 'system.user.field.nickname', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户昵称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 616. 用户-用户密码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.password';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户密码', 'system.user.field.password', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 616. 用户-用户密码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.password' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户密码', 'system.user.field.password', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 616. 用户-用户密码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.password' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户密码', 'system.user.field.password', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 617. 用户-岗位 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.postIds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-岗位', 'system.user.field.postIds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 617. 用户-岗位 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.postIds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-岗位', 'system.user.field.postIds', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'posts', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 617. 用户-岗位 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.postIds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-岗位', 'system.user.field.postIds', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '岗位', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 618. 用户-备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-备注', 'system.user.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 618. 用户-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-备注', 'system.user.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 618. 用户-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-备注', 'system.user.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 619. 用户-角色 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.roleIds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-角色', 'system.user.field.roleIds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 619. 用户-角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.roleIds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-角色', 'system.user.field.roleIds', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'roles', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 619. 用户-角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.roleIds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-角色', 'system.user.field.roleIds', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 620. 用户-用户性别 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.sex';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户性别', 'system.user.field.sex', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 620. 用户-用户性别 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.sex' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户性别', 'system.user.field.sex', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'gender', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 620. 用户-用户性别 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.sex' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户性别', 'system.user.field.sex', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户性别', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 621. 用户-用户状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户状态', 'system.user.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 621. 用户-用户状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户状态', 'system.user.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 621. 用户-用户状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户状态', 'system.user.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 622. 用户-是否覆盖 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.updateSupport';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-是否覆盖', 'system.user.field.updateSupport', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 622. 用户-是否覆盖 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.updateSupport' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-是否覆盖', 'system.user.field.updateSupport', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'overwrite', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 622. 用户-是否覆盖 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.updateSupport' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-是否覆盖', 'system.user.field.updateSupport', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否覆盖', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 623. 用户-用户名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.field.username';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户名称', 'system.user.field.username', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 623. 用户-用户名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.username' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户名称', 'system.user.field.username', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'username', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 623. 用户-用户名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.field.username' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户名称', 'system.user.field.username', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 624. 用户-仅允许导入xls、xlsx格式文件 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.help.fileType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-仅允许导入xls、xlsx格式文件', 'system.user.help.fileType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 624. 用户-仅允许导入xls、xlsx格式文件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.help.fileType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-仅允许导入xls、xlsx格式文件', 'system.user.help.fileType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'only xls and xlsx files are allowed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 624. 用户-仅允许导入xls、xlsx格式文件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.help.fileType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-仅允许导入xls、xlsx格式文件', 'system.user.help.fileType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '仅允许导入 xls、xlsx 格式文件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 625. 用户-是否更新已经存在的用户数据 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.help.updateSupport';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-是否更新已经存在的用户数据', 'system.user.help.updateSupport', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 625. 用户-是否更新已经存在的用户数据 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.help.updateSupport' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-是否更新已经存在的用户数据', 'system.user.help.updateSupport', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'whether to update existing user data', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 625. 用户-是否更新已经存在的用户数据 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.help.updateSupport' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-是否更新已经存在的用户数据', 'system.user.help.updateSupport', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '是否更新已经存在的用户数据', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 626. 用户-用户列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户列表', 'system.user.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 626. 用户-用户列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户列表', 'system.user.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 626. 用户-用户列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户列表', 'system.user.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 627. 用户-用户管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户管理', 'system.user.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 627. 用户-用户管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户管理', 'system.user.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'user management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 627. 用户-用户管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户管理', 'system.user.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '用户管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 628. 用户-分配角色 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.message.assignRole';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-分配角色', 'system.user.message.assignRole', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 628. 用户-分配角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.assignRole' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-分配角色', 'system.user.message.assignRole', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'assign role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 628. 用户-分配角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.assignRole' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-分配角色', 'system.user.message.assignRole', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '分配角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 629. 用户-取消操作 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.message.cancelOperation';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-取消操作', 'system.user.message.cancelOperation', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 629. 用户-取消操作 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.cancelOperation' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-取消操作', 'system.user.message.cancelOperation', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'cancel operation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 629. 用户-取消操作 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.cancelOperation' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-取消操作', 'system.user.message.cancelOperation', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '取消操作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 630. 用户-确认密码不能为空 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.message.confirmPasswordEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-确认密码不能为空', 'system.user.message.confirmPasswordEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 630. 用户-确认密码不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.confirmPasswordEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-确认密码不能为空', 'system.user.message.confirmPasswordEmpty', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'confirm password cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 630. 用户-确认密码不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.confirmPasswordEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-确认密码不能为空', 'system.user.message.confirmPasswordEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '确认密码不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 631. 用户-用户导入模板 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.message.importTemplate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户导入模板', 'system.user.message.importTemplate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 631. 用户-用户导入模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.importTemplate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户导入模板', 'system.user.message.importTemplate', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'User Import Template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 631. 用户-用户导入模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.importTemplate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-用户导入模板', 'system.user.message.importTemplate', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户导入模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 632. 用户-两次输入的密码不一致 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.message.passwordMismatch';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-两次输入的密码不一致', 'system.user.message.passwordMismatch', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 632. 用户-两次输入的密码不一致 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.passwordMismatch' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-两次输入的密码不一致', 'system.user.message.passwordMismatch', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'passwords do not match', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 632. 用户-两次输入的密码不一致 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.passwordMismatch' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-两次输入的密码不一致', 'system.user.message.passwordMismatch', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '两次输入的密码不一致', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 633. 用户-重置密码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.message.resetPassword';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-重置密码', 'system.user.message.resetPassword', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 633. 用户-重置密码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.resetPassword' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-重置密码', 'system.user.message.resetPassword', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'reset password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 633. 用户-重置密码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.resetPassword' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-重置密码', 'system.user.message.resetPassword', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '重置密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 634. 用户-三方登陆 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.message.socialLogin';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-三方登陆', 'system.user.message.socialLogin', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 634. 用户-三方登陆 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.socialLogin' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-三方登陆', 'system.user.message.socialLogin', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'third-party login', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 634. 用户-三方登陆 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.socialLogin' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-三方登陆', 'system.user.message.socialLogin', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '三方登陆', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 635. 用户-你要将{0}的状态切换为【{1}】吗？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.message.statusConfirm';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-你要将{0}的状态切换为【{1}】吗？', 'system.user.message.statusConfirm', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 635. 用户-你要将{0}的状态切换为【{1}】吗？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.statusConfirm' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-你要将{0}的状态切换为【{1}】吗？', 'system.user.message.statusConfirm', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'confirm switching {0}''s status to 【{1}】?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 635. 用户-你要将{0}的状态切换为【{1}】吗？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.statusConfirm' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-你要将{0}的状态切换为【{1}】吗？', 'system.user.message.statusConfirm', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '你要将{0}的状态切换为【{1}】吗？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 636. 用户-更新失败 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.message.updateFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-更新失败', 'system.user.message.updateFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 636. 用户-更新失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.updateFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-更新失败', 'system.user.message.updateFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'update failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 636. 用户-更新失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.message.updateFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户-更新失败', 'system.user.message.updateFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '更新失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 637. 用户 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'system.user.user';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户', 'system.user.user', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 637. 用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.user' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户', 'system.user.user', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'user', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 637. 用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'system.user.user' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户', 'system.user.user', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
