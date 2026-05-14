# 前端国际化规范

## 一、概述

本规范定义前端代码中国际化（i18n）的文件组织结构、Key 命名规范以及代码使用方式，确保不同模块、不同项目间的统一性和可维护性。

---

## 二、文件组织

### 2.1 文件位置

```
src/locales/langs/
├── zh-CN/
│   ├── common.json      # 跨业务通用短文案（如树表展开/收缩）
│   ├── system.json      # system 模块
│   ├── infra.json       # infra 模块
│   ├── ui.json          # 通用 UI 文本
│   └── ...
└── en-US/
    ├── common.json
    ├── system.json
    ├── infra.json
    ├── ui.json
    └── ...
```

### 2.2 文件命名

| 模块名 | 文件名 | 示例 Key 前缀 |
|--------|--------|---------------|
| system | `system.json` | `system.xxx` |
| infra | `infra.json` | `infra.xxx` |
| crm | `crm.json` | `crm.xxx` |
| 通用 | `common.json` | `common.xxx` |

> `common.json` 存放跨业务复用的短文案（如树表「展开/收缩」），与 `ui.json`（表单规则、操作标题模板等）区分使用。

---

## 三、Key 命名规范

### 3.1 命名格式

```
{module}.{business}.{type}.{name}
```

- 使用 **点号(.)** 分隔，不用冒号
- **Key 路径**（`system.area.field.name` 等）全部使用小写，段与段之间用点号分隔

### 3.2 层级结构

```
{module}.{business}                      # 业务名称（表单/列表标题）
{module}.{business}.menu                # 菜单名称（侧边栏菜单显示）
{module}.{business}.list                # 列表标题
{module}.{business}.field.{fieldName}   # 字段
{module}.{business}.action.{action}      # 动作/按钮
{module}.{business}.message.{name}       # 提示/确认类文案（见 §4.4）
```

### 3.3 Key 类型说明

| 类型 | 格式 | 示例 | 说明 |
|------|------|------|------|
| 业务名称 | `{module}.{business}` | `system.area` | 表单/列表标题 |
| 菜单名称 | `{module}.{business}.menu` | `system.area.menu` | 侧边栏菜单显示 |
| 列表标题 | `{module}.{business}.list` | `system.area.list` | 列表页面标题 |
| 字段 | `{module}.{business}.field.{fieldName}` | `system.area.field.name` | 字段标签 |
| 动作 | `{module}.{business}.action.{action}` | `system.area.action.query` | 与后端权限/按钮语义对齐的动作文案 |

---

### 3.4 业务 `action` 键命名（与权限一致）

`{module}.{business}.action.*` 的 **后缀名** 与后端权限、SQL 中 `action:{name}` 段保持一致（小写），便于前后端与运维对照。

| 键名 | 典型权限 / SQL 片段 | 说明 |
|------|---------------------|------|
| `query` | `:{business}:query` | 列表查询、刷新；业务上**默认存在**，建议在 `action` 中始终配置 |
| `create` | `:{business}:create` | 新增 |
| `update` | `:{business}:update` | 修改 |
| `delete` | `:{business}:delete` | 删除 |
| `export` | `:{business}:export` | 导出（页面有导出按钮或权限时再加） |
| `import` | `:{business}:import` | 导入（页面有导入按钮或权限时再加） |

**原则**：`action` 下只配置 **本业务页面或接口实际会出现** 的权限对应键（外加约定的 `query`）；不要为「以后可能用」批量塞入未出现的 `export`/`import` 等。树表工具栏「整表展开/收缩」使用 `common.expand` / `common.collapse`；行内「新增下级」等与权限无独立后缀的按钮文案使用 **`common.append`**，**不**写入 `{module}.{business}.action`。

---

### 3.5 英文展示文案（`en-US` 业务模块）

`apps/web-antd/src/locales/langs/en-US/` 下 **业务模块** JSON（如 `system.json`、`infra.json`）中，**所有用户可见的英文 value** 使用 **全小写**（词组内仅小写字母与空格；技术字面量如 `#108ee9`、`geojson` 等保持可读形式，仍为小写）。

