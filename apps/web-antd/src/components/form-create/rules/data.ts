/* eslint-disable no-template-curly-in-string */
const selectRule = [
  {
    type: 'select',
    field: 'selectType',
    title: 'selectType',
    value: 'select',
    options: [
      { label: 'selectTypeSelect', value: 'select' },
      { label: 'selectTypeRadio', value: 'radio' },
      { label: 'selectTypeCheckbox', value: 'checkbox' },
    ],
    // 参考 https://www.form-create.com/v3/guide/control 组件联动，单选框和多选框不需要多选属性
    control: [
      {
        value: 'select',
        condition: '==',
        method: 'hidden',
        rule: [
          'multiple',
          'clearable',
          'collapseTags',
          'multipleLimit',
          'allowCreate',
          'filterable',
          'noMatchText',
          'remote',
          'remoteMethod',
          'reserveKeyword',
          'defaultFirstOption',
          'automaticDropdown',
        ],
      },
    ],
  },
  {
    type: 'switch',
    field: 'filterable',
    title: 'filterable',
  },
  { type: 'switch', field: 'multiple', title: 'multiple' },
  {
    type: 'switch',
    field: 'disabled',
    title: 'disabled',
  },
  { type: 'switch', field: 'clearable', title: 'clearable' },
  {
    type: 'switch',
    field: 'collapseTags',
    title: 'collapseTags',
  },
  {
    type: 'inputNumber',
    field: 'multipleLimit',
    title: 'multipleLimit',
    props: { min: 0 },
  },
  {
    type: 'input',
    field: 'autocomplete',
    title: 'autocomplete',
  },
  { type: 'input', field: 'placeholder', title: 'placeholder' },
  { type: 'switch', field: 'allowCreate', title: 'allowCreate' },
  {
    type: 'input',
    field: 'noMatchText',
    title: 'noMatchText',
  },
  { type: 'input', field: 'noDataText', title: 'noDataText' },
  {
    type: 'switch',
    field: 'reserveKeyword',
    title: 'reserveKeyword',
  },
  {
    type: 'switch',
    field: 'defaultFirstOption',
    title: 'defaultFirstOption',
  },
  {
    type: 'switch',
    field: 'popperAppendToBody',
    title: 'popperAppendToBody',
    value: true,
  },
  {
    type: 'switch',
    field: 'automaticDropdown',
    title: 'automaticDropdown',
  },
];

const apiSelectRule = [
  {
    type: 'input',
    field: 'url',
    title: 'url',
    props: {
      placeholder: '/system/user/simple-list',
    },
  },
  {
    type: 'select',
    field: 'method',
    title: 'method',
    value: 'GET',
    options: [
      { label: 'methodGet', value: 'GET' },
      { label: 'methodPost', value: 'POST' },
    ],
    control: [
      {
        value: 'GET',
        condition: '!=',
        method: 'hidden',
        rule: [
          {
            type: 'input',
            field: 'data',
            title: 'data',
            props: {
              autosize: true,
              type: 'textarea',
              placeholder: '{"type": 1}',
            },
          },
        ],
      },
    ],
  },
  {
    type: 'input',
    field: 'labelField',
    title: 'labelField',
    info: '可以使用 el 表达式：${属性}，来实现复杂数据组合。如：${nickname}-${id}',
    props: {
      placeholder: 'nickname',
    },
  },
  {
    type: 'input',
    field: 'valueField',
    title: 'valueField',
    info: '可以使用 el 表达式：${属性}，来实现复杂数据组合。如：${nickname}-${id}',
    props: {
      placeholder: 'id',
    },
  },
  {
    type: 'input',
    field: 'parseFunc',
    title: 'parseFunc',
    info: `data 为接口返回值,需要写一个匿名函数解析返回值为选择器 options 列表
    (data: any)=>{ label: string; value: any }[]`,
    props: {
      autosize: true,
      rows: { minRows: 2, maxRows: 6 },
      type: 'textarea',
      placeholder: `
        function (data) {
            console.log(data)
            return data.list.map(item=> ({label: item.nickname,value: item.id}))
        }`,
    },
  },
  {
    type: 'switch',
    field: 'remote',
    info: '是否可搜索',
    title: 'remote',
  },
  {
    type: 'input',
    field: 'remoteField',
    title: 'remoteField',
    info: '远程请求时请求携带的参数名称，如：name',
  },
];

export { apiSelectRule, selectRule };
