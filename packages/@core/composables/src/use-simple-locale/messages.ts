export type Locale = string;

export const messages: Record<Locale, Record<string, string>> = {
  'en-US': {
    cancel: 'Cancel',
    collapse: 'Collapse',
    confirm: 'Confirm',
    expand: 'Expand',
    prompt: 'Prompt',
    reset: 'Reset',
    submit: 'Submit',
    'ui.actionMessage.externalCloseConfirm': 'Are you sure you want to exit?',
    'ui.actionMessage.externalCloseTip': 'Your data will be lost after closing',
  },
  'zh-CN': {
    cancel: '取消',
    collapse: '收起',
    confirm: '确认',
    expand: '展开',
    prompt: '提示',
    reset: '重置',
    submit: '提交',
    'ui.actionMessage.externalCloseConfirm': '确定要退出吗？',
    'ui.actionMessage.externalCloseTip': '关闭后你所填写的数据将会丢失',
  },
};

export const getMessages = (locale: Locale) => messages[locale] ?? messages['en-US'];