- **zh-CN** 同名文件按中文习惯书写，不要求全小写。
- `ui.json`、`common.json` 的英文风格以各自文件为准；与业务模块混用时若需视觉统一，可再单独约定是否将 `ui.json` 一并改为小写。

---

## 四、JSON 结构规范

> **en-US**：业务模块 locale 的英文 **value** 遵循 **§3.5 全小写**；以下中文示例为说明结构，英文示例与仓库 `en-US/system.json` 一致。

### 4.1 完整结构示例

```json
{
  "{business}": {
    "{business}": "业务名称",
    "menu": "菜单名称",
    "list": "列表标题",
    "field": {
      "id": "ID",
      "name": "名称",
      "parentId": "父级ID",
      "status": "状态",
      "createTime": "创建时间"
    },
    "action": {
      "query": "xxx查询",
      "create": "新增xxx",
      "update": "修改xxx",
      "delete": "删除xxx",
      "export": "导出xxx",
      "import": "导入xxx"
    }
  }
}
```

其中 `export` / `import` 按页面是否出现对应能力增删；`query` 建议始终保留。

### 4.2 字段命名建议

- `id` - ID
- `name` - 名称
- `parentId` - 父级ID
- `parentIdName` - 父级名称（如：上级地区）
- `status` - 状态
- `level` - 层级
- `sort` / `sortNum` - 排序
- `remark` - 备注
- `createTime` - 创建时间
- `updateTime` - 更新时间

### 4.3 父级树「根节点」文案（ApiTreeSelect / 上级选择）

**不要**在业务 JSON 里再单独加 `topLevelArea` 之类键。根选项名称统一用 **`ui.treeRoot`**，并把 **父级字段的 label** 作为 `{0}` 传入（与 `infra` 下 `demo02` 等页面一致）：

```typescript
data.unshift({
  id: 0,
  name: $t('ui.treeRoot', [$t('system.area.field.parentIdName')]),
});
```

- `ui.treeRoot` 在 `ui.json` 中定义为 `顶级{0}`；英文模板以 `en-US/ui.json` 中 `treeRoot` 为准（与 **§3.5** 业务全小写可并存，后续若统一可一并改为小写）。
- 第二个参数传 **`field` 下与「上级」相关的字段文案**（如 `parentId`、`parentIdName`，与表单项 `label` 一致即可）。

### 4.4 `message` 子层：提示 / 确认类文案

业务特有的短提示、加载中、确认框等文案，不放在 `action`（与权限强绑定）下，统一收进 `message` 子层。

```
{module}.{business}.message.{name}
```

常见场景：

| 场景 | 示例 key | 说明 |
|------|---------|------|
| 复制链接 | `{module}.{business}.message.copyUrl` | 按钮文案 |
| 复制失败 | `{module}.{business}.message.copyFailed` | 错误提示 |
| 加载中 | `{module}.{business}.message.testingUpload` | `message.loading()` 内容 |
| 成功标题 | `{module}.{business}.message.testSuccessTitle` | `confirm()` / `Modal` 标题 |
| 成功内容 | `{module}.{business}.message.testSuccessContent` | `confirm()` 内容，支持 `{0}` 参数 |
| 确认按钮 | `{module}.{business}.message.visit` | `confirm()` 的 confirmText |
| 设为主配置 | `{module}.{business}.message.master` | 下拉菜单文案 |
| 设为主配置确认 | `{module}.{business}.message.confirmSetMaster` | `popConfirm` 标题，支持 `{0}` 参数 |

> **原则**：`action` 下只放与权限一一对应的动作（如 `test`）；`message` 下放该动作的配套提示、确认框、加载中等辅助文案。`ui.json` 中已有的通用提示（如 `ui.actionMessage.operationSuccess`）优先复用，业务特有变体才在 `message` 下新建。

**JSON 结构示例：**

```json
{
  "{business}": {
    "{business}": "业务名称",
    "menu": "菜单名称",
    "list": "列表标题",
    "field": { ... },
    "action": {
      "query": "xxx查询",
      "create": "新增xxx",
      "delete": "删除xxx",
      "test": "测试"
    },
    "message": {
      "copyUrl": "复制链接",
      "urlEmpty": "文件 URL 为空",
      "copyFailed": "复制失败",
      "testingUpload": "测试上传中...",
      "testSuccessTitle": "测试上传成功",
      "testSuccessContent": "是否要访问该文件？",
      "visit": "访问"
    }
  }
}
```

