-- =============================================
-- COMMON i18n SQL
-- Generated: 2026-05-29
-- =============================================

SET @IS_SYSTEM = 0;
SET @MODULE_TYPE = 'common';
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

-- 1. 新增下级 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.append';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('新增下级', 'common.append', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 新增下级 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.append' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('新增下级', 'common.append', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Add Child', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 新增下级 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.append' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('新增下级', 'common.append', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '新增下级', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 返回 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.back';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('返回', 'common.back', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 返回 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.back' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('返回', 'common.back', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Back', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 返回 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.back' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('返回', 'common.back', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '返回', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 返回首页 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.backToHome';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('返回首页', 'common.backToHome', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 返回首页 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.backToHome' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('返回首页', 'common.backToHome', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Back To Home', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 返回首页 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.backToHome' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('返回首页', 'common.backToHome', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '返回首页', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 取消 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.cancel';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('取消', 'common.cancel', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 取消 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.cancel' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('取消', 'common.cancel', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Cancel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 取消 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.cancel' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('取消', 'common.cancel', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '取消', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 父子联动 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.checkStrictly';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('父子联动', 'common.checkStrictly', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 父子联动 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.checkStrictly' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('父子联动', 'common.checkStrictly', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Father and son linkage', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 父子联动 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.checkStrictly' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('父子联动', 'common.checkStrictly', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '父子联动', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 收缩 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.collapse';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收缩', 'common.collapse', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 收缩 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.collapse' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收缩', 'common.collapse', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Collapse', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 收缩 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.collapse' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('收缩', 'common.collapse', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '收缩', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 确认 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.confirm';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认', 'common.confirm', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 确认 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.confirm' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认', 'common.confirm', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Confirm', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 确认 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.confirm' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认', 'common.confirm', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '确认', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 副本 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.copySuffix';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('副本', 'common.copySuffix', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 副本 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.copySuffix' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('副本', 'common.copySuffix', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, ' (Copy)', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 副本 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.copySuffix' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('副本', 'common.copySuffix', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '副本', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 新增 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('新增', 'common.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 新增 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('新增', 'common.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Create', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 新增 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('新增', 'common.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '新增', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 日期 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.date';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('日期', 'common.date', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 日期 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.date' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('日期', 'common.date', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Date', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 日期 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.date' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('日期', 'common.date', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '日期', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 删除 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('删除', 'common.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('删除', 'common.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('删除', 'common.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 批量删除 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.deleteBatch';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('批量删除', 'common.deleteBatch', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 批量删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.deleteBatch' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('批量删除', 'common.deleteBatch', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Delete Batch', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 批量删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.deleteBatch' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('批量删除', 'common.deleteBatch', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '批量删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 详情 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.detail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('详情', 'common.detail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.detail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('详情', 'common.detail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Detail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.detail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('详情', 'common.detail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 已禁用 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.disabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('已禁用', 'common.disabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 已禁用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.disabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('已禁用', 'common.disabled', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Disabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 已禁用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.disabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('已禁用', 'common.disabled', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '已禁用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 修改 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.edit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('修改', 'common.edit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 修改 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.edit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('修改', 'common.edit', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Edit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 修改 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.edit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('修改', 'common.edit', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '修改', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 已启用 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.enabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('已启用', 'common.enabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 已启用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.enabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('已启用', 'common.enabled', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Enabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 已启用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.enabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('已启用', 'common.enabled', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '已启用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 等 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.etc';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('等', 'common.etc', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 等 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.etc' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('等', 'common.etc', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'etc.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 等 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.etc' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('等', 'common.etc', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '等', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 展开 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.expand';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('展开', 'common.expand', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 展开 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.expand' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('展开', 'common.expand', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Expand', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 展开 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.expand' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('展开', 'common.expand', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '展开', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 全部展开 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.expandAll';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全部展开', 'common.expandAll', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 全部展开 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.expandAll' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全部展开', 'common.expandAll', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Expand All', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 全部展开 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.expandAll' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全部展开', 'common.expandAll', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '全部展开', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 强退 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.forceLogout';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('强退', 'common.forceLogout', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 强退 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.forceLogout' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('强退', 'common.forceLogout', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Force Logout', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 强退 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.forceLogout' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('强退', 'common.forceLogout', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '强退', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 授权 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.grant';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('授权', 'common.grant', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 授权 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.grant' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('授权', 'common.grant', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Grant', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 授权 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.grant' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('授权', 'common.grant', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '授权', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 隐藏搜索面板 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.hideSearchPanel';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('隐藏搜索面板', 'common.hideSearchPanel', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 隐藏搜索面板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.hideSearchPanel' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('隐藏搜索面板', 'common.hideSearchPanel', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Hide search panel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 隐藏搜索面板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.hideSearchPanel' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('隐藏搜索面板', 'common.hideSearchPanel', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '隐藏搜索面板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 高 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.high';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('高', 'common.high', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 高 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.high' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('高', 'common.high', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'High', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 高 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.high' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('高', 'common.high', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '高', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 导入 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.import';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入', 'common.import', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 导入 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.import' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入', 'common.import', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Import', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 导入 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.import' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入', 'common.import', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '导入', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 发起人 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.initiator';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('发起人', 'common.initiator', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 发起人 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.initiator' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('发起人', 'common.initiator', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Initiator', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 发起人 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.initiator' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('发起人', 'common.initiator', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '发起人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 加载菜单中 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.loadingMenu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('加载菜单中', 'common.loadingMenu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 加载菜单中 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.loadingMenu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('加载菜单中', 'common.loadingMenu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Loading Menu', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 加载菜单中 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.loadingMenu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('加载菜单中', 'common.loadingMenu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '加载菜单中', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 登录 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.login';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录', 'common.login', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 登录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.login' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录', 'common.login', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Login', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 登录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.login' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录', 'common.login', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 退出登录 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.logout';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('退出登录', 'common.logout', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 退出登录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.logout' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('退出登录', 'common.logout', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Logout', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 退出登录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.logout' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('退出登录', 'common.logout', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '退出登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 低 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.low';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('低', 'common.low', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 低 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.low' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('低', 'common.low', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Low', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 低 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.low' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('低', 'common.low', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '低', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 最大值 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.max';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最大值', 'common.max', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 最大值 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.max' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最大值', 'common.max', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Max', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 最大值 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.max' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最大值', 'common.max', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '最大值', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 最小值 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.min';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最小值', 'common.min', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 最小值 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.min' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最小值', 'common.min', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Min', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 最小值 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.min' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最小值', 'common.min', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '最小值', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 否 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.no';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('否', 'common.no', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 否 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.no' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('否', 'common.no', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'No', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 否 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.no' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('否', 'common.no', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '否', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 暂无数据 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.noData';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('暂无数据', 'common.noData', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 暂无数据 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.noData' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('暂无数据', 'common.noData', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'No Data', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 暂无数据 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.noData' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('暂无数据', 'common.noData', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '暂无数据', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 无 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.none';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('无', 'common.none', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 无 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.none' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('无', 'common.none', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'None', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 无 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.none' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('无', 'common.none', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '无', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 操作 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.operation';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作', 'common.operation', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 操作 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.operation' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作', 'common.operation', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Operation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 操作 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.operation' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作', 'common.operation', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '操作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 精确到日 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.preciseToDay';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('精确到日', 'common.preciseToDay', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 精确到日 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.preciseToDay' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('精确到日', 'common.preciseToDay', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Precise to day', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 精确到日 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.preciseToDay' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('精确到日', 'common.preciseToDay', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '精确到日', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 精确到时 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.preciseToHour';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('精确到时', 'common.preciseToHour', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 精确到时 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.preciseToHour' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('精确到时', 'common.preciseToHour', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Precise to hour', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 精确到时 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.preciseToHour' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('精确到时', 'common.preciseToHour', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '精确到时', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 精确到分 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.preciseToMinute';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('精确到分', 'common.preciseToMinute', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 精确到分 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.preciseToMinute' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('精确到分', 'common.preciseToMinute', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Precise to minute', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 精确到分 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.preciseToMinute' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('精确到分', 'common.preciseToMinute', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '精确到分', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 精确到秒 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.preciseToSecond';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('精确到秒', 'common.preciseToSecond', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 精确到秒 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.preciseToSecond' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('精确到秒', 'common.preciseToSecond', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Precise to second', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 精确到秒 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.preciseToSecond' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('精确到秒', 'common.preciseToSecond', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '精确到秒', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 提示 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.prompt';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('提示', 'common.prompt', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 提示 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.prompt' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('提示', 'common.prompt', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Prompt', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 提示 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.prompt' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('提示', 'common.prompt', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '提示', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 查询 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查询', 'common.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查询', 'common.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Search', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查询', 'common.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 刷新 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.refresh';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('刷新', 'common.refresh', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 刷新 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.refresh' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('刷新', 'common.refresh', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Refresh', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 刷新 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.refresh' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('刷新', 'common.refresh', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '刷新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 重置 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.reset';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置', 'common.reset', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 重置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.reset' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置', 'common.reset', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Reset', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 重置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.reset' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置', 'common.reset', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '重置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 保存 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.save';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('保存', 'common.save', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 保存 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.save' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('保存', 'common.save', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Save', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 保存 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.save' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('保存', 'common.save', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '保存', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 搜索 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.search';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索', 'common.search', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 搜索 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.search' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索', 'common.search', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Search', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 搜索 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.search' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索', 'common.search', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '搜索', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 请选择 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.select';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择', 'common.select', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 请选择 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.select' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择', 'common.select', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Please select', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 请选择 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.select' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择', 'common.select', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '请选择', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 全选 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.selectAll';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全选', 'common.selectAll', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 全选 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.selectAll' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全选', 'common.selectAll', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Select All', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 全选 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.selectAll' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全选', 'common.selectAll', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '全选', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 选择用户 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.selectUser';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择用户', 'common.selectUser', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 选择用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.selectUser' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择用户', 'common.selectUser', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Select User', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 选择用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.selectUser' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择用户', 'common.selectUser', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '选择用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 显示搜索面板 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.showSearchPanel';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示搜索面板', 'common.showSearchPanel', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 显示搜索面板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.showSearchPanel' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示搜索面板', 'common.showSearchPanel', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Show search panel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 显示搜索面板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.showSearchPanel' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示搜索面板', 'common.showSearchPanel', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '显示搜索面板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 发起时间 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.startTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('发起时间', 'common.startTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 发起时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.startTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('发起时间', 'common.startTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Start Time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 发起时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.startTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('发起时间', 'common.startTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '发起时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 请先完善当前步骤必填信息 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.stepTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请先完善当前步骤必填信息', 'common.stepTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 请先完善当前步骤必填信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.stepTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请先完善当前步骤必填信息', 'common.stepTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'please complete required info in current step', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 请先完善当前步骤必填信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.stepTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请先完善当前步骤必填信息', 'common.stepTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '请先完善当前步骤必填信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 总计 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.total';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('总计', 'common.total', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 总计 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.total' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('总计', 'common.total', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Total', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 总计 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.total' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('总计', 'common.total', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '总计', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 查看菜单{0} (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.viewMenu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看菜单{0}', 'common.viewMenu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 查看菜单{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.viewMenu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看菜单{0}', 'common.viewMenu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'View Menu {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 查看菜单{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.viewMenu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看菜单{0}', 'common.viewMenu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '查看菜单 {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 是 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'common.yes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是', 'common.yes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 是 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'common.yes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是', 'common.yes', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Yes', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 是 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'common.yes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是', 'common.yes', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '是', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
