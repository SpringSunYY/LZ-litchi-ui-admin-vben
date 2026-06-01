-- =============================================
-- UI i18n SQL
-- Generated: 2026-06-01
-- =============================================

SET @IS_SYSTEM = 0;
SET @MODULE_TYPE = 'ui';
SET @LOCALE_TARGET = 2;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';

SET @USE_TYPE_PUBLIC = 0;    SET @ORDER_NUM_PUBLIC = 0;
SET @USE_TYPE_UI = 1;       SET @ORDER_NUM_UI = 1;
SET @USE_TYPE_FORM = 2;     SET @ORDER_NUM_FORM = 2;
SET @USE_TYPE_FIELD = 3;    SET @ORDER_NUM_FIELD = 3;
SET @USE_TYPE_FUNCTION = 4;  SET @ORDER_NUM_FUNCTION = 4;
SET @USE_TYPE_EXCEPTION = 5; SET @ORDER_NUM_EXCEPTION = 5;
SET @USE_TYPE_MENU = 6;     SET @ORDER_NUM_MENU = 6;
SET @USE_TYPE_DICT = 7;     SET @ORDER_NUM_DICT = 7;

-- 1. 操作 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.action.action';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作', 'ui.action.action', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 操作 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.action' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作', 'ui.action.action', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Action', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 操作 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.action' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作', 'ui.action.action', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '操作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 新增 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.action.add';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('新增', 'ui.action.add', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 新增 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.add' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('新增', 'ui.action.add', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Add', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 新增 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.add' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('新增', 'ui.action.add', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '新增', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 取消 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.action.cancel';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('取消', 'ui.action.cancel', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 取消 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.cancel' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('取消', 'ui.action.cancel', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Cancel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 取消 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.cancel' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('取消', 'ui.action.cancel', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '取消', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 确认 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.action.confirm';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认', 'ui.action.confirm', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 确认 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.confirm' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认', 'ui.action.confirm', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Confirm', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 确认 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.confirm' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认', 'ui.action.confirm', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '确认', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 删除 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('删除', 'ui.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('删除', 'ui.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('删除', 'ui.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 编辑 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.action.edit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('编辑', 'ui.action.edit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 编辑 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.edit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('编辑', 'ui.action.edit', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Edit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 编辑 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.edit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('编辑', 'ui.action.edit', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '编辑', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 导出 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.action.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导出', 'ui.action.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 导出 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导出', 'ui.action.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Export', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 导出 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导出', 'ui.action.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '导出', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 导入 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.action.import';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入', 'ui.action.import', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 导入 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.import' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入', 'ui.action.import', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Import', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 导入 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.import' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入', 'ui.action.import', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '导入', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 更多 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.action.more';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('更多', 'ui.action.more', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 更多 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.more' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('更多', 'ui.action.more', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'More', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 更多 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.more' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('更多', 'ui.action.more', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '更多', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 重置 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.action.reset';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置', 'ui.action.reset', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 重置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.reset' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置', 'ui.action.reset', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Reset', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 重置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.reset' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置', 'ui.action.reset', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '重置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 保存 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.action.save';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('保存', 'ui.action.save', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 保存 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.save' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('保存', 'ui.action.save', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Save', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 保存 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.save' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('保存', 'ui.action.save', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '保存', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 搜索 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.action.search';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索', 'ui.action.search', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 搜索 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.search' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索', 'ui.action.search', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Search', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 搜索 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.search' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索', 'ui.action.search', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '搜索', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 提交 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.action.submit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('提交', 'ui.action.submit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 提交 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.submit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('提交', 'ui.action.submit', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Submit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 提交 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.submit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('提交', 'ui.action.submit', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '提交', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 查看 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.action.view';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看', 'ui.action.view', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 查看 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.view' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看', 'ui.action.view', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'View', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 查看 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.action.view' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看', 'ui.action.view', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '查看', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 级联删除 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.cascadeDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('级联删除', 'ui.actionMessage.cascadeDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 级联删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.cascadeDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('级联删除', 'ui.actionMessage.cascadeDelete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Cascade Delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 级联删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.cascadeDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('级联删除', 'ui.actionMessage.cascadeDelete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '级联删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 开启后，将连同所有子数据一并删除 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.cascadeDeleteTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开启后，将连同所有子数据一并删除', 'ui.actionMessage.cascadeDeleteTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 开启后，将连同所有子数据一并删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.cascadeDeleteTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开启后，将连同所有子数据一并删除', 'ui.actionMessage.cascadeDeleteTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'When enabled, all child data will be deleted together', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 开启后，将连同所有子数据一并删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.cascadeDeleteTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开启后，将连同所有子数据一并删除', 'ui.actionMessage.cascadeDeleteTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '开启后，将连同所有子数据一并删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 关闭则只删除当前数据，不影响子数据 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.cascadeDeleteTipOff';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭则只删除当前数据，不影响子数据', 'ui.actionMessage.cascadeDeleteTipOff', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 关闭则只删除当前数据，不影响子数据 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.cascadeDeleteTipOff' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭则只删除当前数据，不影响子数据', 'ui.actionMessage.cascadeDeleteTipOff', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'When disabled, only this item is deleted, child data remains', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 关闭则只删除当前数据，不影响子数据 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.cascadeDeleteTipOff' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭则只删除当前数据，不影响子数据', 'ui.actionMessage.cascadeDeleteTipOff', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '关闭则只删除当前数据，不影响子数据', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 复制成功 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.copySuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制成功', 'ui.actionMessage.copySuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 复制成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.copySuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制成功', 'ui.actionMessage.copySuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Copied successfully', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 复制成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.copySuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制成功', 'ui.actionMessage.copySuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '复制成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 确定删除{0}吗？ (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.deleteCascadeConfirm';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确定删除{0}吗？', 'ui.actionMessage.deleteCascadeConfirm', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 确定删除{0}吗？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.deleteCascadeConfirm' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确定删除{0}吗？', 'ui.actionMessage.deleteCascadeConfirm', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Are you sure to delete {0}?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 确定删除{0}吗？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.deleteCascadeConfirm' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确定删除{0}吗？', 'ui.actionMessage.deleteCascadeConfirm', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '确定删除 {0} 吗？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 确认删除{0}？ (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.deleteConfirm';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认删除{0}？', 'ui.actionMessage.deleteConfirm', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 确认删除{0}？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.deleteConfirm' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认删除{0}？', 'ui.actionMessage.deleteConfirm', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Are you sure to delete {0}?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 确认删除{0}？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.deleteConfirm' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认删除{0}？', 'ui.actionMessage.deleteConfirm', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '确认删除{0}？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. {0}删除失败 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.deleteFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}删除失败', 'ui.actionMessage.deleteFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. {0}删除失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.deleteFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}删除失败', 'ui.actionMessage.deleteFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0} deleted failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. {0}删除失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.deleteFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}删除失败', 'ui.actionMessage.deleteFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0} 删除失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. {0}删除成功 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.deleteSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}删除成功', 'ui.actionMessage.deleteSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. {0}删除成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.deleteSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}删除成功', 'ui.actionMessage.deleteSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0} deleted successfully', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. {0}删除成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.deleteSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}删除成功', 'ui.actionMessage.deleteSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0} 删除成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 正在删除{0}... (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.deleting';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在删除{0}...', 'ui.actionMessage.deleting', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 正在删除{0}... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.deleting' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在删除{0}...', 'ui.actionMessage.deleting', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Deleting {0} ...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 正在删除{0}... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.deleting' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在删除{0}...', 'ui.actionMessage.deleting', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '正在删除 {0} ...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 下载模板失败 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.downloadTemplateFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('下载模板失败', 'ui.actionMessage.downloadTemplateFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 下载模板失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.downloadTemplateFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('下载模板失败', 'ui.actionMessage.downloadTemplateFail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Download template failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 下载模板失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.downloadTemplateFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('下载模板失败', 'ui.actionMessage.downloadTemplateFail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '下载模板失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 正在下载... (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.downloading';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在下载...', 'ui.actionMessage.downloading', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 正在下载... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.downloading' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在下载...', 'ui.actionMessage.downloading', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Downloading ...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 正在下载... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.downloading' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在下载...', 'ui.actionMessage.downloading', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '正在下载...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 正在导出... (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.exporting';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在导出...', 'ui.actionMessage.exporting', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 正在导出... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.exporting' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在导出...', 'ui.actionMessage.exporting', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Exporting ...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 正在导出... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.exporting' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在导出...', 'ui.actionMessage.exporting', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '正在导出...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 确定要退出吗？ (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.externalCloseConfirm';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确定要退出吗？', 'ui.actionMessage.externalCloseConfirm', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 确定要退出吗？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.externalCloseConfirm' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确定要退出吗？', 'ui.actionMessage.externalCloseConfirm', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Are you sure you want to exit?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 确定要退出吗？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.externalCloseConfirm' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确定要退出吗？', 'ui.actionMessage.externalCloseConfirm', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '确定要退出吗？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 关闭后你所填写的数据将会丢失 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.externalCloseTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭后你所填写的数据将会丢失', 'ui.actionMessage.externalCloseTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 关闭后你所填写的数据将会丢失 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.externalCloseTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭后你所填写的数据将会丢失', 'ui.actionMessage.externalCloseTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Your data will be lost after closing', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 关闭后你所填写的数据将会丢失 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.externalCloseTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭后你所填写的数据将会丢失', 'ui.actionMessage.externalCloseTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '关闭后你所填写的数据将会丢失', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 授予菜单权限成功 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.grant';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('授予菜单权限成功', 'ui.actionMessage.grant', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 授予菜单权限成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.grant' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('授予菜单权限成功', 'ui.actionMessage.grant', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Grant Menu Success', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 授予菜单权限成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.grant' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('授予菜单权限成功', 'ui.actionMessage.grant', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '授予菜单权限成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 导入失败 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.importFail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入失败', 'ui.actionMessage.importFail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 导入失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.importFail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入失败', 'ui.actionMessage.importFail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Import failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 导入失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.importFail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入失败', 'ui.actionMessage.importFail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '导入失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 导入成功 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.importSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入成功', 'ui.actionMessage.importSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 导入成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.importSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入成功', 'ui.actionMessage.importSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Import succeeded', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 导入成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.importSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入成功', 'ui.actionMessage.importSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '导入成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 正在导入{0}... (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.importing';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在导入{0}...', 'ui.actionMessage.importing', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 正在导入{0}... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.importing' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在导入{0}...', 'ui.actionMessage.importing', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Importing {0} ...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 正在导入{0}... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.importing' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在导入{0}...', 'ui.actionMessage.importing', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '正在导入 {0} ...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 操作失败 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.operationFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作失败', 'ui.actionMessage.operationFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 操作失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.operationFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作失败', 'ui.actionMessage.operationFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Operation failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 操作失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.operationFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作失败', 'ui.actionMessage.operationFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '操作失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 操作成功 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.operationSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作成功', 'ui.actionMessage.operationSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 操作成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.operationSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作成功', 'ui.actionMessage.operationSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Operation succeeded', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 操作成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.operationSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('操作成功', 'ui.actionMessage.operationSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '操作成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 请选择{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.selectRequired';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择{0}', 'ui.actionMessage.selectRequired', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 请选择{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.selectRequired' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择{0}', 'ui.actionMessage.selectRequired', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Please select {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 请选择{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.selectRequired' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择{0}', 'ui.actionMessage.selectRequired', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请选择{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. {0}提交成功 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.submitSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}提交成功', 'ui.actionMessage.submitSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. {0}提交成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.submitSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}提交成功', 'ui.actionMessage.submitSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0} submitted successfully', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. {0}提交成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.submitSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}提交成功', 'ui.actionMessage.submitSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0} 提交成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 正在提交{0}... (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.submitting';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在提交{0}...', 'ui.actionMessage.submitting', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 正在提交{0}... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.submitting' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在提交{0}...', 'ui.actionMessage.submitting', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Submitting {0} ...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 正在提交{0}... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.submitting' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在提交{0}...', 'ui.actionMessage.submitting', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '正在提交 {0} ...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 您确定要更新吗？ (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.updateConfirm';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('您确定要更新吗？', 'ui.actionMessage.updateConfirm', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 您确定要更新吗？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.updateConfirm' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('您确定要更新吗？', 'ui.actionMessage.updateConfirm', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Confirm Update?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 您确定要更新吗？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.updateConfirm' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('您确定要更新吗？', 'ui.actionMessage.updateConfirm', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '您确定要更新吗？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 正在更新{0}... (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionMessage.updating';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在更新{0}...', 'ui.actionMessage.updating', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 正在更新{0}... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.updating' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在更新{0}...', 'ui.actionMessage.updating', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Updating {0}...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 正在更新{0}... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionMessage.updating' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('正在更新{0}...', 'ui.actionMessage.updating', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '正在更新 {0}...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 重置 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionName.reset';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置', 'ui.actionName.reset', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 重置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionName.reset' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置', 'ui.actionName.reset', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Reset', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 重置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionName.reset' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置', 'ui.actionName.reset', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '重置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 搜索 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionName.search';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索', 'ui.actionName.search', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 搜索 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionName.search' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索', 'ui.actionName.search', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Search', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 搜索 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionName.search' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索', 'ui.actionName.search', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '搜索', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 搜索部门 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionName.searchDept';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索部门', 'ui.actionName.searchDept', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 搜索部门 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionName.searchDept' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索部门', 'ui.actionName.searchDept', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Search department', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 搜索部门 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionName.searchDept' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索部门', 'ui.actionName.searchDept', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '搜索部门', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 取消{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionTitle.cancel';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('取消{0}', 'ui.actionTitle.cancel', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 取消{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.cancel' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('取消{0}', 'ui.actionTitle.cancel', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Cancel {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 取消{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.cancel' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('取消{0}', 'ui.actionTitle.cancel', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '取消{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 清除缓存{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionTitle.clearCache';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('清除缓存{0}', 'ui.actionTitle.clearCache', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 清除缓存{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.clearCache' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('清除缓存{0}', 'ui.actionTitle.clearCache', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Clear Cache {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 清除缓存{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.clearCache' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('清除缓存{0}', 'ui.actionTitle.clearCache', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '清除缓存 {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 复制{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionTitle.copy';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制{0}', 'ui.actionTitle.copy', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 复制{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.copy' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制{0}', 'ui.actionTitle.copy', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Copy {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 复制{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.copy' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制{0}', 'ui.actionTitle.copy', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '复制{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 新增{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionTitle.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('新增{0}', 'ui.actionTitle.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 新增{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('新增{0}', 'ui.actionTitle.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Create {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 新增{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('新增{0}', 'ui.actionTitle.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '新增{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 删除{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionTitle.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('删除{0}', 'ui.actionTitle.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 删除{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('删除{0}', 'ui.actionTitle.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Delete {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 删除{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('删除{0}', 'ui.actionTitle.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '删除{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 批量删除 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionTitle.deleteBatch';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('批量删除', 'ui.actionTitle.deleteBatch', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 批量删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.deleteBatch' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('批量删除', 'ui.actionTitle.deleteBatch', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Delete Batch', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 批量删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.deleteBatch' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('批量删除', 'ui.actionTitle.deleteBatch', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '批量删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 详情{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionTitle.detail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('详情{0}', 'ui.actionTitle.detail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 详情{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.detail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('详情{0}', 'ui.actionTitle.detail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Detail {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 详情{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.detail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('详情{0}', 'ui.actionTitle.detail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '详情{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 修改{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionTitle.edit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('修改{0}', 'ui.actionTitle.edit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 修改{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.edit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('修改{0}', 'ui.actionTitle.edit', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Modify {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 修改{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.edit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('修改{0}', 'ui.actionTitle.edit', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '修改{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 导出 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionTitle.export';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导出', 'ui.actionTitle.export', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 导出 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.export' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导出', 'ui.actionTitle.export', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Export', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 导出 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.export' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导出', 'ui.actionTitle.export', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '导出', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 导入{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionTitle.import';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入{0}', 'ui.actionTitle.import', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 导入{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.import' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入{0}', 'ui.actionTitle.import', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Import {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 导入{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.import' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入{0}', 'ui.actionTitle.import', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '导入{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 导入模板{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionTitle.importTemplate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入模板{0}', 'ui.actionTitle.importTemplate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 导入模板{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.importTemplate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入模板{0}', 'ui.actionTitle.importTemplate', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Import Template {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 导入模板{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.importTemplate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导入模板{0}', 'ui.actionTitle.importTemplate', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '导入模板{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 更新所有菜单 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionTitle.updateAllMenu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('更新所有菜单', 'ui.actionTitle.updateAllMenu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 更新所有菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.updateAllMenu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('更新所有菜单', 'ui.actionTitle.updateAllMenu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'update All Menu', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 更新所有菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.updateAllMenu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('更新所有菜单', 'ui.actionTitle.updateAllMenu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '更新所有菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 查看{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.actionTitle.view';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看{0}', 'ui.actionTitle.view', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 查看{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.view' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看{0}', 'ui.actionTitle.view', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'View {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 查看{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.actionTitle.view' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看{0}', 'ui.actionTitle.view', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '查看{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 已清除{count}条缓存数据，页面将在1秒后刷新 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.alert.clearCacheSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('已清除{count}条缓存数据，页面将在1秒后刷新', 'ui.alert.clearCacheSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 已清除{count}条缓存数据，页面将在1秒后刷新 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.alert.clearCacheSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('已清除{count}条缓存数据，页面将在1秒后刷新', 'ui.alert.clearCacheSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Cleared {count} cache entries. Page will refresh in 1 second', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 已清除{count}条缓存数据，页面将在1秒后刷新 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.alert.clearCacheSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('已清除{count}条缓存数据，页面将在1秒后刷新', 'ui.alert.clearCacheSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '已清除 {count} 条缓存数据，页面将在 1 秒后刷新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 元 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.amount.yuan';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('元', 'ui.amount.yuan', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 元 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.amount.yuan' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('元', 'ui.amount.yuan', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'yuan', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 元 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.amount.yuan' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('元', 'ui.amount.yuan', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '元', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 验证码登录 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.auth.codeLogin';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证码登录', 'ui.auth.codeLogin', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 验证码登录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.auth.codeLogin' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证码登录', 'ui.auth.codeLogin', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Code Login', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 验证码登录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.auth.codeLogin' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证码登录', 'ui.auth.codeLogin', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '验证码登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 忘记密码 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.auth.forgetPassword';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('忘记密码', 'ui.auth.forgetPassword', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 忘记密码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.auth.forgetPassword' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('忘记密码', 'ui.auth.forgetPassword', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Forget Password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 忘记密码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.auth.forgetPassword' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('忘记密码', 'ui.auth.forgetPassword', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '忘记密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 登录 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.auth.login';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录', 'ui.auth.login', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 登录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.auth.login' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录', 'ui.auth.login', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Login', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 登录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.auth.login' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录', 'ui.auth.login', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 二维码登录 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.auth.qrcodeLogin';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('二维码登录', 'ui.auth.qrcodeLogin', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 二维码登录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.auth.qrcodeLogin' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('二维码登录', 'ui.auth.qrcodeLogin', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Qr Code Login', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 二维码登录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.auth.qrcodeLogin' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('二维码登录', 'ui.auth.qrcodeLogin', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '二维码登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 注册 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.auth.register';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册', 'ui.auth.register', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 注册 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.auth.register' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册', 'ui.auth.register', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Register', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 注册 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.auth.register' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册', 'ui.auth.register', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '注册', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 支持img标签src属性值 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.captcha.alt';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('支持img标签src属性值', 'ui.captcha.alt', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 支持img标签src属性值 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.alt' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('支持img标签src属性值', 'ui.captcha.alt', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Supports img tag src attribute value', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 支持img标签src属性值 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.alt' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('支持img标签src属性值', 'ui.captcha.alt', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '支持img标签src属性值', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 请依次点击 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.captcha.clickInOrder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请依次点击', 'ui.captcha.clickInOrder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 请依次点击 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.clickInOrder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请依次点击', 'ui.captcha.clickInOrder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Please click in order', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 请依次点击 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.clickInOrder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请依次点击', 'ui.captcha.clickInOrder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请依次点击', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 确认 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.captcha.confirm';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认', 'ui.captcha.confirm', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 确认 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.confirm' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认', 'ui.captcha.confirm', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Confirm', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 确认 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.confirm' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认', 'ui.captcha.confirm', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '确认', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 确认选择 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.captcha.confirmAriaLabel';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认选择', 'ui.captcha.confirmAriaLabel', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 确认选择 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.confirmAriaLabel' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认选择', 'ui.captcha.confirmAriaLabel', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Confirm selection', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 确认选择 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.confirmAriaLabel' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认选择', 'ui.captcha.confirmAriaLabel', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '确认选择', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 点击点 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.captcha.pointAriaLabel';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击点', 'ui.captcha.pointAriaLabel', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 点击点 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.pointAriaLabel' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击点', 'ui.captcha.pointAriaLabel', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Click point', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 点击点 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.pointAriaLabel' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击点', 'ui.captcha.pointAriaLabel', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '点击点', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 刷新验证码 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.captcha.refreshAriaLabel';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('刷新验证码', 'ui.captcha.refreshAriaLabel', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 刷新验证码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.refreshAriaLabel' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('刷新验证码', 'ui.captcha.refreshAriaLabel', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Refresh captcha', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 刷新验证码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.refreshAriaLabel' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('刷新验证码', 'ui.captcha.refreshAriaLabel', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '刷新验证码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 请按住滑块拖动 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.captcha.sliderDefaultText';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请按住滑块拖动', 'ui.captcha.sliderDefaultText', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 请按住滑块拖动 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.sliderDefaultText' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请按住滑块拖动', 'ui.captcha.sliderDefaultText', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Slide and drag', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 请按住滑块拖动 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.sliderDefaultText' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请按住滑块拖动', 'ui.captcha.sliderDefaultText', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请按住滑块拖动', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 点击图片可刷新 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.captcha.sliderRotateDefaultTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击图片可刷新', 'ui.captcha.sliderRotateDefaultTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 点击图片可刷新 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.sliderRotateDefaultTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击图片可刷新', 'ui.captcha.sliderRotateDefaultTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Click picture to refresh', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 点击图片可刷新 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.sliderRotateDefaultTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击图片可刷新', 'ui.captcha.sliderRotateDefaultTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '点击图片可刷新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 验证失败 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.captcha.sliderRotateFailTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证失败', 'ui.captcha.sliderRotateFailTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 验证失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.sliderRotateFailTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证失败', 'ui.captcha.sliderRotateFailTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Validation failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 验证失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.sliderRotateFailTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证失败', 'ui.captcha.sliderRotateFailTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '验证失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 验证成功，耗时{0}秒 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.captcha.sliderRotateSuccessTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证成功，耗时{0}秒', 'ui.captcha.sliderRotateSuccessTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 验证成功，耗时{0}秒 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.sliderRotateSuccessTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证成功，耗时{0}秒', 'ui.captcha.sliderRotateSuccessTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Validation successful, time {0} seconds', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 验证成功，耗时{0}秒 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.sliderRotateSuccessTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证成功，耗时{0}秒', 'ui.captcha.sliderRotateSuccessTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '验证成功，耗时{0}秒', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 验证通过 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.captcha.sliderSuccessText';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证通过', 'ui.captcha.sliderSuccessText', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 验证通过 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.sliderSuccessText' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证通过', 'ui.captcha.sliderSuccessText', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Passed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 验证通过 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.sliderSuccessText' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证通过', 'ui.captcha.sliderSuccessText', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '验证通过', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 请完成安全验证 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.captcha.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请完成安全验证', 'ui.captcha.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 请完成安全验证 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请完成安全验证', 'ui.captcha.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Please complete the security verification', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 请完成安全验证 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.captcha.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请完成安全验证', 'ui.captcha.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请完成安全验证', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 危险 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.color.danger';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('危险', 'ui.color.danger', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 危险 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.color.danger' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('危险', 'ui.color.danger', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Danger', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 危险 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.color.danger' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('危险', 'ui.color.danger', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '危险', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 默认 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.color.default';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('默认', 'ui.color.default', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 默认 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.color.default' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('默认', 'ui.color.default', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Default', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 默认 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.color.default' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('默认', 'ui.color.default', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '默认', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 无 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.color.none';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('无', 'ui.color.none', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 无 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.color.none' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('无', 'ui.color.none', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'None', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 无 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.color.none' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('无', 'ui.color.none', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '无', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 主要 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.color.primary';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('主要', 'ui.color.primary', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 主要 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.color.primary' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('主要', 'ui.color.primary', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Primary', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 主要 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.color.primary' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('主要', 'ui.color.primary', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '主要', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 成功 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.color.success';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('成功', 'ui.color.success', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.color.success' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('成功', 'ui.color.success', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Success', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.color.success' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('成功', 'ui.color.success', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 警告 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.color.warning';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('警告', 'ui.color.warning', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 警告 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.color.warning' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('警告', 'ui.color.warning', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Warning', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 警告 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.color.warning' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('警告', 'ui.color.warning', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '警告', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 下载模板 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.common.downloadTemplate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('下载模板', 'ui.common.downloadTemplate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 下载模板 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.common.downloadTemplate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('下载模板', 'ui.common.downloadTemplate', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Download Template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 下载模板 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.common.downloadTemplate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('下载模板', 'ui.common.downloadTemplate', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '下载模板', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 否 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.common.no';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('否', 'ui.common.no', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 否 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.common.no' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('否', 'ui.common.no', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'No', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 否 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.common.no' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('否', 'ui.common.no', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '否', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 暂无数据 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.common.noData';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('暂无数据', 'ui.common.noData', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 暂无数据 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.common.noData' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('暂无数据', 'ui.common.noData', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'No Data', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 暂无数据 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.common.noData' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('暂无数据', 'ui.common.noData', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '暂无数据', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 选择文件 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.common.selectFile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择文件', 'ui.common.selectFile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 选择文件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.common.selectFile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择文件', 'ui.common.selectFile', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Select File', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 选择文件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.common.selectFile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择文件', 'ui.common.selectFile', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '选择文件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 表 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.common.table';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表', 'ui.common.table', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.common.table' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表', 'ui.common.table', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Table', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.common.table' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表', 'ui.common.table', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 是 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.common.yes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是', 'ui.common.yes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 是 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.common.yes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是', 'ui.common.yes', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Yes', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 是 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.common.yes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是', 'ui.common.yes', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '是', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 重置 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.cropper.btn_reset';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置', 'ui.cropper.btn_reset', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 重置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.btn_reset' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置', 'ui.cropper.btn_reset', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Reset', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 重置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.btn_reset' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置', 'ui.cropper.btn_reset', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '重置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 逆时针旋转 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.cropper.btn_rotate_left';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('逆时针旋转', 'ui.cropper.btn_rotate_left', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 逆时针旋转 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.btn_rotate_left' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('逆时针旋转', 'ui.cropper.btn_rotate_left', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Counterclockwise rotation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 逆时针旋转 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.btn_rotate_left' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('逆时针旋转', 'ui.cropper.btn_rotate_left', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '逆时针旋转', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 顺时针旋转 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.cropper.btn_rotate_right';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('顺时针旋转', 'ui.cropper.btn_rotate_right', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 顺时针旋转 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.btn_rotate_right' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('顺时针旋转', 'ui.cropper.btn_rotate_right', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Clockwise rotation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 顺时针旋转 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.btn_rotate_right' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('顺时针旋转', 'ui.cropper.btn_rotate_right', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '顺时针旋转', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 水平翻转 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.cropper.btn_scale_x';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('水平翻转', 'ui.cropper.btn_scale_x', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 水平翻转 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.btn_scale_x' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('水平翻转', 'ui.cropper.btn_scale_x', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Flip horizontal', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 水平翻转 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.btn_scale_x' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('水平翻转', 'ui.cropper.btn_scale_x', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '水平翻转', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 垂直翻转 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.cropper.btn_scale_y';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('垂直翻转', 'ui.cropper.btn_scale_y', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 垂直翻转 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.btn_scale_y' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('垂直翻转', 'ui.cropper.btn_scale_y', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Flip vertical', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 垂直翻转 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.btn_scale_y' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('垂直翻转', 'ui.cropper.btn_scale_y', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '垂直翻转', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 放大 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.cropper.btn_zoom_in';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('放大', 'ui.cropper.btn_zoom_in', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 放大 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.btn_zoom_in' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('放大', 'ui.cropper.btn_zoom_in', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Zoom in', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 放大 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.btn_zoom_in' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('放大', 'ui.cropper.btn_zoom_in', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '放大', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 缩小 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.cropper.btn_zoom_out';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('缩小', 'ui.cropper.btn_zoom_out', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 缩小 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.btn_zoom_out' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('缩小', 'ui.cropper.btn_zoom_out', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Zoom out', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 缩小 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.btn_zoom_out' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('缩小', 'ui.cropper.btn_zoom_out', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '缩小', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 图片超限 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.cropper.imageTooBig';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('图片超限', 'ui.cropper.imageTooBig', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 图片超限 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.imageTooBig' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('图片超限', 'ui.cropper.imageTooBig', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Image too big', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 图片超限 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.imageTooBig' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('图片超限', 'ui.cropper.imageTooBig', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '图片超限', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 头像上传 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.cropper.modalTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('头像上传', 'ui.cropper.modalTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 头像上传 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.modalTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('头像上传', 'ui.cropper.modalTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Avatar upload', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 头像上传 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.modalTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('头像上传', 'ui.cropper.modalTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '头像上传', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 未选择图片 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.cropper.noImageSelected';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('未选择图片', 'ui.cropper.noImageSelected', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 未选择图片 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.noImageSelected' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('未选择图片', 'ui.cropper.noImageSelected', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'No image selected', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 未选择图片 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.noImageSelected' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('未选择图片', 'ui.cropper.noImageSelected', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '未选择图片', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 确认并上传 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.cropper.okText';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认并上传', 'ui.cropper.okText', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 确认并上传 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.okText' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认并上传', 'ui.cropper.okText', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Confirm and upload', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 确认并上传 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.okText' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认并上传', 'ui.cropper.okText', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '确认并上传', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 预览 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.cropper.preview';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('预览', 'ui.cropper.preview', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 预览 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.preview' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('预览', 'ui.cropper.preview', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Preview', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 预览 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.preview' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('预览', 'ui.cropper.preview', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '预览', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 选择图片 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.cropper.selectImage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择图片', 'ui.cropper.selectImage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 选择图片 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.selectImage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择图片', 'ui.cropper.selectImage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Select Image', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 选择图片 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.selectImage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择图片', 'ui.cropper.selectImage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '选择图片', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 上传成功 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.cropper.uploadSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传成功', 'ui.cropper.uploadSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 上传成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.uploadSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传成功', 'ui.cropper.uploadSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Uploaded success!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 上传成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.cropper.uploadSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传成功', 'ui.cropper.uploadSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '上传成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 分析页 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.dashboard.analytics';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('分析页', 'ui.dashboard.analytics', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 分析页 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.dashboard.analytics' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('分析页', 'ui.dashboard.analytics', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Analytics', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 分析页 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.dashboard.analytics' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('分析页', 'ui.dashboard.analytics', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '分析页', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 概览 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.dashboard.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('概览', 'ui.dashboard.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 概览 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.dashboard.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('概览', 'ui.dashboard.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Dashboard', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 概览 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.dashboard.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('概览', 'ui.dashboard.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '概览', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 工作台 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.dashboard.workspace';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作台', 'ui.dashboard.workspace', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 工作台 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.dashboard.workspace' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作台', 'ui.dashboard.workspace', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Workspace', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 工作台 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.dashboard.workspace' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('工作台', 'ui.dashboard.workspace', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '工作台', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 结束日期 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.dateRange.end';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('结束日期', 'ui.dateRange.end', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 结束日期 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.dateRange.end' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('结束日期', 'ui.dateRange.end', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'End Date', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 结束日期 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.dateRange.end' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('结束日期', 'ui.dateRange.end', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '结束日期', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 至 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.dateRange.separator';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('至', 'ui.dateRange.separator', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 至 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.dateRange.separator' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('至', 'ui.dateRange.separator', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'to', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 至 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.dateRange.separator' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('至', 'ui.dateRange.separator', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '至', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 开始日期 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.dateRange.start';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开始日期', 'ui.dateRange.start', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 开始日期 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.dateRange.start' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开始日期', 'ui.dateRange.start', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Start Date', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 开始日期 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.dateRange.start' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开始日期', 'ui.dateRange.start', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '开始日期', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 即将推出 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.comingSoon';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('即将推出', 'ui.fallback.comingSoon', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 即将推出 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.comingSoon' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('即将推出', 'ui.fallback.comingSoon', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Coming Soon', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 即将推出 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.comingSoon' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('即将推出', 'ui.fallback.comingSoon', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '即将推出', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 哎呀！访问被拒绝 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.forbidden';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('哎呀！访问被拒绝', 'ui.fallback.forbidden', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 哎呀！访问被拒绝 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.forbidden' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('哎呀！访问被拒绝', 'ui.fallback.forbidden', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Oops! Access Denied', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 哎呀！访问被拒绝 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.forbidden' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('哎呀！访问被拒绝', 'ui.fallback.forbidden', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '哎呀！访问被拒绝', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 抱歉，您没有权限访问此页面。 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.forbiddenDesc';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('抱歉，您没有权限访问此页面。', 'ui.fallback.forbiddenDesc', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 抱歉，您没有权限访问此页面。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.forbiddenDesc' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('抱歉，您没有权限访问此页面。', 'ui.fallback.forbiddenDesc', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Sorry, but you don''t have permission to access this page.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 抱歉，您没有权限访问此页面。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.forbiddenDesc' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('抱歉，您没有权限访问此页面。', 'ui.fallback.forbiddenDesc', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '抱歉，您没有权限访问此页面。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 请求错误。请检查您的输入并重试。 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.http.badRequest';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求错误。请检查您的输入并重试。', 'ui.fallback.http.badRequest', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 请求错误。请检查您的输入并重试。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.http.badRequest' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求错误。请检查您的输入并重试。', 'ui.fallback.http.badRequest', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Bad Request. Please check your input and try again.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 请求错误。请检查您的输入并重试。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.http.badRequest' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求错误。请检查您的输入并重试。', 'ui.fallback.http.badRequest', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请求错误。请检查您的输入并重试。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 禁止访问,您没有权限访问此资源。 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.http.forbidden';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('禁止访问,您没有权限访问此资源。', 'ui.fallback.http.forbidden', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 禁止访问,您没有权限访问此资源。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.http.forbidden' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('禁止访问,您没有权限访问此资源。', 'ui.fallback.http.forbidden', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Forbidden. You do not have permission to access this resource.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 禁止访问,您没有权限访问此资源。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.http.forbidden' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('禁止访问,您没有权限访问此资源。', 'ui.fallback.http.forbidden', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '禁止访问, 您没有权限访问此资源。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 内部服务器错误，请稍后再试。 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.http.internalServerError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('内部服务器错误，请稍后再试。', 'ui.fallback.http.internalServerError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 内部服务器错误，请稍后再试。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.http.internalServerError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('内部服务器错误，请稍后再试。', 'ui.fallback.http.internalServerError', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Internal Server Error. Something went wrong on our end. Please try again later.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 内部服务器错误，请稍后再试。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.http.internalServerError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('内部服务器错误，请稍后再试。', 'ui.fallback.http.internalServerError', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '内部服务器错误，请稍后再试。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 网络异常，请检查您的网络连接后重试。 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.http.networkError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('网络异常，请检查您的网络连接后重试。', 'ui.fallback.http.networkError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 网络异常，请检查您的网络连接后重试。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.http.networkError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('网络异常，请检查您的网络连接后重试。', 'ui.fallback.http.networkError', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'A network error occurred. Please check your internet connection and try again.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 网络异常，请检查您的网络连接后重试。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.http.networkError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('网络异常，请检查您的网络连接后重试。', 'ui.fallback.http.networkError', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '网络异常，请检查您的网络连接后重试。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 未找到,请求的资源不存在。 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.http.notFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('未找到,请求的资源不存在。', 'ui.fallback.http.notFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 未找到,请求的资源不存在。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.http.notFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('未找到,请求的资源不存在。', 'ui.fallback.http.notFound', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Not Found. The requested resource could not be found.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 未找到,请求的资源不存在。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.http.notFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('未找到,请求的资源不存在。', 'ui.fallback.http.notFound', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '未找到, 请求的资源不存在。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 请求超时，请稍后再试。 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.http.requestTimeout';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求超时，请稍后再试。', 'ui.fallback.http.requestTimeout', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 请求超时，请稍后再试。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.http.requestTimeout' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求超时，请稍后再试。', 'ui.fallback.http.requestTimeout', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'The request timed out. Please try again later.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 请求超时，请稍后再试。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.http.requestTimeout' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求超时，请稍后再试。', 'ui.fallback.http.requestTimeout', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请求超时，请稍后再试。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 登录认证过期，请重新登录后继续。 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.http.unauthorized';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录认证过期，请重新登录后继续。', 'ui.fallback.http.unauthorized', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 登录认证过期，请重新登录后继续。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.http.unauthorized' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录认证过期，请重新登录后继续。', 'ui.fallback.http.unauthorized', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Unauthorized. Please log in to continue.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 登录认证过期，请重新登录后继续。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.http.unauthorized' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录认证过期，请重新登录后继续。', 'ui.fallback.http.unauthorized', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '登录认证过期，请重新登录后继续。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 哎呀！出错了 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.internalError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('哎呀！出错了', 'ui.fallback.internalError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 哎呀！出错了 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.internalError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('哎呀！出错了', 'ui.fallback.internalError', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Oops! Something Went Wrong', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 哎呀！出错了 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.internalError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('哎呀！出错了', 'ui.fallback.internalError', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '哎呀！出错了', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 抱歉，服务器遇到错误。 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.internalErrorDesc';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('抱歉，服务器遇到错误。', 'ui.fallback.internalErrorDesc', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 抱歉，服务器遇到错误。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.internalErrorDesc' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('抱歉，服务器遇到错误。', 'ui.fallback.internalErrorDesc', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Sorry, but the server encountered an error.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 抱歉，服务器遇到错误。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.internalErrorDesc' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('抱歉，服务器遇到错误。', 'ui.fallback.internalErrorDesc', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '抱歉，服务器遇到错误。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 离线页面 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.offline';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('离线页面', 'ui.fallback.offline', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 离线页面 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.offline' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('离线页面', 'ui.fallback.offline', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Offline Page', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 离线页面 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.offline' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('离线页面', 'ui.fallback.offline', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '离线页面', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 哎呀！网络错误 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.offlineError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('哎呀！网络错误', 'ui.fallback.offlineError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 哎呀！网络错误 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.offlineError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('哎呀！网络错误', 'ui.fallback.offlineError', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Oops! Network Error', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 哎呀！网络错误 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.offlineError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('哎呀！网络错误', 'ui.fallback.offlineError', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '哎呀！网络错误', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 抱歉，无法连接到互联网，请检查您的网络连接并重试。 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.offlineErrorDesc';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('抱歉，无法连接到互联网，请检查您的网络连接并重试。', 'ui.fallback.offlineErrorDesc', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 抱歉，无法连接到互联网，请检查您的网络连接并重试。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.offlineErrorDesc' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('抱歉，无法连接到互联网，请检查您的网络连接并重试。', 'ui.fallback.offlineErrorDesc', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Sorry, can''t connect to the internet. Check your connection.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 抱歉，无法连接到互联网，请检查您的网络连接并重试。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.offlineErrorDesc' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('抱歉，无法连接到互联网，请检查您的网络连接并重试。', 'ui.fallback.offlineErrorDesc', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '抱歉，无法连接到互联网，请检查您的网络连接并重试。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 哎呀！未找到页面 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.pageNotFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('哎呀！未找到页面', 'ui.fallback.pageNotFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 哎呀！未找到页面 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.pageNotFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('哎呀！未找到页面', 'ui.fallback.pageNotFound', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Oops! Page Not Found', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 哎呀！未找到页面 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.pageNotFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('哎呀！未找到页面', 'ui.fallback.pageNotFound', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '哎呀！未找到页面', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 抱歉，我们无法找到您要找的页面。 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.fallback.pageNotFoundDesc';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('抱歉，我们无法找到您要找的页面。', 'ui.fallback.pageNotFoundDesc', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 抱歉，我们无法找到您要找的页面。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.pageNotFoundDesc' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('抱歉，我们无法找到您要找的页面。', 'ui.fallback.pageNotFoundDesc', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Sorry, we couldn''t find the page you were looking for.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 抱歉，我们无法找到您要找的页面。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.fallback.pageNotFoundDesc' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('抱歉，我们无法找到您要找的页面。', 'ui.fallback.pageNotFoundDesc', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '抱歉，我们无法找到您要找的页面。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 查看文件 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.filePreview.viewFile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看文件', 'ui.filePreview.viewFile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 查看文件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.filePreview.viewFile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看文件', 'ui.filePreview.viewFile', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'View File', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 查看文件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.filePreview.viewFile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看文件', 'ui.filePreview.viewFile', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '查看文件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 125. 接口选择器 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.labels.apiSelect';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('接口选择器', 'ui.formCreate.labels.apiSelect', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 125. 接口选择器 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.apiSelect' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('接口选择器', 'ui.formCreate.labels.apiSelect', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'API Selector', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 125. 接口选择器 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.apiSelect' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('接口选择器', 'ui.formCreate.labels.apiSelect', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '接口选择器', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 126. 部门选择器 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.labels.deptSelect';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门选择器', 'ui.formCreate.labels.deptSelect', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 126. 部门选择器 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.deptSelect' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门选择器', 'ui.formCreate.labels.deptSelect', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Department Selector', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 126. 部门选择器 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.deptSelect' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('部门选择器', 'ui.formCreate.labels.deptSelect', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '部门选择器', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 127. 字典选择器 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.labels.dictSelect';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典选择器', 'ui.formCreate.labels.dictSelect', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 127. 字典选择器 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.dictSelect' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典选择器', 'ui.formCreate.labels.dictSelect', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Dict Selector', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 127. 字典选择器 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.dictSelect' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典选择器', 'ui.formCreate.labels.dictSelect', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '字典选择器', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 128. 文件上传 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.labels.fileUpload';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件上传', 'ui.formCreate.labels.fileUpload', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 128. 文件上传 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.fileUpload' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件上传', 'ui.formCreate.labels.fileUpload', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'File Upload', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 128. 文件上传 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.fileUpload' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件上传', 'ui.formCreate.labels.fileUpload', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '文件上传', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 129. 单图上传 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.labels.imageUpload';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('单图上传', 'ui.formCreate.labels.imageUpload', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 129. 单图上传 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.imageUpload' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('单图上传', 'ui.formCreate.labels.imageUpload', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Image Upload', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 129. 单图上传 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.imageUpload' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('单图上传', 'ui.formCreate.labels.imageUpload', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '单图上传', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 130. 多图上传 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.labels.imagesUpload';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('多图上传', 'ui.formCreate.labels.imagesUpload', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 130. 多图上传 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.imagesUpload' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('多图上传', 'ui.formCreate.labels.imagesUpload', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Multiple Images', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 130. 多图上传 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.imagesUpload' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('多图上传', 'ui.formCreate.labels.imagesUpload', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '多图上传', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 131. 系统字段 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.labels.systemMenuTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统字段', 'ui.formCreate.labels.systemMenuTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 131. 系统字段 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.systemMenuTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统字段', 'ui.formCreate.labels.systemMenuTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'System Fields', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 131. 系统字段 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.systemMenuTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('系统字段', 'ui.formCreate.labels.systemMenuTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '系统字段', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 132. 富文本 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.labels.tinymce';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('富文本', 'ui.formCreate.labels.tinymce', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 132. 富文本 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.tinymce' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('富文本', 'ui.formCreate.labels.tinymce', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Rich Text', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 132. 富文本 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.tinymce' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('富文本', 'ui.formCreate.labels.tinymce', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '富文本', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 133. 用户选择器 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.labels.userSelect';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户选择器', 'ui.formCreate.labels.userSelect', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 133. 用户选择器 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.userSelect' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户选择器', 'ui.formCreate.labels.userSelect', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'User Selector', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 133. 用户选择器 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.labels.userSelect' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('用户选择器', 'ui.formCreate.labels.userSelect', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '用户选择器', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 134. 是否允许用户创建新条目 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.allowCreate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否允许用户创建新条目', 'ui.formCreate.props.allowCreate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 134. 是否允许用户创建新条目 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.allowCreate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否允许用户创建新条目', 'ui.formCreate.props.allowCreate', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Allow Create', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 134. 是否允许用户创建新条目 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.allowCreate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否允许用户创建新条目', 'ui.formCreate.props.allowCreate', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '是否允许用户创建新条目', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 135. 是否在选取文件后立即进行上传 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.autoUpload';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否在选取文件后立即进行上传', 'ui.formCreate.props.autoUpload', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 135. 是否在选取文件后立即进行上传 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.autoUpload' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否在选取文件后立即进行上传', 'ui.formCreate.props.autoUpload', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Auto Upload', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 135. 是否在选取文件后立即进行上传 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.autoUpload' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否在选取文件后立即进行上传', 'ui.formCreate.props.autoUpload', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '是否在选取文件后立即进行上传', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 136. autocomplete属性 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.autocomplete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('autocomplete属性', 'ui.formCreate.props.autocomplete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 136. autocomplete属性 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.autocomplete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('autocomplete属性', 'ui.formCreate.props.autocomplete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Autocomplete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 136. autocomplete属性 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.autocomplete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('autocomplete属性', 'ui.formCreate.props.autocomplete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'autocomplete 属性', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. 对于不可搜索的Select，是否在输入框获得焦点后自动弹出选项菜单 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.automaticDropdown';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对于不可搜索的Select，是否在输入框获得焦点后自动弹出选项菜单', 'ui.formCreate.props.automaticDropdown', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. 对于不可搜索的Select，是否在输入框获得焦点后自动弹出选项菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.automaticDropdown' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对于不可搜索的Select，是否在输入框获得焦点后自动弹出选项菜单', 'ui.formCreate.props.automaticDropdown', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Automatic Dropdown', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. 对于不可搜索的Select，是否在输入框获得焦点后自动弹出选项菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.automaticDropdown' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对于不可搜索的Select，是否在输入框获得焦点后自动弹出选项菜单', 'ui.formCreate.props.automaticDropdown', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '对于不可搜索的 Select，是否在输入框获得焦点后自动弹出选项菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 138. 组件边框圆角 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.borderradius';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('组件边框圆角', 'ui.formCreate.props.borderradius', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 138. 组件边框圆角 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.borderradius' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('组件边框圆角', 'ui.formCreate.props.borderradius', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Border Radius', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 138. 组件边框圆角 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.borderradius' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('组件边框圆角', 'ui.formCreate.props.borderradius', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '组件边框圆角', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 139. 是否可以清空选项 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.clearable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否可以清空选项', 'ui.formCreate.props.clearable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 139. 是否可以清空选项 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.clearable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否可以清空选项', 'ui.formCreate.props.clearable', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Clearable', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 139. 是否可以清空选项 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.clearable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否可以清空选项', 'ui.formCreate.props.clearable', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '是否可以清空选项', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 140. 多选时是否将选中值按文字的形式展示 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.collapseTags';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('多选时是否将选中值按文字的形式展示', 'ui.formCreate.props.collapseTags', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 140. 多选时是否将选中值按文字的形式展示 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.collapseTags' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('多选时是否将选中值按文字的形式展示', 'ui.formCreate.props.collapseTags', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Collapse Tags', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 140. 多选时是否将选中值按文字的形式展示 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.collapseTags' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('多选时是否将选中值按文字的形式展示', 'ui.formCreate.props.collapseTags', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '多选时是否将选中值按文字的形式展示', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 141. 组件高度 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.componentHeight';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('组件高度', 'ui.formCreate.props.componentHeight', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 141. 组件高度 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.componentHeight' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('组件高度', 'ui.formCreate.props.componentHeight', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Component Height', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 141. 组件高度 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.componentHeight' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('组件高度', 'ui.formCreate.props.componentHeight', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '组件高度', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 142. 组件宽度 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.componentWidth';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('组件宽度', 'ui.formCreate.props.componentWidth', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 142. 组件宽度 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.componentWidth' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('组件宽度', 'ui.formCreate.props.componentWidth', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Component Width', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 142. 组件宽度 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.componentWidth' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('组件宽度', 'ui.formCreate.props.componentWidth', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '组件宽度', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 143. 请求参数JSON格式 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.data';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求参数JSON格式', 'ui.formCreate.props.data', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 143. 请求参数JSON格式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.data' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求参数JSON格式', 'ui.formCreate.props.data', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Request Data (JSON)', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 143. 请求参数JSON格式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.data' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求参数JSON格式', 'ui.formCreate.props.data', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请求参数 JSON 格式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 144. 在输入框按下回车，选择第一个匹配项 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.defaultFirstOption';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('在输入框按下回车，选择第一个匹配项', 'ui.formCreate.props.defaultFirstOption', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 144. 在输入框按下回车，选择第一个匹配项 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.defaultFirstOption' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('在输入框按下回车，选择第一个匹配项', 'ui.formCreate.props.defaultFirstOption', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Default First Option', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 144. 在输入框按下回车，选择第一个匹配项 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.defaultFirstOption' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('在输入框按下回车，选择第一个匹配项', 'ui.formCreate.props.defaultFirstOption', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '在输入框按下回车，选择第一个匹配项', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 145. 字典类型 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.dictType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型', 'ui.formCreate.props.dictType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 145. 字典类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.dictType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型', 'ui.formCreate.props.dictType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Dict Type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 145. 字典类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.dictType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典类型', 'ui.formCreate.props.dictType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '字典类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 146. 是否禁用 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.disabled';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否禁用', 'ui.formCreate.props.disabled', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 146. 是否禁用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.disabled' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否禁用', 'ui.formCreate.props.disabled', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Disabled', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 146. 是否禁用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.disabled' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否禁用', 'ui.formCreate.props.disabled', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '是否禁用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 147. 拖拽上传 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.drag';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('拖拽上传', 'ui.formCreate.props.drag', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 147. 拖拽上传 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.drag' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('拖拽上传', 'ui.formCreate.props.drag', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Drag Upload', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 147. 拖拽上传 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.drag' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('拖拽上传', 'ui.formCreate.props.drag', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '拖拽上传', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 148. 大小限制(MB) (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.fileSize';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('大小限制(MB)', 'ui.formCreate.props.fileSize', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 148. 大小限制(MB) - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.fileSize' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('大小限制(MB)', 'ui.formCreate.props.fileSize', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Size Limit (MB)', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 148. 大小限制(MB) - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.fileSize' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('大小限制(MB)', 'ui.formCreate.props.fileSize', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '大小限制(MB)', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 149. 文件类型 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.fileType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件类型', 'ui.formCreate.props.fileType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 149. 文件类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.fileType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件类型', 'ui.formCreate.props.fileType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'File Type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 149. 文件类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.fileType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文件类型', 'ui.formCreate.props.fileType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '文件类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 150. 是否可搜索 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.filterable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否可搜索', 'ui.formCreate.props.filterable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 150. 是否可搜索 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.filterable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否可搜索', 'ui.formCreate.props.filterable', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Searchable', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 150. 是否可搜索 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.filterable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否可搜索', 'ui.formCreate.props.filterable', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '是否可搜索', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 151. 高度 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.height';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('高度', 'ui.formCreate.props.height', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 151. 高度 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.height' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('高度', 'ui.formCreate.props.height', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Height', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 151. 高度 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.height' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('高度', 'ui.formCreate.props.height', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '高度', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 152. 图片类型限制 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.imageType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('图片类型限制', 'ui.formCreate.props.imageType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 152. 图片类型限制 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.imageType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('图片类型限制', 'ui.formCreate.props.imageType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Image Type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 152. 图片类型限制 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.imageType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('图片类型限制', 'ui.formCreate.props.imageType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '图片类型限制', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 153. 是否显示提示 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.isShowTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否显示提示', 'ui.formCreate.props.isShowTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 153. 是否显示提示 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.isShowTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否显示提示', 'ui.formCreate.props.isShowTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Show Tip', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 153. 是否显示提示 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.isShowTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否显示提示', 'ui.formCreate.props.isShowTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '是否显示提示', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 154. label属性 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.labelField';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('label属性', 'ui.formCreate.props.labelField', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 154. label属性 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.labelField' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('label属性', 'ui.formCreate.props.labelField', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Label Field', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 154. label属性 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.labelField' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('label属性', 'ui.formCreate.props.labelField', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'label 属性', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 155. 数量限制 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.limit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数量限制', 'ui.formCreate.props.limit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 155. 数量限制 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.limit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数量限制', 'ui.formCreate.props.limit', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Count Limit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 155. 数量限制 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.limit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数量限制', 'ui.formCreate.props.limit', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '数量限制', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 156. 请求类型 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.method';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求类型', 'ui.formCreate.props.method', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 156. 请求类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.method' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求类型', 'ui.formCreate.props.method', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Request Method', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 156. 请求类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.method' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求类型', 'ui.formCreate.props.method', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请求类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 157. GET (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.methodGet';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('GET', 'ui.formCreate.props.methodGet', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 157. GET - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.methodGet' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('GET', 'ui.formCreate.props.methodGet', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'GET', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 157. GET - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.methodGet' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('GET', 'ui.formCreate.props.methodGet', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'GET', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 158. POST (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.methodPost';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('POST', 'ui.formCreate.props.methodPost', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 158. POST - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.methodPost' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('POST', 'ui.formCreate.props.methodPost', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'POST', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 158. POST - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.methodPost' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('POST', 'ui.formCreate.props.methodPost', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'POST', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 159. 是否多选 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.multiple';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否多选', 'ui.formCreate.props.multiple', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 159. 是否多选 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.multiple' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否多选', 'ui.formCreate.props.multiple', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Multiple', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 159. 是否多选 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.multiple' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否多选', 'ui.formCreate.props.multiple', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '是否多选', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 160. 多选时用户最多可以选择的项目数，为0则不限制 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.multipleLimit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('多选时用户最多可以选择的项目数，为0则不限制', 'ui.formCreate.props.multipleLimit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 160. 多选时用户最多可以选择的项目数，为0则不限制 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.multipleLimit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('多选时用户最多可以选择的项目数，为0则不限制', 'ui.formCreate.props.multipleLimit', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Multiple Limit (0 = unlimited)', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 160. 多选时用户最多可以选择的项目数，为0则不限制 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.multipleLimit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('多选时用户最多可以选择的项目数，为0则不限制', 'ui.formCreate.props.multipleLimit', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '多选时用户最多可以选择的项目数，为 0 则不限制', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 161. 选项为空时显示的文字 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.noDataText';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选项为空时显示的文字', 'ui.formCreate.props.noDataText', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 161. 选项为空时显示的文字 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.noDataText' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选项为空时显示的文字', 'ui.formCreate.props.noDataText', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'No Data Text', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 161. 选项为空时显示的文字 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.noDataText' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选项为空时显示的文字', 'ui.formCreate.props.noDataText', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '选项为空时显示的文字', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 162. 搜索条件无匹配时显示的文字 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.noMatchText';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索条件无匹配时显示的文字', 'ui.formCreate.props.noMatchText', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 162. 搜索条件无匹配时显示的文字 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.noMatchText' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索条件无匹配时显示的文字', 'ui.formCreate.props.noMatchText', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'No Match Text', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 162. 搜索条件无匹配时显示的文字 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.noMatchText' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索条件无匹配时显示的文字', 'ui.formCreate.props.noMatchText', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '搜索条件无匹配时显示的文字', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 163. 选项解析函数 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.parseFunc';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选项解析函数', 'ui.formCreate.props.parseFunc', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 163. 选项解析函数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.parseFunc' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选项解析函数', 'ui.formCreate.props.parseFunc', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Parse Function', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 163. 选项解析函数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.parseFunc' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选项解析函数', 'ui.formCreate.props.parseFunc', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '选项解析函数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 164. 占位符 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.placeholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('占位符', 'ui.formCreate.props.placeholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 164. 占位符 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.placeholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('占位符', 'ui.formCreate.props.placeholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Placeholder', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 164. 占位符 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.placeholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('占位符', 'ui.formCreate.props.placeholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '占位符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 165. 是否将弹出框插入至body元素 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.popperAppendToBody';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否将弹出框插入至body元素', 'ui.formCreate.props.popperAppendToBody', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 165. 是否将弹出框插入至body元素 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.popperAppendToBody' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否将弹出框插入至body元素', 'ui.formCreate.props.popperAppendToBody', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Popper Append To Body', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 165. 是否将弹出框插入至body元素 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.popperAppendToBody' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否将弹出框插入至body元素', 'ui.formCreate.props.popperAppendToBody', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '是否将弹出框插入至 body 元素', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 166. 是否只读 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.readonly';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否只读', 'ui.formCreate.props.readonly', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 166. 是否只读 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.readonly' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否只读', 'ui.formCreate.props.readonly', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Readonly', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 166. 是否只读 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.readonly' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否只读', 'ui.formCreate.props.readonly', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '是否只读', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 167. 其中的选项是否从服务器远程加载 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.remote';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其中的选项是否从服务器远程加载', 'ui.formCreate.props.remote', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 167. 其中的选项是否从服务器远程加载 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.remote' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其中的选项是否从服务器远程加载', 'ui.formCreate.props.remote', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Remote Loading', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 167. 其中的选项是否从服务器远程加载 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.remote' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其中的选项是否从服务器远程加载', 'ui.formCreate.props.remote', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '其中的选项是否从服务器远程加载', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 168. 请求参数 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.remoteField';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求参数', 'ui.formCreate.props.remoteField', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 168. 请求参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.remoteField' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求参数', 'ui.formCreate.props.remoteField', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Remote Field', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 168. 请求参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.remoteField' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请求参数', 'ui.formCreate.props.remoteField', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请求参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 169. 是否必填 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.required';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否必填', 'ui.formCreate.props.required', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 169. 是否必填 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.required' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否必填', 'ui.formCreate.props.required', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Required', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 169. 是否必填 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.required' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否必填', 'ui.formCreate.props.required', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '是否必填', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 170. 多选且可搜索时，是否在选中一个选项后保留当前的搜索关键词 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.reserveKeyword';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('多选且可搜索时，是否在选中一个选项后保留当前的搜索关键词', 'ui.formCreate.props.reserveKeyword', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 170. 多选且可搜索时，是否在选中一个选项后保留当前的搜索关键词 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.reserveKeyword' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('多选且可搜索时，是否在选中一个选项后保留当前的搜索关键词', 'ui.formCreate.props.reserveKeyword', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Reserve Keyword', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 170. 多选且可搜索时，是否在选中一个选项后保留当前的搜索关键词 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.reserveKeyword' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('多选且可搜索时，是否在选中一个选项后保留当前的搜索关键词', 'ui.formCreate.props.reserveKeyword', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '多选且可搜索时，是否在选中一个选项后保留当前的搜索关键词', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 171. 选择器类型 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.selectType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择器类型', 'ui.formCreate.props.selectType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 171. 选择器类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.selectType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择器类型', 'ui.formCreate.props.selectType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Selector Type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 171. 选择器类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.selectType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择器类型', 'ui.formCreate.props.selectType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '选择器类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 172. 多选框 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.selectTypeCheckbox';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('多选框', 'ui.formCreate.props.selectTypeCheckbox', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 172. 多选框 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.selectTypeCheckbox' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('多选框', 'ui.formCreate.props.selectTypeCheckbox', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Checkbox', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 172. 多选框 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.selectTypeCheckbox' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('多选框', 'ui.formCreate.props.selectTypeCheckbox', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '多选框', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 173. 单选框 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.selectTypeRadio';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('单选框', 'ui.formCreate.props.selectTypeRadio', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 173. 单选框 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.selectTypeRadio' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('单选框', 'ui.formCreate.props.selectTypeRadio', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Radio', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 173. 单选框 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.selectTypeRadio' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('单选框', 'ui.formCreate.props.selectTypeRadio', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '单选框', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 174. 下拉框 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.selectTypeSelect';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('下拉框', 'ui.formCreate.props.selectTypeSelect', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 174. 下拉框 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.selectTypeSelect' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('下拉框', 'ui.formCreate.props.selectTypeSelect', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Dropdown', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 174. 下拉框 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.selectTypeSelect' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('下拉框', 'ui.formCreate.props.selectTypeSelect', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '下拉框', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 175. 是否显示按钮文字 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.showBtnText';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否显示按钮文字', 'ui.formCreate.props.showBtnText', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 175. 是否显示按钮文字 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.showBtnText' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否显示按钮文字', 'ui.formCreate.props.showBtnText', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Show Button Text', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 175. 是否显示按钮文字 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.showBtnText' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否显示按钮文字', 'ui.formCreate.props.showBtnText', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '是否显示按钮文字', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 176. 是否显示删除按钮 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.showDeleteButton';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否显示删除按钮', 'ui.formCreate.props.showDeleteButton', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 176. 是否显示删除按钮 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.showDeleteButton' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否显示删除按钮', 'ui.formCreate.props.showDeleteButton', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Show Delete Button', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 176. 是否显示删除按钮 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.showDeleteButton' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否显示删除按钮', 'ui.formCreate.props.showDeleteButton', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '是否显示删除按钮', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 177. url地址 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.url';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('url地址', 'ui.formCreate.props.url', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 177. url地址 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.url' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('url地址', 'ui.formCreate.props.url', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'URL', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 177. url地址 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.url' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('url地址', 'ui.formCreate.props.url', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'url 地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 178. value属性 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.valueField';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('value属性', 'ui.formCreate.props.valueField', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 178. value属性 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.valueField' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('value属性', 'ui.formCreate.props.valueField', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Value Field', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 178. value属性 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.valueField' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('value属性', 'ui.formCreate.props.valueField', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'value 属性', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 179. 字典值类型 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.valueType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典值类型', 'ui.formCreate.props.valueType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 179. 字典值类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.valueType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典值类型', 'ui.formCreate.props.valueType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Dict Value Type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 179. 字典值类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.valueType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字典值类型', 'ui.formCreate.props.valueType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '字典值类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 180. 布尔值 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.valueTypeBool';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('布尔值', 'ui.formCreate.props.valueTypeBool', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 180. 布尔值 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.valueTypeBool' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('布尔值', 'ui.formCreate.props.valueTypeBool', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Boolean', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 180. 布尔值 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.valueTypeBool' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('布尔值', 'ui.formCreate.props.valueTypeBool', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '布尔值', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 181. 数字 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.valueTypeInt';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数字', 'ui.formCreate.props.valueTypeInt', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 181. 数字 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.valueTypeInt' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数字', 'ui.formCreate.props.valueTypeInt', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Number', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 181. 数字 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.valueTypeInt' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数字', 'ui.formCreate.props.valueTypeInt', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '数字', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 182. 字符串 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formCreate.props.valueTypeStr';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字符串', 'ui.formCreate.props.valueTypeStr', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 182. 字符串 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.valueTypeStr' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字符串', 'ui.formCreate.props.valueTypeStr', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'String', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 182. 字符串 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formCreate.props.valueTypeStr' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('字符串', 'ui.formCreate.props.valueTypeStr', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '字符串', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 183. {0}`{1}`已存在 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formRules.alreadyExists';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}`{1}`已存在', 'ui.formRules.alreadyExists', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 183. {0}`{1}`已存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.alreadyExists' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}`{1}`已存在', 'ui.formRules.alreadyExists', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0} `{1}` already exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 183. {0}`{1}`已存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.alreadyExists' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}`{1}`已存在', 'ui.formRules.alreadyExists', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0} `{1}` 已存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 184. 请输入有效的链接 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formRules.invalidURL';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入有效的链接', 'ui.formRules.invalidURL', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 184. 请输入有效的链接 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.invalidURL' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入有效的链接', 'ui.formRules.invalidURL', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Please input a valid URL', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 184. 请输入有效的链接 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.invalidURL' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入有效的链接', 'ui.formRules.invalidURL', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请输入有效的链接', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 185. {0}长度必须为{1}个字符 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formRules.length';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}长度必须为{1}个字符', 'ui.formRules.length', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 185. {0}长度必须为{1}个字符 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.length' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}长度必须为{1}个字符', 'ui.formRules.length', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0} must be {1} characters long', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 185. {0}长度必须为{1}个字符 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.length' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}长度必须为{1}个字符', 'ui.formRules.length', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0}长度必须为{1}个字符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 186. {0}最多{1}个字符 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formRules.maxLength';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}最多{1}个字符', 'ui.formRules.maxLength', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 186. {0}最多{1}个字符 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.maxLength' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}最多{1}个字符', 'ui.formRules.maxLength', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0} can be at most {1} characters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 186. {0}最多{1}个字符 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.maxLength' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}最多{1}个字符', 'ui.formRules.maxLength', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0}最多{1}个字符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 187. {0}至少{1}个字符 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formRules.minLength';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}至少{1}个字符', 'ui.formRules.minLength', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 187. {0}至少{1}个字符 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.minLength' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}至少{1}个字符', 'ui.formRules.minLength', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0} must be at least {1} characters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 187. {0}至少{1}个字符 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.minLength' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}至少{1}个字符', 'ui.formRules.minLength', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0}至少{1}个字符', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 188. 请输入正确的{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formRules.mobile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入正确的{0}', 'ui.formRules.mobile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 188. 请输入正确的{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.mobile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入正确的{0}', 'ui.formRules.mobile', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Please input a valid {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 188. 请输入正确的{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.mobile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入正确的{0}', 'ui.formRules.mobile', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请输入正确的{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 189. 请输入{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formRules.required';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入{0}', 'ui.formRules.required', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 189. 请输入{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.required' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入{0}', 'ui.formRules.required', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Please enter {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 189. 请输入{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.required' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入{0}', 'ui.formRules.required', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请输入{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 190. 请选择{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formRules.selectRequired';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择{0}', 'ui.formRules.selectRequired', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 190. 请选择{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.selectRequired' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择{0}', 'ui.formRules.selectRequired', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Please select {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 190. 请选择{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.selectRequired' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择{0}', 'ui.formRules.selectRequired', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请选择{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 191. {0}必须以{1}开头 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.formRules.startWith';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}必须以{1}开头', 'ui.formRules.startWith', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 191. {0}必须以{1}开头 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.startWith' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}必须以{1}开头', 'ui.formRules.startWith', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0} must start with `{1}`', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 191. {0}必须以{1}开头 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.formRules.startWith' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}必须以{1}开头', 'ui.formRules.startWith', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0}必须以 {1} 开头', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 192. 选择一个图标 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.iconPicker.placeholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择一个图标', 'ui.iconPicker.placeholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 192. 选择一个图标 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.iconPicker.placeholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择一个图标', 'ui.iconPicker.placeholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Select an icon', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 192. 选择一个图标 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.iconPicker.placeholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择一个图标', 'ui.iconPicker.placeholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '选择一个图标', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 193. 搜索图标... (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.iconPicker.search';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索图标...', 'ui.iconPicker.search', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 193. 搜索图标... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.iconPicker.search' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索图标...', 'ui.iconPicker.search', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Search icon...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 193. 搜索图标... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.iconPicker.search' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索图标...', 'ui.iconPicker.search', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '搜索图标...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 194. 复制JSON (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.json.copyJson';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制JSON', 'ui.json.copyJson', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 194. 复制JSON - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.json.copyJson' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制JSON', 'ui.json.copyJson', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Copy JSON', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 194. 复制JSON - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.json.copyJson' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制JSON', 'ui.json.copyJson', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '复制JSON', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 195. 复制成功 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.json.copySuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制成功', 'ui.json.copySuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 195. 复制成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.json.copySuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制成功', 'ui.json.copySuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Copied', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 195. 复制成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.json.copySuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制成功', 'ui.json.copySuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '复制成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 196. 查看 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.json.view';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看', 'ui.json.view', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 196. 查看 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.json.view' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看', 'ui.json.view', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'View', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 196. 查看 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.json.view' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看', 'ui.json.view', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '查看', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 197. 已复制 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.jsonViewer.copied';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('已复制', 'ui.jsonViewer.copied', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 197. 已复制 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.jsonViewer.copied' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('已复制', 'ui.jsonViewer.copied', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Copied', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 197. 已复制 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.jsonViewer.copied' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('已复制', 'ui.jsonViewer.copied', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '已复制', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 198. 复制 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.jsonViewer.copy';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制', 'ui.jsonViewer.copy', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 198. 复制 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.jsonViewer.copy' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制', 'ui.jsonViewer.copy', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Copy', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 198. 复制 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.jsonViewer.copy' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制', 'ui.jsonViewer.copy', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '复制', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 199. 复制链接 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.link.copyLink';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制链接', 'ui.link.copyLink', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 199. 复制链接 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.link.copyLink' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制链接', 'ui.link.copyLink', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Copy Link', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 199. 复制链接 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.link.copyLink' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制链接', 'ui.link.copyLink', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '复制链接', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 200. 复制成功 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.link.copySuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制成功', 'ui.link.copySuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 200. 复制成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.link.copySuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制成功', 'ui.link.copySuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Copied', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 200. 复制成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.link.copySuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制成功', 'ui.link.copySuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '复制成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 201. 打开链接 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.link.openLink';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('打开链接', 'ui.link.openLink', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 201. 打开链接 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.link.openLink' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('打开链接', 'ui.link.openLink', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Open Link', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 201. 打开链接 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.link.openLink' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('打开链接', 'ui.link.openLink', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '打开链接', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 202. 查看 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.link.view';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看', 'ui.link.view', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 202. 查看 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.link.view' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看', 'ui.link.view', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'View', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 202. 查看 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.link.view' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看', 'ui.link.view', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '查看', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 203. 清除缓存 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.menu.clearCache';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('清除缓存', 'ui.menu.clearCache', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 203. 清除缓存 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.menu.clearCache' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('清除缓存', 'ui.menu.clearCache', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Clear Cache', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 203. 清除缓存 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.menu.clearCache' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('清除缓存', 'ui.menu.clearCache', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '清除缓存', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 204. 无 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.none';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('无', 'ui.none', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 204. 无 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.none' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('无', 'ui.none', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'None', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 204. 无 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.none' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('无', 'ui.none', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '无', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 205. OAuth2客户端 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.oauth2.client';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端', 'ui.oauth2.client', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 205. OAuth2客户端 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.oauth2.client' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端', 'ui.oauth2.client', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'OAuth2 Client', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 205. OAuth2客户端 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.oauth2.client' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2客户端', 'ui.oauth2.client', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'OAuth2 客户端', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 206. OAuth2.0（SSO单点登录） (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.oauth2.sso';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2.0（SSO单点登录）', 'ui.oauth2.sso', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 206. OAuth2.0（SSO单点登录） - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.oauth2.sso' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2.0（SSO单点登录）', 'ui.oauth2.sso', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'OAuth 2.0 (SSO Single Sign-On)', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 206. OAuth2.0（SSO单点登录） - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.oauth2.sso' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2.0（SSO单点登录）', 'ui.oauth2.sso', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'OAuth 2.0（SSO 单点登录）', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 207. OAuth2令牌 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.oauth2.token';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2令牌', 'ui.oauth2.token', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 207. OAuth2令牌 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.oauth2.token' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2令牌', 'ui.oauth2.token', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'OAuth2 Token', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 207. OAuth2令牌 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.oauth2.token' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('OAuth2令牌', 'ui.oauth2.token', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'OAuth2 令牌', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 208. 保存时自动生成 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.placeholder.autoGenerate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('保存时自动生成', 'ui.placeholder.autoGenerate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 208. 保存时自动生成 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.placeholder.autoGenerate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('保存时自动生成', 'ui.placeholder.autoGenerate', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Auto generated on save', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 208. 保存时自动生成 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.placeholder.autoGenerate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('保存时自动生成', 'ui.placeholder.autoGenerate', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '保存时自动生成', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 209. 请选择{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.placeholder.date';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择{0}', 'ui.placeholder.date', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 209. 请选择{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.placeholder.date' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择{0}', 'ui.placeholder.date', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Please select {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 209. 请选择{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.placeholder.date' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择{0}', 'ui.placeholder.date', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请选择{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 210. 请输入{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.placeholder.input';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入{0}', 'ui.placeholder.input', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 210. 请输入{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.placeholder.input' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入{0}', 'ui.placeholder.input', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Please enter {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 210. 请输入{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.placeholder.input' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入{0}', 'ui.placeholder.input', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请输入{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 211.  (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.placeholder.placeholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('', 'ui.placeholder.placeholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 211.  - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.placeholder.placeholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('', 'ui.placeholder.placeholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 211.  - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.placeholder.placeholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('', 'ui.placeholder.placeholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 212. 请选择{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.placeholder.select';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择{0}', 'ui.placeholder.select', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 212. 请选择{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.placeholder.select' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择{0}', 'ui.placeholder.select', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Please select {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 212. 请选择{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.placeholder.select' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择{0}', 'ui.placeholder.select', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请选择{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 213. 开始时间 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.rangePicker.beginTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开始时间', 'ui.rangePicker.beginTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 213. 开始时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.beginTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开始时间', 'ui.rangePicker.beginTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Begin Time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 213. 开始时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.beginTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开始时间', 'ui.rangePicker.beginTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '开始时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 214. 结束时间 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.rangePicker.endTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('结束时间', 'ui.rangePicker.endTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 214. 结束时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.endTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('结束时间', 'ui.rangePicker.endTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'End Time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 214. 结束时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.endTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('结束时间', 'ui.rangePicker.endTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '结束时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 215. 最近30天 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.rangePicker.last30Days';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最近30天', 'ui.rangePicker.last30Days', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 215. 最近30天 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.last30Days' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最近30天', 'ui.rangePicker.last30Days', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Last 30 Days', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 215. 最近30天 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.last30Days' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最近30天', 'ui.rangePicker.last30Days', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '最近 30 天', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 216. 近三月 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.rangePicker.last3Months';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('近三月', 'ui.rangePicker.last3Months', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 216. 近三月 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.last3Months' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('近三月', 'ui.rangePicker.last3Months', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Last 3 Months', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 216. 近三月 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.last3Months' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('近三月', 'ui.rangePicker.last3Months', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '近三月', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 217. 近三年 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.rangePicker.last3Years';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('近三年', 'ui.rangePicker.last3Years', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 217. 近三年 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.last3Years' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('近三年', 'ui.rangePicker.last3Years', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Last 3 Years', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 217. 近三年 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.last3Years' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('近三年', 'ui.rangePicker.last3Years', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '近三年', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 218. 最近7天 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.rangePicker.last7Days';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最近7天', 'ui.rangePicker.last7Days', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 218. 最近7天 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.last7Days' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最近7天', 'ui.rangePicker.last7Days', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Last 7 Days', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 218. 最近7天 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.last7Days' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最近7天', 'ui.rangePicker.last7Days', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '最近 7 天', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 219. 上月 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.rangePicker.lastMonth';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上月', 'ui.rangePicker.lastMonth', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 219. 上月 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.lastMonth' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上月', 'ui.rangePicker.lastMonth', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Last Month', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 219. 上月 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.lastMonth' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上月', 'ui.rangePicker.lastMonth', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '上月', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 220. 上周 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.rangePicker.lastWeek';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上周', 'ui.rangePicker.lastWeek', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 220. 上周 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.lastWeek' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上周', 'ui.rangePicker.lastWeek', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Last Week', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 220. 上周 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.lastWeek' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上周', 'ui.rangePicker.lastWeek', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '上周', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 221. 近一年 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.rangePicker.lastYear';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('近一年', 'ui.rangePicker.lastYear', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 221. 近一年 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.lastYear' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('近一年', 'ui.rangePicker.lastYear', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Last Year', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 221. 近一年 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.lastYear' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('近一年', 'ui.rangePicker.lastYear', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '近一年', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 222. 本月 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.rangePicker.thisMonth';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('本月', 'ui.rangePicker.thisMonth', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 222. 本月 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.thisMonth' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('本月', 'ui.rangePicker.thisMonth', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'This Month', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 222. 本月 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.thisMonth' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('本月', 'ui.rangePicker.thisMonth', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '本月', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 223. 本周 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.rangePicker.thisWeek';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('本周', 'ui.rangePicker.thisWeek', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 223. 本周 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.thisWeek' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('本周', 'ui.rangePicker.thisWeek', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'This Week', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 223. 本周 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.thisWeek' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('本周', 'ui.rangePicker.thisWeek', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '本周', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 224. 今天 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.rangePicker.today';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('今天', 'ui.rangePicker.today', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 224. 今天 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.today' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('今天', 'ui.rangePicker.today', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Today', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 224. 今天 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.today' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('今天', 'ui.rangePicker.today', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '今天', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 225. 昨天 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.rangePicker.yesterday';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('昨天', 'ui.rangePicker.yesterday', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 225. 昨天 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.yesterday' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('昨天', 'ui.rangePicker.yesterday', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Yesterday', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 225. 昨天 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.rangePicker.yesterday' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('昨天', 'ui.rangePicker.yesterday', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '昨天', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 226. 请选择 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.select.dictPlaceholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择', 'ui.select.dictPlaceholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 226. 请选择 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.select.dictPlaceholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择', 'ui.select.dictPlaceholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Please select', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 226. 请选择 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.select.dictPlaceholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择', 'ui.select.dictPlaceholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请选择', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 227. 请选择 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.selectToString.placeholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择', 'ui.selectToString.placeholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 227. 请选择 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.selectToString.placeholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择', 'ui.selectToString.placeholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Please select', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 227. 请选择 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.selectToString.placeholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择', 'ui.selectToString.placeholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请选择', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 228. 全屏 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.tableToolbar.fullscreen';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全屏', 'ui.tableToolbar.fullscreen', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 228. 全屏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.tableToolbar.fullscreen' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全屏', 'ui.tableToolbar.fullscreen', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Fullscreen', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 228. 全屏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.tableToolbar.fullscreen' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全屏', 'ui.tableToolbar.fullscreen', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '全屏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 229. 刷新 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.tableToolbar.refresh';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('刷新', 'ui.tableToolbar.refresh', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 229. 刷新 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.tableToolbar.refresh' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('刷新', 'ui.tableToolbar.refresh', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Refresh', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 229. 刷新 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.tableToolbar.refresh' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('刷新', 'ui.tableToolbar.refresh', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '刷新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 230. 还原 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.tableToolbar.restore';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('还原', 'ui.tableToolbar.restore', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 230. 还原 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.tableToolbar.restore' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('还原', 'ui.tableToolbar.restore', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Restore', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 230. 还原 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.tableToolbar.restore' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('还原', 'ui.tableToolbar.restore', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '还原', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 231. 搜索 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.tableToolbar.search';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索', 'ui.tableToolbar.search', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 231. 搜索 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.tableToolbar.search' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索', 'ui.tableToolbar.search', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Search', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 231. 搜索 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.tableToolbar.search' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索', 'ui.tableToolbar.search', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '搜索', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 232. 请选择租户 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.tenant.placeholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择租户', 'ui.tenant.placeholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 232. 请选择租户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.tenant.placeholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择租户', 'ui.tenant.placeholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Please select tenant', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 232. 请选择租户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.tenant.placeholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请选择租户', 'ui.tenant.placeholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请选择租户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 233. 切换租户成功 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.tenant.success';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('切换租户成功', 'ui.tenant.success', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 233. 切换租户成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.tenant.success' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('切换租户成功', 'ui.tenant.success', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Switch tenant success', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 233. 切换租户成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.tenant.success' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('切换租户成功', 'ui.tenant.success', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '切换租户成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 234. 天 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.time.day';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('天', 'ui.time.day', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 234. 天 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.time.day' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('天', 'ui.time.day', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'day', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 234. 天 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.time.day' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('天', 'ui.time.day', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '天', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 235. 小时 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.time.hour';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('小时', 'ui.time.hour', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 235. 小时 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.time.hour' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('小时', 'ui.time.hour', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'hour', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 235. 小时 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.time.hour' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('小时', 'ui.time.hour', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '小时', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 236. 分钟 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.time.minute';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('分钟', 'ui.time.minute', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 236. 分钟 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.time.minute' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('分钟', 'ui.time.minute', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'minute', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 236. 分钟 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.time.minute' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('分钟', 'ui.time.minute', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '分钟', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 237. 秒 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.time.second';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('秒', 'ui.time.second', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 237. 秒 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.time.second' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('秒', 'ui.time.second', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'second', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 237. 秒 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.time.second' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('秒', 'ui.time.second', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '秒', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 238. 顶级{0} (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.treeRoot';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('顶级{0}', 'ui.treeRoot', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 238. 顶级{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.treeRoot' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('顶级{0}', 'ui.treeRoot', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Top Level {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 238. 顶级{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.treeRoot' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('顶级{0}', 'ui.treeRoot', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '顶级{0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 239. 上传 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.upload';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传', 'ui.upload', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 239. 上传 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传', 'ui.upload', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 239. 上传 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传', 'ui.upload', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '上传', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 240. 上传-支持{0}格式 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.upload.accept';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-支持{0}格式', 'ui.upload.accept', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 240. 上传-支持{0}格式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.accept' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-支持{0}格式', 'ui.upload.accept', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Support {0} format', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 240. 上传-支持{0}格式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.accept' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-支持{0}格式', 'ui.upload.accept', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '支持{0}格式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 241. 上传-只能上传{0}格式文件 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.upload.acceptUpload';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-只能上传{0}格式文件', 'ui.upload.acceptUpload', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 241. 上传-只能上传{0}格式文件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.acceptUpload' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-只能上传{0}格式文件', 'ui.upload.acceptUpload', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Only upload files in {0} format', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 241. 上传-只能上传{0}格式文件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.acceptUpload' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-只能上传{0}格式文件', 'ui.upload.acceptUpload', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '只能上传{0}格式文件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 242. 上传-图片上传 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.upload.imgUpload';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-图片上传', 'ui.upload.imgUpload', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 242. 上传-图片上传 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.imgUpload' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-图片上传', 'ui.upload.imgUpload', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'ImageUpload', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 242. 上传-图片上传 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.imgUpload' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-图片上传', 'ui.upload.imgUpload', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '图片上传', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 243. 上传-最多只能上传{0}个文件 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.upload.maxNumber';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-最多只能上传{0}个文件', 'ui.upload.maxNumber', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 243. 上传-最多只能上传{0}个文件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.maxNumber' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-最多只能上传{0}个文件', 'ui.upload.maxNumber', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Only upload up to {0} files', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 243. 上传-最多只能上传{0}个文件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.maxNumber' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-最多只能上传{0}个文件', 'ui.upload.maxNumber', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '最多只能上传{0}个文件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 244. 上传-单个文件不超过{0}MB (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.upload.maxSize';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-单个文件不超过{0}MB', 'ui.upload.maxSize', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 244. 上传-单个文件不超过{0}MB - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.maxSize' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-单个文件不超过{0}MB', 'ui.upload.maxSize', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'A single file does not exceed {0}MB', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 244. 上传-单个文件不超过{0}MB - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.maxSize' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-单个文件不超过{0}MB', 'ui.upload.maxSize', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '单个文件不超过{0}MB', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 245. 上传-只能上传不超过{0}MB的文件! (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.upload.maxSizeMultiple';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-只能上传不超过{0}MB的文件!', 'ui.upload.maxSizeMultiple', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 245. 上传-只能上传不超过{0}MB的文件! - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.maxSizeMultiple' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-只能上传不超过{0}MB的文件!', 'ui.upload.maxSizeMultiple', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Only upload files up to {0}MB!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 245. 上传-只能上传不超过{0}MB的文件! - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.maxSizeMultiple' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-只能上传不超过{0}MB的文件!', 'ui.upload.maxSizeMultiple', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '只能上传不超过{0}MB的文件!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 246. 上传-单个文件不小于{0}MB (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.upload.minSize';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-单个文件不小于{0}MB', 'ui.upload.minSize', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 246. 上传-单个文件不小于{0}MB - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.minSize' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-单个文件不小于{0}MB', 'ui.upload.minSize', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'A single file no smaller than {0}MB', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 246. 上传-单个文件不小于{0}MB - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.minSize' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-单个文件不小于{0}MB', 'ui.upload.minSize', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '单个文件不小于{0}MB', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 247. 上传-只能上传不小于{0}MB的文件! (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.upload.minSizeMultiple';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-只能上传不小于{0}MB的文件!', 'ui.upload.minSizeMultiple', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 247. 上传-只能上传不小于{0}MB的文件! - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.minSizeMultiple' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-只能上传不小于{0}MB的文件!', 'ui.upload.minSizeMultiple', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Only upload files no smaller than {0}MB!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 247. 上传-只能上传不小于{0}MB的文件! - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.minSizeMultiple' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-只能上传不小于{0}MB的文件!', 'ui.upload.minSizeMultiple', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '只能上传不小于{0}MB的文件!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 248. 上传 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.upload.upload';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传', 'ui.upload.upload', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 248. 上传 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.upload' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传', 'ui.upload.upload', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Upload', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 248. 上传 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.upload' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传', 'ui.upload.upload', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '上传', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 249. 上传-上传成功 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.upload.uploadSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-上传成功', 'ui.upload.uploadSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 249. 上传-上传成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.uploadSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-上传成功', 'ui.upload.uploadSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Upload successfully', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 249. 上传-上传成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.upload.uploadSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('上传-上传成功', 'ui.upload.uploadSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '上传成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 250. 请输入正确的邮箱地址 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.validate.email';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入正确的邮箱地址', 'ui.validate.email', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 250. 请输入正确的邮箱地址 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.validate.email' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入正确的邮箱地址', 'ui.validate.email', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Please enter a valid email address', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 250. 请输入正确的邮箱地址 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.validate.email' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入正确的邮箱地址', 'ui.validate.email', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请输入正确的邮箱地址', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 251. {0}不能为空 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.validation.required';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}不能为空', 'ui.validation.required', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 251. {0}不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.validation.required' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}不能为空', 'ui.validation.required', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0} cannot be empty', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 251. {0}不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.validation.required' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}不能为空', 'ui.validation.required', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '{0}不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 252. 点击刷新以获取最新版本 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.checkUpdatesDescription';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击刷新以获取最新版本', 'ui.widgets.checkUpdatesDescription', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 252. 点击刷新以获取最新版本 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.checkUpdatesDescription' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击刷新以获取最新版本', 'ui.widgets.checkUpdatesDescription', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Click to refresh and get the latest version', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 252. 点击刷新以获取最新版本 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.checkUpdatesDescription' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击刷新以获取最新版本', 'ui.widgets.checkUpdatesDescription', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '点击刷新以获取最新版本', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 253. 新版本可用 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.checkUpdatesTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('新版本可用', 'ui.widgets.checkUpdatesTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 253. 新版本可用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.checkUpdatesTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('新版本可用', 'ui.widgets.checkUpdatesTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'New Version Available', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 253. 新版本可用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.checkUpdatesTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('新版本可用', 'ui.widgets.checkUpdatesTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '新版本可用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 254. 清空 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.clearNotifications';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('清空', 'ui.widgets.clearNotifications', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 254. 清空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.clearNotifications' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('清空', 'ui.widgets.clearNotifications', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Clear', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 254. 清空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.clearNotifications' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('清空', 'ui.widgets.clearNotifications', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '清空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 255. 文档 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.document';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文档', 'ui.widgets.document', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 255. 文档 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.document' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文档', 'ui.widgets.document', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Document', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 255. 文档 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.document' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('文档', 'ui.widgets.document', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '文档', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 256. 返回登录 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.lockScreen.backToLogin';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('返回登录', 'ui.widgets.lockScreen.backToLogin', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 256. 返回登录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.lockScreen.backToLogin' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('返回登录', 'ui.widgets.lockScreen.backToLogin', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Back to login', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 256. 返回登录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.lockScreen.backToLogin' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('返回登录', 'ui.widgets.lockScreen.backToLogin', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '返回登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 257. 进入系统 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.lockScreen.entry';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('进入系统', 'ui.widgets.lockScreen.entry', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 257. 进入系统 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.lockScreen.entry' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('进入系统', 'ui.widgets.lockScreen.entry', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Enter the system', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 257. 进入系统 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.lockScreen.entry' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('进入系统', 'ui.widgets.lockScreen.entry', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '进入系统', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 258. 密码错误，请重新输入 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.lockScreen.errorPasswordTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('密码错误，请重新输入', 'ui.widgets.lockScreen.errorPasswordTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 258. 密码错误，请重新输入 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.lockScreen.errorPasswordTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('密码错误，请重新输入', 'ui.widgets.lockScreen.errorPasswordTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Password error, please re-enter', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 258. 密码错误，请重新输入 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.lockScreen.errorPasswordTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('密码错误，请重新输入', 'ui.widgets.lockScreen.errorPasswordTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '密码错误，请重新输入', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 259. 密码 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.lockScreen.password';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('密码', 'ui.widgets.lockScreen.password', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 259. 密码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.lockScreen.password' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('密码', 'ui.widgets.lockScreen.password', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 259. 密码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.lockScreen.password' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('密码', 'ui.widgets.lockScreen.password', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 260. 请输入锁屏密码 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.lockScreen.placeholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入锁屏密码', 'ui.widgets.lockScreen.placeholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 260. 请输入锁屏密码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.lockScreen.placeholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入锁屏密码', 'ui.widgets.lockScreen.placeholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Please enter password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 260. 请输入锁屏密码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.lockScreen.placeholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入锁屏密码', 'ui.widgets.lockScreen.placeholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '请输入锁屏密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 261. 锁定 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.lockScreen.screenButton';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('锁定', 'ui.widgets.lockScreen.screenButton', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 261. 锁定 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.lockScreen.screenButton' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('锁定', 'ui.widgets.lockScreen.screenButton', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Locking', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 261. 锁定 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.lockScreen.screenButton' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('锁定', 'ui.widgets.lockScreen.screenButton', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '锁定', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 262. 锁定屏幕 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.lockScreen.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('锁定屏幕', 'ui.widgets.lockScreen.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 262. 锁定屏幕 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.lockScreen.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('锁定屏幕', 'ui.widgets.lockScreen.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Lock Screen', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 262. 锁定屏幕 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.lockScreen.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('锁定屏幕', 'ui.widgets.lockScreen.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '锁定屏幕', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 263. 点击解锁 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.lockScreen.unlock';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击解锁', 'ui.widgets.lockScreen.unlock', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 263. 点击解锁 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.lockScreen.unlock' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击解锁', 'ui.widgets.lockScreen.unlock', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Click to unlock', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 263. 点击解锁 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.lockScreen.unlock' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击解锁', 'ui.widgets.lockScreen.unlock', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '点击解锁', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 264. 是否退出登录？ (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.logoutTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否退出登录？', 'ui.widgets.logoutTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 264. 是否退出登录？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.logoutTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否退出登录？', 'ui.widgets.logoutTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Do you want to logout?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 264. 是否退出登录？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.logoutTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('是否退出登录？', 'ui.widgets.logoutTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '是否退出登录？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 265. 全部标记为已读 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.markAllAsRead';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全部标记为已读', 'ui.widgets.markAllAsRead', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 265. 全部标记为已读 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.markAllAsRead' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全部标记为已读', 'ui.widgets.markAllAsRead', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Make All as Read', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 265. 全部标记为已读 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.markAllAsRead' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全部标记为已读', 'ui.widgets.markAllAsRead', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '全部标记为已读', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 266. 通知 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.notifications';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通知', 'ui.widgets.notifications', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 266. 通知 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.notifications' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通知', 'ui.widgets.notifications', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Notifications', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 266. 通知 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.notifications' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通知', 'ui.widgets.notifications', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '通知', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 267. 个人中心 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.profile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('个人中心', 'ui.widgets.profile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 267. 个人中心 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.profile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('个人中心', 'ui.widgets.profile', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Profile', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 267. 个人中心 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.profile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('个人中心', 'ui.widgets.profile', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '个人中心', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 268. 问题&帮助 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.qa';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('问题&帮助', 'ui.widgets.qa', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 268. 问题&帮助 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.qa' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('问题&帮助', 'ui.widgets.qa', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Q&A', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 268. 问题&帮助 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.qa' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('问题&帮助', 'ui.widgets.qa', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '问题 & 帮助', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 269. 关闭 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.search.close';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭', 'ui.widgets.search.close', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 269. 关闭 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.search.close' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭', 'ui.widgets.search.close', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Close', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 269. 关闭 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.search.close' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭', 'ui.widgets.search.close', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '关闭', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 270. 导航 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.search.navigate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导航', 'ui.widgets.search.navigate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 270. 导航 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.search.navigate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导航', 'ui.widgets.search.navigate', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Navigate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 270. 导航 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.search.navigate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导航', 'ui.widgets.search.navigate', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '导航', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 271. 没有搜索历史 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.search.noRecent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('没有搜索历史', 'ui.widgets.search.noRecent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 271. 没有搜索历史 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.search.noRecent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('没有搜索历史', 'ui.widgets.search.noRecent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'No Search History', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 271. 没有搜索历史 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.search.noRecent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('没有搜索历史', 'ui.widgets.search.noRecent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '没有搜索历史', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 272. 未找到搜索结果 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.search.noResults';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('未找到搜索结果', 'ui.widgets.search.noResults', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 272. 未找到搜索结果 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.search.noResults' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('未找到搜索结果', 'ui.widgets.search.noResults', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'No Search Results Found', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 272. 未找到搜索结果 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.search.noResults' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('未找到搜索结果', 'ui.widgets.search.noResults', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '未找到搜索结果', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 273. 搜索历史 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.search.recent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索历史', 'ui.widgets.search.recent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 273. 搜索历史 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.search.recent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索历史', 'ui.widgets.search.recent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Search History', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 273. 搜索历史 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.search.recent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索历史', 'ui.widgets.search.recent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '搜索历史', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 274. 搜索导航菜单 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.search.searchNavigate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索导航菜单', 'ui.widgets.search.searchNavigate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 274. 搜索导航菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.search.searchNavigate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索导航菜单', 'ui.widgets.search.searchNavigate', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Search Navigation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 274. 搜索导航菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.search.searchNavigate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索导航菜单', 'ui.widgets.search.searchNavigate', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '搜索导航菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 275. 选择 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.search.select';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择', 'ui.widgets.search.select', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 275. 选择 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.search.select' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择', 'ui.widgets.search.select', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Select', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 275. 选择 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.search.select' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('选择', 'ui.widgets.search.select', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '选择', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 276. 搜索 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.search.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索', 'ui.widgets.search.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 276. 搜索 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.search.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索', 'ui.widgets.search.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Search', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 276. 搜索 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.search.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('搜索', 'ui.widgets.search.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '搜索', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 277. 设置 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.setting';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('设置', 'ui.widgets.setting', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 277. 设置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.setting' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('设置', 'ui.widgets.setting', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'Settings', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 277. 设置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.setting' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('设置', 'ui.widgets.setting', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '设置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 278. 查看所有消息 (use_type=1)
DELETE FROM infra_i18n_key WHERE message_key = 'ui.widgets.viewAll';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看所有消息', 'ui.widgets.viewAll', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, @ORDER_NUM_UI, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 278. 查看所有消息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.viewAll' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看所有消息', 'ui.widgets.viewAll', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, 'View All Messages', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 278. 查看所有消息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ui.widgets.viewAll' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('查看所有消息', 'ui.widgets.viewAll', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_UI, '查看所有消息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
