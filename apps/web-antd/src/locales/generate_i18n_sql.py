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
GENERATE_DATE = "2026-05-29"

SQL_DIR.mkdir(parents=True, exist_ok=True)

USE_PUBLIC = 0
USE_UI = 1
USE_FORM = 2
USE_FUNCTION = 4
USE_MENU = 6

# 用于 use_type 判断和 business_label 透传的特殊键
SPECIAL_KEYS = frozenset(["field", "action", "message", "list", "group", "menu"])


def _get_use_type(key_str):
    if key_str.endswith(".menu"):
        return USE_MENU
    if ".action." in key_str:
        return USE_FUNCTION
    if ".field." in key_str:
        return USE_FORM
    if ".message." in key_str:
        return USE_FORM
    if ".list" in key_str:
        return USE_FORM
    if ".group." in key_str:
        return USE_FORM
    return USE_PUBLIC


def _collect(zh_node, en_node, parts, results, parent_label=""):
    """
    results: {(key_str, use_type): (zh, en, biz_label)}
      zh: 中文原文
      en: 英文原文
      biz_label: 业务中文名（用于构建 message_name）
    parent_label: 父级传下来的业务中文名
    """
    for key in zh_node:
        zh_val = zh_node[key]
        en_val = en_node.get(key) if en_node else None
        new_parts = parts + [key]
        key_str = ".".join(new_parts)

        if isinstance(zh_val, dict):
            # 同名字符串兄弟（dict 内部有一个和 dict 同名的字符串键）
            sns = zh_val.get(key)
            same_name_str = sns if isinstance(sns, str) and sns.strip() else ""

            # 字符串子键
            child_str_keys = set(k for k, v in zh_val.items() if isinstance(v, str))

            # en 子结构
            child_en = {}
            if en_node and isinstance(en_node, dict):
                child_en = en_node.get(key) or {}

            if same_name_str:
                # 1. 有同名字符串 -> 业务名 = 那个字符串值；子节点透传此业务名
                results[(key_str, USE_PUBLIC)] = (same_name_str, "", same_name_str)
                child_label = same_name_str
            elif "menu" in child_str_keys:
                # 2. 有 menu 键 -> 业务名 = menu 的值；子节点透传此业务名
                menu_val = zh_val.get("menu", "")
                results[(key_str, USE_PUBLIC)] = (menu_val, "", menu_val)
                child_label = menu_val
            elif "list" in child_str_keys:
                # 3. 有 list 键 -> 业务名 = list 的值；子节点透传此业务名
                list_val = zh_val.get("list", "")
                results[(key_str, USE_PUBLIC)] = (list_val, "", list_val)
                child_label = list_val
            else:
                # 4. 无同名无 menu 无 list（纯消息容器或中间层 dict）
                #    -> 不存入 results，只遍历子节点；子节点透传 parent_label
                child_label = parent_label

            _collect(zh_val, child_en, new_parts, results, child_label)

        elif isinstance(zh_val, str):
            ut = _get_use_type(key_str)
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
        # 用原始 biz_label 保持空格
        return f"{biz_label}-{kn}"
    return kn


def _escape(s):
    return str(s).replace("'", "''") if s else ""


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
    lines.append("SET @USE_TYPE_PUBLIC = 0; SET @ORDER_NUM_PUBLIC = 0;")
    lines.append("SET @USE_TYPE_UI = 1; SET @ORDER_NUM_UI = 1;")
    lines.append("SET @USE_TYPE_FORM = 2; SET @ORDER_NUM_FORM = 2;")
    lines.append("SET @USE_TYPE_FUNCTION = 4; SET @ORDER_NUM_FUNCTION = 4;")
    lines.append("SET @USE_TYPE_MENU = 6; SET @ORDER_NUM_MENU = 6;")
    lines.append("")

    for idx, ((key_str, use_type), (zh, en, biz_label)) in enumerate(sorted(results.items()), 1):
        full_key = f"{module_name}.{key_str}"

        if use_type == USE_PUBLIC:
            ut, on = "@USE_TYPE_PUBLIC", "@ORDER_NUM_PUBLIC"
        elif use_type == USE_UI:
            ut, on = "@USE_TYPE_UI", "@ORDER_NUM_UI"
        elif use_type == USE_FORM:
            ut, on = "@USE_TYPE_FORM", "@ORDER_NUM_FORM"
        elif use_type == USE_FUNCTION:
            ut, on = "@USE_TYPE_FUNCTION", "@ORDER_NUM_FUNCTION"
        elif use_type == USE_MENU:
            ut, on = "@USE_TYPE_MENU", "@ORDER_NUM_MENU"
        else:
            ut, on = "@USE_TYPE_FORM", "@ORDER_NUM_FORM"

        msg_name = _build_message_name(biz_label, zh)

        lines.append(f"-- {idx}. {msg_name} (use_type={use_type})")
        lines.append(f"DELETE FROM infra_i18n_key WHERE message_key = '{full_key}';")
        lines.append("INSERT INTO infra_i18n_key (message_name, message_key, is_system, module_type, use_type, order_num, remark, creator, create_time, updater, update_time, deleted)")
        lines.append(f"VALUES ('{_escape(msg_name)}', '{full_key}', @IS_SYSTEM, @MODULE_TYPE, {ut}, {on}, @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);")
        lines.append("")
        lines.append(f"-- {idx}. {msg_name} - en-US")
        lines.append(f"DELETE FROM infra_i18n_message WHERE message_key = '{full_key}' AND locale = @LOCALE_EN;")
        lines.append("INSERT INTO infra_i18n_message (message_name, message_key, locale, locale_target, is_system, module_type, use_type, message, remark, creator, create_time, updater, update_time, deleted)")
        lines.append(f"VALUES ('{_escape(msg_name)}', '{full_key}', @LOCALE_EN, @LOCALE_TARGET, @IS_SYSTEM, @MODULE_TYPE, {ut}, '{_escape(en)}', @REMARK, @CREATOR, NOW(), @CREATOR, NOW(), 0);")
        lines.append("")
        lines.append(f"-- {idx}. {msg_name} - zh-CN")
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

    results = {}
    _collect(zh_data, en_data, [], results)

    print(f"[PROCESS] {module_name}: {len(results)} keys")

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

    print("-" * 50)
    print("Done!")


if __name__ == "__main__":
    main()
