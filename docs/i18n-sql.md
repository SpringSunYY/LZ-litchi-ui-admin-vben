# 前端 Locale 文件 → 后端 i18n SQL 生成规范

## 一、概述

本规范定义：如何将前端 `apps/web-antd/src/locales/langs/` 下的 JSON 文件中的所有 i18n Key，生成对应的后端 `infra_i18n_key` / `infra_i18n_message` 表的 SQL 插入语句。

生成的 SQL 文件放在 `apps/web-antd/src/locales/sql/` 目录下，**文件名与 JSON 文件名一一对应**：

```
apps/web-antd/src/locales/sql/
└── {module}.sql      # 与 zh-CN/{module}.json 对应，如 ai.sql、system.sql
```

> **动态性**：新增 JSON 文件时，只需在 `sql/` 目录下创建同名 `.sql` 文件即可，无需修改本规范。

---

## 二、i18n Key 结构分析

### 2.1 模块与文件名对应关系

| 前端模块       | JSON 文件                   | 对应后端 module_type |
| -------------- | --------------------------- | -------------------- |
| system         | `zh-CN/system.json`         | `system`             |
| infra          | `zh-CN/infra.json`          | `infra`              |
| ai             | `zh-CN/ai.json`             | `ai`                 |
| bpm            | `zh-CN/bpm.json`            | `bpm`                |
| erp            | `zh-CN/erp.json`            | `erp`                |
| crm            | `zh-CN/crm.json`            | `crm`                |
| common         | `zh-CN/common.json`         | `common`             |
| ui             | `zh-CN/ui.json`             | `ui`                 |
| page           | `zh-CN/page.json`           | `page`               |
| authentication | `zh-CN/authentication.json` | `authentication`     |
| preferences    | `zh-CN/preferences.json`    | `preferences`        |
| utils          | `zh-CN/utils.json`          | `utils`              |

> **动态性**：`module_type` 从 JSON 文件名推导（去掉 `-` 后转为小写），新增模块时自动适用，无需修改规范。

### 2.2 Key 层级结构

通过分析所有模块的 JSON 结构，归纳出以下 Key 层级模式：

| 层级 | 模式 | 示例 | 说明 |
| --- | --- | --- | --- |
| 业务模块 | `{module}` | `ai` | 顶层业务模块名 |
| 业务子模块 | `{module}.{subModule}` | `ai.chat` | 业务下的子模块 |
| 业务名称 | `{module}.{business}` | `ai.workflow` | 业务主体 |
| 菜单名 | `{module}.{business}.menu` | `ai.chat.menu` | 侧边栏菜单显示 |
| 列表标题 | `{module}.{business}.list` | `ai.chat.list` | 列表页面标题 |
| 字段 | `{module}.{business}.field.{fieldName}` | `ai.chat.field.title` | 字段标签 |
| 动作/按钮 | `{module}.{business}.action.{action}` | `ai.chat.action.create` | 操作按钮 |
| 消息提示 | `{module}.{business}.message.{name}` | `ai.chat.message.switching` | 提示/确认类文案 |
| 分组 | `{module}.{business}.group.{name}` | `ai.chat.group.pinned` | 分组标题 |
| 通用子模块 | `{module}.{common}` | `ai.common` | 通用子模块（如 image.common） |
| 特殊子业务 | `{module}.{special}` | `ai.model.chatRole` | 嵌套的二级业务 |

### 2.3 特殊层级说明

**（1）嵌套二级业务**：当 JSON 中出现 `{module}.{subBusiness}` 层级时（如 `ai.model.apiKey`、`ai.model.chatRole`），表示这是一个嵌套的二级业务，有自己独立的 field/action/message：

```
ai.model.apiKey.field.id       ✓ 属于 apiKey 子业务
ai.model.chatRole.field.id     ✓ 属于 chatRole 子业务
ai.model.field.id              ✓ 属于 model 主业务
```

**（2）扁平结构**：部分 JSON（如 `common.json`、`ui.json`）是扁平结构，Key 直接以 `{module}.{key}` 形式存在：

```
common.operation
ui.formRules.required
```

**（3）分组/标签结构**：部分 JSON（如 `menu.alwaysShow`、`menu.keepAlive`）包含子对象标签，展开后为独立键：

```
menu.alwaysShow.yes
menu.keepAlive.yes
```

---

## 三、SQL 生成规范

### 3.1 数据库表结构

后端有两张 i18n 表：

- **`infra_i18n_key`**：存储 i18n Key 的元信息
- **`infra_i18n_message`**：存储各语言的具体翻译

