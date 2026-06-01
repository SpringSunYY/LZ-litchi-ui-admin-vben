#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
i18n JSON -> backend SQL generator
执行此py转为sql插入语句 python generate_i18n_sql.py
Spec: docs/i18n-sql.md
"""

import json
from pathlib import Path

SCRIPT_FILE = Path(__file__).resolve()
BASE_DIR = SCRIPT_FILE.parent.parent.parent.parent.parent
LOCALES_DIR = BASE_DIR / "apps" / "web-antd" / "src" / "locales"
SQL_DIR = LOCALES_DIR / "sql"
ZH_DIR = LOCALES_DIR / "langs" / "zh-CN"
EN_DIR = LOCALES_DIR / "langs" / "en-US"
GENERATE_DATE = "2026-06-01"

SQL_DIR.mkdir(parents=True, exist_ok=True)

# use_type 常量，与 infra_i18n_key_use_type 字典 sort 值一一对应
USE_PUBLIC = 0
USE_UI = 1
USE_FORM = 2
USE_FIELD = 3
USE_FUNCTION = 4
USE_EXCEPTION = 5
USE_MENU = 6
USE_DICT = 7

# 全部为 UI 类型的模块（扁平结构，无业务层级）
# common.json 和 ui.json 的所有 key 均强制为 USE_UI = 1
_UI_ONLY_MODULES = frozenset(["common", "ui"])

# 特殊键名：这些键名在 JSON 中出现时表示该节点是特殊类型容器，而非业务名
SPECIAL_KEYS = frozenset(["field", "action", "message", "list", "group", "menu"])

# use_type 判断规则：按优先级排序，先匹配的生效
# 非 common/ui 模块默认 use_type=2（表单），不走 use_type=0
_USE_TYPE_RULES = [
    (lambda k: k.endswith(".menu"), USE_MENU, USE_MENU),
    (lambda k: ".action." in k, USE_FUNCTION, USE_FUNCTION),
    (lambda k: ".field." in k, USE_FIELD, USE_FIELD),
    (lambda k: ".message." in k, USE_FORM, USE_FORM),
    (lambda k: ".list" in k and not k.endswith(".list"), USE_FORM, USE_FORM),
    (lambda k: ".group." in k, USE_FORM, USE_FORM),
    (lambda k: ".help." in k, USE_FORM, USE_FORM),
    (lambda k: ".common." in k, USE_FORM, USE_FORM),
    (lambda k: k.startswith("common."), USE_FORM, USE_FORM),
    (lambda k: k.endswith(".list"), USE_FORM, USE_FORM),
    (lambda k: k.endswith(".common"), USE_FORM, USE_FORM),
]


def _get_use_type(key_str: str):
    """
    根据 key 路径判断 use_type。
    优先级：menu > action > field > message > list > group/help/common > 兜底表单
    非 common/ui 模块不存在 use_type=0，所有非匹配 key 均为表单(2)
    """
    for check_fn, ut, on in _USE_TYPE_RULES:
        if check_fn(key_str):
            return ut
    return USE_FORM


def _collect(zh_node, en_node, parts, results, parent_label="", is_ui_module=False):
    """
    遍历 JSON 结构，收集所有 i18n key。

    results: {(key_str, use_type): (zh, en, biz_label)}
      zh: 中文原文
      en: 英文原文
      biz_label: 业务中文名（用于构建 message_name）
    parent_label: 父级传下来的业务中文名
    is_ui_module: 是否为 common/ui 等纯 UI 模块（所有 key 强制 USE_UI）
    """
    for key in zh_node:
        zh_val = zh_node[key]
        en_val = en_node.get(key) if en_node else None
        new_parts = parts + [key]
        key_str = ".".join(new_parts)

        if isinstance(zh_val, dict):
            # 字符串子键集合（排除嵌套 dict）
            child_str_keys = set(k for k, v in zh_val.items() if isinstance(v, str))

            # en 子结构
            child_en = {}
            if en_node and isinstance(en_node, dict):
                child_en = en_node.get(key) or {}

            # 特殊键检测：如果当前 key 本身就是 field/action/message/list/group/menu，
            # 则不生成业务名条目，直接递归子节点，并透传 parent_label
            if key in SPECIAL_KEYS:
                child_label = parent_label
                _collect(zh_val, child_en, new_parts, results, child_label, is_ui_module)
                continue

            # 判断当前节点是否有特殊子键（field/action/message/list/group/menu）
            has_special_child = bool(child_str_keys & SPECIAL_KEYS)

            # 同名字符串兄弟（dict 内部有一个和 dict 同名的字符串键）
            sns = zh_val.get(key)
            same_name_str = sns if isinstance(sns, str) and sns.strip() else ""

            if same_name_str:
                # 1. 有同名字符串 -> 业务名 = 那个字符串值；子节点透传此业务名
                results[(key_str, USE_FORM)] = (same_name_str, "", same_name_str)
                child_label = same_name_str
            elif "menu" in child_str_keys and not has_special_child:
                # 2a. 有 menu 键（且无其他特殊键）-> 业务名 = menu 的值；子节点透传此业务名
                menu_val = zh_val.get("menu", "")
                results[(key_str, USE_FORM)] = (menu_val, "", menu_val)
                child_label = menu_val
            elif "list" in child_str_keys and not has_special_child:
                # 3a. 有 list 键（且无其他特殊键）-> 业务名 = list 的值；子节点透传此业务名
                list_val = zh_val.get("list", "")
                results[(key_str, USE_FORM)] = (list_val, "", list_val)
                child_label = list_val
            else:
                # 4. 无同名字符串，或同时包含特殊键（如 codegen.field），
                #    不生成 USE_PUBLIC 条目，子节点透传 parent_label
                child_label = parent_label

            _collect(zh_val, child_en, new_parts, results, child_label, is_ui_module)

        elif isinstance(zh_val, str):
            # common/ui 模块强制全部为 UI 类型，不走 use_type 规则
            ut = USE_UI if is_ui_module else _get_use_type(key_str)
            en_text = en_val if isinstance(en_val, str) and en_val.strip() else ""
            results[(key_str, ut)] = (zh_val, en_text, parent_label)


def _build_message_name(biz_label, zh_value):
    """
    按规范: message_name = {业务中文名}-{键中文名}
    biz_label 已确定，zh_value 去掉空格即为键中文名
    """
    bn = (biz_label or "").replace(" ", "")
    kn = (zh_value or "").replace(" ", "")
    if bn and bn != kn:
        return f"{biz_label}-{kn}"
    return kn


def _escape(s):
    if not s:
        return ""
    return str(s).replace("\\", "\\\\").replace("'", "''").replace("\n", "\\n").replace("\r", "\\r")


def generate_sql(module_name, results):
    lines = []
    lines.append("-- =============================================")
    lines.append(f"-- {module_name.upper()} i18n SQL")
    lines.append(f"-- Generated: {GENERATE_DATE}")
    lines.append("-- =============================================")
    lines.append("")
    lines.append("SET @IS_SYSTEM = 0;")
    lines.append(f"SET @MODULE_TYPE = '{module_name}';")
    lines.append("SET @LOCALE_TARGET = 2;")
    lines.append("SET @LOCALE_EN = 'en-US';")
    lines.append("SET @LOCALE_ZH_CN = 'zh-CN';")
    lines.append("SET @CREATOR = '0';")
    lines.append("SET @REMARK = 'ai auto generate';")
    lines.append("")
    lines.append("SET @USE_TYPE_PUBLIC = 0;    SET @ORDER_NUM_PUBLIC = 0;")
    lines.append("SET @USE_TYPE_UI = 1;       SET @ORDER_NUM_UI = 1;")
    lines.append("SET @USE_TYPE_FORM = 2;     SET @ORDER_NUM_FORM = 2;")
    lines.append("SET @USE_TYPE_FIELD = 3;    SET @ORDER_NUM_FIELD = 3;")
    lines.append("SET @USE_TYPE_FUNCTION = 4;  SET @ORDER_NUM_FUNCTION = 4;")
    lines.append("SET @USE_TYPE_EXCEPTION = 5; SET @ORDER_NUM_EXCEPTION = 5;")
    lines.append("SET @USE_TYPE_MENU = 6;     SET @ORDER_NUM_MENU = 6;")
    lines.append("SET @USE_TYPE_DICT = 7;     SET @ORDER_NUM_DICT = 7;")
    lines.append("")

    for idx, ((key_str, use_type), (zh, en, biz_label)) in enumerate(sorted(results.items()), 1):
        full_key = f"{module_name}.{key_str}"

        if use_type == USE_PUBLIC:
            ut, on = "@USE_TYPE_PUBLIC", "@ORDER_NUM_PUBLIC"
        elif use_type == USE_UI:
            ut, on = "@USE_TYPE_UI", "@ORDER_NUM_UI"
        elif use_type == USE_FORM:
            ut, on = "@USE_TYPE_FORM", "@ORDER_NUM_FORM"
        elif use_type == USE_FIELD:
            ut, on = "@USE_TYPE_FIELD", "@ORDER_NUM_FIELD"
        elif use_type == USE_FUNCTION:
            ut, on = "@USE_TYPE_FUNCTION", "@ORDER_NUM_FUNCTION"
        elif use_type == USE_EXCEPTION:
            ut, on = "@USE_TYPE_EXCEPTION", "@ORDER_NUM_EXCEPTION"
        elif use_type == USE_MENU:
            ut, on = "@USE_TYPE_MENU", "@ORDER_NUM_MENU"
        elif use_type == USE_DICT:
            ut, on = "@USE_TYPE_DICT", "@ORDER_NUM_DICT"
        else:
            ut, on = "@USE_TYPE_FORM", "@ORDER_NUM_FORM"

        msg_name = _build_message_name(biz_label, zh)
        # 注释行中不能有换行，否则 -- 注释会跨越多行导致 SQL 语法混乱
        msg_name_comment = msg_name.replace("\n", " ").replace("\r", "")

        lines.append(f"-- {idx}. {msg_name_comment} (use_type={use_type})")
        lines.append(f"DELETE FROM infra_i18n_key WHERE message_key = '{full_key}';")
        lines.append("INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)")
        lines.append(f"VALUES ('{_escape(msg_name)}', '{full_key}', @IS_SYSTEM, @MODULE_TYPE, {ut}, {on}, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);")
        lines.append("")
        lines.append(f"-- {idx}. {msg_name_comment} - en-US")
        lines.append(f"DELETE FROM infra_i18n_message WHERE message_key = '{full_key}' AND locale = @LOCALE_EN;")
        lines.append("INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)")
        lines.append(f"VALUES ('{_escape(msg_name)}', '{full_key}', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, {ut}, '{_escape(en)}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);")
        lines.append("")
        lines.append(f"-- {idx}. {msg_name_comment} - zh-CN")
        lines.append(f"DELETE FROM infra_i18n_message WHERE message_key = '{full_key}' AND locale = @LOCALE_ZH_CN;")
        lines.append("INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)")
        lines.append(f"VALUES ('{_escape(msg_name)}', '{full_key}', @LOCALE_ZH_CN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, {ut}, '{_escape(zh)}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);")
        lines.append("")

    return "\n".join(lines)


def process_module(module_name):
    zh_file = ZH_DIR / f"{module_name}.json"
    en_file = EN_DIR / f"{module_name}.json"

    if not zh_file.exists():
        print(f"[SKIP] {module_name}.json not found in zh-CN")
        return
    if not en_file.exists():
        print(f"[SKIP] {module_name}.json not found in en-US")
        return

    with open(zh_file, "r", encoding="utf-8") as f:
        zh_data = json.load(f)
    with open(en_file, "r", encoding="utf-8") as f:
        en_data = json.load(f)

    # common/ui 模块为纯 UI 类型，全部 key 强制 USE_UI
    is_ui_module = module_name in _UI_ONLY_MODULES

    results = {}
    _collect(zh_data, en_data, [], results, is_ui_module=is_ui_module)

    print(f"[PROCESS] {module_name}: {len(results)} keys" + (" [UI]" if is_ui_module else ""))

    sql = generate_sql(module_name, results)
    out_file = SQL_DIR / f"{module_name}.sql"
    with open(out_file, "w", encoding="utf-8") as f:
        f.write(sql)
    print(f"[WRITE] {out_file}")


def main():
    json_files = list(ZH_DIR.glob("*.json"))
    module_names = sorted(set(f.stem for f in json_files))

    print(f"Found {len(module_names)} modules: {module_names}")
    print("-" * 50)

    for name in module_names:
        try:
            process_module(name)
        except Exception as e:
            print(f"[ERROR] {name}: {e}")
            import traceback
            traceback.print_exc()

    # 拼接所有模块 SQL 为一个 all.sql
    all_sql_file = SQL_DIR / "all.sql"
    with open(all_sql_file, "w", encoding="utf-8") as out:
        out.write("-- =============================================\n")
        out.write("-- ALL i18n SQL (generated by generate_i18n_sql.py)\n")
        out.write(f"-- Generated: {GENERATE_DATE}\n")
        out.write("-- =============================================\n\n")
        for name in module_names:
            sql_file = SQL_DIR / f"{name}.sql"
            if sql_file.exists():
                with open(sql_file, "r", encoding="utf-8") as f:
                    out.write(f.read())
                out.write("\n")
    print(f"[WRITE] {all_sql_file}")

    print("-" * 50)
    print("Done!")


if __name__ == "__main__":
    main()
