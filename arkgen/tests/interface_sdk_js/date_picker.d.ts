import { CommonMethod, PickerTextStyle, PickerDialogButtonStyle, Rectangle, Callback, BlurStyle, ShadowOptions, ShadowStyle, HoverModeAreaType, BackgroundBlurStyleOptions, BackgroundEffectOptions, Optional, DateTimeOptions, Bindable } from './common'
import { ResourceColor, Offset, VoidCallback } from './units'
import { DialogAlignment } from './alertDialog'
import { CrownSensitivity } from './enums'
declare interface DatePickerResult {
  year?: number;
  month?: number;
  day?: number;
}
declare enum DatePickerMode {
  DATE = 0,
  YEAR_AND_MONTH = 1,
  MONTH_AND_DAY = 2,
}
declare interface DatePickerOptions {
  start?: Date;
  end?: Date;
  selected?: Date;
  selected?: Date | Bindable<Date>;
  mode?: DatePickerMode;
}
interface DatePickerInterface {
  (options?: DatePickerOptions): DatePickerAttribute;
}
declare class DatePickerAttribute extends CommonMethod<DatePickerAttribute> {
  lunar(value: boolean): DatePickerAttribute;
  lunar(isLunar: Optional<boolean>): DatePickerAttribute;
  disappearTextStyle(value: PickerTextStyle): DatePickerAttribute;
  disappearTextStyle(style: Optional<PickerTextStyle>): DatePickerAttribute;
  textStyle(value: PickerTextStyle): DatePickerAttribute;
  textStyle(style: Optional<PickerTextStyle>): DatePickerAttribute;
  selectedTextStyle(value: PickerTextStyle): DatePickerAttribute;
  selectedTextStyle(style: Optional<PickerTextStyle>): DatePickerAttribute;
  onChange(callback: (value: DatePickerResult) => void): DatePickerAttribute;
  onDateChange(callback: Callback<Date>): DatePickerAttribute;
  onDateChange(callback: Optional<Callback<Date>>): DatePickerAttribute;
  digitalCrownSensitivity(sensitivity: Optional<CrownSensitivity>): DatePickerAttribute;
  enableHapticFeedback(enable: Optional<boolean>): DatePickerAttribute;
    canLoop(isLoop: Optional<boolean>): DatePickerAttribute;  
}
declare interface LunarSwitchStyle {
  selectedColor?: ResourceColor;
  unselectedColor?: ResourceColor;
  strokeColor?: ResourceColor;
}
declare interface DatePickerDialogOptions extends DatePickerOptions {
  lunar?: boolean;
  lunarSwitch?: boolean;
  lunarSwitchStyle?: LunarSwitchStyle;
  showTime?: boolean;
  useMilitaryTime?: boolean;
  disappearTextStyle?: PickerTextStyle;
  textStyle?: PickerTextStyle;
  acceptButtonStyle?: PickerDialogButtonStyle;
  cancelButtonStyle?: PickerDialogButtonStyle;
  selectedTextStyle?: PickerTextStyle;
  maskRect?: Rectangle;
  alignment?: DialogAlignment;
  offset?: Offset;
  onAccept?: (value: DatePickerResult) => void;
  onCancel?: VoidCallback;
  onChange?: (value: DatePickerResult) => void;
  onDateAccept?: Callback<Date>;
  onDateChange?: Callback<Date>;
  backgroundColor?: ResourceColor;
  backgroundBlurStyle?: BlurStyle;
  backgroundBlurStyleOptions?: BackgroundBlurStyleOptions;
  backgroundEffect?: BackgroundEffectOptions;
  onDidAppear?: VoidCallback;
  onDidDisappear?: VoidCallback;
  onWillAppear?: VoidCallback;
  onWillDisappear?: VoidCallback;
  shadow?: ShadowOptions | ShadowStyle;
  dateTimeOptions?: DateTimeOptions;
  enableHoverMode?: boolean;
  hoverModeArea?: HoverModeAreaType;
  enableHapticFeedback?: boolean;
  canLoop?: boolean;
}
declare class DatePickerDialog {
  static show(options?: DatePickerDialogOptions);
}
declare const DatePicker: DatePickerInterface;
declare const DatePickerInstance: DatePickerAttribute;