---

## 五、代码使用规范

### 5.1 基础使用

```typescript
import { $t } from '#/locales';

// 直接使用
$t('system.area.field.name')

// 带参数（用于 placeholder、actionTitle 等）
$t('ui.placeholder.input', [$t('system.area.field.name')])
$t('ui.actionTitle.create', [$t('system.area.area')])
```

### 5.2 占位符使用

| 功能 | Key | 说明 |
|------|-----|------|
| 输入占位符 | `ui.placeholder.input` | `请输入{0}` |
| 选择占位符 | `ui.placeholder.select` | `请选择{0}` |
| 树根节点名 | `ui.treeRoot` | `顶级{0}`，配合父级字段 label |

```typescript
// 使用方式
$t('ui.placeholder.input', ['名称'])  // 中文：请输入名称
$t('ui.placeholder.input', [$t('system.area.field.name')])  // 支持嵌套
$t('ui.treeRoot', [$t('system.area.field.parentIdName')])  // 上级树：根节点显示名
```

### 5.3 动作按钮

| 功能 | Key | 说明 |
|------|-----|------|
| 创建 | `ui.actionTitle.create` | `创建{0}` |
| 编辑 | `ui.actionTitle.edit` | `编辑{0}` |
| 删除 | `ui.actionTitle.delete` | `删除{0}` |
| 导出 | `ui.actionTitle.export` | `导出` |
| 导入 | `ui.actionTitle.import` | `导入{0}` |
| 批量删除 | `ui.actionTitle.deleteBatch` | `批量删除{0}` |

```typescript
label: $t('ui.actionTitle.create', [$t('system.area.area')])
```

**与业务 `action` 的配合**：工具栏上「带业务名的创建/导出」等可继续用 `ui.actionTitle.*`；需要与权限名一一对应、或供其他模块/动态菜单引用时，使用 `{module}.{business}.action.{name}`，例如 `$t('system.area.action.query')`。

### 5.4 菜单国际化

菜单名称用于侧边栏菜单显示，通常与业务名称相同或略简短：

```typescript
// 在菜单配置中使用
{
  path: '/system/area',
  name: 'system-area',
  meta: {
    title: $t('system.area.menu'),  // 侧边栏菜单名称
  }
}
```

> 注意：菜单国际化一般在路由配置或菜单数据中引用，不在业务组件中直接使用。

| 功能 | Key | 说明 |
|------|-----|------|
| 操作成功 | `ui.actionMessage.operationSuccess` | `操作成功` |
| 删除确认 | `ui.actionMessage.deleteConfirm` | `确认删除 {0} ({1}) 吗？` |
| 删除中 | `ui.actionMessage.deleting` | `正在删除 {0}...` |
| 删除成功 | `ui.actionMessage.deleteSuccess` | `删除 {0} 成功` |

```typescript
message.success($t('ui.actionMessage.operationSuccess'))
message.success($t('ui.actionMessage.deleteSuccess', [row.id]))
```

---

## 六、具体模块示例

### 6.1 system.area 完整示例

#### 中文文件 `zh-CN/system.json`（节选，与仓库一致）

```json
{
  "area": {
    "area": "地区信息",
    "menu": "地区信息",
    "list": "地区信息列表",
    "field": {
      "id": "ID",
      "name": "地区名称",
      "parentId": "父级ID",
      "parentIdName": "上级地区",
      "postalCode": "邮政编码",
      "level": "层级",
      "longitude": "经度",
      "latitude": "纬度",
      "source": "数据来源",
      "geoJson": "GeoJson",
      "sortNum": "排序号",
      "createTime": "创建时间"
    },
    "action": {
      "query": "查询地区",
      "create": "新增地区",
      "export": "导出地区",
      "update": "修改地区",
      "delete": "删除地区"
    }
  }
}
```

#### 英文文件 `en-US/system.json`（节选，**value 全小写**，与仓库一致）