### 3.2 字段填充规则

根据 `infra_i18n_key_use_type` 字典，各字段按以下规则填充：

| 字段 | 常量名 | 值 | 说明 |
| --- | --- | --- | --- |
| `is_system` | `@IS_SYSTEM` | `0` | 非系统内置 |
| `locale_target` | `@LOCALE_TARGET` | `2` | 前端端使用端 |
| `locale` | `@LOCALE_EN` / `@LOCALE_ZH_CN` | `'en-US'` / `'zh-CN'` | 语言 |
| `remark` | `@REMARK` | `'ai auto generate'` | 备注 |
| `creator` | `@CREATOR` | `'0'` | 创建人 |

**use_type 和 order_num 根据 Key 层级动态判断**：

根据 `infra_i18n_key_use_type` 字典数据：

| sort 值 | 值 | 标签 | 适用层级 |
| --- | --- | --- | --- |
| 0 | `0` | 公共 | 顶层业务名（如 `ai.codegen`） |
| 1 | `1` | UI | `common.json`、`ui.json` 所有 key，以及扁平结构的 UI 层 key |
| 2 | `2` | 表单 | 列表标题（`.list`）、消息提示（`.message.*`）、分组（`.group.*`）、help 文案（`.help.*`） |
| 3 | `3` | 字段 | 字段（`.field.*`） |
| 4 | `4` | 功能 | 动作（`.action.*`） |
| 5 | `5` | 异常 | 后端校验消息（当前规范不生成） |
| 6 | `6` | 菜单 | 菜单（`.menu`） |
| 7 | `7` | 字典 | 字典模块专用 |

**use_type 判断规则**：

| Key 层级 | use_type | order_num |
| --- | --- | --- |
| `common.*`（common.json 所有 key） | `1`（UI） | `1` |
| `ui.*`（ui.json 所有 key） | `1`（UI） | `1` |
| `{module}` 或 `{module}.{business}`（顶层业务名） | `0`（公共） | `0` |
| `{module}.{business}.menu`（菜单名） | `6`（菜单） | `6` |
| `{module}.{business}.list`（列表标题） | `2`（表单） | `2` |
| `{module}.{business}.field.*`（字段） | `3`（字段） | `3` |
| `{module}.{business}.action.*`（动作） | `4`（功能） | `4` |
| `{module}.{business}.message.*`（消息提示） | `2`（表单） | `2` |
| `{module}.{business}.group.*`（分组） | `2`（表单） | `2` |
| `{module}.{business}.help.*`（帮助文案） | `2`（表单） | `2` |
| 嵌套子业务根键 `{module}.{business}.apiKey` | `0`（公共） | `0` |
| 嵌套子业务字段 `{module}.{business}.apiKey.field.*` | `3`（字段） | `3` |
| 嵌套子业务动作 `{module}.{business}.apiKey.action.*` | `4`（功能） | `4` |
| 标签子对象 `{module}.{business}.xxx.yyy`（如 `menu.alwaysShow.yes`） | `2`（表单） | `2` |

> **优先级**：如果同一个 key 符合多条规则，按从上到下优先级取第一条。`common` 和 `ui` 模块强制为 UI 类型，不走其他规则判断。

### 3.3 message_name 和 message 字段格式

**message_name（中文名称）**：`{业务中文名}-{字段/键中文名}`，用 `-` 分隔

**message（中文翻译，zh-CN）**：直接取 JSON 中的中文 value

**message（英文翻译，en-US）**：直接取 en-US JSON 中的英文 value（已是全小写格式）

---

## 四、SQL 文件模板

### 4.1 单模块 SQL 模板

每个模块生成一个 `.sql` 文件，包含该模块下所有 JSON 的所有 Key。

