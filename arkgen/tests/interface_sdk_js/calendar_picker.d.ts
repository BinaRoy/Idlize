import { Resource } from '../../global/resource'
import { CommonMethod, PickerTextStyle, Callback, BlurStyle, PickerDialogButtonStyle, ShadowOptions, ShadowStyle, HoverModeAreaType, DateRange, 
  BackgroundBlurStyleOptions, BackgroundEffectOptions, Optional } from './common'
import { Offset, VoidCallback, ResourceColor } from './units'
declare enum CalendarAlign {
  START = 0,
  CENTER = 1,
  END = 2
}
declare interface CalendarOptions {
  hintRadius?: number | Resource;
  selected?: Date;
  start?: Date;
  end?: Date;
  disabledDateRange?: DateRange[];
}
interface CalendarPickerInterface {
  (options?: CalendarOptions): CalendarPickerAttribute;
}
declare class CalendarPickerAttribute extends CommonMethod<CalendarPickerAttribute> {
  edgeAlign(alignType: CalendarAlign, offset?: Offset): CalendarPickerAttribute;
  edgeAlign(alignType: Optional<CalendarAlign>, offset?: Offset): CalendarPickerAttribute;
  textStyle(value: PickerTextStyle): CalendarPickerAttribute;
  textStyle(style: Optional<PickerTextStyle>): CalendarPickerAttribute;
  onChange(callback: Callback<Date>): CalendarPickerAttribute;
  onChange(callback: Optional<Callback<Date>>): CalendarPickerAttribute;
  markToday(enabled: boolean): CalendarPickerAttribute;
}
declare interface CalendarDialogOptions extends CalendarOptions {
  onAccept?: Callback<Date>;
  onCancel?: VoidCallback;
  onChange?: Callback<Date>;
  backgroundColor?: ResourceColor;
  backgroundBlurStyle?: BlurStyle;
  backgroundBlurStyleOptions?: BackgroundBlurStyleOptions;
  backgroundEffect?: BackgroundEffectOptions;
  acceptButtonStyle?: PickerDialogButtonStyle;
  cancelButtonStyle?: PickerDialogButtonStyle;
  onDidAppear?: VoidCallback;
  onDidDisappear?: VoidCallback;
  onWillAppear?: VoidCallback;
  onWillDisappear?: VoidCallback;
  shadow?: ShadowOptions | ShadowStyle;
  enableHoverMode?: boolean;
  hoverModeArea?: HoverModeAreaType;
  markToday?: boolean;
}
declare class CalendarPickerDialog {
  static show(options?: CalendarDialogOptions): void;
}
declare const CalendarPicker: CalendarPickerInterface;
declare const CalendarPickerInstance: CalendarPickerAttribute;