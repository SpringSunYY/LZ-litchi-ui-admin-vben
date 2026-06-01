-- =============================================
-- AUTHENTICATION i18n SQL
-- Generated: 2026-06-01
-- =============================================

SET @IS_SYSTEM = 0;
SET @MODULE_TYPE = 'authentication';
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

-- 1. 我同意 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.agree';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我同意', 'authentication.agree', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 我同意 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.agree' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我同意', 'authentication.agree', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'I agree to', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 我同意 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.agree' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('我同意', 'authentication.agree', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '我同意', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 请同意隐私政策和条款 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.agreeTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请同意隐私政策和条款', 'authentication.agreeTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 请同意隐私政策和条款 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.agreeTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请同意隐私政策和条款', 'authentication.agreeTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Please agree to the Privacy Policy and Terms', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 请同意隐私政策和条款 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.agreeTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请同意隐私政策和条款', 'authentication.agreeTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请同意隐私政策和条款', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 已经有租户了? (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.alreadyHaveTenant';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('已经有租户了?', 'authentication.alreadyHaveTenant', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 已经有租户了? - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.alreadyHaveTenant' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('已经有租户了?', 'authentication.alreadyHaveTenant', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'already have tenant', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 已经有租户了? - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.alreadyHaveTenant' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('已经有租户了?', 'authentication.alreadyHaveTenant', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '已经有租户了?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 验证码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.code';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证码', 'authentication.code', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 验证码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.code' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证码', 'authentication.code', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Security code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 验证码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.code' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证码', 'authentication.code', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '验证码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 请输入您的手机号码以开始管理您的项目 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.codeSubtitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入您的手机号码以开始管理您的项目', 'authentication.codeSubtitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 请输入您的手机号码以开始管理您的项目 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.codeSubtitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入您的手机号码以开始管理您的项目', 'authentication.codeSubtitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Enter your phone number to start managing your project', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 请输入您的手机号码以开始管理您的项目 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.codeSubtitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入您的手机号码以开始管理您的项目', 'authentication.codeSubtitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入您的手机号码以开始管理您的项目', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 请输入{0}位验证码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.codeTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入{0}位验证码', 'authentication.codeTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 请输入{0}位验证码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.codeTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入{0}位验证码', 'authentication.codeTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Security code required {0} characters', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 请输入{0}位验证码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.codeTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入{0}位验证码', 'authentication.codeTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入{0}位验证码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 确认密码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.confirmPassword';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认密码', 'authentication.confirmPassword', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 确认密码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.confirmPassword' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认密码', 'authentication.confirmPassword', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Confirm Password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 确认密码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.confirmPassword' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('确认密码', 'authentication.confirmPassword', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '确认密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 两次输入的密码不一致 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.confirmPasswordTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('两次输入的密码不一致', 'authentication.confirmPasswordTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 两次输入的密码不一致 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.confirmPasswordTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('两次输入的密码不一致', 'authentication.confirmPasswordTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'The passwords do not match', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 两次输入的密码不一致 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.confirmPasswordTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('两次输入的密码不一致', 'authentication.confirmPasswordTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '两次输入的密码不一致', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 创建一个租户 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.createAnTenant';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('创建一个租户', 'authentication.createAnTenant', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 创建一个租户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.createAnTenant' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('创建一个租户', 'authentication.createAnTenant', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create an tenant', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 创建一个租户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.createAnTenant' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('创建一个租户', 'authentication.createAnTenant', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建一个租户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 创建租户 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.createTenant';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('创建租户', 'authentication.createTenant', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 创建租户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.createTenant' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('创建租户', 'authentication.createTenant', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'create tenant', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 创建租户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.createTenant' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('创建租户', 'authentication.createTenant', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '创建租户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 请输入租户编码，用于租户登录 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.createTenantCodeInputTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户编码，用于租户登录', 'authentication.createTenantCodeInputTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 请输入租户编码，用于租户登录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.createTenantCodeInputTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户编码，用于租户登录', 'authentication.createTenantCodeInputTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Please enter tenant code,used for tenant login code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 请输入租户编码，用于租户登录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.createTenantCodeInputTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户编码，用于租户登录', 'authentication.createTenantCodeInputTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入租户编码，用于租户登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 请输入租户名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.createTenantNameInputTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户名称', 'authentication.createTenantNameInputTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 请输入租户名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.createTenantNameInputTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户名称', 'authentication.createTenantNameInputTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Please enter tenant name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 请输入租户名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.createTenantNameInputTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户名称', 'authentication.createTenantNameInputTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入租户名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 还没有租户? (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.createTenantTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('还没有租户?', 'authentication.createTenantTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 还没有租户? - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.createTenantTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('还没有租户?', 'authentication.createTenantTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'no tenant yet?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 还没有租户? - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.createTenantTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('还没有租户?', 'authentication.createTenantTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '还没有租户?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 邮箱 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.email';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱', 'authentication.email', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 邮箱 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.email' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱', 'authentication.email', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Email', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 邮箱 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.email' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('邮箱', 'authentication.email', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '邮箱', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 请输入邮箱 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.emailTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入邮箱', 'authentication.emailTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 请输入邮箱 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.emailTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入邮箱', 'authentication.emailTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Please enter email', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 请输入邮箱 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.emailTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入邮箱', 'authentication.emailTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入邮箱', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 你输入的邮箱格式不正确 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.emailValidErrorTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('你输入的邮箱格式不正确', 'authentication.emailValidErrorTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 你输入的邮箱格式不正确 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.emailValidErrorTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('你输入的邮箱格式不正确', 'authentication.emailValidErrorTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'The email format you entered is incorrect', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 你输入的邮箱格式不正确 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.emailValidErrorTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('你输入的邮箱格式不正确', 'authentication.emailValidErrorTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '你输入的邮箱格式不正确', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 忘记密码? (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.forgetPassword';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('忘记密码?', 'authentication.forgetPassword', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 忘记密码? - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.forgetPassword' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('忘记密码?', 'authentication.forgetPassword', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Forget Password?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 忘记密码? - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.forgetPassword' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('忘记密码?', 'authentication.forgetPassword', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '忘记密码?', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 输入您的电子邮件，我们将向您发送重置密码的连接 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.forgetPasswordSubtitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('输入您的电子邮件，我们将向您发送重置密码的连接', 'authentication.forgetPasswordSubtitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 输入您的电子邮件，我们将向您发送重置密码的连接 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.forgetPasswordSubtitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('输入您的电子邮件，我们将向您发送重置密码的连接', 'authentication.forgetPasswordSubtitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Enter your email and we''ll send you instructions to reset your password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 输入您的电子邮件，我们将向您发送重置密码的连接 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.forgetPasswordSubtitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('输入您的电子邮件，我们将向您发送重置密码的连接', 'authentication.forgetPasswordSubtitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '输入您的电子邮件，我们将向您发送重置密码的连接', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 表单未准备好 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.formNotReady';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单未准备好', 'authentication.formNotReady', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 表单未准备好 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.formNotReady' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单未准备好', 'authentication.formNotReady', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Form is not ready', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 表单未准备好 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.formNotReady' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('表单未准备好', 'authentication.formNotReady', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '表单未准备好', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 去登录 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.goToLogin';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('去登录', 'authentication.goToLogin', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 去登录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.goToLogin' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('去登录', 'authentication.goToLogin', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Login instead', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 去登录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.goToLogin' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('去登录', 'authentication.goToLogin', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '去登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 请输入有效的手机号码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.invalidMobile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入有效的手机号码', 'authentication.invalidMobile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 请输入有效的手机号码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.invalidMobile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入有效的手机号码', 'authentication.invalidMobile', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Please enter a valid mobile number', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 请输入有效的手机号码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.invalidMobile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入有效的手机号码', 'authentication.invalidMobile', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入有效的手机号码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 居左 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.layout.alignLeft';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('居左', 'authentication.layout.alignLeft', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 居左 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.layout.alignLeft' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('居左', 'authentication.layout.alignLeft', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Align Left', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 居左 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.layout.alignLeft' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('居左', 'authentication.layout.alignLeft', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '居左', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 居右 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.layout.alignRight';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('居右', 'authentication.layout.alignRight', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 居右 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.layout.alignRight' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('居右', 'authentication.layout.alignRight', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Align Right', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 居右 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.layout.alignRight' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('居右', 'authentication.layout.alignRight', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '居右', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 居中 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.layout.center';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('居中', 'authentication.layout.center', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 居中 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.layout.center' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('居中', 'authentication.layout.center', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Align Center', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. 居中 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.layout.center' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('居中', 'authentication.layout.center', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '居中', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 您的登录状态已过期，请重新登录以继续。 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.loginAgainSubTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('您的登录状态已过期，请重新登录以继续。', 'authentication.loginAgainSubTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 您的登录状态已过期，请重新登录以继续。 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.loginAgainSubTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('您的登录状态已过期，请重新登录以继续。', 'authentication.loginAgainSubTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Your login session has expired. Please log in again to continue.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. 您的登录状态已过期，请重新登录以继续。 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.loginAgainSubTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('您的登录状态已过期，请重新登录以继续。', 'authentication.loginAgainSubTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '您的登录状态已过期，请重新登录以继续。', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 重新登录 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.loginAgainTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重新登录', 'authentication.loginAgainTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 重新登录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.loginAgainTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重新登录', 'authentication.loginAgainTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Please Log In Again', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 重新登录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.loginAgainTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重新登录', 'authentication.loginAgainTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '重新登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 请输入您的帐户信息以开始管理您的项目 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.loginSubtitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入您的帐户信息以开始管理您的项目', 'authentication.loginSubtitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 请输入您的帐户信息以开始管理您的项目 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.loginSubtitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入您的帐户信息以开始管理您的项目', 'authentication.loginSubtitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Enter your account details to manage your projects', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 请输入您的帐户信息以开始管理您的项目 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.loginSubtitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入您的帐户信息以开始管理您的项目', 'authentication.loginSubtitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入您的帐户信息以开始管理您的项目', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 登录成功 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.loginSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录成功', 'authentication.loginSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 登录成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.loginSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录成功', 'authentication.loginSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Login Successful', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 登录成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.loginSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('登录成功', 'authentication.loginSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '登录成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 欢迎回来 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.loginSuccessDesc';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('欢迎回来', 'authentication.loginSuccessDesc', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 欢迎回来 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.loginSuccessDesc' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('欢迎回来', 'authentication.loginSuccessDesc', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Welcome Back', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 欢迎回来 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.loginSuccessDesc' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('欢迎回来', 'authentication.loginSuccessDesc', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '欢迎回来', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 手机号码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.mobile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('手机号码', 'authentication.mobile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 手机号码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.mobile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('手机号码', 'authentication.mobile', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Mobile', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 手机号码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.mobile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('手机号码', 'authentication.mobile', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '手机号码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 手机号码格式错误 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.mobileErrortip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('手机号码格式错误', 'authentication.mobileErrortip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 手机号码格式错误 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.mobileErrortip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('手机号码格式错误', 'authentication.mobileErrortip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'The phone number format is incorrect', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 手机号码格式错误 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.mobileErrortip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('手机号码格式错误', 'authentication.mobileErrortip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '手机号码格式错误', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 手机号登录 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.mobileLogin';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('手机号登录', 'authentication.mobileLogin', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 手机号登录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.mobileLogin' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('手机号登录', 'authentication.mobileLogin', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Mobile Login', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 手机号登录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.mobileLogin' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('手机号登录', 'authentication.mobileLogin', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '手机号登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 请输入手机号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.mobileTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入手机号', 'authentication.mobileTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 请输入手机号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.mobileTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入手机号', 'authentication.mobileTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Please enter mobile number', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 请输入手机号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.mobileTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入手机号', 'authentication.mobileTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入手机号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 昵称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.nickname';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('昵称', 'authentication.nickname', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 昵称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.nickname' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('昵称', 'authentication.nickname', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Nickname', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 昵称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.nickname' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('昵称', 'authentication.nickname', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '昵称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 请输入昵称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.nicknameTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入昵称', 'authentication.nicknameTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 请输入昵称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.nicknameTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入昵称', 'authentication.nicknameTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Please enter nickname', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 请输入昵称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.nicknameTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入昵称', 'authentication.nicknameTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入昵称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 您有未读消息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.noReadMessage';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('您有未读消息', 'authentication.noReadMessage', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 您有未读消息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.noReadMessage' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('您有未读消息', 'authentication.noReadMessage', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'No read message', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 您有未读消息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.noReadMessage' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('您有未读消息', 'authentication.noReadMessage', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '您有未读消息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 荔枝软件项目管理系统 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.pageDesc';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('荔枝软件项目管理系统', 'authentication.pageDesc', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 荔枝软件项目管理系统 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.pageDesc' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('荔枝软件项目管理系统', 'authentication.pageDesc', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'litchi frontend template', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 荔枝软件项目管理系统 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.pageDesc' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('荔枝软件项目管理系统', 'authentication.pageDesc', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '荔枝软件项目管理系统', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 欢迎使用 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.pageTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('欢迎使用', 'authentication.pageTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 欢迎使用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.pageTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('欢迎使用', 'authentication.pageTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Plug-and-play Admin system', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 欢迎使用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.pageTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('欢迎使用', 'authentication.pageTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '欢迎使用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 密码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.password';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('密码', 'authentication.password', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 密码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.password' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('密码', 'authentication.password', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 密码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.password' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('密码', 'authentication.password', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 密码错误 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.passwordErrorTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('密码错误', 'authentication.passwordErrorTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 密码错误 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.passwordErrorTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('密码错误', 'authentication.passwordErrorTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Password is incorrect', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 密码错误 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.passwordErrorTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('密码错误', 'authentication.passwordErrorTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '密码错误', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 使用8个或更多字符，混合字母、数字和符号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.passwordStrength';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('使用8个或更多字符，混合字母、数字和符号', 'authentication.passwordStrength', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 使用8个或更多字符，混合字母、数字和符号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.passwordStrength' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('使用8个或更多字符，混合字母、数字和符号', 'authentication.passwordStrength', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Use 8 or more characters with a mix of letters, numbers & symbols', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 使用8个或更多字符，混合字母、数字和符号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.passwordStrength' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('使用8个或更多字符，混合字母、数字和符号', 'authentication.passwordStrength', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '使用 8 个或更多字符，混合字母、数字和符号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 请输入密码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.passwordTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入密码', 'authentication.passwordTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 请输入密码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.passwordTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入密码', 'authentication.passwordTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Please enter password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 请输入密码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.passwordTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入密码', 'authentication.passwordTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 隐私政策 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.privacyPolicy';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('隐私政策', 'authentication.privacyPolicy', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 隐私政策 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.privacyPolicy' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('隐私政策', 'authentication.privacyPolicy', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Privacy-policy', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 隐私政策 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.privacyPolicy' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('隐私政策', 'authentication.privacyPolicy', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '隐私政策', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 扫码登录 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.qrcodeLogin';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('扫码登录', 'authentication.qrcodeLogin', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 扫码登录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.qrcodeLogin' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('扫码登录', 'authentication.qrcodeLogin', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'QR Code Login', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 扫码登录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.qrcodeLogin' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('扫码登录', 'authentication.qrcodeLogin', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '扫码登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 扫码后点击'确认'，即可完成登录 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.qrcodePrompt';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('扫码后点击''确认''，即可完成登录', 'authentication.qrcodePrompt', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 扫码后点击'确认'，即可完成登录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.qrcodePrompt' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('扫码后点击''确认''，即可完成登录', 'authentication.qrcodePrompt', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Click ''Confirm'' after scanning to complete login', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 扫码后点击'确认'，即可完成登录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.qrcodePrompt' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('扫码后点击''确认''，即可完成登录', 'authentication.qrcodePrompt', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '扫码后点击 ''确认''，即可完成登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 请用手机扫描二维码登录 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.qrcodeSubtitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请用手机扫描二维码登录', 'authentication.qrcodeSubtitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 请用手机扫描二维码登录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.qrcodeSubtitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请用手机扫描二维码登录', 'authentication.qrcodeSubtitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Scan the QR code with your phone to login', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 请用手机扫描二维码登录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.qrcodeSubtitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请用手机扫描二维码登录', 'authentication.qrcodeSubtitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请用手机扫描二维码登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 记住账号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.rememberMe';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('记住账号', 'authentication.rememberMe', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 记住账号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.rememberMe' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('记住账号', 'authentication.rememberMe', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Remember Me', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 记住账号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.rememberMe' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('记住账号', 'authentication.rememberMe', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '记住账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 重置密码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.resetPassword';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置密码', 'authentication.resetPassword', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 重置密码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.resetPassword' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置密码', 'authentication.resetPassword', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Reset Password', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 重置密码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.resetPassword' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置密码', 'authentication.resetPassword', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '重置密码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 重置密码成功 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.resetPasswordSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置密码成功', 'authentication.resetPasswordSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 重置密码成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.resetPasswordSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置密码成功', 'authentication.resetPasswordSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Reset password success', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 重置密码成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.resetPasswordSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置密码成功', 'authentication.resetPasswordSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '重置密码成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 快速选择账号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.selectAccount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('快速选择账号', 'authentication.selectAccount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 快速选择账号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.selectAccount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('快速选择账号', 'authentication.selectAccount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Quick Select Account', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 快速选择账号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.selectAccount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('快速选择账号', 'authentication.selectAccount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '快速选择账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 获取验证码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.sendCode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('获取验证码', 'authentication.sendCode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 获取验证码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sendCode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('获取验证码', 'authentication.sendCode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Get Security code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 获取验证码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sendCode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('获取验证码', 'authentication.sendCode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '获取验证码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 验证码发送成功 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.sendSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证码发送成功', 'authentication.sendSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 验证码发送成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sendSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证码发送成功', 'authentication.sendSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Security code sent successfully', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 验证码发送成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sendSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('验证码发送成功', 'authentication.sendSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '验证码发送成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. {0}秒后重新获取 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.sendText';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}秒后重新获取', 'authentication.sendText', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. {0}秒后重新获取 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sendText' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}秒后重新获取', 'authentication.sendText', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Resend in {0}s', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. {0}秒后重新获取 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sendText' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{0}秒后重新获取', 'authentication.sendText', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '{0}秒后重新获取', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 注册 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.signUp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册', 'authentication.signUp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 注册 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.signUp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册', 'authentication.signUp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Sign Up', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 注册 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.signUp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('注册', 'authentication.signUp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '注册', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 让您的应用程序管理变得简单而有趣 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.signUpSubtitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('让您的应用程序管理变得简单而有趣', 'authentication.signUpSubtitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 让您的应用程序管理变得简单而有趣 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.signUpSubtitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('让您的应用程序管理变得简单而有趣', 'authentication.signUpSubtitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Make managing your applications simple and fun', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 让您的应用程序管理变得简单而有趣 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.signUpSubtitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('让您的应用程序管理变得简单而有趣', 'authentication.signUpSubtitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '让您的应用程序管理变得简单而有趣', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 访问你的个人信息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.sso.accessYourInfo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('访问你的个人信息', 'authentication.sso.accessYourInfo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 访问你的个人信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sso.accessYourInfo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('访问你的个人信息', 'authentication.sso.accessYourInfo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'access your personal information', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 访问你的个人信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sso.accessYourInfo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('访问你的个人信息', 'authentication.sso.accessYourInfo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '访问你的个人信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 同意授权 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.sso.approve';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('同意授权', 'authentication.sso.approve', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 同意授权 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sso.approve' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('同意授权', 'authentication.sso.approve', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'approve', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 同意授权 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sso.approve' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('同意授权', 'authentication.sso.approve', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '同意授权', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 授权确认 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.sso.authorize';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('授权确认', 'authentication.sso.authorize', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 授权确认 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sso.authorize' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('授权确认', 'authentication.sso.authorize', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Authorization', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 授权确认 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sso.authorize' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('授权确认', 'authentication.sso.authorize', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '授权确认', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 修改你的个人信息 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.sso.modifyYourInfo';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('修改你的个人信息', 'authentication.sso.modifyYourInfo', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 修改你的个人信息 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sso.modifyYourInfo' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('修改你的个人信息', 'authentication.sso.modifyYourInfo', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'modify your personal information', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 修改你的个人信息 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sso.modifyYourInfo' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('修改你的个人信息', 'authentication.sso.modifyYourInfo', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '修改你的个人信息', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 拒绝 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.sso.reject';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('拒绝', 'authentication.sso.reject', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 拒绝 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sso.reject' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('拒绝', 'authentication.sso.reject', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'reject', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 拒绝 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sso.reject' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('拒绝', 'authentication.sso.reject', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '拒绝', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 授权范围 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.sso.scope';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('授权范围', 'authentication.sso.scope', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 授权范围 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sso.scope' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('授权范围', 'authentication.sso.scope', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'authorization scope', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 授权范围 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sso.scope' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('授权范围', 'authentication.sso.scope', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '授权范围', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 此第三方应用请求获得以下权限： (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.sso.thisAppRequests';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('此第三方应用请求获得以下权限：', 'authentication.sso.thisAppRequests', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 此第三方应用请求获得以下权限： - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sso.thisAppRequests' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('此第三方应用请求获得以下权限：', 'authentication.sso.thisAppRequests', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'This third-party application requests the following permissions:', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 此第三方应用请求获得以下权限： - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.sso.thisAppRequests' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('此第三方应用请求获得以下权限：', 'authentication.sso.thisAppRequests', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '此第三方应用请求获得以下权限：', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 租户 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.tenant';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户', 'authentication.tenant', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 租户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenant' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户', 'authentication.tenant', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Tenant', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 租户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenant' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户', 'authentication.tenant', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '租户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 请输入租户编码，4~32位编码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.tenantCodeTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户编码，4~32位编码', 'authentication.tenantCodeTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 请输入租户编码，4~32位编码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenantCodeTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户编码，4~32位编码', 'authentication.tenantCodeTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Please enter tenant code, 4~32 length code', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 请输入租户编码，4~32位编码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenantCodeTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户编码，4~32位编码', 'authentication.tenantCodeTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入租户编码，4~32位编码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 租户联系手机号码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.tenantContactMobile';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户联系手机号码', 'authentication.tenantContactMobile', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 租户联系手机号码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenantContactMobile' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户联系手机号码', 'authentication.tenantContactMobile', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Tenant contact mobile', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 租户联系手机号码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenantContactMobile' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户联系手机号码', 'authentication.tenantContactMobile', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '租户联系手机号码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 请输入租户联系手机号码 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.tenantContactMobileTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户联系手机号码', 'authentication.tenantContactMobileTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 请输入租户联系手机号码 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenantContactMobileTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户联系手机号码', 'authentication.tenantContactMobileTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Please enter tenant contact mobile', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 请输入租户联系手机号码 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenantContactMobileTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户联系手机号码', 'authentication.tenantContactMobileTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入租户联系手机号码', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 租户联系人 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.tenantContactName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户联系人', 'authentication.tenantContactName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 租户联系人 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenantContactName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户联系人', 'authentication.tenantContactName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Tenant contact name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 租户联系人 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenantContactName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户联系人', 'authentication.tenantContactName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '租户联系人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 请输入租户联系人 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.tenantContactNameTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户联系人', 'authentication.tenantContactNameTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 请输入租户联系人 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenantContactNameTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户联系人', 'authentication.tenantContactNameTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Please enter tenant contact name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 请输入租户联系人 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenantContactNameTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户联系人', 'authentication.tenantContactNameTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入租户联系人', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 租户编码错误，未找到租户 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.tenantErrorTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户编码错误，未找到租户', 'authentication.tenantErrorTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 租户编码错误，未找到租户 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenantErrorTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户编码错误，未找到租户', 'authentication.tenantErrorTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'tenant code error,not found tenant', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 租户编码错误，未找到租户 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenantErrorTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户编码错误，未找到租户', 'authentication.tenantErrorTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '租户编码错误，未找到租户', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 租户名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.tenantName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户名称', 'authentication.tenantName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 租户名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenantName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户名称', 'authentication.tenantName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Tenant Name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 租户名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenantName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('租户名称', 'authentication.tenantName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '租户名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 请输入租户名称 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.tenantNameTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户名称', 'authentication.tenantNameTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 请输入租户名称 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenantNameTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户名称', 'authentication.tenantNameTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Please enter tenant name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 请输入租户名称 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.tenantNameTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入租户名称', 'authentication.tenantNameTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入租户名称', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 条款 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.terms';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('条款', 'authentication.terms', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 条款 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.terms' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('条款', 'authentication.terms', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Terms', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 条款 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.terms' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('条款', 'authentication.terms', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '条款', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 其他登录方式 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.thirdPartyLogin';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其他登录方式', 'authentication.thirdPartyLogin', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 其他登录方式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.thirdPartyLogin' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其他登录方式', 'authentication.thirdPartyLogin', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Or continue with', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 其他登录方式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.thirdPartyLogin' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其他登录方式', 'authentication.thirdPartyLogin', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '其他登录方式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 账号 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.username';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('账号', 'authentication.username', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 账号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.username' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('账号', 'authentication.username', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Username', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 账号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.username' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('账号', 'authentication.username', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '账号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 请输入用户名 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.usernameTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入用户名', 'authentication.usernameTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 请输入用户名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.usernameTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入用户名', 'authentication.usernameTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Please enter username', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 请输入用户名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.usernameTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请输入用户名', 'authentication.usernameTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请输入用户名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 请先完成验证 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.verifyRequiredTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请先完成验证', 'authentication.verifyRequiredTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 请先完成验证 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.verifyRequiredTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请先完成验证', 'authentication.verifyRequiredTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Please complete the verification first', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 请先完成验证 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.verifyRequiredTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('请先完成验证', 'authentication.verifyRequiredTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '请先完成验证', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 欢迎回来 (use_type=2)
DELETE FROM infra_i18n_key WHERE message_key = 'authentication.welcomeBack';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('欢迎回来', 'authentication.welcomeBack', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 欢迎回来 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.welcomeBack' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('欢迎回来', 'authentication.welcomeBack', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, 'Welcome Back', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 欢迎回来 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'authentication.welcomeBack' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('欢迎回来', 'authentication.welcomeBack', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '欢迎回来', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