```sql
-- =============================================
-- {模块名} 国际化 SQL（由 {module}.json 自动生成）
-- 生成时间：{YYYY-MM-DD}
-- 规范版本：v1.3
-- =============================================

-- ---------------------------------------------
-- 公共变量定义
-- ---------------------------------------------
SET @IS_SYSTEM = 0;
SET @MODULE_TYPE = '{module}';
SET @LOCALE_TARGET_BACKEND = 1;
SET @LOCALE_EN = 'en-US';
SET @LOCALE_ZH_CN = 'zh-CN';
SET @CREATOR = '0';
SET @REMARK = 'ai auto generate';

-- ---------------------------------------------
-- 公共层变量（sort=0，use_type=0）
-- ---------------------------------------------
SET @USE_TYPE_PUBLIC = 0;
SET @ORDER_NUM_PUBLIC = 0;

-- ---------------------------------------------
-- UI 层变量（sort=1，use_type=1）
-- ---------------------------------------------
SET @USE_TYPE_UI = 1;
SET @ORDER_NUM_UI = 1;

-- ---------------------------------------------
-- 表单层变量（sort=2，use_type=2）
-- ---------------------------------------------
SET @USE_TYPE_FORM = 2;
SET @ORDER_NUM_FORM = 2;

-- ---------------------------------------------
-- 功能层变量（sort=4，use_type=4）
-- ---------------------------------------------
SET @USE_TYPE_FUNCTION = 4;
SET @ORDER_NUM_FUNCTION = 4;

-- ---------------------------------------------
-- 菜单层变量（sort=6，use_type=6）
-- ---------------------------------------------
SET @USE_TYPE_MENU = 6;
SET @ORDER_NUM_MENU = 6;

-- =============================================
-- {业务域分组标题}
-- =============================================

-- {序号}. {message_name} (use_type=0, order_num=0)
DELETE FROM infra_i18n_key WHERE message_key = '{i18nKey}';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{name}', '{i18nKey}', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, @ORDER_NUM_PUBLIC, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- {序号}. {message_name} - en-US
DELETE FROM infra_i18n_message WHERE message_key = '{i18nKey}' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{name}', '{i18nKey}', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '{enMessage}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- {序号}. {message_name} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = '{i18nKey}' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{name}', '{i18nKey}', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_PUBLIC, '{zhMessage}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- {序号}. {message_name} (use_type=2, order_num=2)
DELETE FROM infra_i18n_key WHERE message_key = '{i18nKey}';
INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{name}', '{i18nKey}', @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, @ORDER_NUM_FORM, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- {序号}. {message_name} - en-US
DELETE FROM infra_i18n_message WHERE message_key = '{i18nKey}' AND locale = @LOCALE_EN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{name}', '{i18nKey}', @LOCALE_EN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '{enMessage}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);

-- {序号}. {message_name} - zh-CN
DELETE FROM infra_i18n_message WHERE message_key = '{i18nKey}' AND locale = @LOCALE_ZH_CN;
INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)
VALUES ('{name}', '{i18nKey}', @LOCALE_ZH_CN, @LOCALE_TARGET_BACKEND, @IS_SYSTEM, @MODULE_TYPE, @USE_TYPE_FORM, '{zhMessage}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);
```

> **变量说明**：INSERT 语句中根据 Key 层级选择对应的 use_type 和 order_num 变量：
>
> - 公共层：`@USE_TYPE_PUBLIC` / `@ORDER_NUM_PUBLIC`
> - UI 层：`@USE_TYPE_UI` / `@ORDER_NUM_UI`
> - 表单层：`@USE_TYPE_FORM` / `@ORDER_NUM_FORM`
> - 字段层：`@USE_TYPE_FIELD` / `@ORDER_NUM_FIELD`
> - 功能层：`@USE_TYPE_FUNCTION` / `@ORDER_NUM_FUNCTION`
> - 菜单层：`@USE_TYPE_MENU` / `@ORDER_NUM_MENU`

---

## 五、Key 生成规则详解

### 5.1 业务名称层（无后缀）

当 JSON 中 `{module}.{business}` 对应的 value 是业务名称时（如 `"chat": "AI 聊天"`），生成：

| 字段            | 值                   |
| --------------- | -------------------- |
| message_key     | `ai.chat`            |
| message_name    | `AI聊天`（去掉空格） |
| message (zh-CN) | `AI 聊天`            |
| message (en-US) | `ai chat`            |
| **use_type**    | `0`（公共）          |
| **order_num**   | `0`                  |

### 5.2 菜单名层（`.menu` 后缀）

当 JSON 中 `{module}.{business}.menu` 存在时，生成：

| 字段            | 值             |
| --------------- | -------------- |
| message_key     | `ai.chat.menu` |
| message_name    | `AI聊天-菜单`  |
| message (zh-CN) | `AI 聊天`      |
| message (en-US) | `ai chat`      |
| **use_type**    | `6`（菜单）    |
| **order_num**   | `6`            |

### 5.3 列表标题层（`.list` 后缀）

当 JSON 中 `{module}.{business}.list` 存在时，生成：

| 字段            | 值             |
| --------------- | -------------- |
| message_key     | `ai.chat.list` |
| message_name    | `AI聊天-列表`  |
| message (zh-CN) | `AI 聊天列表`  |
| message (en-US) | `ai chat list` |
| **use_type**    | `2`（表单）    |
| **order_num**   | `2`            |

