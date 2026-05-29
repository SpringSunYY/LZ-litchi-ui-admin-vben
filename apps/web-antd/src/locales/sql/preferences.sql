-- =============================================
-- PREFERENCES i18n SQL
-- Generated: 2026-05-29
-- =============================================

SET @IS_SYSTEM = 0;
SET @MODULE_TYPE = 'preferences';
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

-- 1. 页面切换Loading (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.animation.loading';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('页面切换Loading', 'preferences.animation.loading', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 页面切换Loading - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.animation.loading' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('页面切换Loading', 'preferences.animation.loading', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Page Loading', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 1. 页面切换Loading - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.animation.loading' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('页面切换Loading', 'preferences.animation.loading', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '页面切换 Loading', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 页面切换进度条 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.animation.progress';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('页面切换进度条', 'preferences.animation.progress', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 页面切换进度条 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.animation.progress' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('页面切换进度条', 'preferences.animation.progress', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Page Progress', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 2. 页面切换进度条 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.animation.progress' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('页面切换进度条', 'preferences.animation.progress', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '页面切换进度条', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 动画 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.animation.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('动画', 'preferences.animation.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 动画 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.animation.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('动画', 'preferences.animation.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Animation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 3. 动画 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.animation.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('动画', 'preferences.animation.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '动画', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 页面切换动画 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.animation.transition';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('页面切换动画', 'preferences.animation.transition', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 页面切换动画 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.animation.transition' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('页面切换动画', 'preferences.animation.transition', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Page Transition', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 4. 页面切换动画 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.animation.transition' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('页面切换动画', 'preferences.animation.transition', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '页面切换动画', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 外观 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.appearance';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('外观', 'preferences.appearance', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 外观 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.appearance' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('外观', 'preferences.appearance', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Appearance', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 5. 外观 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.appearance' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('外观', 'preferences.appearance', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '外观', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 背景 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.breadcrumb.background';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('背景', 'preferences.breadcrumb.background', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 背景 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.breadcrumb.background' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('背景', 'preferences.breadcrumb.background', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'background', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 6. 背景 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.breadcrumb.background' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('背景', 'preferences.breadcrumb.background', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '背景', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 开启面包屑导航 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.breadcrumb.enable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开启面包屑导航', 'preferences.breadcrumb.enable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 开启面包屑导航 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.breadcrumb.enable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开启面包屑导航', 'preferences.breadcrumb.enable', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Enable Breadcrumb', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 7. 开启面包屑导航 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.breadcrumb.enable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开启面包屑导航', 'preferences.breadcrumb.enable', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '开启面包屑导航', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 仅有一个时隐藏 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.breadcrumb.hideOnlyOne';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('仅有一个时隐藏', 'preferences.breadcrumb.hideOnlyOne', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 仅有一个时隐藏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.breadcrumb.hideOnlyOne' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('仅有一个时隐藏', 'preferences.breadcrumb.hideOnlyOne', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Hidden when only one', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 8. 仅有一个时隐藏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.breadcrumb.hideOnlyOne' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('仅有一个时隐藏', 'preferences.breadcrumb.hideOnlyOne', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '仅有一个时隐藏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 显示首页按钮 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.breadcrumb.home';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示首页按钮', 'preferences.breadcrumb.home', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 显示首页按钮 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.breadcrumb.home' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示首页按钮', 'preferences.breadcrumb.home', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Show Home Button', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 9. 显示首页按钮 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.breadcrumb.home' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示首页按钮', 'preferences.breadcrumb.home', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '显示首页按钮', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 显示面包屑图标 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.breadcrumb.icon';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示面包屑图标', 'preferences.breadcrumb.icon', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 显示面包屑图标 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.breadcrumb.icon' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示面包屑图标', 'preferences.breadcrumb.icon', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Show Breadcrumb Icon', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 10. 显示面包屑图标 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.breadcrumb.icon' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示面包屑图标', 'preferences.breadcrumb.icon', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '显示面包屑图标', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 面包屑风格 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.breadcrumb.style';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('面包屑风格', 'preferences.breadcrumb.style', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 面包屑风格 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.breadcrumb.style' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('面包屑风格', 'preferences.breadcrumb.style', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Breadcrumb Style', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 11. 面包屑风格 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.breadcrumb.style' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('面包屑风格', 'preferences.breadcrumb.style', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '面包屑风格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 面包屑导航 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.breadcrumb.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('面包屑导航', 'preferences.breadcrumb.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 面包屑导航 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.breadcrumb.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('面包屑导航', 'preferences.breadcrumb.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Breadcrumb', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 12. 面包屑导航 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.breadcrumb.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('面包屑导航', 'preferences.breadcrumb.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '面包屑导航', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 定时检查更新 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.checkUpdates';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时检查更新', 'preferences.checkUpdates', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 定时检查更新 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.checkUpdates' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时检查更新', 'preferences.checkUpdates', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Periodic update check', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 13. 定时检查更新 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.checkUpdates' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定时检查更新', 'preferences.checkUpdates', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '定时检查更新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 清空缓存&退出登录 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.clearAndLogout';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('清空缓存&退出登录', 'preferences.clearAndLogout', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 清空缓存&退出登录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.clearAndLogout' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('清空缓存&退出登录', 'preferences.clearAndLogout', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Clear Cache & Logout', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 14. 清空缓存&退出登录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.clearAndLogout' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('清空缓存&退出登录', 'preferences.clearAndLogout', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '清空缓存 & 退出登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 定宽 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.compact';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定宽', 'preferences.compact', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 定宽 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.compact' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定宽', 'preferences.compact', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Fixed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 15. 定宽 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.compact' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('定宽', 'preferences.compact', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '定宽', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 内容 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.content';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('内容', 'preferences.content', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 内容 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.content' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('内容', 'preferences.content', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 16. 内容 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.content' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('内容', 'preferences.content', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '内容', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 复制偏好设置 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.copyPreferences';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制偏好设置', 'preferences.copyPreferences', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 复制偏好设置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyPreferences' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制偏好设置', 'preferences.copyPreferences', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Copy Preferences', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 17. 复制偏好设置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyPreferences' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制偏好设置', 'preferences.copyPreferences', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '复制偏好设置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 复制成功，请在app下的`src/preferences.ts`内进行覆盖 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.copyPreferencesSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制成功，请在app下的`src/preferences.ts`内进行覆盖', 'preferences.copyPreferencesSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 复制成功，请在app下的`src/preferences.ts`内进行覆盖 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyPreferencesSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制成功，请在app下的`src/preferences.ts`内进行覆盖', 'preferences.copyPreferencesSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Copy successful, please override in `src/preferences.ts` under app', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 18. 复制成功，请在app下的`src/preferences.ts`内进行覆盖 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyPreferencesSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制成功，请在app下的`src/preferences.ts`内进行覆盖', 'preferences.copyPreferencesSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '复制成功，请在 app 下的 `src/preferences.ts`内进行覆盖', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 复制成功 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.copyPreferencesSuccessTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制成功', 'preferences.copyPreferencesSuccessTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 复制成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyPreferencesSuccessTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制成功', 'preferences.copyPreferencesSuccessTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Copy successful', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 19. 复制成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyPreferencesSuccessTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('复制成功', 'preferences.copyPreferencesSuccessTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '复制成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 公司名 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.copyright.companyName';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公司名', 'preferences.copyright.companyName', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 公司名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyright.companyName' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公司名', 'preferences.copyright.companyName', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Company Name', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 20. 公司名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyright.companyName' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公司名', 'preferences.copyright.companyName', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '公司名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 公司主页 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.copyright.companySiteLink';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公司主页', 'preferences.copyright.companySiteLink', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 公司主页 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyright.companySiteLink' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公司主页', 'preferences.copyright.companySiteLink', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Company Site Link', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 21. 公司主页 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyright.companySiteLink' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('公司主页', 'preferences.copyright.companySiteLink', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '公司主页', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 日期 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.copyright.date';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('日期', 'preferences.copyright.date', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 日期 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyright.date' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('日期', 'preferences.copyright.date', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Date', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 22. 日期 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyright.date' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('日期', 'preferences.copyright.date', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '日期', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 启用版权 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.copyright.enable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用版权', 'preferences.copyright.enable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 启用版权 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyright.enable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用版权', 'preferences.copyright.enable', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Enable Copyright', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 23. 启用版权 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyright.enable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用版权', 'preferences.copyright.enable', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '启用版权', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. ICP备案号 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.copyright.icp';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ICP备案号', 'preferences.copyright.icp', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. ICP备案号 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyright.icp' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ICP备案号', 'preferences.copyright.icp', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'ICP License Number', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 24. ICP备案号 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyright.icp' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ICP备案号', 'preferences.copyright.icp', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'ICP 备案号', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. ICP网站链接 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.copyright.icpLink';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ICP网站链接', 'preferences.copyright.icpLink', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. ICP网站链接 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyright.icpLink' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ICP网站链接', 'preferences.copyright.icpLink', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'ICP Site Link', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 25. ICP网站链接 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyright.icpLink' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('ICP网站链接', 'preferences.copyright.icpLink', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'ICP 网站链接', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 版权 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.copyright.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('版权', 'preferences.copyright.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 版权 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyright.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('版权', 'preferences.copyright.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Copyright', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 26. 版权 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.copyright.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('版权', 'preferences.copyright.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '版权', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 动态标题 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.dynamicTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('动态标题', 'preferences.dynamicTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 动态标题 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.dynamicTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('动态标题', 'preferences.dynamicTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Dynamic Title', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 27. 动态标题 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.dynamicTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('动态标题', 'preferences.dynamicTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '动态标题', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 跟随系统 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.followSystem';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('跟随系统', 'preferences.followSystem', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 跟随系统 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.followSystem' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('跟随系统', 'preferences.followSystem', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Follow System', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 28. 跟随系统 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.followSystem' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('跟随系统', 'preferences.followSystem', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '跟随系统', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 固定在底部 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.footer.fixed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('固定在底部', 'preferences.footer.fixed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 固定在底部 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.footer.fixed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('固定在底部', 'preferences.footer.fixed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Fixed at Bottom', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 29. 固定在底部 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.footer.fixed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('固定在底部', 'preferences.footer.fixed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '固定在底部', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 底栏 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.footer.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('底栏', 'preferences.footer.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 底栏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.footer.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('底栏', 'preferences.footer.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Footer', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 30. 底栏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.footer.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('底栏', 'preferences.footer.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '底栏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 显示底栏 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.footer.visible';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示底栏', 'preferences.footer.visible', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 显示底栏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.footer.visible' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示底栏', 'preferences.footer.visible', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Show Footer', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 31. 显示底栏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.footer.visible' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示底栏', 'preferences.footer.visible', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '显示底栏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 内容全屏 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.fullContent';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('内容全屏', 'preferences.fullContent', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 内容全屏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.fullContent' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('内容全屏', 'preferences.fullContent', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Full Content', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 32. 内容全屏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.fullContent' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('内容全屏', 'preferences.fullContent', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '内容全屏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 不显示任何菜单，只显示内容主体 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.fullContentTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('不显示任何菜单，只显示内容主体', 'preferences.fullContentTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 不显示任何菜单，只显示内容主体 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.fullContentTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('不显示任何菜单，只显示内容主体', 'preferences.fullContentTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Only display content body, hide all menus', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 33. 不显示任何菜单，只显示内容主体 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.fullContentTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('不显示任何菜单，只显示内容主体', 'preferences.fullContentTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '不显示任何菜单，只显示内容主体', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 通用 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.general';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用', 'preferences.general', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 通用 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.general' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用', 'preferences.general', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'General', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 34. 通用 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.general' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('通用', 'preferences.general', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '通用', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 菜单位置 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.header.menuAlign';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单位置', 'preferences.header.menuAlign', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 菜单位置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.menuAlign' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单位置', 'preferences.header.menuAlign', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Menu Align', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 35. 菜单位置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.menuAlign' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('菜单位置', 'preferences.header.menuAlign', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '菜单位置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 居中 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.header.menuAlignCenter';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('居中', 'preferences.header.menuAlignCenter', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 居中 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.menuAlignCenter' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('居中', 'preferences.header.menuAlignCenter', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Center', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 36. 居中 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.menuAlignCenter' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('居中', 'preferences.header.menuAlignCenter', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '居中', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 右侧 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.header.menuAlignEnd';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('右侧', 'preferences.header.menuAlignEnd', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 右侧 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.menuAlignEnd' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('右侧', 'preferences.header.menuAlignEnd', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'End', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 37. 右侧 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.menuAlignEnd' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('右侧', 'preferences.header.menuAlignEnd', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '右侧', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 左侧 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.header.menuAlignStart';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('左侧', 'preferences.header.menuAlignStart', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 左侧 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.menuAlignStart' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('左侧', 'preferences.header.menuAlignStart', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Start', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 38. 左侧 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.menuAlignStart' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('左侧', 'preferences.header.menuAlignStart', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '左侧', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 自动隐藏和显示 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.header.modeAuto';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('自动隐藏和显示', 'preferences.header.modeAuto', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 自动隐藏和显示 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.modeAuto' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('自动隐藏和显示', 'preferences.header.modeAuto', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Auto hide & Show', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 39. 自动隐藏和显示 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.modeAuto' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('自动隐藏和显示', 'preferences.header.modeAuto', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '自动隐藏和显示', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 滚动隐藏和显示 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.header.modeAutoScroll';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('滚动隐藏和显示', 'preferences.header.modeAutoScroll', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 滚动隐藏和显示 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.modeAutoScroll' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('滚动隐藏和显示', 'preferences.header.modeAutoScroll', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Scroll to Hide & Show', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 40. 滚动隐藏和显示 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.modeAutoScroll' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('滚动隐藏和显示', 'preferences.header.modeAutoScroll', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '滚动隐藏和显示', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 固定 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.header.modeFixed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('固定', 'preferences.header.modeFixed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 固定 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.modeFixed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('固定', 'preferences.header.modeFixed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Fixed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 41. 固定 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.modeFixed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('固定', 'preferences.header.modeFixed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '固定', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 静止 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.header.modeStatic';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('静止', 'preferences.header.modeStatic', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 静止 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.modeStatic' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('静止', 'preferences.header.modeStatic', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Static', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 42. 静止 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.modeStatic' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('静止', 'preferences.header.modeStatic', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '静止', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 顶栏 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.header.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('顶栏', 'preferences.header.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 顶栏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('顶栏', 'preferences.header.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Header', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 43. 顶栏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('顶栏', 'preferences.header.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '顶栏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 显示顶栏 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.header.visible';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示顶栏', 'preferences.header.visible', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 显示顶栏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.visible' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示顶栏', 'preferences.header.visible', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Show Header', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 44. 显示顶栏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.header.visible' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示顶栏', 'preferences.header.visible', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '显示顶栏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 侧边导航 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.headerSidebarNav';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('侧边导航', 'preferences.headerSidebarNav', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 侧边导航 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.headerSidebarNav' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('侧边导航', 'preferences.headerSidebarNav', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Header Vertical', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 45. 侧边导航 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.headerSidebarNav' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('侧边导航', 'preferences.headerSidebarNav', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '侧边导航', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 顶部通栏，侧边导航模式 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.headerSidebarNavTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('顶部通栏，侧边导航模式', 'preferences.headerSidebarNavTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 顶部通栏，侧边导航模式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.headerSidebarNavTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('顶部通栏，侧边导航模式', 'preferences.headerSidebarNavTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Header Full Width, Sidebar Navigation Mode', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 46. 顶部通栏，侧边导航模式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.headerSidebarNavTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('顶部通栏，侧边导航模式', 'preferences.headerSidebarNavTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '顶部通栏，侧边导航模式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 混合双列 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.headerTwoColumn';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('混合双列', 'preferences.headerTwoColumn', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 混合双列 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.headerTwoColumn' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('混合双列', 'preferences.headerTwoColumn', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Header Two Column', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 47. 混合双列 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.headerTwoColumn' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('混合双列', 'preferences.headerTwoColumn', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '混合双列', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 双列、水平菜单共存模式 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.headerTwoColumnTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('双列、水平菜单共存模式', 'preferences.headerTwoColumnTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 双列、水平菜单共存模式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.headerTwoColumnTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('双列、水平菜单共存模式', 'preferences.headerTwoColumnTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Header Navigation & Sidebar Two Column co-exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 48. 双列、水平菜单共存模式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.headerTwoColumnTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('双列、水平菜单共存模式', 'preferences.headerTwoColumnTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '双列、水平菜单共存模式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 水平 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.horizontal';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('水平', 'preferences.horizontal', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 水平 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.horizontal' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('水平', 'preferences.horizontal', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Horizontal', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 49. 水平 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.horizontal' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('水平', 'preferences.horizontal', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '水平', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 水平菜单模式，菜单全部显示在顶部 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.horizontalTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('水平菜单模式，菜单全部显示在顶部', 'preferences.horizontalTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 水平菜单模式，菜单全部显示在顶部 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.horizontalTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('水平菜单模式，菜单全部显示在顶部', 'preferences.horizontalTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Horizontal menu mode, all menus displayed at the top', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 50. 水平菜单模式，菜单全部显示在顶部 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.horizontalTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('水平菜单模式，菜单全部显示在顶部', 'preferences.horizontalTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '水平菜单模式，菜单全部显示在顶部', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 语言 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.language';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('语言', 'preferences.language', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 语言 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.language' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('语言', 'preferences.language', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Language', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 51. 语言 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.language' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('语言', 'preferences.language', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '语言', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 布局 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.layout';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('布局', 'preferences.layout', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 布局 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.layout' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('布局', 'preferences.layout', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Layout', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 52. 布局 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.layout' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('布局', 'preferences.layout', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '布局', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 混合垂直 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.mixedMenu';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('混合垂直', 'preferences.mixedMenu', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 混合垂直 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.mixedMenu' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('混合垂直', 'preferences.mixedMenu', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Mixed Menu', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 53. 混合垂直 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.mixedMenu' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('混合垂直', 'preferences.mixedMenu', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '混合垂直', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 垂直水平菜单共存 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.mixedMenuTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('垂直水平菜单共存', 'preferences.mixedMenuTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 垂直水平菜单共存 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.mixedMenuTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('垂直水平菜单共存', 'preferences.mixedMenuTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Vertical & Horizontal Menu Co-exists', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 54. 垂直水平菜单共存 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.mixedMenuTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('垂直水平菜单共存', 'preferences.mixedMenuTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '垂直水平菜单共存', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 模式 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.mode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('模式', 'preferences.mode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 模式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.mode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('模式', 'preferences.mode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Mode', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 55. 模式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.mode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('模式', 'preferences.mode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '模式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 侧边导航菜单手风琴模式 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.navigationMenu.accordion';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('侧边导航菜单手风琴模式', 'preferences.navigationMenu.accordion', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 侧边导航菜单手风琴模式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.navigationMenu.accordion' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('侧边导航菜单手风琴模式', 'preferences.navigationMenu.accordion', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Sidebar Accordion Menu', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 56. 侧边导航菜单手风琴模式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.navigationMenu.accordion' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('侧边导航菜单手风琴模式', 'preferences.navigationMenu.accordion', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '侧边导航菜单手风琴模式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 导航菜单分离 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.navigationMenu.split';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导航菜单分离', 'preferences.navigationMenu.split', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 导航菜单分离 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.navigationMenu.split' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导航菜单分离', 'preferences.navigationMenu.split', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Navigation Menu Separation', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 57. 导航菜单分离 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.navigationMenu.split' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导航菜单分离', 'preferences.navigationMenu.split', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '导航菜单分离', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 开启时，侧边栏显示顶栏对应菜单的子菜单 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.navigationMenu.splitTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开启时，侧边栏显示顶栏对应菜单的子菜单', 'preferences.navigationMenu.splitTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 开启时，侧边栏显示顶栏对应菜单的子菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.navigationMenu.splitTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开启时，侧边栏显示顶栏对应菜单的子菜单', 'preferences.navigationMenu.splitTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'When enabled, the sidebar displays the top bar''s submenu', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 58. 开启时，侧边栏显示顶栏对应菜单的子菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.navigationMenu.splitTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开启时，侧边栏显示顶栏对应菜单的子菜单', 'preferences.navigationMenu.splitTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '开启时，侧边栏显示顶栏对应菜单的子菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 导航菜单风格 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.navigationMenu.style';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导航菜单风格', 'preferences.navigationMenu.style', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 导航菜单风格 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.navigationMenu.style' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导航菜单风格', 'preferences.navigationMenu.style', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Navigation Menu Style', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 59. 导航菜单风格 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.navigationMenu.style' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导航菜单风格', 'preferences.navigationMenu.style', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '导航菜单风格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 导航菜单 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.navigationMenu.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导航菜单', 'preferences.navigationMenu.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 导航菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.navigationMenu.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导航菜单', 'preferences.navigationMenu.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Navigation Menu', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 60. 导航菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.navigationMenu.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('导航菜单', 'preferences.navigationMenu.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '导航菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 常规 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.normal';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('常规', 'preferences.normal', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 常规 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.normal' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('常规', 'preferences.normal', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Normal', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 61. 常规 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.normal' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('常规', 'preferences.normal', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '常规', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 其它 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.other';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它', 'preferences.other', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 其它 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.other' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它', 'preferences.other', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Other', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 62. 其它 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.other' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('其它', 'preferences.other', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '其它', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 朴素 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.plain';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('朴素', 'preferences.plain', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 朴素 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.plain' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('朴素', 'preferences.plain', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Plain', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 63. 朴素 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.plain' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('朴素', 'preferences.plain', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '朴素', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 自动 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.position.auto';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('自动', 'preferences.position.auto', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 自动 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.position.auto' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('自动', 'preferences.position.auto', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Auto', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 64. 自动 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.position.auto' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('自动', 'preferences.position.auto', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '自动', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 固定 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.position.fixed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('固定', 'preferences.position.fixed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 固定 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.position.fixed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('固定', 'preferences.position.fixed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Fixed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 65. 固定 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.position.fixed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('固定', 'preferences.position.fixed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '固定', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 顶栏 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.position.header';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('顶栏', 'preferences.position.header', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 顶栏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.position.header' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('顶栏', 'preferences.position.header', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Header', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 66. 顶栏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.position.header' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('顶栏', 'preferences.position.header', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '顶栏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 偏好设置位置 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.position.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('偏好设置位置', 'preferences.position.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 偏好设置位置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.position.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('偏好设置位置', 'preferences.position.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Preferences Postion', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 67. 偏好设置位置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.position.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('偏好设置位置', 'preferences.position.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '偏好设置位置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 重置偏好设置成功 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.resetSuccess';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置偏好设置成功', 'preferences.resetSuccess', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 重置偏好设置成功 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.resetSuccess' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置偏好设置成功', 'preferences.resetSuccess', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Preferences reset successfully', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 68. 重置偏好设置成功 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.resetSuccess' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置偏好设置成功', 'preferences.resetSuccess', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '重置偏好设置成功', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 数据有变化，点击可进行重置 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.resetTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据有变化，点击可进行重置', 'preferences.resetTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 数据有变化，点击可进行重置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.resetTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据有变化，点击可进行重置', 'preferences.resetTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Data has changed, click to reset', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 69. 数据有变化，点击可进行重置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.resetTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('数据有变化，点击可进行重置', 'preferences.resetTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '数据有变化，点击可进行重置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 重置偏好设置 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.resetTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置偏好设置', 'preferences.resetTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 重置偏好设置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.resetTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置偏好设置', 'preferences.resetTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Reset Preferences', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 70. 重置偏好设置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.resetTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重置偏好设置', 'preferences.resetTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '重置偏好设置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 圆润 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.rounded';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('圆润', 'preferences.rounded', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 圆润 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.rounded' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('圆润', 'preferences.rounded', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Rounded', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 71. 圆润 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.rounded' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('圆润', 'preferences.rounded', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '圆润', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 全局 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.shortcutKeys.global';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全局', 'preferences.shortcutKeys.global', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 全局 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.shortcutKeys.global' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全局', 'preferences.shortcutKeys.global', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Global', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 72. 全局 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.shortcutKeys.global' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全局', 'preferences.shortcutKeys.global', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '全局', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 退出登录 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.shortcutKeys.logout';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('退出登录', 'preferences.shortcutKeys.logout', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 退出登录 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.shortcutKeys.logout' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('退出登录', 'preferences.shortcutKeys.logout', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Logout', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 73. 退出登录 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.shortcutKeys.logout' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('退出登录', 'preferences.shortcutKeys.logout', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '退出登录', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 偏好设置 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.shortcutKeys.preferences';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('偏好设置', 'preferences.shortcutKeys.preferences', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 偏好设置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.shortcutKeys.preferences' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('偏好设置', 'preferences.shortcutKeys.preferences', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Preferences', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 74. 偏好设置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.shortcutKeys.preferences' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('偏好设置', 'preferences.shortcutKeys.preferences', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '偏好设置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 全局搜索 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.shortcutKeys.search';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全局搜索', 'preferences.shortcutKeys.search', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 全局搜索 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.shortcutKeys.search' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全局搜索', 'preferences.shortcutKeys.search', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Global Search', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 75. 全局搜索 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.shortcutKeys.search' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('全局搜索', 'preferences.shortcutKeys.search', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '全局搜索', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 快捷键 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.shortcutKeys.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('快捷键', 'preferences.shortcutKeys.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 快捷键 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.shortcutKeys.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('快捷键', 'preferences.shortcutKeys.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Shortcut Keys', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 76. 快捷键 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.shortcutKeys.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('快捷键', 'preferences.shortcutKeys.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '快捷键', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 自动激活子菜单 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.sidebar.autoActivateChild';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('自动激活子菜单', 'preferences.sidebar.autoActivateChild', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 自动激活子菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.autoActivateChild' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('自动激活子菜单', 'preferences.sidebar.autoActivateChild', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Auto Activate SubMenu', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 77. 自动激活子菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.autoActivateChild' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('自动激活子菜单', 'preferences.sidebar.autoActivateChild', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '自动激活子菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 点击顶层菜单时,自动激活第一个子菜单或者上一次激活的子菜单 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.sidebar.autoActivateChildTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击顶层菜单时,自动激活第一个子菜单或者上一次激活的子菜单', 'preferences.sidebar.autoActivateChildTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 点击顶层菜单时,自动激活第一个子菜单或者上一次激活的子菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.autoActivateChildTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击顶层菜单时,自动激活第一个子菜单或者上一次激活的子菜单', 'preferences.sidebar.autoActivateChildTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '`Enabled` to automatically activate the submenu while click menu.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 78. 点击顶层菜单时,自动激活第一个子菜单或者上一次激活的子菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.autoActivateChildTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击顶层菜单时,自动激活第一个子菜单或者上一次激活的子菜单', 'preferences.sidebar.autoActivateChildTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '点击顶层菜单时,自动激活第一个子菜单或者上一次激活的子菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 折叠按钮 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.sidebar.buttonCollapsed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('折叠按钮', 'preferences.sidebar.buttonCollapsed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 折叠按钮 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.buttonCollapsed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('折叠按钮', 'preferences.sidebar.buttonCollapsed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Collapsed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 79. 折叠按钮 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.buttonCollapsed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('折叠按钮', 'preferences.sidebar.buttonCollapsed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '折叠按钮', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 固定按钮 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.sidebar.buttonFixed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('固定按钮', 'preferences.sidebar.buttonFixed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 固定按钮 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.buttonFixed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('固定按钮', 'preferences.sidebar.buttonFixed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Fixed', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 80. 固定按钮 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.buttonFixed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('固定按钮', 'preferences.sidebar.buttonFixed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '固定按钮', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 显示按钮 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.sidebar.buttons';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示按钮', 'preferences.sidebar.buttons', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 显示按钮 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.buttons' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示按钮', 'preferences.sidebar.buttons', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Show Buttons', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 81. 显示按钮 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.buttons' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示按钮', 'preferences.sidebar.buttons', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '显示按钮', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 折叠菜单 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.sidebar.collapsed';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('折叠菜单', 'preferences.sidebar.collapsed', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 折叠菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.collapsed' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('折叠菜单', 'preferences.sidebar.collapsed', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Collpase Menu', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 82. 折叠菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.collapsed' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('折叠菜单', 'preferences.sidebar.collapsed', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '折叠菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 折叠显示菜单名 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.sidebar.collapsedShowTitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('折叠显示菜单名', 'preferences.sidebar.collapsedShowTitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 折叠显示菜单名 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.collapsedShowTitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('折叠显示菜单名', 'preferences.sidebar.collapsedShowTitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Show Menu Title', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 83. 折叠显示菜单名 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.collapsedShowTitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('折叠显示菜单名', 'preferences.sidebar.collapsedShowTitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '折叠显示菜单名', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 鼠标悬停展开 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.sidebar.expandOnHover';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('鼠标悬停展开', 'preferences.sidebar.expandOnHover', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 鼠标悬停展开 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.expandOnHover' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('鼠标悬停展开', 'preferences.sidebar.expandOnHover', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Expand On Hover', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 84. 鼠标悬停展开 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.expandOnHover' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('鼠标悬停展开', 'preferences.sidebar.expandOnHover', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '鼠标悬停展开', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 鼠标在折叠区域悬浮时，`启用`则展开当前子菜单，`禁用`则展开整个侧边栏 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.sidebar.expandOnHoverTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('鼠标在折叠区域悬浮时，`启用`则展开当前子菜单，`禁用`则展开整个侧边栏', 'preferences.sidebar.expandOnHoverTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 鼠标在折叠区域悬浮时，`启用`则展开当前子菜单，`禁用`则展开整个侧边栏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.expandOnHoverTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('鼠标在折叠区域悬浮时，`启用`则展开当前子菜单，`禁用`则展开整个侧边栏', 'preferences.sidebar.expandOnHoverTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'When the mouse hovers over menu, 
 `Enabled` to expand children menus 
 `Disabled` to expand whole sidebar.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 85. 鼠标在折叠区域悬浮时，`启用`则展开当前子菜单，`禁用`则展开整个侧边栏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.expandOnHoverTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('鼠标在折叠区域悬浮时，`启用`则展开当前子菜单，`禁用`则展开整个侧边栏', 'preferences.sidebar.expandOnHoverTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '鼠标在折叠区域悬浮时，`启用`则展开当前子菜单，`禁用`则展开整个侧边栏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 侧边栏 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.sidebar.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('侧边栏', 'preferences.sidebar.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 侧边栏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('侧边栏', 'preferences.sidebar.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Sidebar', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 86. 侧边栏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('侧边栏', 'preferences.sidebar.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '侧边栏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 显示侧边栏 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.sidebar.visible';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示侧边栏', 'preferences.sidebar.visible', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 显示侧边栏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.visible' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示侧边栏', 'preferences.sidebar.visible', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Show Sidebar', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 87. 显示侧边栏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.visible' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示侧边栏', 'preferences.sidebar.visible', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '显示侧边栏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 宽度 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.sidebar.width';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('宽度', 'preferences.sidebar.width', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 宽度 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.width' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('宽度', 'preferences.sidebar.width', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Width', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 88. 宽度 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.sidebar.width' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('宽度', 'preferences.sidebar.width', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '宽度', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 自定义偏好设置&实时预览 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.subtitle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('自定义偏好设置&实时预览', 'preferences.subtitle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 自定义偏好设置&实时预览 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.subtitle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('自定义偏好设置&实时预览', 'preferences.subtitle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Customize Preferences & Preview in Real Time', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 89. 自定义偏好设置&实时预览 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.subtitle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('自定义偏好设置&实时预览', 'preferences.subtitle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '自定义偏好设置 & 实时预览', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 关闭 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.contextMenu.close';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭', 'preferences.tabbar.contextMenu.close', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 关闭 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.close' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭', 'preferences.tabbar.contextMenu.close', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Close', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 90. 关闭 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.close' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭', 'preferences.tabbar.contextMenu.close', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '关闭', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 关闭全部标签页 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.contextMenu.closeAll';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭全部标签页', 'preferences.tabbar.contextMenu.closeAll', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 关闭全部标签页 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.closeAll' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭全部标签页', 'preferences.tabbar.contextMenu.closeAll', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Close All Tabs', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 91. 关闭全部标签页 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.closeAll' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭全部标签页', 'preferences.tabbar.contextMenu.closeAll', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '关闭全部标签页', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 关闭左侧标签页 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.contextMenu.closeLeft';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭左侧标签页', 'preferences.tabbar.contextMenu.closeLeft', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 关闭左侧标签页 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.closeLeft' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭左侧标签页', 'preferences.tabbar.contextMenu.closeLeft', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Close Left Tabs', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 92. 关闭左侧标签页 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.closeLeft' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭左侧标签页', 'preferences.tabbar.contextMenu.closeLeft', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '关闭左侧标签页', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 关闭其它标签页 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.contextMenu.closeOther';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭其它标签页', 'preferences.tabbar.contextMenu.closeOther', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 关闭其它标签页 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.closeOther' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭其它标签页', 'preferences.tabbar.contextMenu.closeOther', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Close Other Tabs', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 93. 关闭其它标签页 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.closeOther' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭其它标签页', 'preferences.tabbar.contextMenu.closeOther', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '关闭其它标签页', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 关闭右侧标签页 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.contextMenu.closeRight';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭右侧标签页', 'preferences.tabbar.contextMenu.closeRight', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 关闭右侧标签页 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.closeRight' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭右侧标签页', 'preferences.tabbar.contextMenu.closeRight', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Close Right Tabs', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 94. 关闭右侧标签页 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.closeRight' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('关闭右侧标签页', 'preferences.tabbar.contextMenu.closeRight', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '关闭右侧标签页', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 最大化 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.contextMenu.maximize';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最大化', 'preferences.tabbar.contextMenu.maximize', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 最大化 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.maximize' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最大化', 'preferences.tabbar.contextMenu.maximize', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Maximize', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 95. 最大化 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.maximize' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最大化', 'preferences.tabbar.contextMenu.maximize', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '最大化', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 在新窗口打开 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.contextMenu.openInNewWindow';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('在新窗口打开', 'preferences.tabbar.contextMenu.openInNewWindow', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 在新窗口打开 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.openInNewWindow' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('在新窗口打开', 'preferences.tabbar.contextMenu.openInNewWindow', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Open in New Window', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 96. 在新窗口打开 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.openInNewWindow' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('在新窗口打开', 'preferences.tabbar.contextMenu.openInNewWindow', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '在新窗口打开', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 固定 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.contextMenu.pin';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('固定', 'preferences.tabbar.contextMenu.pin', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 固定 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.pin' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('固定', 'preferences.tabbar.contextMenu.pin', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Pin', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 97. 固定 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.pin' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('固定', 'preferences.tabbar.contextMenu.pin', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '固定', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 重新加载 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.contextMenu.reload';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重新加载', 'preferences.tabbar.contextMenu.reload', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 重新加载 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.reload' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重新加载', 'preferences.tabbar.contextMenu.reload', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Reload', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 98. 重新加载 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.reload' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('重新加载', 'preferences.tabbar.contextMenu.reload', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '重新加载', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 还原 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.contextMenu.restoreMaximize';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('还原', 'preferences.tabbar.contextMenu.restoreMaximize', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 还原 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.restoreMaximize' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('还原', 'preferences.tabbar.contextMenu.restoreMaximize', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Restore', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 99. 还原 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.restoreMaximize' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('还原', 'preferences.tabbar.contextMenu.restoreMaximize', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '还原', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 取消固定 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.contextMenu.unpin';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('取消固定', 'preferences.tabbar.contextMenu.unpin', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 取消固定 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.unpin' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('取消固定', 'preferences.tabbar.contextMenu.unpin', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Unpin', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 100. 取消固定 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.contextMenu.unpin' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('取消固定', 'preferences.tabbar.contextMenu.unpin', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '取消固定', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 启动拖拽排序 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.draggable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启动拖拽排序', 'preferences.tabbar.draggable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 启动拖拽排序 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.draggable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启动拖拽排序', 'preferences.tabbar.draggable', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Enable Draggable Sort', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 101. 启动拖拽排序 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.draggable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启动拖拽排序', 'preferences.tabbar.draggable', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '启动拖拽排序', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 启用标签栏 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.enable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用标签栏', 'preferences.tabbar.enable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 启用标签栏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.enable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用标签栏', 'preferences.tabbar.enable', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Enable Tab Bar', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 102. 启用标签栏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.enable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用标签栏', 'preferences.tabbar.enable', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '启用标签栏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 显示标签栏图标 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.icon';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示标签栏图标', 'preferences.tabbar.icon', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 显示标签栏图标 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.icon' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示标签栏图标', 'preferences.tabbar.icon', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Show Tabbar Icon', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 103. 显示标签栏图标 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.icon' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示标签栏图标', 'preferences.tabbar.icon', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '显示标签栏图标', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 最大标签数 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.maxCount';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最大标签数', 'preferences.tabbar.maxCount', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 最大标签数 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.maxCount' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最大标签数', 'preferences.tabbar.maxCount', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Max Count of Tabs', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 104. 最大标签数 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.maxCount' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('最大标签数', 'preferences.tabbar.maxCount', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '最大标签数', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 每次打开新的标签时如果超过最大标签数，
会自动关闭一个最先打开的标签
设置为0则不限制 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.maxCountTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('每次打开新的标签时如果超过最大标签数，
会自动关闭一个最先打开的标签
设置为0则不限制', 'preferences.tabbar.maxCountTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 每次打开新的标签时如果超过最大标签数，
会自动关闭一个最先打开的标签
设置为0则不限制 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.maxCountTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('每次打开新的标签时如果超过最大标签数，
会自动关闭一个最先打开的标签
设置为0则不限制', 'preferences.tabbar.maxCountTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'When the number of tabs exceeds the maximum,
the oldest tab will be closed.
 Set to 0 to disable count checking.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 105. 每次打开新的标签时如果超过最大标签数，
会自动关闭一个最先打开的标签
设置为0则不限制 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.maxCountTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('每次打开新的标签时如果超过最大标签数，
会自动关闭一个最先打开的标签
设置为0则不限制', 'preferences.tabbar.maxCountTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '每次打开新的标签时如果超过最大标签数，
会自动关闭一个最先打开的标签
设置为 0 则不限制', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 点击鼠标中键关闭标签页 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.middleClickClose';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击鼠标中键关闭标签页', 'preferences.tabbar.middleClickClose', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 点击鼠标中键关闭标签页 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.middleClickClose' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击鼠标中键关闭标签页', 'preferences.tabbar.middleClickClose', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Close Tab when Mouse Middle Button Click', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 106. 点击鼠标中键关闭标签页 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.middleClickClose' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('点击鼠标中键关闭标签页', 'preferences.tabbar.middleClickClose', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '点击鼠标中键关闭标签页', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 持久化标签页 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.persist';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('持久化标签页', 'preferences.tabbar.persist', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 持久化标签页 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.persist' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('持久化标签页', 'preferences.tabbar.persist', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Persist Tabs', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 107. 持久化标签页 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.persist' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('持久化标签页', 'preferences.tabbar.persist', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '持久化标签页', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 显示最大化按钮 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.showMaximize';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示最大化按钮', 'preferences.tabbar.showMaximize', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 显示最大化按钮 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.showMaximize' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示最大化按钮', 'preferences.tabbar.showMaximize', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Show Maximize Button', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 108. 显示最大化按钮 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.showMaximize' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示最大化按钮', 'preferences.tabbar.showMaximize', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '显示最大化按钮', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 显示更多按钮 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.showMore';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示更多按钮', 'preferences.tabbar.showMore', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 显示更多按钮 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.showMore' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示更多按钮', 'preferences.tabbar.showMore', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Show More Button', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 109. 显示更多按钮 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.showMore' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('显示更多按钮', 'preferences.tabbar.showMore', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '显示更多按钮', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 轻快 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.styleType.brisk';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('轻快', 'preferences.tabbar.styleType.brisk', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 轻快 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.styleType.brisk' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('轻快', 'preferences.tabbar.styleType.brisk', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Brisk', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 110. 轻快 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.styleType.brisk' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('轻快', 'preferences.tabbar.styleType.brisk', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '轻快', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 卡片 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.styleType.card';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('卡片', 'preferences.tabbar.styleType.card', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 卡片 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.styleType.card' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('卡片', 'preferences.tabbar.styleType.card', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Card', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 111. 卡片 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.styleType.card' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('卡片', 'preferences.tabbar.styleType.card', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '卡片', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 谷歌 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.styleType.chrome';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('谷歌', 'preferences.tabbar.styleType.chrome', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 谷歌 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.styleType.chrome' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('谷歌', 'preferences.tabbar.styleType.chrome', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Chrome', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 112. 谷歌 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.styleType.chrome' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('谷歌', 'preferences.tabbar.styleType.chrome', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '谷歌', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 朴素 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.styleType.plain';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('朴素', 'preferences.tabbar.styleType.plain', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 朴素 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.styleType.plain' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('朴素', 'preferences.tabbar.styleType.plain', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Plain', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 113. 朴素 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.styleType.plain' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('朴素', 'preferences.tabbar.styleType.plain', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '朴素', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 标签页风格 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.styleType.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('标签页风格', 'preferences.tabbar.styleType.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 标签页风格 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.styleType.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('标签页风格', 'preferences.tabbar.styleType.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Tabs Style', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 114. 标签页风格 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.styleType.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('标签页风格', 'preferences.tabbar.styleType.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '标签页风格', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 标签栏 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('标签栏', 'preferences.tabbar.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 标签栏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('标签栏', 'preferences.tabbar.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Tabbar', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 115. 标签栏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('标签栏', 'preferences.tabbar.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '标签栏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 启用纵向滚轮响应 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.wheelable';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用纵向滚轮响应', 'preferences.tabbar.wheelable', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 启用纵向滚轮响应 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.wheelable' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用纵向滚轮响应', 'preferences.tabbar.wheelable', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Support Mouse Wheel', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 116. 启用纵向滚轮响应 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.wheelable' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用纵向滚轮响应', 'preferences.tabbar.wheelable', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '启用纵向滚轮响应', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 开启后，标签栏区域可以响应滚轮的纵向滚动事件。
关闭时，只能响应系统的横向滚动事件（需要按下Shift再滚动滚轮） (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.tabbar.wheelableTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开启后，标签栏区域可以响应滚轮的纵向滚动事件。
关闭时，只能响应系统的横向滚动事件（需要按下Shift再滚动滚轮）', 'preferences.tabbar.wheelableTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 开启后，标签栏区域可以响应滚轮的纵向滚动事件。
关闭时，只能响应系统的横向滚动事件（需要按下Shift再滚动滚轮） - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.wheelableTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开启后，标签栏区域可以响应滚轮的纵向滚动事件。
关闭时，只能响应系统的横向滚动事件（需要按下Shift再滚动滚轮）', 'preferences.tabbar.wheelableTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'When enabled, the Tabbar area responds to vertical scrolling events of the scroll wheel.', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 117. 开启后，标签栏区域可以响应滚轮的纵向滚动事件。
关闭时，只能响应系统的横向滚动事件（需要按下Shift再滚动滚轮） - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.tabbar.wheelableTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('开启后，标签栏区域可以响应滚轮的纵向滚动事件。
关闭时，只能响应系统的横向滚动事件（需要按下Shift再滚动滚轮）', 'preferences.tabbar.wheelableTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '开启后，标签栏区域可以响应滚轮的纵向滚动事件。
关闭时，只能响应系统的横向滚动事件（需要按下Shift再滚动滚轮）', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 自定义 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.builtin.custom';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('自定义', 'preferences.theme.builtin.custom', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 自定义 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.custom' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('自定义', 'preferences.theme.builtin.custom', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Custom', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 118. 自定义 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.custom' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('自定义', 'preferences.theme.builtin.custom', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '自定义', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 深蓝色 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.builtin.deepBlue';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('深蓝色', 'preferences.theme.builtin.deepBlue', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 深蓝色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.deepBlue' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('深蓝色', 'preferences.theme.builtin.deepBlue', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Deep Blue', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 119. 深蓝色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.deepBlue' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('深蓝色', 'preferences.theme.builtin.deepBlue', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '深蓝色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 深绿色 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.builtin.deepGreen';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('深绿色', 'preferences.theme.builtin.deepGreen', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 深绿色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.deepGreen' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('深绿色', 'preferences.theme.builtin.deepGreen', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Deep Green', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 120. 深绿色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.deepGreen' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('深绿色', 'preferences.theme.builtin.deepGreen', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '深绿色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 默认 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.builtin.default';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('默认', 'preferences.theme.builtin.default', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 默认 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.default' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('默认', 'preferences.theme.builtin.default', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Default', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 121. 默认 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.default' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('默认', 'preferences.theme.builtin.default', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '默认', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 中灰色 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.builtin.gray';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('中灰色', 'preferences.theme.builtin.gray', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 中灰色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.gray' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('中灰色', 'preferences.theme.builtin.gray', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Gray', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 122. 中灰色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.gray' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('中灰色', 'preferences.theme.builtin.gray', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '中灰色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 浅绿色 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.builtin.green';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('浅绿色', 'preferences.theme.builtin.green', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 浅绿色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.green' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('浅绿色', 'preferences.theme.builtin.green', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Green', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 123. 浅绿色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.green' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('浅绿色', 'preferences.theme.builtin.green', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '浅绿色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 中性色 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.builtin.neutral';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('中性色', 'preferences.theme.builtin.neutral', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 中性色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.neutral' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('中性色', 'preferences.theme.builtin.neutral', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Neutral', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 124. 中性色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.neutral' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('中性色', 'preferences.theme.builtin.neutral', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '中性色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 125. 橙黄色 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.builtin.orange';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('橙黄色', 'preferences.theme.builtin.orange', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 125. 橙黄色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.orange' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('橙黄色', 'preferences.theme.builtin.orange', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Orange', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 125. 橙黄色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.orange' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('橙黄色', 'preferences.theme.builtin.orange', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '橙黄色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 126. 樱花粉 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.builtin.pink';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('樱花粉', 'preferences.theme.builtin.pink', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 126. 樱花粉 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.pink' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('樱花粉', 'preferences.theme.builtin.pink', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Pink', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 126. 樱花粉 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.pink' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('樱花粉', 'preferences.theme.builtin.pink', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '樱花粉', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 127. 玫瑰红 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.builtin.rose';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('玫瑰红', 'preferences.theme.builtin.rose', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 127. 玫瑰红 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.rose' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('玫瑰红', 'preferences.theme.builtin.rose', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Rose', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 127. 玫瑰红 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.rose' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('玫瑰红', 'preferences.theme.builtin.rose', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '玫瑰红', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 128. 天蓝色 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.builtin.skyBlue';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('天蓝色', 'preferences.theme.builtin.skyBlue', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 128. 天蓝色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.skyBlue' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('天蓝色', 'preferences.theme.builtin.skyBlue', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Sky Blue', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 128. 天蓝色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.skyBlue' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('天蓝色', 'preferences.theme.builtin.skyBlue', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '天蓝色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 129. 石板灰 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.builtin.slate';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('石板灰', 'preferences.theme.builtin.slate', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 129. 石板灰 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.slate' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('石板灰', 'preferences.theme.builtin.slate', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Slate', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 129. 石板灰 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.slate' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('石板灰', 'preferences.theme.builtin.slate', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '石板灰', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 130. 内置主题 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.builtin.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('内置主题', 'preferences.theme.builtin.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 130. 内置主题 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('内置主题', 'preferences.theme.builtin.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Built-in', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 130. 内置主题 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('内置主题', 'preferences.theme.builtin.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '内置主题', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 131. 紫罗兰 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.builtin.violet';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('紫罗兰', 'preferences.theme.builtin.violet', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 131. 紫罗兰 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.violet' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('紫罗兰', 'preferences.theme.builtin.violet', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Violet', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 131. 紫罗兰 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.violet' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('紫罗兰', 'preferences.theme.builtin.violet', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '紫罗兰', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 132. 柠檬黄 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.builtin.yellow';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('柠檬黄', 'preferences.theme.builtin.yellow', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 132. 柠檬黄 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.yellow' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('柠檬黄', 'preferences.theme.builtin.yellow', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Yellow', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 132. 柠檬黄 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.yellow' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('柠檬黄', 'preferences.theme.builtin.yellow', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '柠檬黄', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 133. 锌色灰 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.builtin.zinc';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('锌色灰', 'preferences.theme.builtin.zinc', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 133. 锌色灰 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.zinc' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('锌色灰', 'preferences.theme.builtin.zinc', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Zinc', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 133. 锌色灰 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.builtin.zinc' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('锌色灰', 'preferences.theme.builtin.zinc', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '锌色灰', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 134. 深色 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.dark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('深色', 'preferences.theme.dark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 134. 深色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.dark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('深色', 'preferences.theme.dark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Dark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 134. 深色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.dark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('深色', 'preferences.theme.dark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '深色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 135. 深色顶栏 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.darkHeader';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('深色顶栏', 'preferences.theme.darkHeader', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 135. 深色顶栏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.darkHeader' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('深色顶栏', 'preferences.theme.darkHeader', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Semi Dark Header', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 135. 深色顶栏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.darkHeader' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('深色顶栏', 'preferences.theme.darkHeader', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '深色顶栏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 136. 深色侧边栏 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.darkSidebar';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('深色侧边栏', 'preferences.theme.darkSidebar', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 136. 深色侧边栏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.darkSidebar' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('深色侧边栏', 'preferences.theme.darkSidebar', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Semi Dark Sidebar', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 136. 深色侧边栏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.darkSidebar' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('深色侧边栏', 'preferences.theme.darkSidebar', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '深色侧边栏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. 灰色模式 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.grayMode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('灰色模式', 'preferences.theme.grayMode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. 灰色模式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.grayMode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('灰色模式', 'preferences.theme.grayMode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Gray Mode', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 137. 灰色模式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.grayMode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('灰色模式', 'preferences.theme.grayMode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '灰色模式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 138. 浅色 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.light';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('浅色', 'preferences.theme.light', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 138. 浅色 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.light' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('浅色', 'preferences.theme.light', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Light', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 138. 浅色 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.light' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('浅色', 'preferences.theme.light', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '浅色', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 139. 圆角 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.radius';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('圆角', 'preferences.theme.radius', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 139. 圆角 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.radius' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('圆角', 'preferences.theme.radius', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Radius', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 139. 圆角 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.radius' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('圆角', 'preferences.theme.radius', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '圆角', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 140. 主题 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('主题', 'preferences.theme.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 140. 主题 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('主题', 'preferences.theme.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Theme', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 140. 主题 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('主题', 'preferences.theme.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '主题', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 141. 色弱模式 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.theme.weakMode';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('色弱模式', 'preferences.theme.weakMode', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 141. 色弱模式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.weakMode' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('色弱模式', 'preferences.theme.weakMode', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Weak Mode', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 141. 色弱模式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.theme.weakMode' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('色弱模式', 'preferences.theme.weakMode', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '色弱模式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 142. 偏好设置 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('偏好设置', 'preferences.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 142. 偏好设置 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('偏好设置', 'preferences.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Preferences', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 142. 偏好设置 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('偏好设置', 'preferences.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '偏好设置', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 143. 双列菜单 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.twoColumn';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('双列菜单', 'preferences.twoColumn', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 143. 双列菜单 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.twoColumn' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('双列菜单', 'preferences.twoColumn', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Two Column', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 143. 双列菜单 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.twoColumn' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('双列菜单', 'preferences.twoColumn', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '双列菜单', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 144. 垂直双列菜单模式 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.twoColumnTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('垂直双列菜单模式', 'preferences.twoColumnTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 144. 垂直双列菜单模式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.twoColumnTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('垂直双列菜单模式', 'preferences.twoColumnTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Vertical Two Column Menu Mode', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 144. 垂直双列菜单模式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.twoColumnTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('垂直双列菜单模式', 'preferences.twoColumnTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '垂直双列菜单模式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 145. 垂直 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.vertical';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('垂直', 'preferences.vertical', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 145. 垂直 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.vertical' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('垂直', 'preferences.vertical', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Vertical', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 145. 垂直 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.vertical' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('垂直', 'preferences.vertical', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '垂直', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 146. 侧边垂直菜单模式 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.verticalTip';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('侧边垂直菜单模式', 'preferences.verticalTip', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 146. 侧边垂直菜单模式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.verticalTip' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('侧边垂直菜单模式', 'preferences.verticalTip', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Side vertical menu mode', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 146. 侧边垂直菜单模式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.verticalTip' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('侧边垂直菜单模式', 'preferences.verticalTip', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '侧边垂直菜单模式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 147. 水印 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.watermark';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('水印', 'preferences.watermark', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 147. 水印 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.watermark' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('水印', 'preferences.watermark', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Watermark', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 147. 水印 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.watermark' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('水印', 'preferences.watermark', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '水印', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 148. 流式 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.wide';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流式', 'preferences.wide', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 148. 流式 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.wide' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流式', 'preferences.wide', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Wide', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 148. 流式 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.wide' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('流式', 'preferences.wide', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '流式', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 149. 启用全屏 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.widget.fullscreen';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用全屏', 'preferences.widget.fullscreen', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 149. 启用全屏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.fullscreen' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用全屏', 'preferences.widget.fullscreen', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Enable Fullscreen', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 149. 启用全屏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.fullscreen' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用全屏', 'preferences.widget.fullscreen', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '启用全屏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 150. 启用全局搜索 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.widget.globalSearch';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用全局搜索', 'preferences.widget.globalSearch', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 150. 启用全局搜索 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.globalSearch' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用全局搜索', 'preferences.widget.globalSearch', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Enable Global Search', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 150. 启用全局搜索 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.globalSearch' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用全局搜索', 'preferences.widget.globalSearch', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '启用全局搜索', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 151. 启用语言切换 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.widget.languageToggle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用语言切换', 'preferences.widget.languageToggle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 151. 启用语言切换 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.languageToggle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用语言切换', 'preferences.widget.languageToggle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Enable Language Toggle', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 151. 启用语言切换 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.languageToggle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用语言切换', 'preferences.widget.languageToggle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '启用语言切换', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 152. 启用锁屏 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.widget.lockScreen';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用锁屏', 'preferences.widget.lockScreen', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 152. 启用锁屏 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.lockScreen' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用锁屏', 'preferences.widget.lockScreen', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Enable Lock Screen', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 152. 启用锁屏 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.lockScreen' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用锁屏', 'preferences.widget.lockScreen', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '启用锁屏', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 153. 启用通知 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.widget.notification';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用通知', 'preferences.widget.notification', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 153. 启用通知 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.notification' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用通知', 'preferences.widget.notification', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Enable Notification', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 153. 启用通知 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.notification' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用通知', 'preferences.widget.notification', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '启用通知', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 154. 启用刷新 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.widget.refresh';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用刷新', 'preferences.widget.refresh', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 154. 启用刷新 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.refresh' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用刷新', 'preferences.widget.refresh', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Enable Refresh', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 154. 启用刷新 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.refresh' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用刷新', 'preferences.widget.refresh', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '启用刷新', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 155. 启用侧边栏切换 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.widget.sidebarToggle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用侧边栏切换', 'preferences.widget.sidebarToggle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 155. 启用侧边栏切换 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.sidebarToggle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用侧边栏切换', 'preferences.widget.sidebarToggle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Enable Sidebar Toggle', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 155. 启用侧边栏切换 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.sidebarToggle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用侧边栏切换', 'preferences.widget.sidebarToggle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '启用侧边栏切换', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 156. 启用主题切换 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.widget.themeToggle';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用主题切换', 'preferences.widget.themeToggle', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 156. 启用主题切换 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.themeToggle' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用主题切换', 'preferences.widget.themeToggle', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Enable Theme Toggle', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 156. 启用主题切换 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.themeToggle' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('启用主题切换', 'preferences.widget.themeToggle', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '启用主题切换', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 157. 小部件 (use_type=0)
DELETE FROM infra_i18n_key WHERE message_key = 'preferences.widget.title';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('小部件', 'preferences.widget.title', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 157. 小部件 - en-US
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.title' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('小部件', 'preferences.widget.title', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, 'Widget', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- 157. 小部件 - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = 'preferences.widget.title' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('小部件', 'preferences.widget.title', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '小部件', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
