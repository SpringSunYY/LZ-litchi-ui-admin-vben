/**
 * dayjs 插件注册
 *
 * 背景：ant-design-vue 的日期组件依赖 dayjs 的 weekday / localeData / weekOfYear /
 * weekYear / quarterOfYear / advancedFormat / customParseFormat 等插件，这些插件
 * 通过 `dayjs.extend()` 挂在 dayjs 原型上。dayjs 的 `isDayjs` 是鸭子类型判定，
 * 因此当项目存在多份 dayjs 实例时，业务侧创建的对象会被 antd 的 `toDate` 原样透传，
 * 而 antd 在自己那份实例上 extend 的插件不会出现在该对象上，最终抛
 * `clone.weekday is not a function`。
 *
 * 通过根 package.json 的 `pnpm.overrides` 统一 dayjs 版本、vite-config 的
 * `resolve.dedupe` 强制单实例后，全项目只有一份 dayjs，antd 内部的 extend 会
 * 作用于业务侧对象。这里只需补齐 antd 内部未覆盖、但业务侧实际用到的两个插件：
 * - quarterOfYear：统计页按季度筛选（subtract(3, 'quarter') / startOf('quarter')）
 * - customParseFormat：带格式解析（dayjs('00:00:00', 'HH:mm:ss')）
 */
import dayjs from 'dayjs';
import customParseFormat from 'dayjs/plugin/customParseFormat';
import quarterOfYear from 'dayjs/plugin/quarterOfYear';

dayjs.extend(customParseFormat);
dayjs.extend(quarterOfYear);

export { dayjs };
