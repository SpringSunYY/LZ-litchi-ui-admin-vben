/**
 * 路由跳转时传递的临时状态(不走 URL)
 */

// 当前待设置的追加标题,在 push 之前设置,guard beforeResolve 中消费后自动清除
let _pendingExtraTitle: number | string | undefined;

export function setPendingExtraTitle(title: number | string | undefined) {
  _pendingExtraTitle = title;
}

export function getAndClearPendingExtraTitle() {
  const title = _pendingExtraTitle;
  _pendingExtraTitle = undefined;
  return title;
}
