/**
 * 默认图片类型
 */
export const defaultImageAccepts = ['jpg', 'jpeg', 'png', 'gif', 'webp'];

/**
 * 解析 accept 配置为数组
 * 支持 'jpg/jpeg/png' 格式或 ['jpg', 'jpeg', 'png'] 数组格式
 */
function parseAccept(accept: string[] | string): string[] {
  if (!accept) {
    return [];
  }
  if (typeof accept === 'string') {
    return accept.split('/').filter((item) => item.trim());
  }
  return accept;
}

export function checkFileType(file: File, accepts: string[] | string) {
  const acceptList = parseAccept(accepts);
  if (!acceptList || acceptList.length === 0) {
    return true;
  }
  const newTypes = acceptList.join('|');
  const pattern = '\\.(' + newTypes + ')$';
  const reg = new RegExp(pattern, 'i');
  return reg.test(file.name);
}

export function checkImgType(
  file: File,
  accepts: string[] | string = defaultImageAccepts,
) {
  return checkFileType(file, accepts);
}
