-- =============================================
-- AI i18n SQL
-- Generated: 2026-05-29
-- =============================================

SET @IS_SYSTEM = 0;
SET @MODULE_TYPE = 'ai';
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

-- 1. AI聊天 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天', 'ai.chat', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI聊天 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天', 'ai.chat', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. AI聊天 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天', 'ai.chat', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 聊天', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI 聊天-新建对话 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-新建对话', 'ai.chat.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI 聊天-新建对话 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-新建对话', 'ai.chat.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'new conversation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. AI 聊天-新建对话 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-新建对话', 'ai.chat.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新建对话', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI 聊天-删除对话 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-删除对话', 'ai.chat.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI 聊天-删除对话 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-删除对话', 'ai.chat.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete conversation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. AI 聊天-删除对话 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-删除对话', 'ai.chat.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除对话', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI 聊天-AI聊天查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-AI聊天查询', 'ai.chat.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI 聊天-AI聊天查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-AI聊天查询', 'ai.chat.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query chat', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. AI 聊天-AI聊天查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-AI聊天查询', 'ai.chat.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'AI 聊天查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI 聊天-修改对话 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-修改对话', 'ai.chat.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI 聊天-修改对话 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-修改对话', 'ai.chat.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update conversation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. AI 聊天-修改对话 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-修改对话', 'ai.chat.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改对话', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI聊天 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.chat';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天', 'ai.chat.chat', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI聊天 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.chat' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天', 'ai.chat.chat', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'ai chat', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. AI聊天 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.chat' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天', 'ai.chat.chat', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 聊天', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 对话管理 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理', 'ai.chat.conversation', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 对话管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理', 'ai.chat.conversation', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 对话管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理', 'ai.chat.conversation', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '对话管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 对话管理-删除对话 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-删除对话', 'ai.chat.conversation.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 对话管理-删除对话 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-删除对话', 'ai.chat.conversation.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete conversation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 对话管理-删除对话 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-删除对话', 'ai.chat.conversation.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除对话', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 对话管理-对话查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-对话查询', 'ai.chat.conversation.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 对话管理-对话查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-对话查询', 'ai.chat.conversation.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query conversations', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 对话管理-对话查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-对话查询', 'ai.chat.conversation.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '对话查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 对话管理 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.conversation';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理', 'ai.chat.conversation.conversation', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 对话管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.conversation' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理', 'ai.chat.conversation.conversation', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'conversation management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 对话管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.conversation' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理', 'ai.chat.conversation.conversation', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '对话管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 对话管理-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-创建时间', 'ai.chat.conversation.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 对话管理-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-创建时间', 'ai.chat.conversation.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 对话管理-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-创建时间', 'ai.chat.conversation.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 对话管理-对话编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-对话编号', 'ai.chat.conversation.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 对话管理-对话编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-对话编号', 'ai.chat.conversation.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'conversation id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 对话管理-对话编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-对话编号', 'ai.chat.conversation.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '对话编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 对话管理-上下文数量 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.field.maxContexts';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-上下文数量', 'ai.chat.conversation.field.maxContexts', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 对话管理-上下文数量 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.maxContexts' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-上下文数量', 'ai.chat.conversation.field.maxContexts', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'context count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 对话管理-上下文数量 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.maxContexts' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-上下文数量', 'ai.chat.conversation.field.maxContexts', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '上下文数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 对话管理-回复数Token数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.field.maxTokens';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-回复数Token数', 'ai.chat.conversation.field.maxTokens', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 对话管理-回复数Token数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.maxTokens' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-回复数Token数', 'ai.chat.conversation.field.maxTokens', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'max tokens', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 对话管理-回复数Token数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.maxTokens' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-回复数Token数', 'ai.chat.conversation.field.maxTokens', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '回复数 Token 数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 对话管理-消息数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.field.messageCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-消息数', 'ai.chat.conversation.field.messageCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 对话管理-消息数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.messageCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-消息数', 'ai.chat.conversation.field.messageCount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'message count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 对话管理-消息数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.messageCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-消息数', 'ai.chat.conversation.field.messageCount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '消息数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 对话管理-模型标识 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.field.model';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-模型标识', 'ai.chat.conversation.field.model', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 对话管理-模型标识 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.model' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-模型标识', 'ai.chat.conversation.field.model', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'model id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 对话管理-模型标识 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.model' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-模型标识', 'ai.chat.conversation.field.model', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模型标识', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 对话管理-角色 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.field.roleName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-角色', 'ai.chat.conversation.field.roleName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 对话管理-角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.roleName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-角色', 'ai.chat.conversation.field.roleName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 对话管理-角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.roleName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-角色', 'ai.chat.conversation.field.roleName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 对话管理-系统 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.field.system';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-系统', 'ai.chat.conversation.field.system', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 对话管理-系统 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.system' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-系统', 'ai.chat.conversation.field.system', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'system', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 对话管理-系统 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.system' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-系统', 'ai.chat.conversation.field.system', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '系统', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 对话管理-温度参数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.field.temperature';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-温度参数', 'ai.chat.conversation.field.temperature', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 对话管理-温度参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.temperature' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-温度参数', 'ai.chat.conversation.field.temperature', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'temperature', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 对话管理-温度参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.temperature' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-温度参数', 'ai.chat.conversation.field.temperature', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '温度参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 对话管理-对话标题 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.field.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-对话标题', 'ai.chat.conversation.field.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 对话管理-对话标题 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-对话标题', 'ai.chat.conversation.field.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'conversation title', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 对话管理-对话标题 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-对话标题', 'ai.chat.conversation.field.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '对话标题', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 对话管理-用户 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.field.user';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-用户', 'ai.chat.conversation.field.user', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 对话管理-用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.user' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-用户', 'ai.chat.conversation.field.user', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 对话管理-用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.user' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-用户', 'ai.chat.conversation.field.user', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 对话管理-用户编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-用户编号', 'ai.chat.conversation.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 对话管理-用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-用户编号', 'ai.chat.conversation.field.userId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 对话管理-用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-用户编号', 'ai.chat.conversation.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 对话管理-对话列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-对话列表', 'ai.chat.conversation.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 对话管理-对话列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-对话列表', 'ai.chat.conversation.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'conversation list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 对话管理-对话列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理-对话列表', 'ai.chat.conversation.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '对话列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 对话管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.conversation.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理', 'ai.chat.conversation.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 对话管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理', 'ai.chat.conversation.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'conversation management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 对话管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.conversation.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('对话管理', 'ai.chat.conversation.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '对话管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. AI 聊天-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-创建时间', 'ai.chat.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. AI 聊天-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-创建时间', 'ai.chat.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. AI 聊天-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-创建时间', 'ai.chat.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. AI 聊天-对话编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-对话编号', 'ai.chat.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. AI 聊天-对话编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-对话编号', 'ai.chat.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'conversation id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. AI 聊天-对话编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-对话编号', 'ai.chat.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '对话编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. AI 聊天-上下文数量 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.field.maxContexts';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-上下文数量', 'ai.chat.field.maxContexts', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. AI 聊天-上下文数量 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.maxContexts' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-上下文数量', 'ai.chat.field.maxContexts', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'context count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. AI 聊天-上下文数量 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.maxContexts' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-上下文数量', 'ai.chat.field.maxContexts', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '上下文数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. AI 聊天-回复数Token数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.field.maxTokens';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-回复数Token数', 'ai.chat.field.maxTokens', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. AI 聊天-回复数Token数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.maxTokens' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-回复数Token数', 'ai.chat.field.maxTokens', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'max tokens', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. AI 聊天-回复数Token数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.maxTokens' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-回复数Token数', 'ai.chat.field.maxTokens', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '回复数 Token 数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. AI 聊天-消息数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.field.messageCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-消息数', 'ai.chat.field.messageCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. AI 聊天-消息数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.messageCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-消息数', 'ai.chat.field.messageCount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'message count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. AI 聊天-消息数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.messageCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-消息数', 'ai.chat.field.messageCount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '消息数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. AI 聊天-模型标识 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.field.model';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-模型标识', 'ai.chat.field.model', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. AI 聊天-模型标识 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.model' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-模型标识', 'ai.chat.field.model', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'model id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. AI 聊天-模型标识 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.model' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-模型标识', 'ai.chat.field.model', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模型标识', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. AI 聊天-模型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.field.modelId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-模型', 'ai.chat.field.modelId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. AI 聊天-模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.modelId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-模型', 'ai.chat.field.modelId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. AI 聊天-模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.modelId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-模型', 'ai.chat.field.modelId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. AI 聊天-模型名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.field.modelName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-模型名称', 'ai.chat.field.modelName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. AI 聊天-模型名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.modelName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-模型名称', 'ai.chat.field.modelName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'model name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. AI 聊天-模型名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.modelName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-模型名称', 'ai.chat.field.modelName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模型名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. AI 聊天-是否置顶 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.field.pinned';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-是否置顶', 'ai.chat.field.pinned', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. AI 聊天-是否置顶 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.pinned' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-是否置顶', 'ai.chat.field.pinned', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'pinned', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. AI 聊天-是否置顶 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.pinned' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-是否置顶', 'ai.chat.field.pinned', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否置顶', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. AI 聊天-角色编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.field.roleId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-角色编号', 'ai.chat.field.roleId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. AI 聊天-角色编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.roleId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-角色编号', 'ai.chat.field.roleId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. AI 聊天-角色编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.roleId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-角色编号', 'ai.chat.field.roleId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. AI 聊天-角色名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.field.roleName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-角色名称', 'ai.chat.field.roleName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. AI 聊天-角色名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.roleName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-角色名称', 'ai.chat.field.roleName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. AI 聊天-角色名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.roleName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-角色名称', 'ai.chat.field.roleName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. AI 聊天-角色设定 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.field.systemMessage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-角色设定', 'ai.chat.field.systemMessage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. AI 聊天-角色设定 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.systemMessage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-角色设定', 'ai.chat.field.systemMessage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role setting', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. AI 聊天-角色设定 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.systemMessage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-角色设定', 'ai.chat.field.systemMessage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色设定', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. AI 聊天-温度参数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.field.temperature';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-温度参数', 'ai.chat.field.temperature', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. AI 聊天-温度参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.temperature' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-温度参数', 'ai.chat.field.temperature', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'temperature', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. AI 聊天-温度参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.temperature' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-温度参数', 'ai.chat.field.temperature', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '温度参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. AI 聊天-对话标题 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.field.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-对话标题', 'ai.chat.field.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. AI 聊天-对话标题 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-对话标题', 'ai.chat.field.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'conversation title', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. AI 聊天-对话标题 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-对话标题', 'ai.chat.field.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '对话标题', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. AI 聊天-更新时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.field.updateTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-更新时间', 'ai.chat.field.updateTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. AI 聊天-更新时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.updateTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-更新时间', 'ai.chat.field.updateTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'update time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. AI 聊天-更新时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.updateTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-更新时间', 'ai.chat.field.updateTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '更新时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. AI 聊天-用户编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-用户编号', 'ai.chat.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. AI 聊天-用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-用户编号', 'ai.chat.field.userId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. AI 聊天-用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-用户编号', 'ai.chat.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. AI 聊天-置顶 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.group.pinned';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-置顶', 'ai.chat.group.pinned', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. AI 聊天-置顶 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.group.pinned' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-置顶', 'ai.chat.group.pinned', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'pinned', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. AI 聊天-置顶 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.group.pinned' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-置顶', 'ai.chat.group.pinned', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '置顶', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. AI 聊天-七天前 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.group.sevenDaysAgo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-七天前', 'ai.chat.group.sevenDaysAgo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. AI 聊天-七天前 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.group.sevenDaysAgo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-七天前', 'ai.chat.group.sevenDaysAgo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '7 days ago', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. AI 聊天-七天前 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.group.sevenDaysAgo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-七天前', 'ai.chat.group.sevenDaysAgo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '七天前', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. AI 聊天-三十天前 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.group.thirtyDaysAgo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-三十天前', 'ai.chat.group.thirtyDaysAgo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. AI 聊天-三十天前 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.group.thirtyDaysAgo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-三十天前', 'ai.chat.group.thirtyDaysAgo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '30 days ago', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. AI 聊天-三十天前 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.group.thirtyDaysAgo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-三十天前', 'ai.chat.group.thirtyDaysAgo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '三十天前', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. AI 聊天-三天前 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.group.threeDaysAgo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-三天前', 'ai.chat.group.threeDaysAgo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. AI 聊天-三天前 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.group.threeDaysAgo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-三天前', 'ai.chat.group.threeDaysAgo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '3 days ago', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. AI 聊天-三天前 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.group.threeDaysAgo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-三天前', 'ai.chat.group.threeDaysAgo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '三天前', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. AI 聊天-今天 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.group.today';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-今天', 'ai.chat.group.today', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. AI 聊天-今天 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.group.today' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-今天', 'ai.chat.group.today', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'today', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. AI 聊天-今天 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.group.today' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-今天', 'ai.chat.group.today', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '今天', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. AI 聊天-一天前 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.group.yesterday';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-一天前', 'ai.chat.group.yesterday', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. AI 聊天-一天前 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.group.yesterday' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-一天前', 'ai.chat.group.yesterday', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'yesterday', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. AI 聊天-一天前 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.group.yesterday' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-一天前', 'ai.chat.group.yesterday', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '一天前', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. AI 聊天-AI聊天列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-AI聊天列表', 'ai.chat.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. AI 聊天-AI聊天列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-AI聊天列表', 'ai.chat.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'ai chat list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. AI 聊天-AI聊天列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 聊天-AI聊天列表', 'ai.chat.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'AI 聊天列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. AI聊天 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天', 'ai.chat.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. AI聊天 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天', 'ai.chat.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'ai chat', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. AI聊天 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI聊天', 'ai.chat.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'AI 聊天', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 消息管理 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理', 'ai.chat.message', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 消息管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理', 'ai.chat.message', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 消息管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理', 'ai.chat.message', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '消息管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 消息管理-删除消息 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-删除消息', 'ai.chat.message.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 消息管理-删除消息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-删除消息', 'ai.chat.message.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 消息管理-删除消息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-删除消息', 'ai.chat.message.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除消息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 消息管理-消息查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-消息查询', 'ai.chat.message.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 消息管理-消息查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-消息查询', 'ai.chat.message.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query messages', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 消息管理-消息查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-消息查询', 'ai.chat.message.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '消息查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 消息管理-添加角色 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.addRole';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-添加角色', 'ai.chat.message.addRole', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 消息管理-添加角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.addRole' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-添加角色', 'ai.chat.message.addRole', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'add role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 消息管理-添加角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.addRole' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-添加角色', 'ai.chat.message.addRole', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '添加角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 消息管理-芋道AI (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.aiBranding';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-芋道AI', 'ai.chat.message.aiBranding', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 消息管理-芋道AI - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.aiBranding' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-芋道AI', 'ai.chat.message.aiBranding', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'vden ai', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 消息管理-芋道AI - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.aiBranding' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-芋道AI', 'ai.chat.message.aiBranding', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '芋道 AI', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 消息管理-全部 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.all';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-全部', 'ai.chat.message.all', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 消息管理-全部 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.all' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-全部', 'ai.chat.message.all', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'all', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 消息管理-全部 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.all' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-全部', 'ai.chat.message.all', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '全部', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 消息管理-回答中，不能删除！ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.cannotDeleteWhileGenerating';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-回答中，不能删除！', 'ai.chat.message.cannotDeleteWhileGenerating', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 消息管理-回答中，不能删除！ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.cannotDeleteWhileGenerating' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-回答中，不能删除！', 'ai.chat.message.cannotDeleteWhileGenerating', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'answer in progress, cannot delete!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 消息管理-回答中，不能删除！ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.cannotDeleteWhileGenerating' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-回答中，不能删除！', 'ai.chat.message.cannotDeleteWhileGenerating', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '回答中，不能删除！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 消息管理-确认后对话会全部清空，置顶的对话除外。 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.clearConfirm';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-确认后对话会全部清空，置顶的对话除外。', 'ai.chat.message.clearConfirm', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 消息管理-确认后对话会全部清空，置顶的对话除外。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.clearConfirm' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-确认后对话会全部清空，置顶的对话除外。', 'ai.chat.message.clearConfirm', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'after confirmation, all conversations will be cleared except pinned ones.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 消息管理-确认后对话会全部清空，置顶的对话除外。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.clearConfirm' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-确认后对话会全部清空，置顶的对话除外。', 'ai.chat.message.clearConfirm', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '确认后对话会全部清空，置顶的对话除外。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 消息管理-清空未置顶对话 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.clearUnpinned';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-清空未置顶对话', 'ai.chat.message.clearUnpinned', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 消息管理-清空未置顶对话 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.clearUnpinned' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-清空未置顶对话', 'ai.chat.message.clearUnpinned', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'clear unpinned conversations', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 消息管理-清空未置顶对话 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.clearUnpinned' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-清空未置顶对话', 'ai.chat.message.clearUnpinned', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '清空未置顶对话', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 消息管理-确认清空对话消息？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.clearing';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-确认清空对话消息？', 'ai.chat.message.clearing', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 消息管理-确认清空对话消息？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.clearing' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-确认清空对话消息？', 'ai.chat.message.clearing', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'confirm to clear conversation messages?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 消息管理-确认清空对话消息？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.clearing' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-确认清空对话消息？', 'ai.chat.message.clearing', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '确认清空对话消息？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 消息管理-关闭 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.close';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-关闭', 'ai.chat.message.close', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 消息管理-关闭 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.close' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-关闭', 'ai.chat.message.close', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'close', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 消息管理-关闭 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.close' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-关闭', 'ai.chat.message.close', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '关闭', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 消息管理-内容摘要 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.contentSummary';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-内容摘要', 'ai.chat.message.contentSummary', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 消息管理-内容摘要 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.contentSummary' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-内容摘要', 'ai.chat.message.contentSummary', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'content summary', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 消息管理-内容摘要 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.contentSummary' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-内容摘要', 'ai.chat.message.contentSummary', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '内容摘要', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 消息管理-上下文 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.contextSwitch';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-上下文', 'ai.chat.message.contextSwitch', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 消息管理-上下文 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.contextSwitch' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-上下文', 'ai.chat.message.contextSwitch', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'context', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 消息管理-上下文 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.contextSwitch' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-上下文', 'ai.chat.message.contextSwitch', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '上下文', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 消息管理-对话异常！ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.conversationError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-对话异常！', 'ai.chat.message.conversationError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 消息管理-对话异常！ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.conversationError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-对话异常！', 'ai.chat.message.conversationError', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'conversation error!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 消息管理-对话异常！ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.conversationError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-对话异常！', 'ai.chat.message.conversationError', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '对话异常！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 消息管理-复制成功！ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.copySuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-复制成功！', 'ai.chat.message.copySuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 消息管理-复制成功！ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.copySuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-复制成功！', 'ai.chat.message.copySuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'copied!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 消息管理-复制成功！ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.copySuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-复制成功！', 'ai.chat.message.copySuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '复制成功！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 消息管理-深度思考中 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.deepThinking';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-深度思考中', 'ai.chat.message.deepThinking', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 消息管理-深度思考中 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.deepThinking' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-深度思考中', 'ai.chat.message.deepThinking', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'deep thinking', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 消息管理-深度思考中 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.deepThinking' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-深度思考中', 'ai.chat.message.deepThinking', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '深度思考中', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 消息管理-已深度思考 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.deepThoughtDone';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-已深度思考', 'ai.chat.message.deepThoughtDone', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 消息管理-已深度思考 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.deepThoughtDone' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-已深度思考', 'ai.chat.message.deepThoughtDone', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'thinking complete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 消息管理-已深度思考 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.deepThoughtDone' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-已深度思考', 'ai.chat.message.deepThoughtDone', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '已深度思考', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 消息管理-删除 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-删除', 'ai.chat.message.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 消息管理-删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-删除', 'ai.chat.message.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'delete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 消息管理-删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-删除', 'ai.chat.message.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 消息管理-是否确认删除对话-{0}？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.deleteConfirm';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-是否确认删除对话-{0}？', 'ai.chat.message.deleteConfirm', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 消息管理-是否确认删除对话-{0}？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.deleteConfirm' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-是否确认删除对话-{0}？', 'ai.chat.message.deleteConfirm', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'confirm to delete conversation - {0}?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 消息管理-是否确认删除对话-{0}？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.deleteConfirm' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-是否确认删除对话-{0}？', 'ai.chat.message.deleteConfirm', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否确认删除对话 - {0}？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 消息管理-删除成功！ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.deleteSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-删除成功！', 'ai.chat.message.deleteSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 消息管理-删除成功！ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.deleteSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-删除成功！', 'ai.chat.message.deleteSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'deleted!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 消息管理-删除成功！ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.deleteSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-删除成功！', 'ai.chat.message.deleteSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '删除成功！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 消息管理-对话已删除 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.deleted';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-对话已删除', 'ai.chat.message.deleted', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 消息管理-对话已删除 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.deleted' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-对话已删除', 'ai.chat.message.deleted', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'conversation deleted', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 消息管理-对话已删除 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.deleted' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-对话已删除', 'ai.chat.message.deleted', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '对话已删除', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 消息管理-编辑 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.edit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-编辑', 'ai.chat.message.edit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 消息管理-编辑 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.edit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-编辑', 'ai.chat.message.edit', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'edit', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 消息管理-编辑 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.edit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-编辑', 'ai.chat.message.edit', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编辑', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 消息管理-请输入标题 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.enterTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-请输入标题', 'ai.chat.message.enterTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 消息管理-请输入标题 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.enterTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-请输入标题', 'ai.chat.message.enterTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'please enter a title', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 消息管理-请输入标题 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.enterTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-请输入标题', 'ai.chat.message.enterTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入标题', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 消息管理-消息内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.field.content';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-消息内容', 'ai.chat.message.field.content', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 消息管理-消息内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.content' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-消息内容', 'ai.chat.message.field.content', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'message content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 消息管理-消息内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.content' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-消息内容', 'ai.chat.message.field.content', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '消息内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 消息管理-对话编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.field.conversationId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-对话编号', 'ai.chat.message.field.conversationId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 消息管理-对话编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.conversationId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-对话编号', 'ai.chat.message.field.conversationId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'conversation id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 消息管理-对话编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.conversationId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-对话编号', 'ai.chat.message.field.conversationId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '对话编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 消息管理-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-创建时间', 'ai.chat.message.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 消息管理-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-创建时间', 'ai.chat.message.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 消息管理-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-创建时间', 'ai.chat.message.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 消息管理-消息编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-消息编号', 'ai.chat.message.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 消息管理-消息编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-消息编号', 'ai.chat.message.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'message id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 消息管理-消息编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-消息编号', 'ai.chat.message.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '消息编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 消息管理-模型标识 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.field.model';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-模型标识', 'ai.chat.message.field.model', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 消息管理-模型标识 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.model' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-模型标识', 'ai.chat.message.field.model', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'model id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 消息管理-模型标识 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.model' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-模型标识', 'ai.chat.message.field.model', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模型标识', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 消息管理-回复消息编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.field.replyId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-回复消息编号', 'ai.chat.message.field.replyId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 消息管理-回复消息编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.replyId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-回复消息编号', 'ai.chat.message.field.replyId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'reply message id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 消息管理-回复消息编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.replyId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-回复消息编号', 'ai.chat.message.field.replyId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '回复消息编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 消息管理-角色 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.field.roleName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-角色', 'ai.chat.message.field.roleName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 消息管理-角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.roleName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-角色', 'ai.chat.message.field.roleName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 消息管理-角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.roleName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-角色', 'ai.chat.message.field.roleName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 消息管理-消息类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-消息类型', 'ai.chat.message.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 消息管理-消息类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-消息类型', 'ai.chat.message.field.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'message type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 消息管理-消息类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-消息类型', 'ai.chat.message.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '消息类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 消息管理-携带上下文 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.field.useContext';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-携带上下文', 'ai.chat.message.field.useContext', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 消息管理-携带上下文 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.useContext' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-携带上下文', 'ai.chat.message.field.useContext', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'with context', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 消息管理-携带上下文 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.useContext' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-携带上下文', 'ai.chat.message.field.useContext', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '携带上下文', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 消息管理-用户 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.field.user';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-用户', 'ai.chat.message.field.user', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 消息管理-用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.user' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-用户', 'ai.chat.message.field.user', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 消息管理-用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.user' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-用户', 'ai.chat.message.field.user', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 消息管理-用户编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-用户编号', 'ai.chat.message.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 消息管理-用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-用户编号', 'ai.chat.message.field.userId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 消息管理-用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-用户编号', 'ai.chat.message.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 消息管理-最多只能上传{0}个文件 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.fileLimit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-最多只能上传{0}个文件', 'ai.chat.message.fileLimit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 消息管理-最多只能上传{0}个文件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.fileLimit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-最多只能上传{0}个文件', 'ai.chat.message.fileLimit', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'can only upload up to {0} files', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 消息管理-最多只能上传{0}个文件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.fileLimit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-最多只能上传{0}个文件', 'ai.chat.message.fileLimit', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '最多只能上传 {0} 个文件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 消息管理-文件{0}大小超过{1}MB (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.fileSizeExceeded';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-文件{0}大小超过{1}MB', 'ai.chat.message.fileSizeExceeded', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 消息管理-文件{0}大小超过{1}MB - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.fileSizeExceeded' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-文件{0}大小超过{1}MB', 'ai.chat.message.fileSizeExceeded', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file {0} exceeds {1}mb', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 消息管理-文件{0}大小超过{1}MB - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.fileSizeExceeded' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-文件{0}大小超过{1}MB', 'ai.chat.message.fileSizeExceeded', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文件 {0} 大小超过 {1}MB', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 消息管理-文件{0}上传失败 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.fileUploadFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-文件{0}上传失败', 'ai.chat.message.fileUploadFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 消息管理-文件{0}上传失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.fileUploadFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-文件{0}上传失败', 'ai.chat.message.fileUploadFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file {0} upload failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 消息管理-文件{0}上传失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.fileUploadFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-文件{0}上传失败', 'ai.chat.message.fileUploadFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文件 {0} 上传失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 消息管理-问我任何问题...（Shift+Enter换行，按下Enter发送） (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.inputPlaceholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-问我任何问题...（Shift+Enter换行，按下Enter发送）', 'ai.chat.message.inputPlaceholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 消息管理-问我任何问题...（Shift+Enter换行，按下Enter发送） - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.inputPlaceholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-问我任何问题...（Shift+Enter换行，按下Enter发送）', 'ai.chat.message.inputPlaceholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'ask me anything... (shift+enter for new line, enter to send)', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 消息管理-问我任何问题...（Shift+Enter换行，按下Enter发送） - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.inputPlaceholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-问我任何问题...（Shift+Enter换行，按下Enter发送）', 'ai.chat.message.inputPlaceholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '问我任何问题...（Shift+Enter 换行，按下 Enter 发送）', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 消息管理-知识引用 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.knowledgeReference';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-知识引用', 'ai.chat.message.knowledgeReference', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 消息管理-知识引用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.knowledgeReference' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-知识引用', 'ai.chat.message.knowledgeReference', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'knowledge reference', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 消息管理-知识引用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.knowledgeReference' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-知识引用', 'ai.chat.message.knowledgeReference', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '知识引用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 消息管理-消息列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-消息列表', 'ai.chat.message.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 消息管理-消息列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-消息列表', 'ai.chat.message.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'message list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 消息管理-消息列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-消息列表', 'ai.chat.message.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '消息列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 消息管理 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理', 'ai.chat.message.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 消息管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理', 'ai.chat.message.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'message management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 消息管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理', 'ai.chat.message.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '消息管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 消息管理 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.message';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理', 'ai.chat.message.message', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 消息管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.message' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理', 'ai.chat.message.message', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'message management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 消息管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.message' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理', 'ai.chat.message.message', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '消息管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 消息管理-修改标题 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.modifyTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-修改标题', 'ai.chat.message.modifyTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 消息管理-修改标题 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.modifyTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-修改标题', 'ai.chat.message.modifyTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'edit title', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 消息管理-修改标题 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.modifyTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-修改标题', 'ai.chat.message.modifyTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '修改标题', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 消息管理-我的角色 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.myRole';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-我的角色', 'ai.chat.message.myRole', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 消息管理-我的角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.myRole' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-我的角色', 'ai.chat.message.myRole', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'my roles', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 消息管理-我的角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.myRole' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-我的角色', 'ai.chat.message.myRole', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '我的角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 消息管理-新建对话 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.newConversation';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-新建对话', 'ai.chat.message.newConversation', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 消息管理-新建对话 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.newConversation' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-新建对话', 'ai.chat.message.newConversation', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'new conversation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 消息管理-新建对话 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.newConversation' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-新建对话', 'ai.chat.message.newConversation', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '新建对话', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 消息管理-公共角色 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.publicRole';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-公共角色', 'ai.chat.message.publicRole', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 消息管理-公共角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.publicRole' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-公共角色', 'ai.chat.message.publicRole', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'public roles', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 消息管理-公共角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.publicRole' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-公共角色', 'ai.chat.message.publicRole', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '公共角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 消息管理-重命名成功 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.renameSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-重命名成功', 'ai.chat.message.renameSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 消息管理-重命名成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.renameSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-重命名成功', 'ai.chat.message.renameSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'rename successful', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 消息管理-重命名成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.renameSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-重命名成功', 'ai.chat.message.renameSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '重命名成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 消息管理-角色管理 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.roleManagement';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-角色管理', 'ai.chat.message.roleManagement', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 消息管理-角色管理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.roleManagement' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-角色管理', 'ai.chat.message.roleManagement', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role management', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 消息管理-角色管理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.roleManagement' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-角色管理', 'ai.chat.message.roleManagement', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色管理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 消息管理-角色仓库 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.roleRepository';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-角色仓库', 'ai.chat.message.roleRepository', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 消息管理-角色仓库 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.roleRepository' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-角色仓库', 'ai.chat.message.roleRepository', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role repository', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 消息管理-角色仓库 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.roleRepository' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-角色仓库', 'ai.chat.message.roleRepository', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色仓库', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 消息管理-搜索历史记录 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.searchHistory';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-搜索历史记录', 'ai.chat.message.searchHistory', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 消息管理-搜索历史记录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.searchHistory' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-搜索历史记录', 'ai.chat.message.searchHistory', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'search history', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 消息管理-搜索历史记录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.searchHistory' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-搜索历史记录', 'ai.chat.message.searchHistory', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '搜索历史记录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 消息管理-请输入搜索的内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.searchPlaceholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-请输入搜索的内容', 'ai.chat.message.searchPlaceholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 消息管理-请输入搜索的内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.searchPlaceholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-请输入搜索的内容', 'ai.chat.message.searchPlaceholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'enter search content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 消息管理-请输入搜索的内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.searchPlaceholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-请输入搜索的内容', 'ai.chat.message.searchPlaceholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入搜索的内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 消息管理-分段{0} (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.segment';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-分段{0}', 'ai.chat.message.segment', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 消息管理-分段{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.segment' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-分段{0}', 'ai.chat.message.segment', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'segment {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 消息管理-分段{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.segment' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-分段{0}', 'ai.chat.message.segment', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '分段 {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 消息管理-发送失败，原因：内容为空！ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.sendFailedEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-发送失败，原因：内容为空！', 'ai.chat.message.sendFailedEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 消息管理-发送失败，原因：内容为空！ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.sendFailedEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-发送失败，原因：内容为空！', 'ai.chat.message.sendFailedEmpty', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'send failed, content is empty!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 消息管理-发送失败，原因：内容为空！ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.sendFailedEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-发送失败，原因：内容为空！', 'ai.chat.message.sendFailedEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送失败，原因：内容为空！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 消息管理-还没创建对话，不能发送！ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.sendFailedNoConversation';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-还没创建对话，不能发送！', 'ai.chat.message.sendFailedNoConversation', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 消息管理-还没创建对话，不能发送！ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.sendFailedNoConversation' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-还没创建对话，不能发送！', 'ai.chat.message.sendFailedNoConversation', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'no conversation created yet, cannot send!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 消息管理-还没创建对话，不能发送！ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.sendFailedNoConversation' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-还没创建对话，不能发送！', 'ai.chat.message.sendFailedNoConversation', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '还没创建对话，不能发送！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 消息管理-进行中 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.sending';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-进行中', 'ai.chat.message.sending', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 消息管理-进行中 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.sending' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-进行中', 'ai.chat.message.sending', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'in progress', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 消息管理-进行中 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.sending' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-进行中', 'ai.chat.message.sending', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '进行中', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 消息管理-发送 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.sendingTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-发送', 'ai.chat.message.sendingTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 消息管理-发送 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.sendingTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-发送', 'ai.chat.message.sendingTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'send', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 消息管理-发送 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.sendingTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-发送', 'ai.chat.message.sendingTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发送', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 消息管理-设定 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.setting';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-设定', 'ai.chat.message.setting', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 消息管理-设定 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.setting' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-设定', 'ai.chat.message.setting', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'settings', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 消息管理-设定 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.setting' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-设定', 'ai.chat.message.setting', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '设定', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 消息管理-简短描述 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.shortDescription';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-简短描述', 'ai.chat.message.shortDescription', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 消息管理-简短描述 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.shortDescription' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-简短描述', 'ai.chat.message.shortDescription', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'brief description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 消息管理-简短描述 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.shortDescription' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-简短描述', 'ai.chat.message.shortDescription', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '简短描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 消息管理-开始你的对话吧 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.startConversation';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-开始你的对话吧', 'ai.chat.message.startConversation', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 消息管理-开始你的对话吧 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.startConversation' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-开始你的对话吧', 'ai.chat.message.startConversation', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'click the button below to start your conversation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 消息管理-开始你的对话吧 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.startConversation' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-开始你的对话吧', 'ai.chat.message.startConversation', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '开始你的对话吧', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 消息管理-停止 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.stop';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-停止', 'ai.chat.message.stop', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 消息管理-停止 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.stop' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-停止', 'ai.chat.message.stop', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'stop', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 消息管理-停止 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.stop' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-停止', 'ai.chat.message.stop', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '停止', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 消息管理-写一首好听的诗歌？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.suggestPoem';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-写一首好听的诗歌？', 'ai.chat.message.suggestPoem', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 消息管理-写一首好听的诗歌？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.suggestPoem' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-写一首好听的诗歌？', 'ai.chat.message.suggestPoem', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'write a nice poem?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 消息管理-写一首好听的诗歌？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.suggestPoem' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-写一首好听的诗歌？', 'ai.chat.message.suggestPoem', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '写一首好听的诗歌？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 消息管理-今天天气怎么样？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.suggestWeather';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-今天天气怎么样？', 'ai.chat.message.suggestWeather', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 消息管理-今天天气怎么样？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.suggestWeather' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-今天天气怎么样？', 'ai.chat.message.suggestWeather', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'how is the weather today?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 消息管理-今天天气怎么样？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.suggestWeather' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-今天天气怎么样？', 'ai.chat.message.suggestWeather', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '今天天气怎么样？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 消息管理-对话中，不允许切换！ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.switching';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-对话中，不允许切换！', 'ai.chat.message.switching', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 消息管理-对话中，不允许切换！ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.switching' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-对话中，不允许切换！', 'ai.chat.message.switching', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'conversation in progress, cannot switch!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 消息管理-对话中，不允许切换！ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.switching' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-对话中，不允许切换！', 'ai.chat.message.switching', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '对话中，不允许切换！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 消息管理-思考中... (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.thinking';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-思考中...', 'ai.chat.message.thinking', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 消息管理-思考中... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.thinking' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-思考中...', 'ai.chat.message.thinking', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'thinking...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 消息管理-思考中... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.thinking' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-思考中...', 'ai.chat.message.thinking', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '思考中...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 消息管理-请输入标题 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.titleEmpty';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-请输入标题', 'ai.chat.message.titleEmpty', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 消息管理-请输入标题 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.titleEmpty' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-请输入标题', 'ai.chat.message.titleEmpty', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'please enter a title', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 消息管理-请输入标题 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.titleEmpty' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-请输入标题', 'ai.chat.message.titleEmpty', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入标题', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 消息管理-使用 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.use';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-使用', 'ai.chat.message.use', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 消息管理-使用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.use' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-使用', 'ai.chat.message.use', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'use', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 消息管理-使用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.use' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-使用', 'ai.chat.message.use', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '使用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 消息管理-访问原文 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.visitOriginal';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-访问原文', 'ai.chat.message.visitOriginal', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 消息管理-访问原文 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.visitOriginal' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-访问原文', 'ai.chat.message.visitOriginal', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'visit original', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 消息管理-访问原文 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.visitOriginal' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-访问原文', 'ai.chat.message.visitOriginal', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '访问原文', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 消息管理-联网搜索 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.webSearch';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-联网搜索', 'ai.chat.message.webSearch', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 消息管理-联网搜索 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.webSearch' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-联网搜索', 'ai.chat.message.webSearch', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'web search', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 消息管理-联网搜索 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.webSearch' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-联网搜索', 'ai.chat.message.webSearch', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '联网搜索', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 消息管理-联网搜索详情 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.webSearchDetail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-联网搜索详情', 'ai.chat.message.webSearchDetail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 消息管理-联网搜索详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.webSearchDetail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-联网搜索详情', 'ai.chat.message.webSearchDetail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'web search detail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 消息管理-联网搜索详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.webSearchDetail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-联网搜索详情', 'ai.chat.message.webSearchDetail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '联网搜索详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 消息管理-联网搜索结果({0}条) (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.chat.message.webSearchResult';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-联网搜索结果({0}条)', 'ai.chat.message.webSearchResult', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 消息管理-联网搜索结果({0}条) - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.webSearchResult' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-联网搜索结果({0}条)', 'ai.chat.message.webSearchResult', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'web search results ({0})', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 消息管理-联网搜索结果({0}条) - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.chat.message.webSearchResult' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('消息管理-联网搜索结果({0}条)', 'ai.chat.message.webSearchResult', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '联网搜索结果 ({0} 条)', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. AI绘图 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘图', 'ai.image', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. AI绘图 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘图', 'ai.image', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. AI绘图 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘图', 'ai.image', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 绘图', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. AI 绘图-删除绘图 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-删除绘图', 'ai.image.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. AI 绘图-删除绘图 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-删除绘图', 'ai.image.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete image', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. AI 绘图-删除绘图 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-删除绘图', 'ai.image.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除绘图', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. AI 绘图-AI绘图查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-AI绘图查询', 'ai.image.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. AI 绘图-AI绘图查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-AI绘图查询', 'ai.image.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query image', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. AI 绘图-AI绘图查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-AI绘图查询', 'ai.image.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'AI 绘图查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 通用 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.common';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用', 'ai.image.common', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 通用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用', 'ai.image.common', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 通用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用', 'ai.image.common', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '通用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 通用 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.common.common';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用', 'ai.image.common.common', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 通用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.common' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用', 'ai.image.common.common', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'common', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 通用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.common' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用', 'ai.image.common.common', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '通用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 通用-高度 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.common.height';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-高度', 'ai.image.common.height', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 通用-高度 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.height' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-高度', 'ai.image.common.height', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'height', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 通用-高度 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.height' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-高度', 'ai.image.common.height', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '高度', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 125. 通用-随机热词 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.common.hotWords';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-随机热词', 'ai.image.common.hotWords', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 125. 通用-随机热词 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.hotWords' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-随机热词', 'ai.image.common.hotWords', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'hot words', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 125. 通用-随机热词 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.hotWords' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-随机热词', 'ai.image.common.hotWords', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '随机热词', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 126. 通用-模型 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.common.model';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-模型', 'ai.image.common.model', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 126. 通用-模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.model' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-模型', 'ai.image.common.model', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 126. 通用-模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.model' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-模型', 'ai.image.common.model', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 127. 通用-平台 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.common.platform';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-平台', 'ai.image.common.platform', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 127. 通用-平台 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.platform' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-平台', 'ai.image.common.platform', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'platform', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 127. 通用-平台 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.platform' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-平台', 'ai.image.common.platform', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '平台', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 128. 通用-画面描述 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.common.promptDescription';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-画面描述', 'ai.image.common.promptDescription', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 128. 通用-画面描述 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.promptDescription' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-画面描述', 'ai.image.common.promptDescription', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'prompt description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 128. 通用-画面描述 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.promptDescription' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-画面描述', 'ai.image.common.promptDescription', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '画面描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 129. 通用-建议使用"形容词+动词+风格"的格式，使用"，"隔开 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.common.promptHint';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-建议使用"形容词+动词+风格"的格式，使用"，"隔开', 'ai.image.common.promptHint', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 129. 通用-建议使用"形容词+动词+风格"的格式，使用"，"隔开 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.promptHint' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-建议使用"形容词+动词+风格"的格式，使用"，"隔开', 'ai.image.common.promptHint', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'recommend using "adjective + verb + style" format, separated by ","', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 129. 通用-建议使用"形容词+动词+风格"的格式，使用"，"隔开 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.promptHint' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-建议使用"形容词+动词+风格"的格式，使用"，"隔开', 'ai.image.common.promptHint', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '建议使用"形容词 + 动词 + 风格"的格式，使用"，"隔开', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 130. 通用-例如：童话里的小屋应该是什么样子？ (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.common.promptPlaceholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-例如：童话里的小屋应该是什么样子？', 'ai.image.common.promptPlaceholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 130. 通用-例如：童话里的小屋应该是什么样子？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.promptPlaceholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-例如：童话里的小屋应该是什么样子？', 'ai.image.common.promptPlaceholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'e.g. what should a fairy tale cottage look like?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 130. 通用-例如：童话里的小屋应该是什么样子？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.promptPlaceholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-例如：童话里的小屋应该是什么样子？', 'ai.image.common.promptPlaceholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '例如：童话里的小屋应该是什么样子？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 131. 通用-图片尺寸 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.common.size';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-图片尺寸', 'ai.image.common.size', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 131. 通用-图片尺寸 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.size' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-图片尺寸', 'ai.image.common.size', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'image size', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 131. 通用-图片尺寸 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.size' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-图片尺寸', 'ai.image.common.size', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '图片尺寸', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 132. 通用-宽度 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.common.width';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-宽度', 'ai.image.common.width', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 132. 通用-宽度 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.width' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-宽度', 'ai.image.common.width', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'width', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 132. 通用-宽度 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.common.width' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用-宽度', 'ai.image.common.width', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '宽度', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 133. DALL3绘画 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.dall3';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3绘画', 'ai.image.dall3', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 133. DALL3绘画 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.dall3' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3绘画', 'ai.image.dall3', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 133. DALL3绘画 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.dall3' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3绘画', 'ai.image.dall3', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'DALL3 绘画', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 134. DALL3绘画 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.dall3.dall3';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3绘画', 'ai.image.dall3.dall3', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 134. DALL3绘画 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.dall3.dall3' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3绘画', 'ai.image.dall3.dall3', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'dall3 image', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 134. DALL3绘画 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.dall3.dall3' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3绘画', 'ai.image.dall3.dall3', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'DALL3 绘画', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 135. DALL3 绘画-模型 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.dall3.model';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3 绘画-模型', 'ai.image.dall3.model', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 135. DALL3 绘画-模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.dall3.model' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3 绘画-模型', 'ai.image.dall3.model', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 135. DALL3 绘画-模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.dall3.model' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3 绘画-模型', 'ai.image.dall3.model', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 136. DALL3 绘画-模型选择 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.dall3.modelSelect';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3 绘画-模型选择', 'ai.image.dall3.modelSelect', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 136. DALL3 绘画-模型选择 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.dall3.modelSelect' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3 绘画-模型选择', 'ai.image.dall3.modelSelect', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'model selection', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 136. DALL3 绘画-模型选择 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.dall3.modelSelect' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3 绘画-模型选择', 'ai.image.dall3.modelSelect', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '模型选择', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. DALL3 绘画-平台 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.dall3.platform';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3 绘画-平台', 'ai.image.dall3.platform', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. DALL3 绘画-平台 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.dall3.platform' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3 绘画-平台', 'ai.image.dall3.platform', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'platform', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. DALL3 绘画-平台 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.dall3.platform' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3 绘画-平台', 'ai.image.dall3.platform', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '平台', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 138. DALL3 绘画-画面比例 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.dall3.sizeSelect';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3 绘画-画面比例', 'ai.image.dall3.sizeSelect', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 138. DALL3 绘画-画面比例 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.dall3.sizeSelect' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3 绘画-画面比例', 'ai.image.dall3.sizeSelect', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'aspect ratio', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 138. DALL3 绘画-画面比例 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.dall3.sizeSelect' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3 绘画-画面比例', 'ai.image.dall3.sizeSelect', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '画面比例', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 139. DALL3 绘画-风格选择 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.dall3.styleSelect';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3 绘画-风格选择', 'ai.image.dall3.styleSelect', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 139. DALL3 绘画-风格选择 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.dall3.styleSelect' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3 绘画-风格选择', 'ai.image.dall3.styleSelect', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'style selection', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 139. DALL3 绘画-风格选择 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.dall3.styleSelect' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('DALL3 绘画-风格选择', 'ai.image.dall3.styleSelect', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '风格选择', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 140. AI 绘图-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-创建时间', 'ai.image.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 140. AI 绘图-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-创建时间', 'ai.image.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 140. AI 绘图-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-创建时间', 'ai.image.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 141. AI 绘图-错误信息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.field.errorMessage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-错误信息', 'ai.image.field.errorMessage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 141. AI 绘图-错误信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.errorMessage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-错误信息', 'ai.image.field.errorMessage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'error message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 141. AI 绘图-错误信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.errorMessage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-错误信息', 'ai.image.field.errorMessage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '错误信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 142. AI 绘图-生成时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.field.finishTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-生成时间', 'ai.image.field.finishTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 142. AI 绘图-生成时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.finishTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-生成时间', 'ai.image.field.finishTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'finish time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 142. AI 绘图-生成时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.finishTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-生成时间', 'ai.image.field.finishTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '生成时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 143. AI 绘图-高度 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.field.height';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-高度', 'ai.image.field.height', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 143. AI 绘图-高度 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.height' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-高度', 'ai.image.field.height', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'height', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 143. AI 绘图-高度 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.height' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-高度', 'ai.image.field.height', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '高度', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 144. AI 绘图-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-编号', 'ai.image.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 144. AI 绘图-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-编号', 'ai.image.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 144. AI 绘图-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-编号', 'ai.image.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 145. AI 绘图-模型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.field.model';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-模型', 'ai.image.field.model', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 145. AI 绘图-模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.model' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-模型', 'ai.image.field.model', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 145. AI 绘图-模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.model' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-模型', 'ai.image.field.model', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 146. AI 绘图-图片 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.field.picUrl';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-图片', 'ai.image.field.picUrl', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 146. AI 绘图-图片 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.picUrl' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-图片', 'ai.image.field.picUrl', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'image', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 146. AI 绘图-图片 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.picUrl' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-图片', 'ai.image.field.picUrl', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '图片', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 147. AI 绘图-平台 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.field.platform';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-平台', 'ai.image.field.platform', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 147. AI 绘图-平台 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.platform' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-平台', 'ai.image.field.platform', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'platform', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 147. AI 绘图-平台 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.platform' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-平台', 'ai.image.field.platform', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '平台', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 148. AI 绘图-提示词 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.field.prompt';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-提示词', 'ai.image.field.prompt', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 148. AI 绘图-提示词 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.prompt' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-提示词', 'ai.image.field.prompt', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'prompt', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 148. AI 绘图-提示词 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.prompt' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-提示词', 'ai.image.field.prompt', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '提示词', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 149. AI 绘图-是否发布 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.field.publicStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-是否发布', 'ai.image.field.publicStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 149. AI 绘图-是否发布 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.publicStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-是否发布', 'ai.image.field.publicStatus', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'public status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 149. AI 绘图-是否发布 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.publicStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-是否发布', 'ai.image.field.publicStatus', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否发布', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 150. AI 绘图-绘画状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-绘画状态', 'ai.image.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 150. AI 绘图-绘画状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-绘画状态', 'ai.image.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 150. AI 绘图-绘画状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-绘画状态', 'ai.image.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '绘画状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 151. AI 绘图-提交时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.field.submitTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-提交时间', 'ai.image.field.submitTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 151. AI 绘图-提交时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.submitTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-提交时间', 'ai.image.field.submitTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'submit time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 151. AI 绘图-提交时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.submitTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-提交时间', 'ai.image.field.submitTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '提交时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 152. AI 绘图-任务编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.field.taskId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-任务编号', 'ai.image.field.taskId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 152. AI 绘图-任务编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.taskId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-任务编号', 'ai.image.field.taskId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'task id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 152. AI 绘图-任务编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.taskId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-任务编号', 'ai.image.field.taskId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '任务编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 153. AI 绘图-用户 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.field.user';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-用户', 'ai.image.field.user', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 153. AI 绘图-用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.user' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-用户', 'ai.image.field.user', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 153. AI 绘图-用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.user' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-用户', 'ai.image.field.user', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 154. AI 绘图-用户编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-用户编号', 'ai.image.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 154. AI 绘图-用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-用户编号', 'ai.image.field.userId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 154. AI 绘图-用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-用户编号', 'ai.image.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 155. AI 绘图-宽度 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.field.width';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-宽度', 'ai.image.field.width', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 155. AI 绘图-宽度 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.width' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-宽度', 'ai.image.field.width', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'width', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 155. AI 绘图-宽度 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.field.width' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-宽度', 'ai.image.field.width', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '宽度', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 156. AI绘图 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.image';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘图', 'ai.image.image', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 156. AI绘图 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.image' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘图', 'ai.image.image', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'ai image', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 156. AI绘图 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.image' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘图', 'ai.image.image', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 绘图', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 157. AI 绘图-AI绘图列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-AI绘图列表', 'ai.image.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 157. AI 绘图-AI绘图列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-AI绘图列表', 'ai.image.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'ai image list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 157. AI 绘图-AI绘图列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-AI绘图列表', 'ai.image.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'AI 绘图列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 158. AI绘图 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘图', 'ai.image.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 158. AI绘图 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘图', 'ai.image.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'ai image', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 158. AI绘图 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI绘图', 'ai.image.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'AI 绘图', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 159. AI 绘图-确认操作"{0}{1}"? (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.confirmAction';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-确认操作"{0}{1}"?', 'ai.image.message.confirmAction', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 159. AI 绘图-确认操作"{0}{1}"? - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.confirmAction' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-确认操作"{0}{1}"?', 'ai.image.message.confirmAction', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'confirm operation "{0} {1}"?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 159. AI 绘图-确认操作"{0}{1}"? - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.confirmAction' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-确认操作"{0}{1}"?', 'ai.image.message.confirmAction', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '确认操作 "{0} {1}" ?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 160. AI 绘图-是否删除照片？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.confirmDelete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-是否删除照片？', 'ai.image.message.confirmDelete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 160. AI 绘图-是否删除照片？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.confirmDelete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-是否删除照片？', 'ai.image.message.confirmDelete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'confirm to delete this image?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 160. AI 绘图-是否删除照片？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.confirmDelete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-是否删除照片？', 'ai.image.message.confirmDelete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否删除照片？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 161. AI 绘图-确认生成内容？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.confirmGenerate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-确认生成内容？', 'ai.image.message.confirmGenerate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 161. AI 绘图-确认生成内容？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.confirmGenerate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-确认生成内容？', 'ai.image.message.confirmGenerate', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'confirm to generate?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 161. AI 绘图-确认生成内容？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.confirmGenerate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-确认生成内容？', 'ai.image.message.confirmGenerate', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '确认生成内容？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 162. AI 绘图-确认要将该图片切换为【私有】吗？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.confirmPrivate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-确认要将该图片切换为【私有】吗？', 'ai.image.message.confirmPrivate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 162. AI 绘图-确认要将该图片切换为【私有】吗？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.confirmPrivate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-确认要将该图片切换为【私有】吗？', 'ai.image.message.confirmPrivate', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'confirm to make this image private?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 162. AI 绘图-确认要将该图片切换为【私有】吗？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.confirmPrivate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-确认要将该图片切换为【私有】吗？', 'ai.image.message.confirmPrivate', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '确认要将该图片切换为【私有】吗？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 163. AI 绘图-确认要将该图片切换为【公开】吗？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.confirmPublic';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-确认要将该图片切换为【公开】吗？', 'ai.image.message.confirmPublic', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 163. AI 绘图-确认要将该图片切换为【公开】吗？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.confirmPublic' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-确认要将该图片切换为【公开】吗？', 'ai.image.message.confirmPublic', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'confirm to make this image public?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 163. AI 绘图-确认要将该图片切换为【公开】吗？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.confirmPublic' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-确认要将该图片切换为【公开】吗？', 'ai.image.message.confirmPublic', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '确认要将该图片切换为【公开】吗？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 164. AI 绘图-删除成功！ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.deleteSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-删除成功！', 'ai.image.message.deleteSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 164. AI 绘图-删除成功！ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.deleteSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-删除成功！', 'ai.image.message.deleteSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'deleted!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 164. AI 绘图-删除成功！ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.deleteSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-删除成功！', 'ai.image.message.deleteSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '删除成功！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 165. AI 绘图-绘画任务 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.drawingTask';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-绘画任务', 'ai.image.message.drawingTask', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 165. AI 绘图-绘画任务 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.drawingTask' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-绘画任务', 'ai.image.message.drawingTask', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'drawing task', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 165. AI 绘图-绘画任务 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.drawingTask' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-绘画任务', 'ai.image.message.drawingTask', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '绘画任务', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 166. AI 绘图-绘画作品 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.drawingWorks';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-绘画作品', 'ai.image.message.drawingWorks', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 166. AI 绘图-绘画作品 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.drawingWorks' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-绘画作品', 'ai.image.message.drawingWorks', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'drawing works', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 166. AI 绘图-绘画作品 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.drawingWorks' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-绘画作品', 'ai.image.message.drawingWorks', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '绘画作品', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 167. AI 绘图-生成中... (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.generating';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-生成中...', 'ai.image.message.generating', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 167. AI 绘图-生成中... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.generating' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-生成中...', 'ai.image.message.generating', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'generating...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 167. AI 绘图-生成中... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.generating' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-生成中...', 'ai.image.message.generating', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '生成中...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 168. AI 绘图-生成内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.generatingContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-生成内容', 'ai.image.message.generatingContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 168. AI 绘图-生成内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.generatingContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-生成内容', 'ai.image.message.generatingContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'generate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 168. AI 绘图-生成内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.generatingContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-生成内容', 'ai.image.message.generatingContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '生成内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 169. AI 绘图-生成中 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.generatingTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-生成中', 'ai.image.message.generatingTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 169. AI 绘图-生成中 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.generatingTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-生成中', 'ai.image.message.generatingTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'generating', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 169. AI 绘图-生成中 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.generatingTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-生成中', 'ai.image.message.generatingTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '生成中', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 170. AI 绘图-图片详情 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.imageDetail';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-图片详情', 'ai.image.message.imageDetail', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 170. AI 绘图-图片详情 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.imageDetail' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-图片详情', 'ai.image.message.imageDetail', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'image detail', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 170. AI 绘图-图片详情 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.imageDetail' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-图片详情', 'ai.image.message.imageDetail', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '图片详情', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 171. AI 绘图-加载失败 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.loadFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-加载失败', 'ai.image.message.loadFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 171. AI 绘图-加载失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.loadFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-加载失败', 'ai.image.message.loadFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'load failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 171. AI 绘图-加载失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.loadFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-加载失败', 'ai.image.message.loadFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '加载失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 172. AI 绘图-该模型不可用，请选择其它模型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.modelUnavailable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-该模型不可用，请选择其它模型', 'ai.image.message.modelUnavailable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 172. AI 绘图-该模型不可用，请选择其它模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.modelUnavailable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-该模型不可用，请选择其它模型', 'ai.image.message.modelUnavailable', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'this model is not available, please select another model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 172. AI 绘图-该模型不可用，请选择其它模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.modelUnavailable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-该模型不可用，请选择其它模型', 'ai.image.message.modelUnavailable', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '该模型不可用，请选择其它模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 173. AI 绘图-暂不支持中文！ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.noChineseSupport';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-暂不支持中文！', 'ai.image.message.noChineseSupport', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 173. AI 绘图-暂不支持中文！ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.noChineseSupport' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-暂不支持中文！', 'ai.image.message.noChineseSupport', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'chinese is not supported!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 173. AI 绘图-暂不支持中文！ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.noChineseSupport' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-暂不支持中文！', 'ai.image.message.noChineseSupport', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '暂不支持中文！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 174. AI 绘图-请输入要搜索的内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.searchPlaceholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-请输入要搜索的内容', 'ai.image.message.searchPlaceholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 174. AI 绘图-请输入要搜索的内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.searchPlaceholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-请输入要搜索的内容', 'ai.image.message.searchPlaceholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'enter content to search', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 174. AI 绘图-请输入要搜索的内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.searchPlaceholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-请输入要搜索的内容', 'ai.image.message.searchPlaceholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入要搜索的内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 175. AI 绘图-共{0}条 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.totalItems';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-共{0}条', 'ai.image.message.totalItems', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 175. AI 绘图-共{0}条 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.totalItems' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-共{0}条', 'ai.image.message.totalItems', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '{0} items total', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 175. AI 绘图-共{0}条 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.totalItems' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-共{0}条', 'ai.image.message.totalItems', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '共 {0} 条', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 176. AI 绘图-查看作品 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.message.viewWorks';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-查看作品', 'ai.image.message.viewWorks', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 176. AI 绘图-查看作品 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.viewWorks' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-查看作品', 'ai.image.message.viewWorks', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'view works', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 176. AI 绘图-查看作品 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.message.viewWorks' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 绘图-查看作品', 'ai.image.message.viewWorks', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '查看作品', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 177. MJ绘画 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.midjourney';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ绘画', 'ai.image.midjourney', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 177. MJ绘画 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.midjourney' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ绘画', 'ai.image.midjourney', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 177. MJ绘画 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.midjourney' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ绘画', 'ai.image.midjourney', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'MJ 绘画', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 178. MJ绘画 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.midjourney.midjourney';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ绘画', 'ai.image.midjourney.midjourney', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 178. MJ绘画 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.midjourney.midjourney' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ绘画', 'ai.image.midjourney.midjourney', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'mj image', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 178. MJ绘画 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.midjourney.midjourney' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ绘画', 'ai.image.midjourney.midjourney', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'MJ 绘画', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 179. MJ 绘画-模型 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.midjourney.model';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ 绘画-模型', 'ai.image.midjourney.model', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 179. MJ 绘画-模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.midjourney.model' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ 绘画-模型', 'ai.image.midjourney.model', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 179. MJ 绘画-模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.midjourney.model' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ 绘画-模型', 'ai.image.midjourney.model', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 180. MJ 绘画-参考图 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.midjourney.referenceImage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ 绘画-参考图', 'ai.image.midjourney.referenceImage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 180. MJ 绘画-参考图 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.midjourney.referenceImage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ 绘画-参考图', 'ai.image.midjourney.referenceImage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'reference image', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 180. MJ 绘画-参考图 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.midjourney.referenceImage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ 绘画-参考图', 'ai.image.midjourney.referenceImage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '参考图', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 181. MJ 绘画-尺寸 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.midjourney.size';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ 绘画-尺寸', 'ai.image.midjourney.size', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 181. MJ 绘画-尺寸 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.midjourney.size' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ 绘画-尺寸', 'ai.image.midjourney.size', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'size', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 181. MJ 绘画-尺寸 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.midjourney.size' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ 绘画-尺寸', 'ai.image.midjourney.size', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '尺寸', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 182. MJ 绘画-版本 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.midjourney.version';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ 绘画-版本', 'ai.image.midjourney.version', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 182. MJ 绘画-版本 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.midjourney.version' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ 绘画-版本', 'ai.image.midjourney.version', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'version', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 182. MJ 绘画-版本 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.midjourney.version' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ 绘画-版本', 'ai.image.midjourney.version', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '版本', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 183. MJ 绘画-请选择版本 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.midjourney.versionSelect';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ 绘画-请选择版本', 'ai.image.midjourney.versionSelect', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 183. MJ 绘画-请选择版本 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.midjourney.versionSelect' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ 绘画-请选择版本', 'ai.image.midjourney.versionSelect', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'select version', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 183. MJ 绘画-请选择版本 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.midjourney.versionSelect' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('MJ 绘画-请选择版本', 'ai.image.midjourney.versionSelect', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '请选择版本', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 184. 绘图广场 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.square';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('绘图广场', 'ai.image.square', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 184. 绘图广场 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.square' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('绘图广场', 'ai.image.square', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 184. 绘图广场 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.square' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('绘图广场', 'ai.image.square', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '绘图广场', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 185. 绘图广场 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.square.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('绘图广场', 'ai.image.square.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 185. 绘图广场 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.square.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('绘图广场', 'ai.image.square.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'image square', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 185. 绘图广场 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.square.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('绘图广场', 'ai.image.square.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '绘图广场', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 186. 绘图广场-请输入要搜索的内容 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.square.searchPlaceholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('绘图广场-请输入要搜索的内容', 'ai.image.square.searchPlaceholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 186. 绘图广场-请输入要搜索的内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.square.searchPlaceholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('绘图广场-请输入要搜索的内容', 'ai.image.square.searchPlaceholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'enter content to search', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 186. 绘图广场-请输入要搜索的内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.square.searchPlaceholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('绘图广场-请输入要搜索的内容', 'ai.image.square.searchPlaceholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '请输入要搜索的内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 187. 绘图广场 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.square.square';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('绘图广场', 'ai.image.square.square', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 187. 绘图广场 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.square.square' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('绘图广场', 'ai.image.square.square', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'image square', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 187. 绘图广场 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.square.square' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('绘图广场', 'ai.image.square.square', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '绘图广场', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 188. SD绘图 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.stableDiffusion';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD绘图', 'ai.image.stableDiffusion', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 188. SD绘图 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD绘图', 'ai.image.stableDiffusion', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 188. SD绘图 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD绘图', 'ai.image.stableDiffusion', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'SD 绘图', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 189. SD 绘图-CLIP (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.stableDiffusion.clip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-CLIP', 'ai.image.stableDiffusion.clip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 189. SD 绘图-CLIP - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion.clip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-CLIP', 'ai.image.stableDiffusion.clip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'clip', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 189. SD 绘图-CLIP - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion.clip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-CLIP', 'ai.image.stableDiffusion.clip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'CLIP', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 190. SD 绘图-采样方法 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.stableDiffusion.sampler';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-采样方法', 'ai.image.stableDiffusion.sampler', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 190. SD 绘图-采样方法 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion.sampler' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-采样方法', 'ai.image.stableDiffusion.sampler', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'sampler', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 190. SD 绘图-采样方法 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion.sampler' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-采样方法', 'ai.image.stableDiffusion.sampler', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '采样方法', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 191. SD 绘图-引导系数 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.stableDiffusion.scale';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-引导系数', 'ai.image.stableDiffusion.scale', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 191. SD 绘图-引导系数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion.scale' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-引导系数', 'ai.image.stableDiffusion.scale', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'guidance scale', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 191. SD 绘图-引导系数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion.scale' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-引导系数', 'ai.image.stableDiffusion.scale', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '引导系数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 192. SD 绘图-随机因子 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.stableDiffusion.seed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-随机因子', 'ai.image.stableDiffusion.seed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 192. SD 绘图-随机因子 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion.seed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-随机因子', 'ai.image.stableDiffusion.seed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'seed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 192. SD 绘图-随机因子 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion.seed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-随机因子', 'ai.image.stableDiffusion.seed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '随机因子', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 193. SD 绘图-图片尺寸 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.stableDiffusion.size';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-图片尺寸', 'ai.image.stableDiffusion.size', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 193. SD 绘图-图片尺寸 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion.size' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-图片尺寸', 'ai.image.stableDiffusion.size', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'image size', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 193. SD 绘图-图片尺寸 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion.size' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-图片尺寸', 'ai.image.stableDiffusion.size', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '图片尺寸', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 194. SD绘图 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.stableDiffusion.stableDiffusion';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD绘图', 'ai.image.stableDiffusion.stableDiffusion', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 194. SD绘图 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion.stableDiffusion' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD绘图', 'ai.image.stableDiffusion.stableDiffusion', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'sd image', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 194. SD绘图 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion.stableDiffusion' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD绘图', 'ai.image.stableDiffusion.stableDiffusion', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'SD 绘图', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 195. SD 绘图-迭代步数 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.stableDiffusion.steps';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-迭代步数', 'ai.image.stableDiffusion.steps', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 195. SD 绘图-迭代步数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion.steps' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-迭代步数', 'ai.image.stableDiffusion.steps', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'steps', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 195. SD 绘图-迭代步数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion.steps' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-迭代步数', 'ai.image.stableDiffusion.steps', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '迭代步数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 196. SD 绘图-风格 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.image.stableDiffusion.style';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-风格', 'ai.image.stableDiffusion.style', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 196. SD 绘图-风格 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion.style' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-风格', 'ai.image.stableDiffusion.style', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'style', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 196. SD 绘图-风格 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.image.stableDiffusion.style' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('SD 绘图-风格', 'ai.image.stableDiffusion.style', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '风格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 197. AI知识库 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库', 'ai.knowledge', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 197. AI知识库 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库', 'ai.knowledge', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 197. AI知识库 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库', 'ai.knowledge', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 知识库', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 198. AI 知识库-新建知识库 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-新建知识库', 'ai.knowledge.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 198. AI 知识库-新建知识库 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-新建知识库', 'ai.knowledge.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create knowledge base', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 198. AI 知识库-新建知识库 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-新建知识库', 'ai.knowledge.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新建知识库', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 199. AI 知识库-删除知识库 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-删除知识库', 'ai.knowledge.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 199. AI 知识库-删除知识库 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-删除知识库', 'ai.knowledge.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete knowledge base', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 199. AI 知识库-删除知识库 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-删除知识库', 'ai.knowledge.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除知识库', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 200. AI 知识库-AI知识库查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-AI知识库查询', 'ai.knowledge.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 200. AI 知识库-AI知识库查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-AI知识库查询', 'ai.knowledge.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query knowledge base', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 200. AI 知识库-AI知识库查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-AI知识库查询', 'ai.knowledge.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'AI 知识库查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 201. AI 知识库-修改知识库 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-修改知识库', 'ai.knowledge.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 201. AI 知识库-修改知识库 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-修改知识库', 'ai.knowledge.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update knowledge base', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 201. AI 知识库-修改知识库 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-修改知识库', 'ai.knowledge.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改知识库', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 202. 知识库文档 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档', 'ai.knowledge.document', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 202. 知识库文档 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档', 'ai.knowledge.document', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 202. 知识库文档 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档', 'ai.knowledge.document', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '知识库文档', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 203. 知识库文档-新建文档 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-新建文档', 'ai.knowledge.document.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 203. 知识库文档-新建文档 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-新建文档', 'ai.knowledge.document.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create document', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 203. 知识库文档-新建文档 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-新建文档', 'ai.knowledge.document.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新建文档', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 204. 知识库文档-删除文档 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-删除文档', 'ai.knowledge.document.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 204. 知识库文档-删除文档 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-删除文档', 'ai.knowledge.document.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete document', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 204. 知识库文档-删除文档 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-删除文档', 'ai.knowledge.document.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除文档', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 205. 知识库文档-知识库文档查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-知识库文档查询', 'ai.knowledge.document.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 205. 知识库文档-知识库文档查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-知识库文档查询', 'ai.knowledge.document.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query documents', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 205. 知识库文档-知识库文档查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-知识库文档查询', 'ai.knowledge.document.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '知识库文档查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 206. 知识库文档-修改文档 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-修改文档', 'ai.knowledge.document.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 206. 知识库文档-修改文档 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-修改文档', 'ai.knowledge.document.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update document', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 206. 知识库文档-修改文档 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-修改文档', 'ai.knowledge.document.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改文档', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 207. 知识库文档 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.document';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档', 'ai.knowledge.document.document', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 207. 知识库文档 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.document' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档', 'ai.knowledge.document.document', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'knowledge base document', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 207. 知识库文档 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.document' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档', 'ai.knowledge.document.document', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '知识库文档', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 208. 知识库文档-字符数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.field.contentLength';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-字符数', 'ai.knowledge.document.field.contentLength', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 208. 知识库文档-字符数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.field.contentLength' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-字符数', 'ai.knowledge.document.field.contentLength', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'character count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 208. 知识库文档-字符数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.field.contentLength' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-字符数', 'ai.knowledge.document.field.contentLength', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '字符数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 209. 知识库文档-上传时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-上传时间', 'ai.knowledge.document.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 209. 知识库文档-上传时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-上传时间', 'ai.knowledge.document.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'upload time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 209. 知识库文档-上传时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-上传时间', 'ai.knowledge.document.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '上传时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 210. 知识库文档-文档编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-文档编号', 'ai.knowledge.document.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 210. 知识库文档-文档编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-文档编号', 'ai.knowledge.document.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'document id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 210. 知识库文档-文档编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-文档编号', 'ai.knowledge.document.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文档编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 211. 知识库文档-文件名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-文件名称', 'ai.knowledge.document.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 211. 知识库文档-文件名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-文件名称', 'ai.knowledge.document.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 211. 知识库文档-文件名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-文件名称', 'ai.knowledge.document.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文件名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 212. 知识库文档-召回次数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.field.retrievalCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-召回次数', 'ai.knowledge.document.field.retrievalCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 212. 知识库文档-召回次数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.field.retrievalCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-召回次数', 'ai.knowledge.document.field.retrievalCount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'retrieval count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 212. 知识库文档-召回次数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.field.retrievalCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-召回次数', 'ai.knowledge.document.field.retrievalCount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '召回次数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 213. 知识库文档-分片最大Token数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.field.segmentMaxTokens';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-分片最大Token数', 'ai.knowledge.document.field.segmentMaxTokens', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 213. 知识库文档-分片最大Token数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.field.segmentMaxTokens' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-分片最大Token数', 'ai.knowledge.document.field.segmentMaxTokens', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'max segment tokens', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 213. 知识库文档-分片最大Token数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.field.segmentMaxTokens' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-分片最大Token数', 'ai.knowledge.document.field.segmentMaxTokens', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '分片最大 Token 数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 214. 知识库文档-是否启用 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-是否启用', 'ai.knowledge.document.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 214. 知识库文档-是否启用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-是否启用', 'ai.knowledge.document.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 214. 知识库文档-是否启用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-是否启用', 'ai.knowledge.document.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否启用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 215. 知识库文档-Token数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.field.tokens';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-Token数', 'ai.knowledge.document.field.tokens', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 215. 知识库文档-Token数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.field.tokens' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-Token数', 'ai.knowledge.document.field.tokens', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'token count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 215. 知识库文档-Token数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.field.tokens' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-Token数', 'ai.knowledge.document.field.tokens', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Token 数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 216. 知识库文档-知识库文档列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-知识库文档列表', 'ai.knowledge.document.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 216. 知识库文档-知识库文档列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-知识库文档列表', 'ai.knowledge.document.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'knowledge base document list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 216. 知识库文档-知识库文档列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-知识库文档列表', 'ai.knowledge.document.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '知识库文档列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 217. 知识库文档 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档', 'ai.knowledge.document.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 217. 知识库文档 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档', 'ai.knowledge.document.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'knowledge base document', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 217. 知识库文档 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档', 'ai.knowledge.document.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '知识库文档', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 218. 知识库文档-字符数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.charCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-字符数', 'ai.knowledge.document.message.charCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 218. 知识库文档-字符数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.charCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-字符数', 'ai.knowledge.document.message.charCount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'chars', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 218. 知识库文档-字符数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.charCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-字符数', 'ai.knowledge.document.message.charCount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '字符数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 219. 知识库文档-完成 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.complete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-完成', 'ai.knowledge.document.message.complete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 219. 知识库文档-完成 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.complete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-完成', 'ai.knowledge.document.message.complete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'complete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 219. 知识库文档-完成 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.complete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-完成', 'ai.knowledge.document.message.complete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '完成', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 220. 知识库文档-创建知识库文档 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.createDocument';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-创建知识库文档', 'ai.knowledge.document.message.createDocument', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 220. 知识库文档-创建知识库文档 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.createDocument' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-创建知识库文档', 'ai.knowledge.document.message.createDocument', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create knowledge base document', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 220. 知识库文档-创建知识库文档 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.createDocument' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-创建知识库文档', 'ai.knowledge.document.message.createDocument', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建知识库文档', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 221. 知识库文档-文档分段 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.documentSplit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-文档分段', 'ai.knowledge.document.message.documentSplit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 221. 知识库文档-文档分段 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.documentSplit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-文档分段', 'ai.knowledge.document.message.documentSplit', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'document segmentation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 221. 知识库文档-文档分段 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.documentSplit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-文档分段', 'ai.knowledge.document.message.documentSplit', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文档分段', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 222. 知识库文档-拖拽文件至此，或者选择文件 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.dragOrSelectFile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-拖拽文件至此，或者选择文件', 'ai.knowledge.document.message.dragOrSelectFile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 222. 知识库文档-拖拽文件至此，或者选择文件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.dragOrSelectFile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-拖拽文件至此，或者选择文件', 'ai.knowledge.document.message.dragOrSelectFile', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'drag files here, or select files', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 222. 知识库文档-拖拽文件至此，或者选择文件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.dragOrSelectFile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-拖拽文件至此，或者选择文件', 'ai.knowledge.document.message.dragOrSelectFile', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '拖拽文件至此，或者选择文件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 223. 知识库文档-编辑知识库文档 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.editDocument';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-编辑知识库文档', 'ai.knowledge.document.message.editDocument', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 223. 知识库文档-编辑知识库文档 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.editDocument' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-编辑知识库文档', 'ai.knowledge.document.message.editDocument', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'edit knowledge base document', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 223. 知识库文档-编辑知识库文档 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.editDocument' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-编辑知识库文档', 'ai.knowledge.document.message.editDocument', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编辑知识库文档', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 224. 知识库文档-不支持的文件类型！ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.fileNotSupported';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-不支持的文件类型！', 'ai.knowledge.document.message.fileNotSupported', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 224. 知识库文档-不支持的文件类型！ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.fileNotSupported' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-不支持的文件类型！', 'ai.knowledge.document.message.fileNotSupported', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file type not supported!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 224. 知识库文档-不支持的文件类型！ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.fileNotSupported' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-不支持的文件类型！', 'ai.knowledge.document.message.fileNotSupported', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '不支持的文件类型！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 225. 知识库文档-文件大小不能超过{0}MB！ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.fileSizeExceeded';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-文件大小不能超过{0}MB！', 'ai.knowledge.document.message.fileSizeExceeded', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 225. 知识库文档-文件大小不能超过{0}MB！ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.fileSizeExceeded' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-文件大小不能超过{0}MB！', 'ai.knowledge.document.message.fileSizeExceeded', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file size cannot exceed {0} mb!', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 225. 知识库文档-文件大小不能超过{0}MB！ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.fileSizeExceeded' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-文件大小不能超过{0}MB！', 'ai.knowledge.document.message.fileSizeExceeded', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文件大小不能超过 {0} MB！', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 226. 知识库文档-文件URL不存在 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.fileUrlNotExist';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-文件URL不存在', 'ai.knowledge.document.message.fileUrlNotExist', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 226. 知识库文档-文件URL不存在 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.fileUrlNotExist' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-文件URL不存在', 'ai.knowledge.document.message.fileUrlNotExist', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'file url does not exist', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 226. 知识库文档-文件URL不存在 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.fileUrlNotExist' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-文件URL不存在', 'ai.knowledge.document.message.fileUrlNotExist', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文件 URL 不存在', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 227. 知识库文档-知识库ID不存在，无法查看文档列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.idNotFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-知识库ID不存在，无法查看文档列表', 'ai.knowledge.document.message.idNotFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 227. 知识库文档-知识库ID不存在，无法查看文档列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.idNotFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-知识库ID不存在，无法查看文档列表', 'ai.knowledge.document.message.idNotFound', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'knowledge base id not found, cannot view document list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 227. 知识库文档-知识库ID不存在，无法查看文档列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.idNotFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-知识库ID不存在，无法查看文档列表', 'ai.knowledge.document.message.idNotFound', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '知识库 ID 不存在，无法查看文档列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 228. 知识库文档-正在加载分段内容... (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.loadingSplitContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-正在加载分段内容...', 'ai.knowledge.document.message.loadingSplitContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 228. 知识库文档-正在加载分段内容... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.loadingSplitContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-正在加载分段内容...', 'ai.knowledge.document.message.loadingSplitContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'loading segmentation content...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 228. 知识库文档-正在加载分段内容... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.loadingSplitContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-正在加载分段内容...', 'ai.knowledge.document.message.loadingSplitContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '正在加载分段内容...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 229. 知识库文档-最大Token数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.maxTokenNum';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-最大Token数', 'ai.knowledge.document.message.maxTokenNum', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 229. 知识库文档-最大Token数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.maxTokenNum' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-最大Token数', 'ai.knowledge.document.message.maxTokenNum', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'max token count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 229. 知识库文档-最大Token数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.maxTokenNum' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-最大Token数', 'ai.knowledge.document.message.maxTokenNum', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '最大 Token 数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 230. 知识库文档-下一步 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.nextStep';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-下一步', 'ai.knowledge.document.message.nextStep', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 230. 知识库文档-下一步 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.nextStep' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-下一步', 'ai.knowledge.document.message.nextStep', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'next step', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 230. 知识库文档-下一步 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.nextStep' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-下一步', 'ai.knowledge.document.message.nextStep', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '下一步', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 231. 知识库文档-暂无预览内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.noPreviewContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-暂无预览内容', 'ai.knowledge.document.message.noPreviewContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 231. 知识库文档-暂无预览内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.noPreviewContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-暂无预览内容', 'ai.knowledge.document.message.noPreviewContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'no preview content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 231. 知识库文档-暂无预览内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.noPreviewContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-暂无预览内容', 'ai.knowledge.document.message.noPreviewContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '暂无预览内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 232. 知识库文档-暂无上传文件 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.noUploadedFiles';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-暂无上传文件', 'ai.knowledge.document.message.noUploadedFiles', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 232. 知识库文档-暂无上传文件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.noUploadedFiles' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-暂无上传文件', 'ai.knowledge.document.message.noUploadedFiles', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'no uploaded files', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 232. 知识库文档-暂无上传文件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.noUploadedFiles' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-暂无上传文件', 'ai.knowledge.document.message.noUploadedFiles', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '暂无上传文件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 233. 知识库文档-请先预览分段内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.pleasePreviewSplitFirst';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-请先预览分段内容', 'ai.knowledge.document.message.pleasePreviewSplitFirst', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 233. 知识库文档-请先预览分段内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.pleasePreviewSplitFirst' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-请先预览分段内容', 'ai.knowledge.document.message.pleasePreviewSplitFirst', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'please preview segmentation content first', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 233. 知识库文档-请先预览分段内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.pleasePreviewSplitFirst' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-请先预览分段内容', 'ai.knowledge.document.message.pleasePreviewSplitFirst', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请先预览分段内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 234. 知识库文档-上一步 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.prevStep';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-上一步', 'ai.knowledge.document.message.prevStep', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 234. 知识库文档-上一步 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.prevStep' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-上一步', 'ai.knowledge.document.message.prevStep', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'previous step', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 234. 知识库文档-上一步 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.prevStep' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-上一步', 'ai.knowledge.document.message.prevStep', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '上一步', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 235. 知识库文档-预览分段 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.previewSplit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-预览分段', 'ai.knowledge.document.message.previewSplit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 235. 知识库文档-预览分段 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.previewSplit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-预览分段', 'ai.knowledge.document.message.previewSplit', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'preview segmentation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 235. 知识库文档-预览分段 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.previewSplit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-预览分段', 'ai.knowledge.document.message.previewSplit', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '预览分段', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 236. 知识库文档-处理并完成 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.processAndComplete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-处理并完成', 'ai.knowledge.document.message.processAndComplete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 236. 知识库文档-处理并完成 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.processAndComplete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-处理并完成', 'ai.knowledge.document.message.processAndComplete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'process and complete', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 236. 知识库文档-处理并完成 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.processAndComplete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-处理并完成', 'ai.knowledge.document.message.processAndComplete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '处理并完成', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 237. 知识库文档-处理中... (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.processing';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-处理中...', 'ai.knowledge.document.message.processing', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 237. 知识库文档-处理中... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.processing' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-处理中...', 'ai.knowledge.document.message.processing', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'processing...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 237. 知识库文档-处理中... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.processing' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-处理中...', 'ai.knowledge.document.message.processing', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '处理中...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 238. 知识库文档-保存并处理 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.saveAndProcess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-保存并处理', 'ai.knowledge.document.message.saveAndProcess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 238. 知识库文档-保存并处理 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.saveAndProcess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-保存并处理', 'ai.knowledge.document.message.saveAndProcess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'save and process', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 238. 知识库文档-保存并处理 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.saveAndProcess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-保存并处理', 'ai.knowledge.document.message.saveAndProcess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '保存并处理', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 239. 知识库文档-保存失败 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.saveFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-保存失败', 'ai.knowledge.document.message.saveFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 239. 知识库文档-保存失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.saveFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-保存失败', 'ai.knowledge.document.message.saveFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'save failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 239. 知识库文档-保存失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.saveFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-保存失败', 'ai.knowledge.document.message.saveFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '保存失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 240. 知识库文档-分段数量 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.segmentCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-分段数量', 'ai.knowledge.document.message.segmentCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 240. 知识库文档-分段数量 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.segmentCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-分段数量', 'ai.knowledge.document.message.segmentCount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'segment count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 240. 知识库文档-分段数量 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.segmentCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-分段数量', 'ai.knowledge.document.message.segmentCount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '分段数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 241. 知识库文档-分片 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.segmentUnit';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-分片', 'ai.knowledge.document.message.segmentUnit', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 241. 知识库文档-分片 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.segmentUnit' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-分片', 'ai.knowledge.document.message.segmentUnit', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'segment', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 241. 知识库文档-分片 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.segmentUnit' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-分片', 'ai.knowledge.document.message.segmentUnit', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '分片', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 242. 知识库文档-请选择文件 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.selectFile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-请选择文件', 'ai.knowledge.document.message.selectFile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 242. 知识库文档-请选择文件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.selectFile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-请选择文件', 'ai.knowledge.document.message.selectFile', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'select a file', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 242. 知识库文档-请选择文件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.selectFile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-请选择文件', 'ai.knowledge.document.message.selectFile', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请选择文件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 243. 知识库文档-获取分段内容失败 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.splitFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-获取分段内容失败', 'ai.knowledge.document.message.splitFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 243. 知识库文档-获取分段内容失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.splitFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-获取分段内容失败', 'ai.knowledge.document.message.splitFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'failed to get segmentation content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 243. 知识库文档-获取分段内容失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.splitFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-获取分段内容失败', 'ai.knowledge.document.message.splitFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '获取分段内容失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 244. 知识库文档-分段预览 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.splitPreview';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-分段预览', 'ai.knowledge.document.message.splitPreview', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 244. 知识库文档-分段预览 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.splitPreview' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-分段预览', 'ai.knowledge.document.message.splitPreview', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'segmentation preview', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 244. 知识库文档-分段预览 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.splitPreview' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-分段预览', 'ai.knowledge.document.message.splitPreview', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '分段预览', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 245. 知识库文档-分段设置 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.splitSettings';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-分段设置', 'ai.knowledge.document.message.splitSettings', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 245. 知识库文档-分段设置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.splitSettings' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-分段设置', 'ai.knowledge.document.message.splitSettings', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'segmentation settings', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 245. 知识库文档-分段设置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.splitSettings' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-分段设置', 'ai.knowledge.document.message.splitSettings', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '分段设置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 246. 知识库文档-已支持{0}，每个文件不超过{1}MB (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.supportedTypes';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-已支持{0}，每个文件不超过{1}MB', 'ai.knowledge.document.message.supportedTypes', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 246. 知识库文档-已支持{0}，每个文件不超过{1}MB - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.supportedTypes' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-已支持{0}，每个文件不超过{1}MB', 'ai.knowledge.document.message.supportedTypes', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'supported types: {0}, each file up to {1} mb', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 246. 知识库文档-已支持{0}，每个文件不超过{1}MB - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.supportedTypes' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-已支持{0}，每个文件不超过{1}MB', 'ai.knowledge.document.message.supportedTypes', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '已支持 {0}，每个文件不超过 {1} MB', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 247. 知识库文档-确认将{0}的状态切换为【{1}】吗？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.switchConfirm';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-确认将{0}的状态切换为【{1}】吗？', 'ai.knowledge.document.message.switchConfirm', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 247. 知识库文档-确认将{0}的状态切换为【{1}】吗？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.switchConfirm' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-确认将{0}的状态切换为【{1}】吗？', 'ai.knowledge.document.message.switchConfirm', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'confirm to switch status of {0} to 【{1}】?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 247. 知识库文档-确认将{0}的状态切换为【{1}】吗？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.switchConfirm' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-确认将{0}的状态切换为【{1}】吗？', 'ai.knowledge.document.message.switchConfirm', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '确认将 {0} 的状态切换为【{1}】吗？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 248. 知识库文档-Token (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.totalTokens';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-Token', 'ai.knowledge.document.message.totalTokens', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 248. 知识库文档-Token - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.totalTokens' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-Token', 'ai.knowledge.document.message.totalTokens', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tokens', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 248. 知识库文档-Token - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.totalTokens' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-Token', 'ai.knowledge.document.message.totalTokens', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Token', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 249. 知识库文档-请上传至少一个文件 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.uploadAtLeastOne';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-请上传至少一个文件', 'ai.knowledge.document.message.uploadAtLeastOne', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 249. 知识库文档-请上传至少一个文件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.uploadAtLeastOne' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-请上传至少一个文件', 'ai.knowledge.document.message.uploadAtLeastOne', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'please upload at least one file', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 249. 知识库文档-请上传至少一个文件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.uploadAtLeastOne' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-请上传至少一个文件', 'ai.knowledge.document.message.uploadAtLeastOne', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请上传至少一个文件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 250. 知识库文档-上传文档 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.uploadDocument';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-上传文档', 'ai.knowledge.document.message.uploadDocument', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 250. 知识库文档-上传文档 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.uploadDocument' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-上传文档', 'ai.knowledge.document.message.uploadDocument', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'upload document', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 250. 知识库文档-上传文档 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.uploadDocument' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-上传文档', 'ai.knowledge.document.message.uploadDocument', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '上传文档', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 251. 知识库文档-上传成功 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.uploadSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-上传成功', 'ai.knowledge.document.message.uploadSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 251. 知识库文档-上传成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.uploadSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-上传成功', 'ai.knowledge.document.message.uploadSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'upload successful', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 251. 知识库文档-上传成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.uploadSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-上传成功', 'ai.knowledge.document.message.uploadSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '上传成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 252. 知识库文档-请等待所有文件上传完成 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.document.message.waitUploadComplete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-请等待所有文件上传完成', 'ai.knowledge.document.message.waitUploadComplete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 252. 知识库文档-请等待所有文件上传完成 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.waitUploadComplete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-请等待所有文件上传完成', 'ai.knowledge.document.message.waitUploadComplete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'please wait for all files to finish uploading', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 252. 知识库文档-请等待所有文件上传完成 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.document.message.waitUploadComplete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库文档-请等待所有文件上传完成', 'ai.knowledge.document.message.waitUploadComplete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请等待所有文件上传完成', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 253. AI 知识库-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-创建时间', 'ai.knowledge.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 253. AI 知识库-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-创建时间', 'ai.knowledge.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 253. AI 知识库-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-创建时间', 'ai.knowledge.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 254. AI 知识库-知识库描述 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.description';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-知识库描述', 'ai.knowledge.field.description', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 254. AI 知识库-知识库描述 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.description' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-知识库描述', 'ai.knowledge.field.description', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'knowledge base description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 254. AI 知识库-知识库描述 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.description' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-知识库描述', 'ai.knowledge.field.description', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '知识库描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 255. AI 知识库-向量化模型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.embeddingModel';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-向量化模型', 'ai.knowledge.field.embeddingModel', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 255. AI 知识库-向量化模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.embeddingModel' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-向量化模型', 'ai.knowledge.field.embeddingModel', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'embedding model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 255. AI 知识库-向量化模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.embeddingModel' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-向量化模型', 'ai.knowledge.field.embeddingModel', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '向量化模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 256. AI 知识库-向量模型编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.embeddingModelId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-向量模型编号', 'ai.knowledge.field.embeddingModelId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 256. AI 知识库-向量模型编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.embeddingModelId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-向量模型编号', 'ai.knowledge.field.embeddingModelId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'embedding model id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 256. AI 知识库-向量模型编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.embeddingModelId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-向量模型编号', 'ai.knowledge.field.embeddingModelId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '向量模型编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 257. AI 知识库-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-编号', 'ai.knowledge.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 257. AI 知识库-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-编号', 'ai.knowledge.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 257. AI 知识库-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-编号', 'ai.knowledge.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 258. AI 知识库-知识库名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-知识库名称', 'ai.knowledge.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 258. AI 知识库-知识库名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-知识库名称', 'ai.knowledge.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'knowledge base name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 258. AI 知识库-知识库名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-知识库名称', 'ai.knowledge.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '知识库名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 259. AI 知识库-检索相似度阈值 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.similarityThreshold';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-检索相似度阈值', 'ai.knowledge.field.similarityThreshold', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 259. AI 知识库-检索相似度阈值 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.similarityThreshold' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-检索相似度阈值', 'ai.knowledge.field.similarityThreshold', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'similarity threshold', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 259. AI 知识库-检索相似度阈值 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.similarityThreshold' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-检索相似度阈值', 'ai.knowledge.field.similarityThreshold', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '检索相似度阈值', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 260. AI 知识库-是否启用 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-是否启用', 'ai.knowledge.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 260. AI 知识库-是否启用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-是否启用', 'ai.knowledge.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 260. AI 知识库-是否启用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-是否启用', 'ai.knowledge.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否启用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 261. AI 知识库-检索topK (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.field.topK';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-检索topK', 'ai.knowledge.field.topK', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 261. AI 知识库-检索topK - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.topK' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-检索topK', 'ai.knowledge.field.topK', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'retrieval topk', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 261. AI 知识库-检索topK - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.field.topK' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-检索topK', 'ai.knowledge.field.topK', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '检索 topK', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 262. AI知识库 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.knowledge';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库', 'ai.knowledge.knowledge', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 262. AI知识库 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.knowledge' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库', 'ai.knowledge.knowledge', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'ai knowledge base', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 262. AI知识库 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.knowledge' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库', 'ai.knowledge.knowledge', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 知识库', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 263. AI 知识库-AI知识库列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-AI知识库列表', 'ai.knowledge.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 263. AI 知识库-AI知识库列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-AI知识库列表', 'ai.knowledge.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'ai knowledge base list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 263. AI 知识库-AI知识库列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-AI知识库列表', 'ai.knowledge.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'AI 知识库列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 264. AI知识库 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库', 'ai.knowledge.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 264. AI知识库 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库', 'ai.knowledge.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'ai knowledge base', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 264. AI知识库 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI知识库', 'ai.knowledge.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'AI 知识库', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 265. AI 知识库-收起 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.message.collapse';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-收起', 'ai.knowledge.message.collapse', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 265. AI 知识库-收起 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.collapse' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-收起', 'ai.knowledge.message.collapse', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'collapse', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 265. AI 知识库-收起 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.collapse' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-收起', 'ai.knowledge.message.collapse', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '收起', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 266. AI 知识库-展开 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.message.expand';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-展开', 'ai.knowledge.message.expand', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 266. AI 知识库-展开 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.expand' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-展开', 'ai.knowledge.message.expand', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'expand', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 266. AI 知识库-展开 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.expand' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-展开', 'ai.knowledge.message.expand', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '展开', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 267. AI 知识库-知识库ID不存在，无法进行召回测试 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.message.idNotFound';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-知识库ID不存在，无法进行召回测试', 'ai.knowledge.message.idNotFound', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 267. AI 知识库-知识库ID不存在，无法进行召回测试 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.idNotFound' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-知识库ID不存在，无法进行召回测试', 'ai.knowledge.message.idNotFound', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'knowledge base id not found, cannot perform retrieval test', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 267. AI 知识库-知识库ID不存在，无法进行召回测试 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.idNotFound' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-知识库ID不存在，无法进行召回测试', 'ai.knowledge.message.idNotFound', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '知识库 ID 不存在，无法进行召回测试', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 268. AI 知识库-暂无召回结果 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.message.noRetrievalResult';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-暂无召回结果', 'ai.knowledge.message.noRetrievalResult', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 268. AI 知识库-暂无召回结果 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.noRetrievalResult' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-暂无召回结果', 'ai.knowledge.message.noRetrievalResult', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'no retrieval results', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 268. AI 知识库-暂无召回结果 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.noRetrievalResult' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-暂无召回结果', 'ai.knowledge.message.noRetrievalResult', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '暂无召回结果', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 269. AI 知识库-请输入查询文本 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.message.queryPlaceholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-请输入查询文本', 'ai.knowledge.message.queryPlaceholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 269. AI 知识库-请输入查询文本 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.queryPlaceholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-请输入查询文本', 'ai.knowledge.message.queryPlaceholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'please enter query text', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 269. AI 知识库-请输入查询文本 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.queryPlaceholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-请输入查询文本', 'ai.knowledge.message.queryPlaceholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入查询文本', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 270. AI 知识库-召回测试 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.message.retrievalTest';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-召回测试', 'ai.knowledge.message.retrievalTest', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 270. AI 知识库-召回测试 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.retrievalTest' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-召回测试', 'ai.knowledge.message.retrievalTest', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'retrieval test', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 270. AI 知识库-召回测试 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.retrievalTest' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-召回测试', 'ai.knowledge.message.retrievalTest', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '召回测试', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 271. AI 知识库-{0}个召回段落 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.message.retrievedSegments';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-{0}个召回段落', 'ai.knowledge.message.retrievedSegments', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 271. AI 知识库-{0}个召回段落 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.retrievedSegments' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-{0}个召回段落', 'ai.knowledge.message.retrievedSegments', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '{0} retrieved segments', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 271. AI 知识库-{0}个召回段落 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.retrievedSegments' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-{0}个召回段落', 'ai.knowledge.message.retrievedSegments', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '{0} 个召回段落', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 272. AI 知识库-正在检索中... (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.message.retrieving';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-正在检索中...', 'ai.knowledge.message.retrieving', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 272. AI 知识库-正在检索中... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.retrieving' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-正在检索中...', 'ai.knowledge.message.retrieving', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'retrieving...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 272. AI 知识库-正在检索中... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.retrieving' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-正在检索中...', 'ai.knowledge.message.retrieving', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '正在检索中...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 273. AI 知识库-分段(#{0})·{1}字符数·{2}Token (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.message.segmentInfo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-分段(#{0})·{1}字符数·{2}Token', 'ai.knowledge.message.segmentInfo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 273. AI 知识库-分段(#{0})·{1}字符数·{2}Token - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.segmentInfo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-分段(#{0})·{1}字符数·{2}Token', 'ai.knowledge.message.segmentInfo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'segment (#{0}) · {1} chars · {2} tokens', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 273. AI 知识库-分段(#{0})·{1}字符数·{2}Token - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.segmentInfo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-分段(#{0})·{1}字符数·{2}Token', 'ai.knowledge.message.segmentInfo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '分段 (#{0}) · {1} 字符数 · {2} Token', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 274. AI 知识库-未知文档 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.message.unknownDocument';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-未知文档', 'ai.knowledge.message.unknownDocument', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 274. AI 知识库-未知文档 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.unknownDocument' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-未知文档', 'ai.knowledge.message.unknownDocument', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'unknown document', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 274. AI 知识库-未知文档 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.message.unknownDocument' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 知识库-未知文档', 'ai.knowledge.message.unknownDocument', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '未知文档', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 275. 知识库分段 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段', 'ai.knowledge.segment', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 275. 知识库分段 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段', 'ai.knowledge.segment', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 275. 知识库分段 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段', 'ai.knowledge.segment', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '知识库分段', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 276. 知识库分段-新建分段 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-新建分段', 'ai.knowledge.segment.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 276. 知识库分段-新建分段 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-新建分段', 'ai.knowledge.segment.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create segment', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 276. 知识库分段-新建分段 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-新建分段', 'ai.knowledge.segment.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新建分段', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 277. 知识库分段-删除分段 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-删除分段', 'ai.knowledge.segment.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 277. 知识库分段-删除分段 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-删除分段', 'ai.knowledge.segment.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete segment', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 277. 知识库分段-删除分段 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-删除分段', 'ai.knowledge.segment.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除分段', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 278. 知识库分段-知识库分段查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-知识库分段查询', 'ai.knowledge.segment.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 278. 知识库分段-知识库分段查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-知识库分段查询', 'ai.knowledge.segment.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query segments', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 278. 知识库分段-知识库分段查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-知识库分段查询', 'ai.knowledge.segment.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '知识库分段查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 279. 知识库分段-修改分段 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-修改分段', 'ai.knowledge.segment.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 279. 知识库分段-修改分段 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-修改分段', 'ai.knowledge.segment.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update segment', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 279. 知识库分段-修改分段 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-修改分段', 'ai.knowledge.segment.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改分段', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 280. 知识库分段-切片内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.field.content';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-切片内容', 'ai.knowledge.segment.field.content', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 280. 知识库分段-切片内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.field.content' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-切片内容', 'ai.knowledge.segment.field.content', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'segment content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 280. 知识库分段-切片内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.field.content' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-切片内容', 'ai.knowledge.segment.field.content', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '切片内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 281. 知识库分段-字符数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.field.contentLength';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-字符数', 'ai.knowledge.segment.field.contentLength', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 281. 知识库分段-字符数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.field.contentLength' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-字符数', 'ai.knowledge.segment.field.contentLength', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'character count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 281. 知识库分段-字符数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.field.contentLength' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-字符数', 'ai.knowledge.segment.field.contentLength', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '字符数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 282. 知识库分段-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-创建时间', 'ai.knowledge.segment.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 282. 知识库分段-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-创建时间', 'ai.knowledge.segment.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 282. 知识库分段-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-创建时间', 'ai.knowledge.segment.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 283. 知识库分段-文档编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.field.documentId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-文档编号', 'ai.knowledge.segment.field.documentId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 283. 知识库分段-文档编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.field.documentId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-文档编号', 'ai.knowledge.segment.field.documentId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'document id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 283. 知识库分段-文档编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.field.documentId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-文档编号', 'ai.knowledge.segment.field.documentId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '文档编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 284. 知识库分段-分段编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-分段编号', 'ai.knowledge.segment.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 284. 知识库分段-分段编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-分段编号', 'ai.knowledge.segment.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'segment id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 284. 知识库分段-分段编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-分段编号', 'ai.knowledge.segment.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '分段编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 285. 知识库分段-召回次数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.field.retrievalCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-召回次数', 'ai.knowledge.segment.field.retrievalCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 285. 知识库分段-召回次数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.field.retrievalCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-召回次数', 'ai.knowledge.segment.field.retrievalCount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'retrieval count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 285. 知识库分段-召回次数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.field.retrievalCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-召回次数', 'ai.knowledge.segment.field.retrievalCount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '召回次数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 286. 知识库分段-状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-状态', 'ai.knowledge.segment.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 286. 知识库分段-状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-状态', 'ai.knowledge.segment.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 286. 知识库分段-状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-状态', 'ai.knowledge.segment.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 287. 知识库分段-token数量 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.field.tokens';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-token数量', 'ai.knowledge.segment.field.tokens', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 287. 知识库分段-token数量 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.field.tokens' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-token数量', 'ai.knowledge.segment.field.tokens', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'token count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 287. 知识库分段-token数量 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.field.tokens' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-token数量', 'ai.knowledge.segment.field.tokens', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'token 数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 288. 知识库分段-分段列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-分段列表', 'ai.knowledge.segment.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 288. 知识库分段-分段列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-分段列表', 'ai.knowledge.segment.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'segment list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 288. 知识库分段-分段列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-分段列表', 'ai.knowledge.segment.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '分段列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 289. 知识库分段 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段', 'ai.knowledge.segment.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 289. 知识库分段 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段', 'ai.knowledge.segment.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'knowledge base segment', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 289. 知识库分段 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段', 'ai.knowledge.segment.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '知识库分段', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 290. 知识库分段-完整内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.message.fullContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-完整内容', 'ai.knowledge.segment.message.fullContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 290. 知识库分段-完整内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.message.fullContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-完整内容', 'ai.knowledge.segment.message.fullContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'full content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 290. 知识库分段-完整内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.message.fullContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-完整内容', 'ai.knowledge.segment.message.fullContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '完整内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 291. 知识库分段-确认将分段{0}的状态切换为【{1}】吗？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.message.switchConfirm';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-确认将分段{0}的状态切换为【{1}】吗？', 'ai.knowledge.segment.message.switchConfirm', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 291. 知识库分段-确认将分段{0}的状态切换为【{1}】吗？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.message.switchConfirm' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-确认将分段{0}的状态切换为【{1}】吗？', 'ai.knowledge.segment.message.switchConfirm', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'confirm to switch status of segment {0} to 【{1}】?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 291. 知识库分段-确认将分段{0}的状态切换为【{1}】吗？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.message.switchConfirm' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段-确认将分段{0}的状态切换为【{1}】吗？', 'ai.knowledge.segment.message.switchConfirm', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '确认将分段 {0} 的状态切换为【{1}】吗？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 292. 知识库分段 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.knowledge.segment.segment';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段', 'ai.knowledge.segment.segment', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 292. 知识库分段 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.segment' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段', 'ai.knowledge.segment.segment', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'knowledge base segment', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 292. 知识库分段 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.knowledge.segment.segment' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('知识库分段', 'ai.knowledge.segment.segment', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '知识库分段', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 293. AI思维导图 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图', 'ai.mindmap', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 293. AI思维导图 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图', 'ai.mindmap', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 293. AI思维导图 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图', 'ai.mindmap', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 思维导图', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 294. AI 思维导图-删除思维导图 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-删除思维导图', 'ai.mindmap.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 294. AI 思维导图-删除思维导图 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-删除思维导图', 'ai.mindmap.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete mindmap', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 294. AI 思维导图-删除思维导图 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-删除思维导图', 'ai.mindmap.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除思维导图', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 295. AI 思维导图-AI思维导图查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-AI思维导图查询', 'ai.mindmap.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 295. AI 思维导图-AI思维导图查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-AI思维导图查询', 'ai.mindmap.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query mindmap', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 295. AI 思维导图-AI思维导图查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-AI思维导图查询', 'ai.mindmap.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'AI 思维导图查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 296. AI 思维导图-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-创建时间', 'ai.mindmap.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 296. AI 思维导图-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-创建时间', 'ai.mindmap.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 296. AI 思维导图-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-创建时间', 'ai.mindmap.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 297. AI 思维导图-错误信息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.field.errorMessage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-错误信息', 'ai.mindmap.field.errorMessage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 297. AI 思维导图-错误信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.field.errorMessage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-错误信息', 'ai.mindmap.field.errorMessage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'error message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 297. AI 思维导图-错误信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.field.errorMessage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-错误信息', 'ai.mindmap.field.errorMessage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '错误信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 298. AI 思维导图-思维导图 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.field.generatedContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-思维导图', 'ai.mindmap.field.generatedContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 298. AI 思维导图-思维导图 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.field.generatedContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-思维导图', 'ai.mindmap.field.generatedContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mindmap', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 298. AI 思维导图-思维导图 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.field.generatedContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-思维导图', 'ai.mindmap.field.generatedContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '思维导图', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 299. AI 思维导图-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-编号', 'ai.mindmap.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 299. AI 思维导图-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-编号', 'ai.mindmap.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 299. AI 思维导图-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-编号', 'ai.mindmap.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 300. AI 思维导图-模型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.field.model';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-模型', 'ai.mindmap.field.model', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 300. AI 思维导图-模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.field.model' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-模型', 'ai.mindmap.field.model', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 300. AI 思维导图-模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.field.model' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-模型', 'ai.mindmap.field.model', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 301. AI 思维导图-提示词 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.field.prompt';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-提示词', 'ai.mindmap.field.prompt', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 301. AI 思维导图-提示词 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.field.prompt' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-提示词', 'ai.mindmap.field.prompt', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'prompt', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 301. AI 思维导图-提示词 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.field.prompt' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-提示词', 'ai.mindmap.field.prompt', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '提示词', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 302. AI 思维导图-用户 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.field.user';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-用户', 'ai.mindmap.field.user', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 302. AI 思维导图-用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.field.user' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-用户', 'ai.mindmap.field.user', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 302. AI 思维导图-用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.field.user' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-用户', 'ai.mindmap.field.user', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 303. AI 思维导图-用户编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-用户编号', 'ai.mindmap.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 303. AI 思维导图-用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-用户编号', 'ai.mindmap.field.userId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 303. AI 思维导图-用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-用户编号', 'ai.mindmap.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 304. AI 思维导图-AI思维导图列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-AI思维导图列表', 'ai.mindmap.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 304. AI 思维导图-AI思维导图列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-AI思维导图列表', 'ai.mindmap.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'ai mindmap list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 304. AI 思维导图-AI思维导图列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-AI思维导图列表', 'ai.mindmap.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'AI 思维导图列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 305. AI思维导图 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图', 'ai.mindmap.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 305. AI思维导图 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图', 'ai.mindmap.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'ai mindmap', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 305. AI思维导图 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图', 'ai.mindmap.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'AI 思维导图', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 306. AI 思维导图-直接生成 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.message.directGenerate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-直接生成', 'ai.mindmap.message.directGenerate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 306. AI 思维导图-直接生成 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.directGenerate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-直接生成', 'ai.mindmap.message.directGenerate', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'generate directly', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 306. AI 思维导图-直接生成 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.directGenerate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-直接生成', 'ai.mindmap.message.directGenerate', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '直接生成', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 307. AI 思维导图-下载图片 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.message.downloadImage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-下载图片', 'ai.mindmap.message.downloadImage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 307. AI 思维导图-下载图片 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.downloadImage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-下载图片', 'ai.mindmap.message.downloadImage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'download image', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 307. AI 思维导图-下载图片 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.downloadImage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-下载图片', 'ai.mindmap.message.downloadImage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '下载图片', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 308. AI 思维导图-例如：童话里的小屋应该是什么样子？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.message.existingPlaceholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-例如：童话里的小屋应该是什么样子？', 'ai.mindmap.message.existingPlaceholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 308. AI 思维导图-例如：童话里的小屋应该是什么样子？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.existingPlaceholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-例如：童话里的小屋应该是什么样子？', 'ai.mindmap.message.existingPlaceholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'e.g. what should a fairy tale cottage look like?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 308. AI 思维导图-例如：童话里的小屋应该是什么样子？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.existingPlaceholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-例如：童话里的小屋应该是什么样子？', 'ai.mindmap.message.existingPlaceholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '例如：童话里的小屋应该是什么样子？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 309. AI 思维导图-智能生成思维导图 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.message.generating';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-智能生成思维导图', 'ai.mindmap.message.generating', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 309. AI 思维导图-智能生成思维导图 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.generating' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-智能生成思维导图', 'ai.mindmap.message.generating', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'generate mindmap', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 309. AI 思维导图-智能生成思维导图 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.generating' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-智能生成思维导图', 'ai.mindmap.message.generating', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '智能生成思维导图', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 310. AI 思维导图-生成思维导图异常!{0} (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.message.generatingFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-生成思维导图异常!{0}', 'ai.mindmap.message.generatingFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 310. AI 思维导图-生成思维导图异常!{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.generatingFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-生成思维导图异常!{0}', 'ai.mindmap.message.generatingFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mindmap generation error! {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 310. AI 思维导图-生成思维导图异常!{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.generatingFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-生成思维导图异常!{0}', 'ai.mindmap.message.generatingFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '生成思维导图异常! {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 311. AI 思维导图-思维导图初始化失败 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.message.initFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-思维导图初始化失败', 'ai.mindmap.message.initFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 311. AI 思维导图-思维导图初始化失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.initFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-思维导图初始化失败', 'ai.mindmap.message.initFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mindmap initialization failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 311. AI 思维导图-思维导图初始化失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.initFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-思维导图初始化失败', 'ai.mindmap.message.initFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '思维导图初始化失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 312. AI 思维导图-思维导图预览 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.message.preview';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-思维导图预览', 'ai.mindmap.message.preview', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 312. AI 思维导图-思维导图预览 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.preview' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-思维导图预览', 'ai.mindmap.message.preview', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mindmap preview', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 312. AI 思维导图-思维导图预览 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.preview' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-思维导图预览', 'ai.mindmap.message.preview', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '思维导图预览', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 313. AI 思维导图-请输入提示词，让AI帮你完善 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.message.promptPlaceholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-请输入提示词，让AI帮你完善', 'ai.mindmap.message.promptPlaceholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 313. AI 思维导图-请输入提示词，让AI帮你完善 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.promptPlaceholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-请输入提示词，让AI帮你完善', 'ai.mindmap.message.promptPlaceholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'enter a prompt, ai will help you improve it', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 313. AI 思维导图-请输入提示词，让AI帮你完善 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.promptPlaceholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-请输入提示词，让AI帮你完善', 'ai.mindmap.message.promptPlaceholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入提示词，让AI帮你完善', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 314. AI 思维导图-使用已有内容生成？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.message.useExistingContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-使用已有内容生成？', 'ai.mindmap.message.useExistingContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 314. AI 思维导图-使用已有内容生成？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.useExistingContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-使用已有内容生成？', 'ai.mindmap.message.useExistingContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'use existing content to generate?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 314. AI 思维导图-使用已有内容生成？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.useExistingContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-使用已有内容生成？', 'ai.mindmap.message.useExistingContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '使用已有内容生成？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 315. AI 思维导图-您的需求？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.message.yourRequirement';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-您的需求？', 'ai.mindmap.message.yourRequirement', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 315. AI 思维导图-您的需求？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.yourRequirement' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-您的需求？', 'ai.mindmap.message.yourRequirement', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'your requirement?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 315. AI 思维导图-您的需求？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.message.yourRequirement' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 思维导图-您的需求？', 'ai.mindmap.message.yourRequirement', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '您的需求？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 316. AI思维导图 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.mindmap.mindmap';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图', 'ai.mindmap.mindmap', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 316. AI思维导图 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.mindmap' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图', 'ai.mindmap.mindmap', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'ai mindmap', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 316. AI思维导图 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.mindmap.mindmap' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI思维导图', 'ai.mindmap.mindmap', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 思维导图', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 317. AI模型配置 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型配置', 'ai.model', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 317. AI模型配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型配置', 'ai.model', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 317. AI模型配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型配置', 'ai.model', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 模型配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 318. AI 模型配置-新建模型 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-新建模型', 'ai.model.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 318. AI 模型配置-新建模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-新建模型', 'ai.model.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 318. AI 模型配置-新建模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-新建模型', 'ai.model.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新建模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 319. AI 模型配置-删除模型 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-删除模型', 'ai.model.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 319. AI 模型配置-删除模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-删除模型', 'ai.model.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 319. AI 模型配置-删除模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-删除模型', 'ai.model.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 320. AI 模型配置-AI模型查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-AI模型查询', 'ai.model.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 320. AI 模型配置-AI模型查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-AI模型查询', 'ai.model.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 320. AI 模型配置-AI模型查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-AI模型查询', 'ai.model.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'AI 模型查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 321. AI 模型配置-修改模型 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-修改模型', 'ai.model.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 321. AI 模型配置-修改模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-修改模型', 'ai.model.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 321. AI 模型配置-修改模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-修改模型', 'ai.model.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 322. API密钥 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.apiKey';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API密钥', 'ai.model.apiKey', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 322. API密钥 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API密钥', 'ai.model.apiKey', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 322. API密钥 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API密钥', 'ai.model.apiKey', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'API 密钥', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 323. API 密钥-新建密钥 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.apiKey.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-新建密钥', 'ai.model.apiKey.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 323. API 密钥-新建密钥 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-新建密钥', 'ai.model.apiKey.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create api key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 323. API 密钥-新建密钥 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-新建密钥', 'ai.model.apiKey.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新建密钥', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 324. API 密钥-删除密钥 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.apiKey.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-删除密钥', 'ai.model.apiKey.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 324. API 密钥-删除密钥 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-删除密钥', 'ai.model.apiKey.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete api key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 324. API 密钥-删除密钥 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-删除密钥', 'ai.model.apiKey.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除密钥', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 325. API 密钥-API密钥查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.apiKey.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-API密钥查询', 'ai.model.apiKey.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 325. API 密钥-API密钥查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-API密钥查询', 'ai.model.apiKey.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query api key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 325. API 密钥-API密钥查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-API密钥查询', 'ai.model.apiKey.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'API 密钥查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 326. API 密钥-修改密钥 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.apiKey.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-修改密钥', 'ai.model.apiKey.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 326. API 密钥-修改密钥 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-修改密钥', 'ai.model.apiKey.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update api key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 326. API 密钥-修改密钥 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-修改密钥', 'ai.model.apiKey.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改密钥', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 327. API密钥 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.apiKey.apiKey';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API密钥', 'ai.model.apiKey.apiKey', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 327. API密钥 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.apiKey' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API密钥', 'ai.model.apiKey.apiKey', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'api key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 327. API密钥 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.apiKey' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API密钥', 'ai.model.apiKey.apiKey', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'API 密钥', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 328. API 密钥-密钥 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.apiKey.field.apiKey';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-密钥', 'ai.model.apiKey.field.apiKey', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 328. API 密钥-密钥 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.field.apiKey' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-密钥', 'ai.model.apiKey.field.apiKey', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 328. API 密钥-密钥 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.field.apiKey' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-密钥', 'ai.model.apiKey.field.apiKey', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '密钥', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 329. API 密钥-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.apiKey.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-创建时间', 'ai.model.apiKey.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 329. API 密钥-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-创建时间', 'ai.model.apiKey.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 329. API 密钥-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-创建时间', 'ai.model.apiKey.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 330. API 密钥-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.apiKey.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-编号', 'ai.model.apiKey.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 330. API 密钥-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-编号', 'ai.model.apiKey.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 330. API 密钥-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-编号', 'ai.model.apiKey.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 331. API 密钥-名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.apiKey.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-名称', 'ai.model.apiKey.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 331. API 密钥-名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-名称', 'ai.model.apiKey.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 331. API 密钥-名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-名称', 'ai.model.apiKey.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 332. API 密钥-所属平台 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.apiKey.field.platform';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-所属平台', 'ai.model.apiKey.field.platform', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 332. API 密钥-所属平台 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.field.platform' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-所属平台', 'ai.model.apiKey.field.platform', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'platform', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 332. API 密钥-所属平台 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.field.platform' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-所属平台', 'ai.model.apiKey.field.platform', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '所属平台', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 333. API 密钥-状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.apiKey.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-状态', 'ai.model.apiKey.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 333. API 密钥-状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-状态', 'ai.model.apiKey.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 333. API 密钥-状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-状态', 'ai.model.apiKey.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 334. API 密钥-自定义APIURL (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.apiKey.field.url';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-自定义APIURL', 'ai.model.apiKey.field.url', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 334. API 密钥-自定义APIURL - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.field.url' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-自定义APIURL', 'ai.model.apiKey.field.url', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'custom api url', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 334. API 密钥-自定义APIURL - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.field.url' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-自定义APIURL', 'ai.model.apiKey.field.url', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '自定义 API URL', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 335. API 密钥-API密钥列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.apiKey.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-API密钥列表', 'ai.model.apiKey.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 335. API 密钥-API密钥列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-API密钥列表', 'ai.model.apiKey.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api key list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 335. API 密钥-API密钥列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API 密钥-API密钥列表', 'ai.model.apiKey.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'API 密钥列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 336. API密钥 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.apiKey.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API密钥', 'ai.model.apiKey.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 336. API密钥 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API密钥', 'ai.model.apiKey.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'api key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 336. API密钥 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.apiKey.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('API密钥', 'ai.model.apiKey.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'API 密钥', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 337. 聊天角色 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色', 'ai.model.chatRole', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 337. 聊天角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色', 'ai.model.chatRole', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 337. 聊天角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色', 'ai.model.chatRole', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '聊天角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 338. 聊天角色-新建角色 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-新建角色', 'ai.model.chatRole.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 338. 聊天角色-新建角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-新建角色', 'ai.model.chatRole.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create chat role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 338. 聊天角色-新建角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-新建角色', 'ai.model.chatRole.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新建角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 339. 聊天角色-删除角色 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-删除角色', 'ai.model.chatRole.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 339. 聊天角色-删除角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-删除角色', 'ai.model.chatRole.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete chat role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 339. 聊天角色-删除角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-删除角色', 'ai.model.chatRole.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 340. 聊天角色-聊天角色查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-聊天角色查询', 'ai.model.chatRole.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 340. 聊天角色-聊天角色查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-聊天角色查询', 'ai.model.chatRole.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query chat role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 340. 聊天角色-聊天角色查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-聊天角色查询', 'ai.model.chatRole.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '聊天角色查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 341. 聊天角色-修改角色 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-修改角色', 'ai.model.chatRole.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 341. 聊天角色-修改角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-修改角色', 'ai.model.chatRole.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update chat role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 341. 聊天角色-修改角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-修改角色', 'ai.model.chatRole.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 342. 聊天角色 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.chatRole';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色', 'ai.model.chatRole.chatRole', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 342. 聊天角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.chatRole' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色', 'ai.model.chatRole.chatRole', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'chat role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 342. 聊天角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.chatRole' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色', 'ai.model.chatRole.chatRole', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '聊天角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 343. 聊天角色-角色头像 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.field.avatar';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色头像', 'ai.model.chatRole.field.avatar', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 343. 聊天角色-角色头像 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.avatar' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色头像', 'ai.model.chatRole.field.avatar', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role avatar', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 343. 聊天角色-角色头像 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.avatar' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色头像', 'ai.model.chatRole.field.avatar', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色头像', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 344. 聊天角色-角色类别 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.field.category';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色类别', 'ai.model.chatRole.field.category', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 344. 聊天角色-角色类别 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.category' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色类别', 'ai.model.chatRole.field.category', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role category', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 344. 聊天角色-角色类别 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.category' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色类别', 'ai.model.chatRole.field.category', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色类别', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 345. 聊天角色-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-创建时间', 'ai.model.chatRole.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 345. 聊天角色-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-创建时间', 'ai.model.chatRole.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 345. 聊天角色-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-创建时间', 'ai.model.chatRole.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 346. 聊天角色-角色描述 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.field.description';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色描述', 'ai.model.chatRole.field.description', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 346. 聊天角色-角色描述 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.description' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色描述', 'ai.model.chatRole.field.description', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 346. 聊天角色-角色描述 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.description' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色描述', 'ai.model.chatRole.field.description', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 347. 聊天角色-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-编号', 'ai.model.chatRole.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 347. 聊天角色-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-编号', 'ai.model.chatRole.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 347. 聊天角色-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-编号', 'ai.model.chatRole.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 348. 聊天角色-引用知识库 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.field.knowledgeIds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用知识库', 'ai.model.chatRole.field.knowledgeIds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 348. 聊天角色-引用知识库 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.knowledgeIds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用知识库', 'ai.model.chatRole.field.knowledgeIds', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'knowledge base', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 348. 聊天角色-引用知识库 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.knowledgeIds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用知识库', 'ai.model.chatRole.field.knowledgeIds', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '引用知识库', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 349. 聊天角色-引用MCP (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.field.mcpClientNames';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用MCP', 'ai.model.chatRole.field.mcpClientNames', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 349. 聊天角色-引用MCP - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.mcpClientNames' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用MCP', 'ai.model.chatRole.field.mcpClientNames', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'mcp', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 349. 聊天角色-引用MCP - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.mcpClientNames' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用MCP', 'ai.model.chatRole.field.mcpClientNames', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '引用 MCP', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 350. 聊天角色-绑定模型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.field.modelId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-绑定模型', 'ai.model.chatRole.field.modelId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 350. 聊天角色-绑定模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.modelId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-绑定模型', 'ai.model.chatRole.field.modelId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 350. 聊天角色-绑定模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.modelId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-绑定模型', 'ai.model.chatRole.field.modelId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '绑定模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 351. 聊天角色-绑定模型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.field.modelName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-绑定模型', 'ai.model.chatRole.field.modelName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 351. 聊天角色-绑定模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.modelName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-绑定模型', 'ai.model.chatRole.field.modelName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 351. 聊天角色-绑定模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.modelName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-绑定模型', 'ai.model.chatRole.field.modelName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '绑定模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 352. 聊天角色-角色名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色名称', 'ai.model.chatRole.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 352. 聊天角色-角色名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色名称', 'ai.model.chatRole.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 352. 聊天角色-角色名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色名称', 'ai.model.chatRole.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 353. 聊天角色-是否公开 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.field.publicStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-是否公开', 'ai.model.chatRole.field.publicStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 353. 聊天角色-是否公开 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.publicStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-是否公开', 'ai.model.chatRole.field.publicStatus', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'public status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 353. 聊天角色-是否公开 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.publicStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-是否公开', 'ai.model.chatRole.field.publicStatus', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否公开', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 354. 聊天角色-角色排序 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.field.sort';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色排序', 'ai.model.chatRole.field.sort', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 354. 聊天角色-角色排序 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.sort' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色排序', 'ai.model.chatRole.field.sort', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sort order', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 354. 聊天角色-角色排序 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.sort' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色排序', 'ai.model.chatRole.field.sort', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色排序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 355. 聊天角色-状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-状态', 'ai.model.chatRole.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 355. 聊天角色-状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-状态', 'ai.model.chatRole.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 355. 聊天角色-状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-状态', 'ai.model.chatRole.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 356. 聊天角色-角色设定 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.field.systemMessage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色设定', 'ai.model.chatRole.field.systemMessage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 356. 聊天角色-角色设定 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.systemMessage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色设定', 'ai.model.chatRole.field.systemMessage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'role setting', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 356. 聊天角色-角色设定 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.systemMessage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-角色设定', 'ai.model.chatRole.field.systemMessage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '角色设定', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 357. 聊天角色-引用工具 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.field.toolIds';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用工具', 'ai.model.chatRole.field.toolIds', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 357. 聊天角色-引用工具 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.toolIds' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用工具', 'ai.model.chatRole.field.toolIds', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tools', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 357. 聊天角色-引用工具 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.field.toolIds' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用工具', 'ai.model.chatRole.field.toolIds', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '引用工具', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 358. 聊天角色-聊天角色列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-聊天角色列表', 'ai.model.chatRole.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 358. 聊天角色-聊天角色列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-聊天角色列表', 'ai.model.chatRole.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'chat role list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 358. 聊天角色-聊天角色列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-聊天角色列表', 'ai.model.chatRole.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '聊天角色列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 359. 聊天角色 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色', 'ai.model.chatRole.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 359. 聊天角色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色', 'ai.model.chatRole.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'chat role', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 359. 聊天角色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色', 'ai.model.chatRole.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, '聊天角色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 360. 聊天角色-引用{0}个 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.message.referencedKnowledge';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用{0}个', 'ai.model.chatRole.message.referencedKnowledge', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 360. 聊天角色-引用{0}个 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.message.referencedKnowledge' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用{0}个', 'ai.model.chatRole.message.referencedKnowledge', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'referenced {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 360. 聊天角色-引用{0}个 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.message.referencedKnowledge' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用{0}个', 'ai.model.chatRole.message.referencedKnowledge', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '引用 {0} 个', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 361. 聊天角色-引用{0}个 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.message.referencedMcp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用{0}个', 'ai.model.chatRole.message.referencedMcp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 361. 聊天角色-引用{0}个 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.message.referencedMcp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用{0}个', 'ai.model.chatRole.message.referencedMcp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'referenced {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 361. 聊天角色-引用{0}个 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.message.referencedMcp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用{0}个', 'ai.model.chatRole.message.referencedMcp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '引用 {0} 个', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 362. 聊天角色-引用{0}个 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.chatRole.message.referencedTools';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用{0}个', 'ai.model.chatRole.message.referencedTools', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 362. 聊天角色-引用{0}个 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.message.referencedTools' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用{0}个', 'ai.model.chatRole.message.referencedTools', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'referenced {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 362. 聊天角色-引用{0}个 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.chatRole.message.referencedTools' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('聊天角色-引用{0}个', 'ai.model.chatRole.message.referencedTools', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '引用 {0} 个', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 363. AI 模型配置-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-创建时间', 'ai.model.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 363. AI 模型配置-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-创建时间', 'ai.model.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 363. AI 模型配置-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-创建时间', 'ai.model.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 364. AI 模型配置-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-编号', 'ai.model.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 364. AI 模型配置-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-编号', 'ai.model.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 364. AI 模型配置-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-编号', 'ai.model.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 365. AI 模型配置-API密钥 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.keyId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-API密钥', 'ai.model.field.keyId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 365. AI 模型配置-API密钥 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.keyId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-API密钥', 'ai.model.field.keyId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 365. AI 模型配置-API密钥 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.keyId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-API密钥', 'ai.model.field.keyId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'API 密钥', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 366. AI 模型配置-API密钥 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.keyIdName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-API密钥', 'ai.model.field.keyIdName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 366. AI 模型配置-API密钥 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.keyIdName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-API密钥', 'ai.model.field.keyIdName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'api key', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 366. AI 模型配置-API密钥 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.keyIdName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-API密钥', 'ai.model.field.keyIdName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'API 密钥', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 367. AI 模型配置-上下文数量 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.maxContexts';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-上下文数量', 'ai.model.field.maxContexts', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 367. AI 模型配置-上下文数量 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.maxContexts' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-上下文数量', 'ai.model.field.maxContexts', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'context count', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 367. AI 模型配置-上下文数量 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.maxContexts' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-上下文数量', 'ai.model.field.maxContexts', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '上下文数量', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 368. AI 模型配置-回复数Token数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.maxTokens';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-回复数Token数', 'ai.model.field.maxTokens', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 368. AI 模型配置-回复数Token数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.maxTokens' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-回复数Token数', 'ai.model.field.maxTokens', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'max tokens', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 368. AI 模型配置-回复数Token数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.maxTokens' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-回复数Token数', 'ai.model.field.maxTokens', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '回复数 Token 数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 369. AI 模型配置-模型标识 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.model';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-模型标识', 'ai.model.field.model', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 369. AI 模型配置-模型标识 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.model' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-模型标识', 'ai.model.field.model', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'model id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 369. AI 模型配置-模型标识 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.model' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-模型标识', 'ai.model.field.model', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模型标识', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 370. AI 模型配置-模型名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-模型名称', 'ai.model.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 370. AI 模型配置-模型名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-模型名称', 'ai.model.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'model name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 370. AI 模型配置-模型名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-模型名称', 'ai.model.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模型名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 371. AI 模型配置-所属平台 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.platform';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-所属平台', 'ai.model.field.platform', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 371. AI 模型配置-所属平台 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.platform' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-所属平台', 'ai.model.field.platform', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'platform', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 371. AI 模型配置-所属平台 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.platform' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-所属平台', 'ai.model.field.platform', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '所属平台', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 372. AI 模型配置-排序 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.sort';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-排序', 'ai.model.field.sort', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 372. AI 模型配置-排序 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.sort' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-排序', 'ai.model.field.sort', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'sort order', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 372. AI 模型配置-排序 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.sort' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-排序', 'ai.model.field.sort', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '排序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 373. AI 模型配置-状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-状态', 'ai.model.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 373. AI 模型配置-状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-状态', 'ai.model.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 373. AI 模型配置-状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-状态', 'ai.model.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 374. AI 模型配置-温度参数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.temperature';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-温度参数', 'ai.model.field.temperature', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 374. AI 模型配置-温度参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.temperature' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-温度参数', 'ai.model.field.temperature', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'temperature', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 374. AI 模型配置-温度参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.temperature' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-温度参数', 'ai.model.field.temperature', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '温度参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 375. AI 模型配置-模型类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-模型类型', 'ai.model.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 375. AI 模型配置-模型类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-模型类型', 'ai.model.field.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'model type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 375. AI 模型配置-模型类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-模型类型', 'ai.model.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模型类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 376. AI 模型配置-AI模型配置列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-AI模型配置列表', 'ai.model.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 376. AI 模型配置-AI模型配置列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-AI模型配置列表', 'ai.model.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'ai model config list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 376. AI 模型配置-AI模型配置列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 模型配置-AI模型配置列表', 'ai.model.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'AI 模型配置列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 377. AI模型配置 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型配置', 'ai.model.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 377. AI模型配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型配置', 'ai.model.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'ai model config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 377. AI模型配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型配置', 'ai.model.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'AI 模型配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 378. AI模型配置 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.model';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型配置', 'ai.model.model', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 378. AI模型配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.model' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型配置', 'ai.model.model', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'ai model config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 378. AI模型配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.model' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI模型配置', 'ai.model.model', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 模型配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 379. AI工具 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.tool';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具', 'ai.model.tool', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 379. AI工具 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具', 'ai.model.tool', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 379. AI工具 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具', 'ai.model.tool', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 工具', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 380. AI 工具-新建工具 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.tool.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-新建工具', 'ai.model.tool.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 380. AI 工具-新建工具 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-新建工具', 'ai.model.tool.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create tool', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 380. AI 工具-新建工具 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-新建工具', 'ai.model.tool.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新建工具', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 381. AI 工具-删除工具 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.tool.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-删除工具', 'ai.model.tool.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 381. AI 工具-删除工具 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-删除工具', 'ai.model.tool.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete tool', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 381. AI 工具-删除工具 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-删除工具', 'ai.model.tool.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除工具', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 382. AI 工具-AI工具查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.tool.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-AI工具查询', 'ai.model.tool.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 382. AI 工具-AI工具查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-AI工具查询', 'ai.model.tool.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query tool', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 382. AI 工具-AI工具查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-AI工具查询', 'ai.model.tool.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'AI 工具查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 383. AI 工具-修改工具 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.tool.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-修改工具', 'ai.model.tool.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 383. AI 工具-修改工具 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-修改工具', 'ai.model.tool.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update tool', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 383. AI 工具-修改工具 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-修改工具', 'ai.model.tool.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改工具', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 384. AI 工具-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.tool.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-创建时间', 'ai.model.tool.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 384. AI 工具-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-创建时间', 'ai.model.tool.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 384. AI 工具-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-创建时间', 'ai.model.tool.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 385. AI 工具-工具描述 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.tool.field.description';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-工具描述', 'ai.model.tool.field.description', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 385. AI 工具-工具描述 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.field.description' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-工具描述', 'ai.model.tool.field.description', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tool description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 385. AI 工具-工具描述 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.field.description' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-工具描述', 'ai.model.tool.field.description', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '工具描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 386. AI 工具-工具编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.tool.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-工具编号', 'ai.model.tool.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 386. AI 工具-工具编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-工具编号', 'ai.model.tool.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tool id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 386. AI 工具-工具编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-工具编号', 'ai.model.tool.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '工具编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 387. AI 工具-工具名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.tool.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-工具名称', 'ai.model.tool.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 387. AI 工具-工具名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-工具名称', 'ai.model.tool.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tool name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 387. AI 工具-工具名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-工具名称', 'ai.model.tool.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '工具名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 388. AI 工具-状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.tool.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-状态', 'ai.model.tool.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 388. AI 工具-状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-状态', 'ai.model.tool.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 388. AI 工具-状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-状态', 'ai.model.tool.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 389. AI 工具-AI工具列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.tool.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-AI工具列表', 'ai.model.tool.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 389. AI 工具-AI工具列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-AI工具列表', 'ai.model.tool.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'ai tool list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 389. AI 工具-AI工具列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工具-AI工具列表', 'ai.model.tool.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'AI 工具列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 390. AI工具 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.tool.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具', 'ai.model.tool.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 390. AI工具 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具', 'ai.model.tool.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'ai tool', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 390. AI工具 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具', 'ai.model.tool.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'AI 工具', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 391. AI工具 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.model.tool.tool';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具', 'ai.model.tool.tool', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 391. AI工具 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.tool' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具', 'ai.model.tool.tool', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'ai tool', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 391. AI工具 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.model.tool.tool' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工具', 'ai.model.tool.tool', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 工具', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 392. AI音乐创作 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐创作', 'ai.music', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 392. AI音乐创作 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐创作', 'ai.music', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 392. AI音乐创作 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐创作', 'ai.music', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 音乐创作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 393. AI 音乐创作-删除音乐 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-删除音乐', 'ai.music.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 393. AI 音乐创作-删除音乐 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-删除音乐', 'ai.music.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete music', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 393. AI 音乐创作-删除音乐 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-删除音乐', 'ai.music.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除音乐', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 394. AI 音乐创作-AI音乐查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-AI音乐查询', 'ai.music.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 394. AI 音乐创作-AI音乐查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-AI音乐查询', 'ai.music.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query music', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 394. AI 音乐创作-AI音乐查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-AI音乐查询', 'ai.music.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'AI 音乐查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 395. AI 音乐创作-内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.content';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-内容', 'ai.music.field.content', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 395. AI 音乐创作-内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.content' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-内容', 'ai.music.field.content', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 395. AI 音乐创作-内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.content' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-内容', 'ai.music.field.content', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 396. AI 音乐创作-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-创建时间', 'ai.music.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 396. AI 音乐创作-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-创建时间', 'ai.music.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 396. AI 音乐创作-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-创建时间', 'ai.music.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 397. AI 音乐创作-时长（秒） (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.duration';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-时长（秒）', 'ai.music.field.duration', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 397. AI 音乐创作-时长（秒） - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.duration' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-时长（秒）', 'ai.music.field.duration', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'duration (seconds)', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 397. AI 音乐创作-时长（秒） - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.duration' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-时长（秒）', 'ai.music.field.duration', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '时长（秒）', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 398. AI 音乐创作-错误信息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.errorMessage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-错误信息', 'ai.music.field.errorMessage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 398. AI 音乐创作-错误信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.errorMessage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-错误信息', 'ai.music.field.errorMessage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'error message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 398. AI 音乐创作-错误信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.errorMessage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-错误信息', 'ai.music.field.errorMessage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '错误信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 399. AI 音乐创作-生成模式 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.generateMode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-生成模式', 'ai.music.field.generateMode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 399. AI 音乐创作-生成模式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.generateMode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-生成模式', 'ai.music.field.generateMode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'generate mode', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 399. AI 音乐创作-生成模式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.generateMode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-生成模式', 'ai.music.field.generateMode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '生成模式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 400. AI 音乐创作-描述 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.gptDescriptionPrompt';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-描述', 'ai.music.field.gptDescriptionPrompt', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 400. AI 音乐创作-描述 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.gptDescriptionPrompt' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-描述', 'ai.music.field.gptDescriptionPrompt', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 400. AI 音乐创作-描述 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.gptDescriptionPrompt' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-描述', 'ai.music.field.gptDescriptionPrompt', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 401. AI 音乐创作-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-编号', 'ai.music.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 401. AI 音乐创作-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-编号', 'ai.music.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 401. AI 音乐创作-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-编号', 'ai.music.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 402. AI 音乐创作-歌词 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.lyric';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-歌词', 'ai.music.field.lyric', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 402. AI 音乐创作-歌词 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.lyric' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-歌词', 'ai.music.field.lyric', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'lyrics', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 402. AI 音乐创作-歌词 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.lyric' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-歌词', 'ai.music.field.lyric', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '歌词', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 403. AI 音乐创作-模型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.model';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-模型', 'ai.music.field.model', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 403. AI 音乐创作-模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.model' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-模型', 'ai.music.field.model', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 403. AI 音乐创作-模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.model' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-模型', 'ai.music.field.model', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 404. AI 音乐创作-提示词 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.prompt';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-提示词', 'ai.music.field.prompt', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 404. AI 音乐创作-提示词 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.prompt' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-提示词', 'ai.music.field.prompt', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'prompt', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 404. AI 音乐创作-提示词 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.prompt' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-提示词', 'ai.music.field.prompt', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '提示词', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 405. AI 音乐创作-是否发布 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.publicStatus';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-是否发布', 'ai.music.field.publicStatus', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 405. AI 音乐创作-是否发布 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.publicStatus' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-是否发布', 'ai.music.field.publicStatus', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'public status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 405. AI 音乐创作-是否发布 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.publicStatus' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-是否发布', 'ai.music.field.publicStatus', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否发布', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 406. AI 音乐创作-音乐状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐状态', 'ai.music.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 406. AI 音乐创作-音乐状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐状态', 'ai.music.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'music status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 406. AI 音乐创作-音乐状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐状态', 'ai.music.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '音乐状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 407. AI 音乐创作-风格标签 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.tags';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-风格标签', 'ai.music.field.tags', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 407. AI 音乐创作-风格标签 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.tags' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-风格标签', 'ai.music.field.tags', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'style tags', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 407. AI 音乐创作-风格标签 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.tags' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-风格标签', 'ai.music.field.tags', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '风格标签', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 408. AI 音乐创作-任务编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.taskId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-任务编号', 'ai.music.field.taskId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 408. AI 音乐创作-任务编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.taskId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-任务编号', 'ai.music.field.taskId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'task id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 408. AI 音乐创作-任务编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.taskId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-任务编号', 'ai.music.field.taskId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '任务编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 409. AI 音乐创作-音乐名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐名称', 'ai.music.field.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 409. AI 音乐创作-音乐名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐名称', 'ai.music.field.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'music title', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 409. AI 音乐创作-音乐名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐名称', 'ai.music.field.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '音乐名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 410. AI 音乐创作-用户 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.user';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-用户', 'ai.music.field.user', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 410. AI 音乐创作-用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.user' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-用户', 'ai.music.field.user', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 410. AI 音乐创作-用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.user' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-用户', 'ai.music.field.user', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 411. AI 音乐创作-用户编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-用户编号', 'ai.music.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 411. AI 音乐创作-用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-用户编号', 'ai.music.field.userId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 411. AI 音乐创作-用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-用户编号', 'ai.music.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 412. AI 音乐创作-AI音乐列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-AI音乐列表', 'ai.music.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 412. AI 音乐创作-AI音乐列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-AI音乐列表', 'ai.music.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'ai music list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 412. AI 音乐创作-AI音乐列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-AI音乐列表', 'ai.music.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'AI 音乐列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 413. AI音乐创作 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐创作', 'ai.music.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 413. AI音乐创作 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐创作', 'ai.music.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'ai music', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 413. AI音乐创作 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐创作', 'ai.music.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'AI 音乐创作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 414. AI 音乐创作-确认要将该音乐切换为【私有】吗？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.confirmPrivate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-确认要将该音乐切换为【私有】吗？', 'ai.music.message.confirmPrivate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 414. AI 音乐创作-确认要将该音乐切换为【私有】吗？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.confirmPrivate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-确认要将该音乐切换为【私有】吗？', 'ai.music.message.confirmPrivate', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'confirm to make this music private?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 414. AI 音乐创作-确认要将该音乐切换为【私有】吗？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.confirmPrivate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-确认要将该音乐切换为【私有】吗？', 'ai.music.message.confirmPrivate', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '确认要将该音乐切换为【私有】吗？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 415. AI 音乐创作-确认要将该音乐切换为【公开】吗？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.confirmPublic';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-确认要将该音乐切换为【公开】吗？', 'ai.music.message.confirmPublic', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 415. AI 音乐创作-确认要将该音乐切换为【公开】吗？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.confirmPublic' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-确认要将该音乐切换为【公开】吗？', 'ai.music.message.confirmPublic', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'confirm to make this music public?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 415. AI 音乐创作-确认要将该音乐切换为【公开】吗？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.confirmPublic' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-确认要将该音乐切换为【公开】吗？', 'ai.music.message.confirmPublic', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '确认要将该音乐切换为【公开】吗？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 416. AI 音乐创作-封面 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.cover';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-封面', 'ai.music.message.cover', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 416. AI 音乐创作-封面 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.cover' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-封面', 'ai.music.message.cover', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'cover', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 416. AI 音乐创作-封面 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.cover' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-封面', 'ai.music.message.cover', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '封面', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 417. AI 音乐创作-创作音乐 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.createMusic';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-创作音乐', 'ai.music.message.createMusic', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 417. AI 音乐创作-创作音乐 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.createMusic' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-创作音乐', 'ai.music.message.createMusic', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create music', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 417. AI 音乐创作-创作音乐 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.createMusic' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-创作音乐', 'ai.music.message.createMusic', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创作音乐', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 418. AI 音乐创作-自定义风格 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.customStyle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-自定义风格', 'ai.music.message.customStyle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 418. AI 音乐创作-自定义风格 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.customStyle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-自定义风格', 'ai.music.message.customStyle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'custom style', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 418. AI 音乐创作-自定义风格 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.customStyle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-自定义风格', 'ai.music.message.customStyle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '自定义风格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 419. AI 音乐创作-描述模式 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.descMode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-描述模式', 'ai.music.message.descMode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 419. AI 音乐创作-描述模式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.descMode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-描述模式', 'ai.music.message.descMode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'desc mode', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 419. AI 音乐创作-描述模式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.descMode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-描述模式', 'ai.music.message.descMode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '描述模式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 420. AI 音乐创作-信息复用 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.infoReuse';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-信息复用', 'ai.music.message.infoReuse', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 420. AI 音乐创作-信息复用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.infoReuse' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-信息复用', 'ai.music.message.infoReuse', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'info reuse', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 420. AI 音乐创作-信息复用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.infoReuse' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-信息复用', 'ai.music.message.infoReuse', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '信息复用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 421. AI 音乐创作-试听广场 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.listenSquare';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-试听广场', 'ai.music.message.listenSquare', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 421. AI 音乐创作-试听广场 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.listenSquare' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-试听广场', 'ai.music.message.listenSquare', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'listen square', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 421. AI 音乐创作-试听广场 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.listenSquare' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-试听广场', 'ai.music.message.listenSquare', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '试听广场', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 422. AI 音乐创作-歌词 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.lyric';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-歌词', 'ai.music.message.lyric', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 422. AI 音乐创作-歌词 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.lyric' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-歌词', 'ai.music.message.lyric', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'lyrics', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 422. AI 音乐创作-歌词 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.lyric' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-歌词', 'ai.music.message.lyric', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '歌词', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 423. AI 音乐创作-自己编写歌词或使用Ai生成歌词，两节/8行效果最佳 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.lyricHint';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-自己编写歌词或使用Ai生成歌词，两节/8行效果最佳', 'ai.music.message.lyricHint', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 423. AI 音乐创作-自己编写歌词或使用Ai生成歌词，两节/8行效果最佳 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.lyricHint' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-自己编写歌词或使用Ai生成歌词，两节/8行效果最佳', 'ai.music.message.lyricHint', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'write lyrics yourself or use ai to generate, two verses/8 lines work best', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 423. AI 音乐创作-自己编写歌词或使用Ai生成歌词，两节/8行效果最佳 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.lyricHint' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-自己编写歌词或使用Ai生成歌词，两节/8行效果最佳', 'ai.music.message.lyricHint', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '自己编写歌词或使用Ai生成歌词，两节/8行效果最佳', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 424. AI 音乐创作-歌词模式 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.lyricMode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-歌词模式', 'ai.music.message.lyricMode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 424. AI 音乐创作-歌词模式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.lyricMode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-歌词模式', 'ai.music.message.lyricMode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'lyrics mode', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 424. AI 音乐创作-歌词模式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.lyricMode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-歌词模式', 'ai.music.message.lyricMode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '歌词模式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 425. AI 音乐创作-请输入您自己的歌词 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.lyricPlaceholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-请输入您自己的歌词', 'ai.music.message.lyricPlaceholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 425. AI 音乐创作-请输入您自己的歌词 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.lyricPlaceholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-请输入您自己的歌词', 'ai.music.message.lyricPlaceholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'enter your lyrics here', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 425. AI 音乐创作-请输入您自己的歌词 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.lyricPlaceholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-请输入您自己的歌词', 'ai.music.message.lyricPlaceholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入您自己的歌词', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 426. AI 音乐创作-音乐 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.music';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐', 'ai.music.message.music', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 426. AI 音乐创作-音乐 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.music' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐', 'ai.music.message.music', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'music', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 426. AI 音乐创作-音乐 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.music' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐', 'ai.music.message.music', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '音乐', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 427. AI 音乐创作-音乐/歌词说明 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.musicLyricDesc';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐/歌词说明', 'ai.music.message.musicLyricDesc', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 427. AI 音乐创作-音乐/歌词说明 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.musicLyricDesc' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐/歌词说明', 'ai.music.message.musicLyricDesc', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'music/lyrics description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 427. AI 音乐创作-音乐/歌词说明 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.musicLyricDesc' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐/歌词说明', 'ai.music.message.musicLyricDesc', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '音乐/歌词说明', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 428. AI 音乐创作-描述您想要的音乐风格和主题，使用流派和氛围而不是特定的艺术家和歌曲 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.musicLyricHint';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-描述您想要的音乐风格和主题，使用流派和氛围而不是特定的艺术家和歌曲', 'ai.music.message.musicLyricHint', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 428. AI 音乐创作-描述您想要的音乐风格和主题，使用流派和氛围而不是特定的艺术家和歌曲 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.musicLyricHint' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-描述您想要的音乐风格和主题，使用流派和氛围而不是特定的艺术家和歌曲', 'ai.music.message.musicLyricHint', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'describe the music style and theme you want, use genre and atmosphere rather than specific artists and songs', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 428. AI 音乐创作-描述您想要的音乐风格和主题，使用流派和氛围而不是特定的艺术家和歌曲 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.musicLyricHint' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-描述您想要的音乐风格和主题，使用流派和氛围而不是特定的艺术家和歌曲', 'ai.music.message.musicLyricHint', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '描述您想要的音乐风格和主题，使用流派和氛围而不是特定的艺术家和歌曲', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 429. AI 音乐创作-音乐/歌曲名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.musicName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐/歌曲名称', 'ai.music.message.musicName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 429. AI 音乐创作-音乐/歌曲名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.musicName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐/歌曲名称', 'ai.music.message.musicName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'music/song title', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 429. AI 音乐创作-音乐/歌曲名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.musicName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐/歌曲名称', 'ai.music.message.musicName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '音乐/歌曲名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 430. AI 音乐创作-请输入音乐/歌曲名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.musicNamePlaceholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-请输入音乐/歌曲名称', 'ai.music.message.musicNamePlaceholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 430. AI 音乐创作-请输入音乐/歌曲名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.musicNamePlaceholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-请输入音乐/歌曲名称', 'ai.music.message.musicNamePlaceholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'enter music/song title', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 430. AI 音乐创作-请输入音乐/歌曲名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.musicNamePlaceholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-请输入音乐/歌曲名称', 'ai.music.message.musicNamePlaceholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入音乐/歌曲名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 431. AI 音乐创作-音乐风格 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.musicStyle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐风格', 'ai.music.message.musicStyle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 431. AI 音乐创作-音乐风格 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.musicStyle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐风格', 'ai.music.message.musicStyle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'music style', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 431. AI 音乐创作-音乐风格 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.musicStyle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-音乐风格', 'ai.music.message.musicStyle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '音乐风格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 432. AI 音乐创作-我的创作 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.myCreation';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-我的创作', 'ai.music.message.myCreation', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 432. AI 音乐创作-我的创作 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.myCreation' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-我的创作', 'ai.music.message.myCreation', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'my creations', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 432. AI 音乐创作-我的创作 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.myCreation' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-我的创作', 'ai.music.message.myCreation', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '我的创作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 433. AI 音乐创作-暂无音乐 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.noMusic';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-暂无音乐', 'ai.music.message.noMusic', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 433. AI 音乐创作-暂无音乐 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.noMusic' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-暂无音乐', 'ai.music.message.noMusic', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'no music yet', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 433. AI 音乐创作-暂无音乐 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.noMusic' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-暂无音乐', 'ai.music.message.noMusic', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '暂无音乐', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 434. AI 音乐创作-私有 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.private';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-私有', 'ai.music.message.private', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 434. AI 音乐创作-私有 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.private' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-私有', 'ai.music.message.private', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'private', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 434. AI 音乐创作-私有 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.private' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-私有', 'ai.music.message.private', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '私有', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 435. AI 音乐创作-公开 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.public';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-公开', 'ai.music.message.public', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 435. AI 音乐创作-公开 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.public' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-公开', 'ai.music.message.public', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'public', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 435. AI 音乐创作-公开 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.public' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-公开', 'ai.music.message.public', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '公开', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 436. AI 音乐创作-纯音乐 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.pureMusic';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-纯音乐', 'ai.music.message.pureMusic', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 436. AI 音乐创作-纯音乐 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.pureMusic' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-纯音乐', 'ai.music.message.pureMusic', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'pure music', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 436. AI 音乐创作-纯音乐 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.pureMusic' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-纯音乐', 'ai.music.message.pureMusic', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '纯音乐', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 437. AI 音乐创作-创建一首没有歌词的歌曲 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.pureMusicHint';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-创建一首没有歌词的歌曲', 'ai.music.message.pureMusicHint', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 437. AI 音乐创作-创建一首没有歌词的歌曲 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.pureMusicHint' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-创建一首没有歌词的歌曲', 'ai.music.message.pureMusicHint', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create a song without lyrics', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 437. AI 音乐创作-创建一首没有歌词的歌曲 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.pureMusicHint' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-创建一首没有歌词的歌曲', 'ai.music.message.pureMusicHint', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建一首没有歌词的歌曲', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 438. AI 音乐创作-描述您想要的音乐风格，Suno无法识别艺术家的名字，但可以理解流派和氛围 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.styleHint';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-描述您想要的音乐风格，Suno无法识别艺术家的名字，但可以理解流派和氛围', 'ai.music.message.styleHint', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 438. AI 音乐创作-描述您想要的音乐风格，Suno无法识别艺术家的名字，但可以理解流派和氛围 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.styleHint' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-描述您想要的音乐风格，Suno无法识别艺术家的名字，但可以理解流派和氛围', 'ai.music.message.styleHint', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'describe the music style you want, suno cannot recognize artist names but understands genre and atmosphere', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 438. AI 音乐创作-描述您想要的音乐风格，Suno无法识别艺术家的名字，但可以理解流派和氛围 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.styleHint' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-描述您想要的音乐风格，Suno无法识别艺术家的名字，但可以理解流派和氛围', 'ai.music.message.styleHint', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '描述您想要的音乐风格，Suno无法识别艺术家的名字，但可以理解流派和氛围', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 439. AI 音乐创作-输入音乐风格(英文) (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.stylePlaceholder';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-输入音乐风格(英文)', 'ai.music.message.stylePlaceholder', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 439. AI 音乐创作-输入音乐风格(英文) - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.stylePlaceholder' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-输入音乐风格(英文)', 'ai.music.message.stylePlaceholder', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'enter music style (english)', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 439. AI 音乐创作-输入音乐风格(英文) - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.stylePlaceholder' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-输入音乐风格(英文)', 'ai.music.message.stylePlaceholder', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '输入音乐风格(英文)', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 440. AI 音乐创作-乡村 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.tagCountry';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-乡村', 'ai.music.message.tagCountry', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 440. AI 音乐创作-乡村 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.tagCountry' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-乡村', 'ai.music.message.tagCountry', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'country', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 440. AI 音乐创作-乡村 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.tagCountry' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-乡村', 'ai.music.message.tagCountry', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '乡村', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 441. AI 音乐创作-爵士 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.tagJazz';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-爵士', 'ai.music.message.tagJazz', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 441. AI 音乐创作-爵士 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.tagJazz' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-爵士', 'ai.music.message.tagJazz', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'jazz', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 441. AI 音乐创作-爵士 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.tagJazz' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-爵士', 'ai.music.message.tagJazz', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '爵士', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 442. AI 音乐创作-儿童音乐 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.tagKidsmusic';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-儿童音乐', 'ai.music.message.tagKidsmusic', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 442. AI 音乐创作-儿童音乐 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.tagKidsmusic' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-儿童音乐', 'ai.music.message.tagKidsmusic', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'kids music', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 442. AI 音乐创作-儿童音乐 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.tagKidsmusic' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-儿童音乐', 'ai.music.message.tagKidsmusic', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '儿童音乐', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 443. AI 音乐创作-流行 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.tagPop';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-流行', 'ai.music.message.tagPop', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 443. AI 音乐创作-流行 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.tagPop' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-流行', 'ai.music.message.tagPop', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'pop', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 443. AI 音乐创作-流行 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.tagPop' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-流行', 'ai.music.message.tagPop', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流行', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 444. AI 音乐创作-朋克 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.tagPunk';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-朋克', 'ai.music.message.tagPunk', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 444. AI 音乐创作-朋克 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.tagPunk' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-朋克', 'ai.music.message.tagPunk', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'punk', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 444. AI 音乐创作-朋克 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.tagPunk' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-朋克', 'ai.music.message.tagPunk', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '朋克', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 445. AI 音乐创作-摇滚 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.tagRock';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-摇滚', 'ai.music.message.tagRock', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 445. AI 音乐创作-摇滚 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.tagRock' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-摇滚', 'ai.music.message.tagRock', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'rock', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 445. AI 音乐创作-摇滚 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.tagRock' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-摇滚', 'ai.music.message.tagRock', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '摇滚', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 446. AI 音乐创作-灵魂乐 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.tagSoul';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-灵魂乐', 'ai.music.message.tagSoul', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 446. AI 音乐创作-灵魂乐 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.tagSoul' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-灵魂乐', 'ai.music.message.tagSoul', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'soul', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 446. AI 音乐创作-灵魂乐 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.tagSoul' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-灵魂乐', 'ai.music.message.tagSoul', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '灵魂乐', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 447. AI 音乐创作-V2 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.v2';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-V2', 'ai.music.message.v2', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 447. AI 音乐创作-V2 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.v2' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-V2', 'ai.music.message.v2', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'v2', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 447. AI 音乐创作-V2 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.v2' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-V2', 'ai.music.message.v2', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'V2', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 448. AI 音乐创作-V3 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.v3';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-V3', 'ai.music.message.v3', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 448. AI 音乐创作-V3 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.v3' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-V3', 'ai.music.message.v3', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'v3', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 448. AI 音乐创作-V3 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.v3' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-V3', 'ai.music.message.v3', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'V3', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 449. AI 音乐创作-版本 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.version';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-版本', 'ai.music.message.version', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 449. AI 音乐创作-版本 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.version' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-版本', 'ai.music.message.version', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'version', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 449. AI 音乐创作-版本 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.version' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-版本', 'ai.music.message.version', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '版本', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 450. AI 音乐创作-视频 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.message.video';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-视频', 'ai.music.message.video', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 450. AI 音乐创作-视频 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.video' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-视频', 'ai.music.message.video', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'video', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 450. AI 音乐创作-视频 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.message.video' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 音乐创作-视频', 'ai.music.message.video', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '视频', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 451. AI音乐创作 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.music.music';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐创作', 'ai.music.music', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 451. AI音乐创作 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.music' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐创作', 'ai.music.music', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'ai music', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 451. AI音乐创作 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.music.music' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI音乐创作', 'ai.music.music', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 音乐创作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 452. AI工作流 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流', 'ai.workflow', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 452. AI工作流 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流', 'ai.workflow', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 452. AI工作流 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流', 'ai.workflow', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 工作流', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 453. AI 工作流-新建工作流 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.action.create';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-新建工作流', 'ai.workflow.action.create', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 453. AI 工作流-新建工作流 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.action.create' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-新建工作流', 'ai.workflow.action.create', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'create workflow', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 453. AI 工作流-新建工作流 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.action.create' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-新建工作流', 'ai.workflow.action.create', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '新建工作流', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 454. AI 工作流-删除工作流 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-删除工作流', 'ai.workflow.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 454. AI 工作流-删除工作流 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-删除工作流', 'ai.workflow.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete workflow', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 454. AI 工作流-删除工作流 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-删除工作流', 'ai.workflow.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除工作流', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 455. AI 工作流-发布工作流 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.action.deploy';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-发布工作流', 'ai.workflow.action.deploy', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 455. AI 工作流-发布工作流 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.action.deploy' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-发布工作流', 'ai.workflow.action.deploy', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'deploy workflow', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 455. AI 工作流-发布工作流 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.action.deploy' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-发布工作流', 'ai.workflow.action.deploy', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '发布工作流', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 456. AI 工作流-AI工作流查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-AI工作流查询', 'ai.workflow.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 456. AI 工作流-AI工作流查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-AI工作流查询', 'ai.workflow.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query workflow', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 456. AI 工作流-AI工作流查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-AI工作流查询', 'ai.workflow.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'AI 工作流查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 457. AI 工作流-测试工作流 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.action.test';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-测试工作流', 'ai.workflow.action.test', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 457. AI 工作流-测试工作流 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.action.test' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-测试工作流', 'ai.workflow.action.test', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'test workflow', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 457. AI 工作流-测试工作流 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.action.test' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-测试工作流', 'ai.workflow.action.test', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '测试工作流', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 458. AI 工作流-修改工作流 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.action.update';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-修改工作流', 'ai.workflow.action.update', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 458. AI 工作流-修改工作流 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.action.update' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-修改工作流', 'ai.workflow.action.update', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'update workflow', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 458. AI 工作流-修改工作流 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.action.update' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-修改工作流', 'ai.workflow.action.update', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '修改工作流', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 459. AI 工作流-流程标识 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程标识', 'ai.workflow.field.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 459. AI 工作流-流程标识 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程标识', 'ai.workflow.field.code', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'workflow code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 459. AI 工作流-流程标识 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程标识', 'ai.workflow.field.code', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程标识', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 460. AI 工作流-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-创建时间', 'ai.workflow.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 460. AI 工作流-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-创建时间', 'ai.workflow.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 460. AI 工作流-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-创建时间', 'ai.workflow.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 461. AI 工作流-流程描述 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.description';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程描述', 'ai.workflow.field.description', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 461. AI 工作流-流程描述 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.description' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程描述', 'ai.workflow.field.description', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'description', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 461. AI 工作流-流程描述 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.description' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程描述', 'ai.workflow.field.description', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程描述', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 462. AI 工作流-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-编号', 'ai.workflow.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 462. AI 工作流-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-编号', 'ai.workflow.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 462. AI 工作流-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-编号', 'ai.workflow.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 463. AI 工作流-流程名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.name';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程名称', 'ai.workflow.field.name', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 463. AI 工作流-流程名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.name' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程名称', 'ai.workflow.field.name', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'workflow name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 463. AI 工作流-流程名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.name' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程名称', 'ai.workflow.field.name', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 464. AI 工作流-备注 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.remark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-备注', 'ai.workflow.field.remark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 464. AI 工作流-备注 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.remark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-备注', 'ai.workflow.field.remark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'remark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 464. AI 工作流-备注 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.remark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-备注', 'ai.workflow.field.remark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '备注', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 465. AI 工作流-状态 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.field.status';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-状态', 'ai.workflow.field.status', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 465. AI 工作流-状态 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.status' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-状态', 'ai.workflow.field.status', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 465. AI 工作流-状态 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.field.status' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-状态', 'ai.workflow.field.status', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '状态', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 466. AI 工作流-AI工作流列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-AI工作流列表', 'ai.workflow.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 466. AI 工作流-AI工作流列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-AI工作流列表', 'ai.workflow.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'ai workflow list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 466. AI 工作流-AI工作流列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-AI工作流列表', 'ai.workflow.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'AI 工作流列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 467. AI工作流 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流', 'ai.workflow.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 467. AI工作流 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流', 'ai.workflow.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'ai workflow', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 467. AI工作流 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流', 'ai.workflow.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'AI 工作流', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 468. AI 工作流-添加参数 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.addParam';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-添加参数', 'ai.workflow.message.addParam', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 468. AI 工作流-添加参数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.addParam' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-添加参数', 'ai.workflow.message.addParam', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'add param', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 468. AI 工作流-添加参数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.addParam' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-添加参数', 'ai.workflow.message.addParam', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '添加参数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 469. AI 工作流-点击运行查看结果 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.clickRunToSeeResult';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-点击运行查看结果', 'ai.workflow.message.clickRunToSeeResult', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 469. AI 工作流-点击运行查看结果 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.clickRunToSeeResult' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-点击运行查看结果', 'ai.workflow.message.clickRunToSeeResult', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'click run to see result', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 469. AI 工作流-点击运行查看结果 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.clickRunToSeeResult' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-点击运行查看结果', 'ai.workflow.message.clickRunToSeeResult', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '点击运行查看结果', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 470. AI 工作流-流程标识不能为空 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.codeRequired';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程标识不能为空', 'ai.workflow.message.codeRequired', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 470. AI 工作流-流程标识不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.codeRequired' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程标识不能为空', 'ai.workflow.message.codeRequired', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'workflow code is required', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 470. AI 工作流-流程标识不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.codeRequired' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程标识不能为空', 'ai.workflow.message.codeRequired', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程标识不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 471. AI 工作流-是否确认发布该流程？ (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.confirmDeploy';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-是否确认发布该流程？', 'ai.workflow.message.confirmDeploy', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 471. AI 工作流-是否确认发布该流程？ - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.confirmDeploy' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-是否确认发布该流程？', 'ai.workflow.message.confirmDeploy', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'confirm to deploy this workflow?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 471. AI 工作流-是否确认发布该流程？ - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.confirmDeploy' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-是否确认发布该流程？', 'ai.workflow.message.confirmDeploy', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '是否确认发布该流程？', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 472. AI 工作流-发布失败 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.deployFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-发布失败', 'ai.workflow.message.deployFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 472. AI 工作流-发布失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.deployFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-发布失败', 'ai.workflow.message.deployFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'deploy failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 472. AI 工作流-发布失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.deployFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-发布失败', 'ai.workflow.message.deployFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发布失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 473. AI 工作流-发布成功 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.deploySuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-发布成功', 'ai.workflow.message.deploySuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 473. AI 工作流-发布成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.deploySuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-发布成功', 'ai.workflow.message.deploySuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'deployed successfully', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 473. AI 工作流-发布成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.deploySuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-发布成功', 'ai.workflow.message.deploySuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '发布成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 474. AI 工作流-执行中... (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.executing';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-执行中...', 'ai.workflow.message.executing', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 474. AI 工作流-执行中... - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.executing' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-执行中...', 'ai.workflow.message.executing', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'executing...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 474. AI 工作流-执行中... - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.executing' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-执行中...', 'ai.workflow.message.executing', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '执行中...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 475. AI 工作流-JSON格式错误 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.jsonFormatError';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-JSON格式错误', 'ai.workflow.message.jsonFormatError', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 475. AI 工作流-JSON格式错误 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.jsonFormatError' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-JSON格式错误', 'ai.workflow.message.jsonFormatError', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'json format error', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 475. AI 工作流-JSON格式错误 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.jsonFormatError' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-JSON格式错误', 'ai.workflow.message.jsonFormatError', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'JSON格式错误', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 476. AI 工作流-必须为true/false (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.mustBeTrueOrFalse';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-必须为true/false', 'ai.workflow.message.mustBeTrueOrFalse', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 476. AI 工作流-必须为true/false - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.mustBeTrueOrFalse' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-必须为true/false', 'ai.workflow.message.mustBeTrueOrFalse', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'must be true/false', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 476. AI 工作流-必须为true/false - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.mustBeTrueOrFalse' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-必须为true/false', 'ai.workflow.message.mustBeTrueOrFalse', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '必须为 true/false', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 477. AI 工作流-流程名称不能为空 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.nameRequired';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程名称不能为空', 'ai.workflow.message.nameRequired', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 477. AI 工作流-流程名称不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.nameRequired' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程名称不能为空', 'ai.workflow.message.nameRequired', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'workflow name is required', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 477. AI 工作流-流程名称不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.nameRequired' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程名称不能为空', 'ai.workflow.message.nameRequired', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程名称不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 478. AI 工作流-非数字格式 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.nonNumericFormat';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-非数字格式', 'ai.workflow.message.nonNumericFormat', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 478. AI 工作流-非数字格式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.nonNumericFormat' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-非数字格式', 'ai.workflow.message.nonNumericFormat', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'non-numeric format', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 478. AI 工作流-非数字格式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.nonNumericFormat' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-非数字格式', 'ai.workflow.message.nonNumericFormat', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '非数字格式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 479. AI 工作流-参数名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.paramName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-参数名', 'ai.workflow.message.paramName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 479. AI 工作流-参数名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.paramName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-参数名', 'ai.workflow.message.paramName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'param name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 479. AI 工作流-参数名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.paramName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-参数名', 'ai.workflow.message.paramName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '参数名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 480. AI 工作流-参数值 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.paramValue';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-参数值', 'ai.workflow.message.paramValue', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 480. AI 工作流-参数值 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.paramValue' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-参数值', 'ai.workflow.message.paramValue', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'param value', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 480. AI 工作流-参数值 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.paramValue' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-参数值', 'ai.workflow.message.paramValue', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '参数值', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 481. AI 工作流-参数{0}转换失败 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.parameterConversionFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-参数{0}转换失败', 'ai.workflow.message.parameterConversionFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 481. AI 工作流-参数{0}转换失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.parameterConversionFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-参数{0}转换失败', 'ai.workflow.message.parameterConversionFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'parameter {0} conversion failed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 481. AI 工作流-参数{0}转换失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.parameterConversionFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-参数{0}转换失败', 'ai.workflow.message.parameterConversionFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '参数 {0} 转换失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 482. AI 工作流-加载参数失败 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.parameterLoadFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-加载参数失败', 'ai.workflow.message.parameterLoadFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 482. AI 工作流-加载参数失败 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.parameterLoadFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-加载参数失败', 'ai.workflow.message.parameterLoadFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'failed to load parameters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 482. AI 工作流-加载参数失败 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.parameterLoadFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-加载参数失败', 'ai.workflow.message.parameterLoadFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '加载参数失败', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 483. AI 工作流-请完善所有步骤的必填信息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.pleaseCompleteAllSteps';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-请完善所有步骤的必填信息', 'ai.workflow.message.pleaseCompleteAllSteps', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 483. AI 工作流-请完善所有步骤的必填信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.pleaseCompleteAllSteps' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-请完善所有步骤的必填信息', 'ai.workflow.message.pleaseCompleteAllSteps', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'please complete all required fields', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 483. AI 工作流-请完善所有步骤的必填信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.pleaseCompleteAllSteps' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-请完善所有步骤的必填信息', 'ai.workflow.message.pleaseCompleteAllSteps', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请完善所有步骤的必填信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 484. AI 工作流-请完善基本信息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.pleaseCompleteBasicInfo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-请完善基本信息', 'ai.workflow.message.pleaseCompleteBasicInfo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 484. AI 工作流-请完善基本信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.pleaseCompleteBasicInfo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-请完善基本信息', 'ai.workflow.message.pleaseCompleteBasicInfo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'please complete basic info', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 484. AI 工作流-请完善基本信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.pleaseCompleteBasicInfo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-请完善基本信息', 'ai.workflow.message.pleaseCompleteBasicInfo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请完善基本信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 485. AI 工作流-请先完善当前步骤必填信息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.pleaseCompleteCurrentStep';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-请先完善当前步骤必填信息', 'ai.workflow.message.pleaseCompleteCurrentStep', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 485. AI 工作流-请先完善当前步骤必填信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.pleaseCompleteCurrentStep' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-请先完善当前步骤必填信息', 'ai.workflow.message.pleaseCompleteCurrentStep', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'please complete current step first', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 485. AI 工作流-请先完善当前步骤必填信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.pleaseCompleteCurrentStep' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-请先完善当前步骤必填信息', 'ai.workflow.message.pleaseCompleteCurrentStep', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请先完善当前步骤必填信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 486. AI 工作流-请完善工作流信息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.pleaseCompleteWorkflowInfo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-请完善工作流信息', 'ai.workflow.message.pleaseCompleteWorkflowInfo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 486. AI 工作流-请完善工作流信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.pleaseCompleteWorkflowInfo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-请完善工作流信息', 'ai.workflow.message.pleaseCompleteWorkflowInfo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'please complete workflow info', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 486. AI 工作流-请完善工作流信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.pleaseCompleteWorkflowInfo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-请完善工作流信息', 'ai.workflow.message.pleaseCompleteWorkflowInfo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请完善工作流信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 487. AI 工作流-请设计流程 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.pleaseDesignWorkflow';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-请设计流程', 'ai.workflow.message.pleaseDesignWorkflow', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 487. AI 工作流-请设计流程 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.pleaseDesignWorkflow' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-请设计流程', 'ai.workflow.message.pleaseDesignWorkflow', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'please design workflow', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 487. AI 工作流-请设计流程 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.pleaseDesignWorkflow' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-请设计流程', 'ai.workflow.message.pleaseDesignWorkflow', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请设计流程', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 488. AI 工作流-恢复 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.recover';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-恢复', 'ai.workflow.message.recover', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 488. AI 工作流-恢复 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.recover' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-恢复', 'ai.workflow.message.recover', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'recover', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 488. AI 工作流-恢复 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.recover' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-恢复', 'ai.workflow.message.recover', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '恢复', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 489. AI 工作流-运行失败，请检查参数和网络连接 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.runFailed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-运行失败，请检查参数和网络连接', 'ai.workflow.message.runFailed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 489. AI 工作流-运行失败，请检查参数和网络连接 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.runFailed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-运行失败，请检查参数和网络连接', 'ai.workflow.message.runFailed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'run failed, please check parameters and network connection', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 489. AI 工作流-运行失败，请检查参数和网络连接 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.runFailed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-运行失败，请检查参数和网络连接', 'ai.workflow.message.runFailed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '运行失败，请检查参数和网络连接', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 490. AI 工作流-运行参数配置 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.runParamsConfig';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-运行参数配置', 'ai.workflow.message.runParamsConfig', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 490. AI 工作流-运行参数配置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.runParamsConfig' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-运行参数配置', 'ai.workflow.message.runParamsConfig', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'run params config', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 490. AI 工作流-运行参数配置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.runParamsConfig' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-运行参数配置', 'ai.workflow.message.runParamsConfig', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '运行参数配置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 491. AI 工作流-运行结果 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.runResult';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-运行结果', 'ai.workflow.message.runResult', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 491. AI 工作流-运行结果 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.runResult' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-运行结果', 'ai.workflow.message.runResult', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'run result', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 491. AI 工作流-运行结果 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.runResult' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-运行结果', 'ai.workflow.message.runResult', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '运行结果', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 492. AI 工作流-运行流程 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.runWorkflow';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-运行流程', 'ai.workflow.message.runWorkflow', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 492. AI 工作流-运行流程 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.runWorkflow' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-运行流程', 'ai.workflow.message.runWorkflow', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'run workflow', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 492. AI 工作流-运行流程 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.runWorkflow' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-运行流程', 'ai.workflow.message.runWorkflow', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '运行流程', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 493. AI 工作流-状态不能为空 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.statusRequired';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-状态不能为空', 'ai.workflow.message.statusRequired', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 493. AI 工作流-状态不能为空 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.statusRequired' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-状态不能为空', 'ai.workflow.message.statusRequired', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'status is required', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 493. AI 工作流-状态不能为空 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.statusRequired' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-状态不能为空', 'ai.workflow.message.statusRequired', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '状态不能为空', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 494. AI 工作流-基本信息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.stepBasicInfo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-基本信息', 'ai.workflow.message.stepBasicInfo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 494. AI 工作流-基本信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.stepBasicInfo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-基本信息', 'ai.workflow.message.stepBasicInfo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'basic info', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 494. AI 工作流-基本信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.stepBasicInfo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-基本信息', 'ai.workflow.message.stepBasicInfo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '基本信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 495. AI 工作流-工作流设计 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.stepWorkflowDesign';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-工作流设计', 'ai.workflow.message.stepWorkflowDesign', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 495. AI 工作流-工作流设计 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.stepWorkflowDesign' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-工作流设计', 'ai.workflow.message.stepWorkflowDesign', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'workflow design', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 495. AI 工作流-工作流设计 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.stepWorkflowDesign' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-工作流设计', 'ai.workflow.message.stepWorkflowDesign', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '工作流设计', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 496. AI 工作流-不支持的类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.unsupportedType';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-不支持的类型', 'ai.workflow.message.unsupportedType', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 496. AI 工作流-不支持的类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.unsupportedType' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-不支持的类型', 'ai.workflow.message.unsupportedType', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'unsupported type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 496. AI 工作流-不支持的类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.unsupportedType' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-不支持的类型', 'ai.workflow.message.unsupportedType', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '不支持的类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 497. AI 工作流-流程缺少开始节点 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.workflowMissingStartNode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程缺少开始节点', 'ai.workflow.message.workflowMissingStartNode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 497. AI 工作流-流程缺少开始节点 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.workflowMissingStartNode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程缺少开始节点', 'ai.workflow.message.workflowMissingStartNode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'workflow missing start node', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 497. AI 工作流-流程缺少开始节点 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.workflowMissingStartNode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-流程缺少开始节点', 'ai.workflow.message.workflowMissingStartNode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '流程缺少开始节点', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 498. AI 工作流-工作流测试 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.message.workflowTest';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-工作流测试', 'ai.workflow.message.workflowTest', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 498. AI 工作流-工作流测试 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.workflowTest' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-工作流测试', 'ai.workflow.message.workflowTest', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'workflow test', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 498. AI 工作流-工作流测试 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.message.workflowTest' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 工作流-工作流测试', 'ai.workflow.message.workflowTest', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '工作流测试', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 499. AI工作流 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.workflow.workflow';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流', 'ai.workflow.workflow', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 499. AI工作流 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.workflow' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流', 'ai.workflow.workflow', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'ai workflow', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 499. AI工作流 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.workflow.workflow' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI工作流', 'ai.workflow.workflow', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 工作流', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 500. AI写作助手 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作助手', 'ai.write', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 500. AI写作助手 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作助手', 'ai.write', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 500. AI写作助手 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作助手', 'ai.write', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 写作助手', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 501. AI 写作助手-删除写作 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.action.delete';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-删除写作', 'ai.write.action.delete', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 501. AI 写作助手-删除写作 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.action.delete' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-删除写作', 'ai.write.action.delete', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'delete write', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 501. AI 写作助手-删除写作 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.action.delete' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-删除写作', 'ai.write.action.delete', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, '删除写作', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 502. AI 写作助手-AI写作查询 (use_type=4)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.action.query';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-AI写作查询', 'ai.write.action.query', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, @ORDER_NUM_FUNCTION, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 502. AI 写作助手-AI写作查询 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.action.query' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-AI写作查询', 'ai.write.action.query', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'query write', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 502. AI 写作助手-AI写作查询 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.action.query' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-AI写作查询', 'ai.write.action.query', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FUNCTION, 'AI 写作查询', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 503. AI 写作助手-创建时间 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.field.createTime';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-创建时间', 'ai.write.field.createTime', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 503. AI 写作助手-创建时间 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.createTime' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-创建时间', 'ai.write.field.createTime', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 503. AI 写作助手-创建时间 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.createTime' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-创建时间', 'ai.write.field.createTime', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建时间', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 504. AI 写作助手-错误信息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.field.errorMessage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-错误信息', 'ai.write.field.errorMessage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 504. AI 写作助手-错误信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.errorMessage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-错误信息', 'ai.write.field.errorMessage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'error message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 504. AI 写作助手-错误信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.errorMessage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-错误信息', 'ai.write.field.errorMessage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '错误信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 505. AI 写作助手-格式 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.field.format';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-格式', 'ai.write.field.format', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 505. AI 写作助手-格式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.format' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-格式', 'ai.write.field.format', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'format', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 505. AI 写作助手-格式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.format' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-格式', 'ai.write.field.format', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '格式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 506. AI 写作助手-生成的内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.field.generatedContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-生成的内容', 'ai.write.field.generatedContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 506. AI 写作助手-生成的内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.generatedContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-生成的内容', 'ai.write.field.generatedContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'generated content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 506. AI 写作助手-生成的内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.generatedContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-生成的内容', 'ai.write.field.generatedContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '生成的内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 507. AI 写作助手-编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.field.id';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-编号', 'ai.write.field.id', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 507. AI 写作助手-编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.id' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-编号', 'ai.write.field.id', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 507. AI 写作助手-编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.id' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-编号', 'ai.write.field.id', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 508. AI 写作助手-语言 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.field.language';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-语言', 'ai.write.field.language', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 508. AI 写作助手-语言 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.language' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-语言', 'ai.write.field.language', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'language', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 508. AI 写作助手-语言 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.language' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-语言', 'ai.write.field.language', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '语言', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 509. AI 写作助手-长度 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.field.length';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-长度', 'ai.write.field.length', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 509. AI 写作助手-长度 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.length' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-长度', 'ai.write.field.length', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'length', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 509. AI 写作助手-长度 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.length' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-长度', 'ai.write.field.length', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '长度', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 510. AI 写作助手-模型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.field.model';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-模型', 'ai.write.field.model', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 510. AI 写作助手-模型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.model' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-模型', 'ai.write.field.model', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'model', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 510. AI 写作助手-模型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.model' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-模型', 'ai.write.field.model', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '模型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 511. AI 写作助手-原文 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.field.originalContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-原文', 'ai.write.field.originalContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 511. AI 写作助手-原文 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.originalContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-原文', 'ai.write.field.originalContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'original content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 511. AI 写作助手-原文 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.originalContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-原文', 'ai.write.field.originalContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '原文', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 512. AI 写作助手-平台 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.field.platform';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-平台', 'ai.write.field.platform', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 512. AI 写作助手-平台 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.platform' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-平台', 'ai.write.field.platform', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'platform', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 512. AI 写作助手-平台 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.platform' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-平台', 'ai.write.field.platform', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '平台', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 513. AI 写作助手-生成内容提示 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.field.prompt';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-生成内容提示', 'ai.write.field.prompt', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 513. AI 写作助手-生成内容提示 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.prompt' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-生成内容提示', 'ai.write.field.prompt', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'prompt', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 513. AI 写作助手-生成内容提示 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.prompt' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-生成内容提示', 'ai.write.field.prompt', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '生成内容提示', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 514. AI 写作助手-语气 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.field.tone';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-语气', 'ai.write.field.tone', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 514. AI 写作助手-语气 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.tone' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-语气', 'ai.write.field.tone', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tone', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 514. AI 写作助手-语气 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.tone' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-语气', 'ai.write.field.tone', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '语气', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 515. AI 写作助手-写作类型 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.field.type';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-写作类型', 'ai.write.field.type', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 515. AI 写作助手-写作类型 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.type' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-写作类型', 'ai.write.field.type', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'write type', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 515. AI 写作助手-写作类型 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.type' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-写作类型', 'ai.write.field.type', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '写作类型', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 516. AI 写作助手-用户 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.field.user';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-用户', 'ai.write.field.user', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 516. AI 写作助手-用户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.user' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-用户', 'ai.write.field.user', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 516. AI 写作助手-用户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.user' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-用户', 'ai.write.field.user', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 517. AI 写作助手-用户编号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.field.userId';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-用户编号', 'ai.write.field.userId', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 517. AI 写作助手-用户编号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.userId' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-用户编号', 'ai.write.field.userId', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'user id', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 517. AI 写作助手-用户编号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.field.userId' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-用户编号', 'ai.write.field.userId', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '用户编号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 518. AI 写作助手-AI写作列表 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.list';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-AI写作列表', 'ai.write.list', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 518. AI 写作助手-AI写作列表 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.list' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-AI写作列表', 'ai.write.list', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'ai write list', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 518. AI 写作助手-AI写作列表 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.list' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-AI写作列表', 'ai.write.list', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'AI 写作列表', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 519. AI写作助手 (use_type=6)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.menu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作助手', 'ai.write.menu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, @ORDER_NUM_MENU, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 519. AI写作助手 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.menu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作助手', 'ai.write.menu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'ai write', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 519. AI写作助手 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.menu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作助手', 'ai.write.menu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_MENU, 'AI 写作助手', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 520. AI 写作助手-复制 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.buttonCopy';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-复制', 'ai.write.message.buttonCopy', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 520. AI 写作助手-复制 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.buttonCopy' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-复制', 'ai.write.message.buttonCopy', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'copy', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 520. AI 写作助手-复制 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.buttonCopy' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-复制', 'ai.write.message.buttonCopy', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '复制', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 521. AI 写作助手-生成 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.buttonGenerate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-生成', 'ai.write.message.buttonGenerate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 521. AI 写作助手-生成 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.buttonGenerate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-生成', 'ai.write.message.buttonGenerate', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'generate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 521. AI 写作助手-生成 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.buttonGenerate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-生成', 'ai.write.message.buttonGenerate', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '生成', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 522. AI 写作助手-重置 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.buttonReset';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-重置', 'ai.write.message.buttonReset', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 522. AI 写作助手-重置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.buttonReset' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-重置', 'ai.write.message.buttonReset', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'reset', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 522. AI 写作助手-重置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.buttonReset' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-重置', 'ai.write.message.buttonReset', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '重置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 523. AI 写作助手-终止生成 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.buttonStopGenerate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-终止生成', 'ai.write.message.buttonStopGenerate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 523. AI 写作助手-终止生成 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.buttonStopGenerate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-终止生成', 'ai.write.message.buttonStopGenerate', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'stop generate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 523. AI 写作助手-终止生成 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.buttonStopGenerate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-终止生成', 'ai.write.message.buttonStopGenerate', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '终止生成', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 524. AI 写作助手-复制成功 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.copySuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-复制成功', 'ai.write.message.copySuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 524. AI 写作助手-复制成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.copySuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-复制成功', 'ai.write.message.copySuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'copied successfully', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 524. AI 写作助手-复制成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.copySuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-复制成功', 'ai.write.message.copySuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '复制成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 525. AI 写作助手-写作异常!{0} (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.errorWriting';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-写作异常!{0}', 'ai.write.message.errorWriting', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 525. AI 写作助手-写作异常!{0} - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.errorWriting' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-写作异常!{0}', 'ai.write.message.errorWriting', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'writing error! {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 525. AI 写作助手-写作异常!{0} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.errorWriting' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-写作异常!{0}', 'ai.write.message.errorWriting', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '写作异常! {0}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 526. AI 写作助手-示例 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.hintExample';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-示例', 'ai.write.message.hintExample', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 526. AI 写作助手-示例 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.hintExample' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-示例', 'ai.write.message.hintExample', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'example', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 526. AI 写作助手-示例 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.hintExample' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-示例', 'ai.write.message.hintExample', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '示例', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 527. AI 写作助手-格式 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.labelFormat';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-格式', 'ai.write.message.labelFormat', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 527. AI 写作助手-格式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.labelFormat' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-格式', 'ai.write.message.labelFormat', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'format', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 527. AI 写作助手-格式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.labelFormat' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-格式', 'ai.write.message.labelFormat', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '格式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 528. AI 写作助手-语言 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.labelLanguage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-语言', 'ai.write.message.labelLanguage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 528. AI 写作助手-语言 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.labelLanguage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-语言', 'ai.write.message.labelLanguage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'language', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 528. AI 写作助手-语言 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.labelLanguage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-语言', 'ai.write.message.labelLanguage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '语言', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 529. AI 写作助手-长度 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.labelLength';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-长度', 'ai.write.message.labelLength', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 529. AI 写作助手-长度 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.labelLength' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-长度', 'ai.write.message.labelLength', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'length', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 529. AI 写作助手-长度 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.labelLength' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-长度', 'ai.write.message.labelLength', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '长度', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 530. AI 写作助手-原文 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.labelOriginalContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-原文', 'ai.write.message.labelOriginalContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 530. AI 写作助手-原文 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.labelOriginalContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-原文', 'ai.write.message.labelOriginalContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'original content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 530. AI 写作助手-原文 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.labelOriginalContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-原文', 'ai.write.message.labelOriginalContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '原文', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 531. AI 写作助手-回复内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.labelReplyContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-回复内容', 'ai.write.message.labelReplyContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 531. AI 写作助手-回复内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.labelReplyContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-回复内容', 'ai.write.message.labelReplyContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'reply content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 531. AI 写作助手-回复内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.labelReplyContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-回复内容', 'ai.write.message.labelReplyContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '回复内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 532. AI 写作助手-语气 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.labelTone';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-语气', 'ai.write.message.labelTone', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 532. AI 写作助手-语气 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.labelTone' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-语气', 'ai.write.message.labelTone', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tone', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 532. AI 写作助手-语气 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.labelTone' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-语气', 'ai.write.message.labelTone', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '语气', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 533. AI 写作助手-写作内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.labelWriteContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-写作内容', 'ai.write.message.labelWriteContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 533. AI 写作助手-写作内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.labelWriteContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-写作内容', 'ai.write.message.labelWriteContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'write content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 533. AI 写作助手-写作内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.labelWriteContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-写作内容', 'ai.write.message.labelWriteContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '写作内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 534. AI 写作助手-生成的内容…… (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.placeholderGeneratedContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-生成的内容……', 'ai.write.message.placeholderGeneratedContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 534. AI 写作助手-生成的内容…… - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.placeholderGeneratedContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-生成的内容……', 'ai.write.message.placeholderGeneratedContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'generated content...', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 534. AI 写作助手-生成的内容…… - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.placeholderGeneratedContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-生成的内容……', 'ai.write.message.placeholderGeneratedContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '生成的内容……', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 535. AI 写作助手-请输入原文 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.placeholderOriginalContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-请输入原文', 'ai.write.message.placeholderOriginalContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 535. AI 写作助手-请输入原文 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.placeholderOriginalContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-请输入原文', 'ai.write.message.placeholderOriginalContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'please enter original content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 535. AI 写作助手-请输入原文 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.placeholderOriginalContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-请输入原文', 'ai.write.message.placeholderOriginalContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入原文', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 536. AI 写作助手-请输入回复内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.placeholderReplyContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-请输入回复内容', 'ai.write.message.placeholderReplyContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 536. AI 写作助手-请输入回复内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.placeholderReplyContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-请输入回复内容', 'ai.write.message.placeholderReplyContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'please enter reply content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 536. AI 写作助手-请输入回复内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.placeholderReplyContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-请输入回复内容', 'ai.write.message.placeholderReplyContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入回复内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 537. AI 写作助手-请输入写作内容 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.placeholderWriteContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-请输入写作内容', 'ai.write.message.placeholderWriteContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 537. AI 写作助手-请输入写作内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.placeholderWriteContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-请输入写作内容', 'ai.write.message.placeholderWriteContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'please enter write content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 537. AI 写作助手-请输入写作内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.placeholderWriteContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-请输入写作内容', 'ai.write.message.placeholderWriteContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入写作内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 538. AI 写作助手-回复 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.tabReply';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-回复', 'ai.write.message.tabReply', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 538. AI 写作助手-回复 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.tabReply' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-回复', 'ai.write.message.tabReply', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'reply', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 538. AI 写作助手-回复 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.tabReply' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-回复', 'ai.write.message.tabReply', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '回复', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 539. AI 写作助手-撰写 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.tabWriting';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-撰写', 'ai.write.message.tabWriting', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 539. AI 写作助手-撰写 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.tabWriting' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-撰写', 'ai.write.message.tabWriting', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'write', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 539. AI 写作助手-撰写 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.tabWriting' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-撰写', 'ai.write.message.tabWriting', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '撰写', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 540. AI 写作助手-预览 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.message.titlePreview';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-预览', 'ai.write.message.titlePreview', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 540. AI 写作助手-预览 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.titlePreview' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-预览', 'ai.write.message.titlePreview', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'preview', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 540. AI 写作助手-预览 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.message.titlePreview' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI 写作助手-预览', 'ai.write.message.titlePreview', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '预览', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 541. AI写作助手 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'ai.write.write';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作助手', 'ai.write.write', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 541. AI写作助手 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.write' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作助手', 'ai.write.write', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'ai write', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 541. AI写作助手 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'ai.write.write' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('AI写作助手', 'ai.write.write', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'AI 写作助手', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