### 5.4 字段层（`.field.{fieldName}` 后缀）

当 JSON 中 `{module}.{business}.field` 对象存在字段时，展开每个字段生成：

| 字段            | 值                 |
| --------------- | ------------------ |
| message_key     | `ai.chat.field.id` |
| message_name    | `AI聊天-对话编号`  |
| message (zh-CN) | `对话编号`         |
| message (en-US) | `conversation id`  |
| **use_type**    | `3`（字段）        |
| **order_num**   | `3`                |

### 5.5 动作层（`.action.{action}` 后缀）

当 JSON 中 `{module}.{business}.action` 对象存在动作时，展开每个动作生成：

| 字段            | 值                      |
| --------------- | ----------------------- |
| message_key     | `ai.chat.action.create` |
| message_name    | `AI聊天-新建对话`       |
| message (zh-CN) | `新建对话`              |
| message (en-US) | `new conversation`      |
| **use_type**    | `4`（功能）             |
| **order_num**   | `4`                     |

### 5.6 消息层（`.message.{name}` 后缀）

当 JSON 中 `{module}.{business}.message` 对象存在消息时，展开每个消息生成：

| 字段            | 值                                         |
| --------------- | ------------------------------------------ |
| message_key     | `ai.chat.message.switching`                |
| message_name    | `AI聊天-对话中不允许切换`                  |
| message (zh-CN) | `对话中，不允许切换！`                     |
| message (en-US) | `conversation in progress, cannot switch!` |
| **use_type**    | `2`（表单）                                |
| **order_num**   | `2`                                        |

### 5.7 分组层（`.group.{name}` 后缀）

当 JSON 中 `{module}.{business}.group` 对象存在时，展开每个分组生成：

| 字段            | 值                     |
| --------------- | ---------------------- |
| message_key     | `ai.chat.group.pinned` |
| message_name    | `AI聊天-置顶`          |
| message (zh-CN) | `置顶`                 |
| message (en-US) | `pinned`               |
| **use_type**    | `2`（表单）            |
| **order_num**   | `2`                    |

### 5.8 嵌套子业务层

当 JSON 中存在 `{module}.{business}.{subBusiness}` 且该子业务下有 field/action/message 时，需要同时生成：

1. **子业务根键**：如 `ai.model.apiKey` = "API 密钥"

| 字段          | 值                |
| ------------- | ----------------- |
| message_key   | `ai.model.apiKey` |
| **use_type**  | `0`（公共）       |
| **order_num** | `0`               |

2. **子业务 field**：如 `ai.model.apiKey.field.id`

| 字段          | 值                         |
| ------------- | -------------------------- |
| message_key   | `ai.model.apiKey.field.id` |
| **use_type**  | `3`（字段）                |
| **order_num** | `3`                        |

3. **子业务 action**：如 `ai.model.apiKey.action.query`

| 字段          | 值                             |
| ------------- | ------------------------------ |
| message_key   | `ai.model.apiKey.action.query` |
| **use_type**  | `4`（功能）                    |
| **order_num** | `4`                            |

### 5.9 扁平结构

当 JSON 是扁平结构（如 `common.json`、`ui.json`）时，Key 直接使用：

| 字段            | 值                 |
| --------------- | ------------------ |
| message_key     | `common.operation` |
| message_name    | `通用-操作`        |
| message (zh-CN) | `操作`             |
| message (en-US) | `operation`        |
| **use_type**    | `1`（UI）          |
| **order_num**   | `1`                |

### 5.10 标签子对象结构

当 JSON 中存在 `{module}.{business}.{tag}` 且值为对象（如 `menu.alwaysShow.yes`），展开为独立键：

| 字段            | 值                           |
| --------------- | ---------------------------- |
| message_key     | `system.menu.alwaysShow.yes` |
| message_name    | `菜单管理-总是`              |
| message (zh-CN) | `总是`                       |
| message (en-US) | `yes`                        |
| **use_type**    | `2`（表单）                  |
| **order_num**   | `2`                          |

---

## 六、Key 优先级与去重

### 6.1 优先级规则

同一个 Key 可能出现在多个层级中，按以下优先级处理：

1. **字段层**（`.field.xxx`）> **动作层**（`.action.xxx`）> **消息层**（`.message.xxx`）> **分组层**（`.group.xxx`）
2. **子业务**（`{module}.{business}.apiKey`）> **主业务**（`{module}.{business}`）的字段/动作

### 6.2 去重规则

