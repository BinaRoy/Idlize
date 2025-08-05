import { ResourceColor, Offset } from './units';
import { CommonMethod, PickerTextStyle, PickerDialogButtonStyle, Rectangle, BlurStyle, ShadowOptions, ShadowStyle, HoverModeAreaType,
   BackgroundBlurStyleOptions, BackgroundEffectOptions, Optional, Callback, DateTimeOptions, Bindable } from './common';
import { DialogAlignment } from './alertDialog';
import { CrownSensitivity } from './enums';
declare interface TimePickerResult {
  hour: number;
  minute: number;
  second: number;
}
declare enum TimePickerFormat {
  HOUR_MINUTE,
  HOUR_MINUTE_SECOND,
}
declare interface TimePickerOptions {
  selected?: Date;
  selected?: Date | Bindable<Date>;
  format?: TimePickerFormat;
  start?: Date;
  end?: Date;
}
interface TimePickerInterface {
  (options?: TimePickerOptions): TimePickerAttribute;
}
declare type DateTimeOptions = import('../api/@ohos.intl').default.DateTimeOptions
declare type OnTimePickerChangeCallback = (result: TimePickerResult) => void;
declare class TimePickerAttribute extends CommonMethod<TimePickerAttribute> {
  useMilitaryTime(value: boolean): TimePickerAttribute;
  useMilitaryTime(isMilitaryTime: Optional<boolean>): TimePickerAttribute;
  loop(value: boolean): TimePickerAttribute;
  loop(isLoop: Optional<boolean>): TimePickerAttribute;
  disappearTextStyle(value: PickerTextStyle): TimePickerAttribute;
  disappearTextStyle(style: Optional<PickerTextStyle>): TimePickerAttribute;
  textStyle(value: PickerTextStyle): TimePickerAttribute;
  textStyle(style: Optional<PickerTextStyle>): TimePickerAttribute;
  selectedTextStyle(value: PickerTextStyle): TimePickerAttribute;
  selectedTextStyle(style: Optional<PickerTextStyle>): TimePickerAttribute;
  dateTimeOptions(value: DateTimeOptions): TimePickerAttribute;
  dateTimeOptions(timeFormat: Optional<DateTimeOptions>): TimePickerAttribute;
  onChange(callback: (value: TimePickerResult) => void): TimePickerAttribute;
  onChange(callback: Optional<OnTimePickerChangeCallback>): TimePickerAttribute;
  onEnterSelectedArea(callback: Callback<TimePickerResult>): TimePickerAttribute;
  enableHapticFeedback(enable: boolean): TimePickerAttribute;
  enableHapticFeedback(enable: Optional<boolean>): TimePickerAttribute;
  digitalCrownSensitivity(sensitivity: Optional<CrownSensitivity>): TimePickerAttribute;
  enableCascade(enabled: boolean): TimePickerAttribute;
}
declare interface TimePickerDialogOptions extends TimePickerOptions {
  useMilitaryTime?: boolean;
  disappearTextStyle?: PickerTextStyle;
  textStyle?: PickerTextStyle;
  acceptButtonStyle?: PickerDialogButtonStyle;
  cancelButtonStyle?: PickerDialogButtonStyle;
  selectedTextStyle?: PickerTextStyle;
  maskRect?: Rectangle;
  alignment?: DialogAlignment;
  offset?: Offset;
  onAccept?: (value: TimePickerResult) => void;
  onCancel?: () => void;
  onChange?: (value: TimePickerResult) => void;
  onEnterSelectedArea?: Callback<TimePickerResult>;
  backgroundColor?: ResourceColor;
  backgroundBlurStyle?: BlurStyle;
  backgroundBlurStyleOptions?: BackgroundBlurStyleOptions;
  backgroundEffect?: BackgroundEffectOptions;
  enableCascade?: boolean;
  onDidAppear?: () => void;
  onDidDisappear?: () => void;
  onWillAppear?: () => void;
  onWillDisappear?: () => void;
  shadow?: ShadowOptions | ShadowStyle;
  dateTimeOptions?: DateTimeOptions;
  enableHoverMode?: boolean;
  hoverModeArea?: HoverModeAreaType;
  enableHapticFeedback?: boolean;
}
declare class TimePickerDialog {
  static show(options?: TimePickerDialogOptions);
}
declare const TimePicker: TimePickerInterface;
declare const TimePickerInstance: TimePickerAttribute;