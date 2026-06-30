// 初始化表单数据
import { cloneDeep } from '@vben/utils';

import { $t } from '#/locales';

export function initListenerForm(listener: any) {
  let self = {
    ...listener,
  };
  if (listener.script) {
    self = {
      ...listener,
      ...listener.script,
      scriptType: listener.script.resource ? 'externalScript' : 'inlineScript',
    };
  }
  if (
    listener.event === 'timeout' &&
    listener.eventDefinitions &&
    listener.eventDefinitions.length > 0
  ) {
    let k = '';
    for (const key in listener.eventDefinitions[0]) {
      // console.log(listener.eventDefinitions, key);
      if (key.includes('time')) {
        k = key;
        self.eventDefinitionType = key.replace('time', '').toLowerCase();
      }
    }
    // console.log(k);
    self.eventTimeDefinitions = listener.eventDefinitions[0][k].body;
  }
  return self;
}

export function initListenerType(listener: any) {
  let listenerType;
  if (listener.class) listenerType = 'classListener';
  if (listener.expression) listenerType = 'expressionListener';
  if (listener.delegateExpression) listenerType = 'delegateExpressionListener';
  if (listener.script) listenerType = 'scriptListener';
  return {
    ...cloneDeep(listener),
    ...listener.script,
    listenerType,
  };
}

/** 将 ProcessListenerDO 转换成 initListenerForm 想同的 Form 对象 */
export function initListenerForm2(processListener: any) {
  switch (processListener.valueType) {
    case 'class': {
      return {
        listenerType: 'classListener',
        class: processListener.value,
        event: processListener.event,
        fields: [],
        id: undefined,
      };
    }
    case 'delegateExpression': {
      return {
        listenerType: 'delegateExpressionListener',
        delegateExpression: processListener.value,
        event: processListener.event,
        fields: [],
        id: undefined,
      };
    }
    case 'expression': {
      return {
        listenerType: 'expressionListener',
        expression: processListener.value,
        event: processListener.event,
        fields: [],
        id: undefined,
      };
    }
    // No default
  }
  throw new Error('未知的监听器类型');
}

// 监听器类型 / Listener type
export const listenerType = {
  classListener: $t('bpm.bpmnProcessDesign.listener.classListener'),
  expressionListener: $t('bpm.bpmnProcessDesign.listener.expressionListener'),
  delegateExpressionListener: $t(
    'bpm.bpmnProcessDesign.listener.delegateExpressionListener',
  ),
  scriptListener: $t('bpm.bpmnProcessDesign.listener.scriptListener'),
};

// 监听器事件类型 / Listener event type
export const eventType = {
  create: $t('bpm.bpmnProcessDesign.event.create'),
  assignment: $t('bpm.bpmnProcessDesign.event.assignment'),
  complete: $t('bpm.bpmnProcessDesign.event.complete'),
  delete: $t('bpm.bpmnProcessDesign.event.delete'),
  update: $t('bpm.bpmnProcessDesign.event.update'),
  timeout: $t('bpm.bpmnProcessDesign.event.timeout'),
};

// 字段类型 / Field type
export const fieldType = {
  string: $t('bpm.bpmnProcessDesign.field.string'),
  expression: $t('bpm.bpmnProcessDesign.field.expression'),
};
