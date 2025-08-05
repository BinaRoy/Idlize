interface CalendarDay {
  index: number;
  lunarMonth: string;
  lunarDay: string;
  dayMark: string;
  dayMarkValue: string;
  year: number;
  month: number;
  day: number;
  isFirstOfLunar: boolean;
  hasSchedule: boolean;
  markLunarDay: boolean;
}
interface MonthData {
  year: number;
  month: number;
  data: CalendarDay[];
}
interface CurrentDayStyle {
  dayColor?: ResourceColor;
  lunarColor?: ResourceColor;
  markLunarColor?: ResourceColor;
  dayFontSize?: number;
  lunarDayFontSize?: number;
  dayHeight?: number;
  dayWidth?: number;
  gregorianCalendarHeight?: number;
  dayYAxisOffset?: number;
  lunarDayYAxisOffset?: number;
  underscoreXAxisOffset?: number;
  underscoreYAxisOffset?: number;
  scheduleMarkerXAxisOffset?: number;
  scheduleMarkerYAxisOffset?: number;
  colSpace?: number;
  dailyFiveRowSpace?: number;
  dailySixRowSpace?: number;
  lunarHeight?: number;
  underscoreWidth?: number;
  underscoreLength?: number;
  scheduleMarkerRadius?: number;
  boundaryRowOffset?: number;
  boundaryColOffset?: number;
}
interface NonCurrentDayStyle {
  nonCurrentMonthDayColor?: ResourceColor;
  nonCurrentMonthLunarColor?: ResourceColor;
  nonCurrentMonthWorkDayMarkColor?: ResourceColor;
  nonCurrentMonthOffDayMarkColor?: ResourceColor;
}
interface TodayStyle {
  focusedDayColor?: ResourceColor;
  focusedLunarColor?: ResourceColor;
  focusedAreaBackgroundColor?: ResourceColor;
  focusedAreaRadius?: number;
}
interface WeekStyle {
  weekColor?: ResourceColor;
  weekendDayColor?: ResourceColor;
  weekendLunarColor?: ResourceColor;
  weekFontSize?: number;
  weekHeight?: number;
  weekWidth?: number;
  weekAndDayRowSpace?: number;
}
interface WorkStateStyle {
  workDayMarkColor?: ResourceColor;
  offDayMarkColor?: ResourceColor;
  workDayMarkSize?: number;
  offDayMarkSize?: number;
  workStateWidth?: number;
  workStateHorizontalMovingDistance?: number;
  workStateVerticalMovingDistance?: number;
}
declare interface CalendarSelectedDate {
  year: number;
  month: number;
  day: number;
}
declare interface CalendarRequestedData {
  year: number;
  month: number;
  currentYear: number;
  currentMonth: number;
  monthState: number;
}
declare class CalendarController {
  constructor();
  backToToday();
  goTo(value: { year: number; month: number; day: number });
}
interface CalendarInterface {
  (value: {
    date: { year: number; month: number; day: number };
    currentData: MonthData;
    preData: MonthData;
    nextData: MonthData;
    controller?: CalendarController;
  }): CalendarAttribute;
}
declare class CalendarAttribute {
  showLunar(value: boolean): CalendarAttribute;
  showHoliday(value: boolean): CalendarAttribute;
  needSlide(value: boolean): CalendarAttribute;
  startOfWeek(value: number): CalendarAttribute;
  offDays(value: number): CalendarAttribute;
  direction(value: Axis): CalendarAttribute;
  currentDayStyle(value: CurrentDayStyle): CalendarAttribute;
  nonCurrentDayStyle(value: NonCurrentDayStyle): CalendarAttribute;
  todayStyle(value: TodayStyle): CalendarAttribute;
  weekStyle(value: WeekStyle): CalendarAttribute;
  workStateStyle(value: WorkStateStyle): CalendarAttribute;
  onSelectChange(event: (event: CalendarSelectedDate) => void): CalendarAttribute;
  onRequestData(
    event: (event: CalendarRequestedData) => void,
  ): CalendarAttribute;
}
declare const Calendar: CalendarInterface;
declare const CalendarInstance: CalendarAttribute;