```json
{
  "area": {
    "area": "area",
    "menu": "area",
    "list": "area list",
    "field": {
      "id": "id",
      "name": "area name",
      "parentId": "parent id",
      "parentIdName": "parent area",
      "postalCode": "postal code",
      "level": "level",
      "longitude": "longitude",
      "latitude": "latitude",
      "source": "data source",
      "geoJson": "geojson",
      "sortNum": "sort order",
      "createTime": "create time"
    },
    "action": {
      "query": "query area",
      "create": "create area",
      "export": "export area",
      "update": "update area",
      "delete": "delete area"
    }
  }
}
```

#### 模块级 `dict.action`（同一套 `system:dict:*` 权限）

字典类型 / 字典数据两个 Tab 共用 `system:dict:create` 等权限时，在 `system.dict` 下配置一层 `action` 即可，例如：`query`、`create`、`export`、`update`、`delete`。

### 6.2 代码中使用

#### data.ts

```typescript
import { $t } from '#/locales';

// 表单字段
{
  fieldName: 'name',
  label: $t('system.area.field.name'),
  component: 'Input',
  componentProps: {
    placeholder: $t('ui.placeholder.input', [$t('system.area.field.name')]),
  },
}

// 上级 ApiTreeSelect：根节点用 ui.treeRoot + 父级字段 label（勿单独建 topLevelArea）
{
  fieldName: 'parentId',
  label: $t('system.area.field.parentIdName'),
  component: 'ApiTreeSelect',
  componentProps: {
    api: async () => {
      const data = await getAreaList({});
      data.unshift({
        id: 0,
        name: $t('ui.treeRoot', [$t('system.area.field.parentIdName')]),
      });
      return handleTree(data);
    },
    placeholder: $t('ui.placeholder.select', [$t('system.area.field.parentIdName')]),
  },
}

// 表格列
{
  field: 'name',
  title: $t('system.area.field.name'),
}

// 通用操作
{
  title: $t('common.operation'),
}
```

#### index.vue

```vue
<template>
  <!-- 列表标题 -->
  <Grid :table-title="$t('system.area.list')">

    <!-- 工具栏：树表展开/收缩用 common，与权限无关 -->
    <TableAction
      :actions="[
        {
          label: isExpanded ? $t('common.collapse') : $t('common.expand'),
          onClick: toggleExpand,
        },
        {
          label: $t('ui.actionTitle.create', [$t('system.area.area')]),
          auth: ['system:area:create'],
          onClick: handleCreate,
        },
        {
          label: $t('ui.actionTitle.export'),
          auth: ['system:area:export'],
          onClick: handleExport,
        },
      ]"
    />

    <!-- 行内操作：「新增下级」用 common.append（auth 仍用 create） -->
    <TableAction
      :actions="[
        {
          label: $t('common.append'),
          auth: ['system:area:create'],
          onClick: handleAppend.bind(null, row),
        },
        {
          label: $t('common.edit'),
          auth: ['system:area:update'],
          onClick: handleEdit.bind(null, row),
        },
      ]"
    />
  </Grid>
</template>

<script setup>
// 导出文件名
downloadFileFromBlobPart({ fileName: $t('system.area.area') + '.xls', source: data });
</script>
```

#### modules/form.vue

```vue
<script setup>
const getTitle = computed(() => {
  return formData.value?.id
    ? $t('ui.actionTitle.edit', [$t('system.area.area')])
    : $t('ui.actionTitle.create', [$t('system.area.area')]);
});
</script>

<template>
  <Modal :title="getTitle">
    <Form />
  </Modal>
</template>
```

---

## 七、新模块开发流程

### 7.1 创建国际化文件

1. 在 `src/locales/langs/zh-CN/` 创建 `{module}.json`
2. 在 `src/locales/langs/en-US/` 创建 `{module}.json`
3. 按规范填写所有 Key；**en-US** 业务文案遵守 **§3.5 全小写**

### 7.2 修改业务代码

1. 导入 `$t`：`import { $t } from '#/locales'`
2. 替换所有中文文本为 `$t('key')`
3. 涉及参数的调用使用 `$t('key', [param1, param2])`

