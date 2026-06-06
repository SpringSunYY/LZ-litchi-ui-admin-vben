import type { Dayjs } from 'dayjs';

import dayjs from 'dayjs';

import { $t } from '#/locales';

/** 时间段选择器拓展  */
export function getRangePickerDefaultProps() {
  return {
    format: 'YYYY-MM-DD HH:mm:ss',
    placeholder: [$t('ui.rangePicker.beginTime'), $t('ui.rangePicker.endTime')],
    presets: [
      {
        label: $t('ui.rangePicker.today'),
        value: [dayjs().startOf('day'), dayjs().endOf('day')] as [Dayjs, Dayjs],
      },
      {
        label: $t('ui.rangePicker.yesterday'),
        value: [
          dayjs().subtract(1, 'day').startOf('day'),
          dayjs().subtract(1, 'day').endOf('day'),
        ] as [Dayjs, Dayjs],
      },
      {
        label: $t('ui.rangePicker.last7Days'),
        value: [
          dayjs().subtract(7, 'day').startOf('day'),
          dayjs().endOf('day'),
        ] as [Dayjs, Dayjs],
      },
      {
        label: $t('ui.rangePicker.last30Days'),
        value: [
          dayjs().subtract(30, 'day').startOf('day'),
          dayjs().endOf('day'),
        ] as [Dayjs, Dayjs],
      },
      {
        label: $t('ui.rangePicker.lastMonth'),
        value: [
          dayjs().subtract(1, 'month').startOf('month'),
          dayjs().subtract(1, 'month').endOf('month'),
        ] as [Dayjs, Dayjs],
      },
      {
        label: $t('ui.rangePicker.last3Months'),
        value: [
          dayjs().subtract(3, 'month').startOf('day'),
          dayjs().endOf('day'),
        ] as [Dayjs, Dayjs],
      },
      {
        label: $t('ui.rangePicker.lastYear'),
        value: [
          dayjs().subtract(1, 'year').startOf('day'),
          dayjs().endOf('day'),
        ] as [Dayjs, Dayjs],
      },
      {
        label: $t('ui.rangePicker.last3Years'),
        value: [
          dayjs().subtract(3, 'year').startOf('day'),
          dayjs().endOf('day'),
        ] as [Dayjs, Dayjs],
      },
    ],
    showTime: {
      defaultValue: [
        dayjs('00:00:00', 'HH:mm:ss'),
        dayjs('23:59:59', 'HH:mm:ss'),
      ],
      format: 'HH:mm:ss',
    },
    transformDateFunc: (dates: any) => {
      if (dates && dates.length === 2) {
        return [dates.createTime[0], dates.createTime[1]].join(',');
      }
      return {};
    },
    valueFormat: 'YYYY-MM-DD HH:mm:ss',
  };
}