- 如果父级业务名与子级业务名相同，不重复生成父级字段（如 `ai.workflow` 和 `ai.workflow.list` 都要生成）
- JSON 中显式存在的每个 key 都必须生成 SQL，不做合并

---

## 七、生成流程

### 7.1 手动生成流程

1. 读取 `zh-CN/{module}.json` 作为中文源
2. 读取 `en-US/{module}.json` 作为英文源
3. 遍历 JSON 结构，按第五节的规则生成每一层级的 Key
4. 根据 Key 层级判断 use_type 和 order_num（按 3.2 节的规则）
5. 生成 SQL 文件到 `apps/web-antd/src/locales/sql/{module}.sql`

### 7.2 SQL 文件组织

```
apps/web-antd/src/locales/sql/
└── {module}.sql      # 文件名与 JSON 模块名一致，动态生成
```

---

## 八、use_type 字典参考

根据 `infra_i18n_key_use_type` 字典，按 sort 字段排序：

| sort 值 | value 值 | 标签 | 说明 | 本规范适用场景 |
| --- | --- | --- | --- | --- |
| 0 | `0` | 公共 | 通用 | 顶层业务名（如 `ai`、`ai.workflow`） |
| 1 | `1` | UI | 前端展示 | 扁平结构（如 `common.xxx`、`ui.xxx`） |
| 2 | `2` | 表单 | 表单/列表/消息 | 列表标题、消息提示、分组、help 文案等 |
| 3 | `3` | 字段 | 字段 | 字段（`.field.*`） |
| 4 | `4` | 功能 | 功能 | 动作（`.action.*`） |
| 5 | `5` | 异常 | 后端校验消息 | 后端校验（当前规范不生成） |
| 6 | `6` | 菜单 | 菜单 | 菜单（`.menu`） |
| 7 | `7` | 字典 | 字典值 | 字典模块专用 |

---

## 九、规范总结

```
┌────────────────────────────────────────────────────────────────┐
│  SQL 文件位置: apps/web-antd/src/locales/sql/{module}.sql          │
├────────────────────────────────────────────────────────────────┤
│  公共变量（固定值）:                                               │
│  ├── @IS_SYSTEM = 0                                              │
│  ├── @LOCALE_TARGET_BACKEND = 1  (后端使用端)                     │
│  ├── @LOCALE_EN = 'en-US'                                        │
│  ├── @LOCALE_ZH_CN = 'zh-CN'                                    │
│  ├── @CREATOR = '0'                                              │
│  ├── @REMARK = 'ai auto generate'                                │
│  └── @MODULE_TYPE = '{module}'  (动态，从 JSON 文件名推导)         │
├────────────────────────────────────────────────────────────────┤
│  动态变量（根据 Key 层级选择）:                                      │
│  ├── 公共层:   @USE_TYPE_PUBLIC = 0,     @ORDER_NUM_PUBLIC = 0  │
│  ├── UI 层:    @USE_TYPE_UI = 1,         @ORDER_NUM_UI = 1       │
│  ├── 表单层:   @USE_TYPE_FORM = 2,       @ORDER_NUM_FORM = 2     │
│  ├── 字段层:   @USE_TYPE_FIELD = 3,      @ORDER_NUM_FIELD = 3    │
│  ├── 功能层:   @USE_TYPE_FUNCTION = 4,   @ORDER_NUM_FUNCTION = 4 │
│  ├── 异常层:   @USE_TYPE_EXCEPTION = 5,  @ORDER_NUM_EXCEPTION = 5│
│  ├── 菜单层:   @USE_TYPE_MENU = 6,       @ORDER_NUM_MENU = 6     │
│  └── 字典层:   @USE_TYPE_DICT = 7,       @ORDER_NUM_DICT = 7     │
├────────────────────────────────────────────────────────────────┤
│  use_type 判断优先级:                                             │
│  1. 包含 .menu       → use_type=6（菜单）                       │
│  2. 包含 .action     → use_type=4（功能）                       │
│  3. 包含 .field      → use_type=3（字段）                       │
│  4. 包含 .message / .list / .group / .help  → use_type=2（表单）│
│  5. 顶层 key（如 ai、system） → use_type=0（公共）              │
│  6. 扁平结构（如 ui.xxx、common.xxx） → use_type=1（UI）         │
├────────────────────────────────────────────────────────────────┤
│  message_name 格式: {业务中文名}-{键中文名}                       │
│  message (zh-CN): 直接取 JSON 中文 value                          │
│  message (en-US): 直接取 JSON 英文 value（全小写）               │
└────────────────────────────────────────────────────────────────┘
```