### 7.3 注意事项

- 不要在 `$t()` 调用中直接使用中文
- 占位符参数应使用数组形式：`$t('key', [value])`
- 通用 UI 文本复用 `ui.` 下的 Key
- 字段 Key 统一放在 `field` 下
- `{module}.{business}.action.*` 与页面/菜单权限对齐：`query` 建议始终配置；其余键按实际出现的 `auth` 与接口能力增减
- **en-US 业务模块** JSON 的英文 **value** 遵守 **§3.5 全小写**

---

## 八、常见 Key 速查表

> 下表英文为 `common.json` 等 **通用** locale 当前写法，**不强制**与 **§3.5** 业务全小写一致；新增业务文案以 `system.json` / `infra.json` 规则为准。

### 8.1 通用文本

| Key | 中文 | 英文 |
|-----|------|------|
| `common.operation` | 操作 | Operation |
| `common.edit` | 编辑 | Edit |
| `common.delete` | 删除 | Delete |
| `common.cancel` | 取消 | Cancel |
| `common.confirm` | 确认 | Confirm |
| `common.save` | 保存 | Save |
| `common.search` | 搜索 | Search |
| `common.reset` | 重置 | Reset |
| `common.refresh` | 刷新 | Refresh |
| `common.expand` | 展开 | Expand |
| `common.collapse` | 收缩 | Collapse |
| `common.append` | 新增下级 | Add Child |
| `common.yes` | 是 | Yes |
| `common.no` | 否 | No |

> 状态、备注、创建时间等 **业务字段** 的展示名放在各自 `{module}.{business}.field.*`，**不要**在速查表里重复列举 `common.*` 字段键；本表仅列通用操作类短文案。

### 8.2 分页相关

| Key | 中文 | 英文 |
|-----|------|------|
| `common.total` | 共 {0} 条 | {0} items total |
| `common.pageSize` | 每页条数 | Page Size |
| `common.current` | 当前页 | Current Page |

---

## 九、规范总结

```
┌─────────────────────────────────────────────────────────────┐
│  文件命名: {module}.json                                     │
│  ├── zh-CN/system.json                                       │
│  └── en-US/system.json                                      │
├─────────────────────────────────────────────────────────────┤
│  Key 格式: {module}.{business}.{type}.{name}                │
│  ├── system.area                    业务名称（表单/列表标题）   │
│  ├── system.area.menu               菜单名称（侧边栏菜单显示）   │
│  ├── system.area.list               列表标题                 │
│  ├── system.area.field.xxx           字段                    │
│  ├── system.area.action.xxx         动作（与权限对齐）        │
│  └── system.area.message.xxx         提示/确认文案            │
├─────────────────────────────────────────────────────────────┤
│  通用: common.json → expand / collapse / append 等            │
├─────────────────────────────────────────────────────────────┤
│  en-US 业务 locale：§3.5 英文 value 全小写                    │
├─────────────────────────────────────────────────────────────┤
│  使用方式: $t('key')                                        │
│  带参数: $t('key', [param1, param2])                        │
└─────────────────────────────────────────────────────────────┘
```

### 9.1 Key 与 SQL 变量对照表

| 前端 Key | SQL 变量 | 说明 |
|----------|----------|------|
| `{module}.{business}` | `${module}:${business}` | 业务名称 |
| `{module}.{business}.menu` | `${module}:${business}:menu` | 菜单名称 |
| `{module}.{business}.list` | - | 列表标题（前端专用） |
| `{module}.{business}.field.{name}` | `${module}:${business}:field:{name}` | 字段 |
| `{module}.{business}.action.{name}` | `${module}:${business}:action:{name}` | 动作（`name` 与权限后缀一致，如 `query`、`create`） |

> **注意**：前端使用点号(.)分隔，后端 SQL 使用冒号(:)分隔。两者映射关系如上表所示。

### 9.2 菜单按钮与 `action` 键

后端 `system_menu` 中按钮的 `name` / 权限标识若采用 `system:area:query` 等形式，前端展示名优先使用 `{module}.{business}.action.query` 等同名键，便于与 SQL 生成的 `infra_i18n_key` / 权限体系一致。
