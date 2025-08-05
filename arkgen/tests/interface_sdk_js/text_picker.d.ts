import { Resource, ResourceColor, Offset, Dimension, ResourceStr } from './units';
import { CommonMethod, PickerTextStyle, PickerDialogButtonStyle, Rectangle, BlurStyle, ShadowOptions, ShadowStyle, HoverModeAreaType, BackgroundBlurStyleOptions, BackgroundEffectOptions, Optional, Callback, Bindable } from './common';
import { DialogAlignment } from './alertDialog';
import { CrownSensitivity, TextOverflow } from './enums';
import { LengthMetrics } from './../Graphics';
declare interface TextPickerRangeContent {
  icon: string | Resource;
  text?: string | Resource;
}
declare interface TextCascadePickerRangeContent {
  text: string | Resource;
  children?: TextCascadePickerRangeContent[];
}
declare interface TextPickerOptions {
  range: string[] | string[][] | Resource | TextPickerRangeContent[] | TextCascadePickerRangeContent[];
  value?: ResourceStr | ResourceStr[];
  value?: ResourceStr | ResourceStr[] | Bindable<ResourceStr> | Bindable<ResourceStr[]>;
  selected?: number | number[];
  selected?: number | number[] | Bindable<number> | Bindable<number[]>;
  columnWidths?: LengthMetrics[];
}
interface TextPickerInterface {
  (options?: TextPickerOptions): TextPickerAttribute;
}
declare interface DividerOptions {
  strokeWidth?: Dimension;
  color?: ResourceColor;
  startMargin?: Dimension;
  endMargin?: Dimension;
}
declare interface TextPickerTextStyle extends PickerTextStyle {
  minFontSize?: number | string | Resource;
  maxFontSize?: number | string | Resource;
  overflow?: TextOverflow;
}
declare interface PickerBackgroundStyle {
  color?: ResourceColor;
  borderRadius?: LengthMetrics | BorderRadiuses | LocalizedBorderRadiuses;
}
declare type TextPickerScrollStopCallback = (value: string | string[], index: number | number[]) => void;
declare type OnTextPickerChangeCallback = (selectItem: string | string[], index: number | number[]) => void;
declare type TextPickerEnterSelectedAreaCallback = (value: string | string[], index: number | number[]) => void;
declare class TextPickerAttribute extends CommonMethod<TextPickerAttribute> {
  defaultPickerItemHeight(value: number | string): TextPickerAttribute;
  defaultPickerItemHeight(height: Optional<number | string>): TextPickerAttribute;
  canLoop(value: boolean): TextPickerAttribute;
  canLoop(isLoop: Optional<boolean>): TextPickerAttribute;
  disappearTextStyle(value: PickerTextStyle): TextPickerAttribute;
  disappearTextStyle(style: Optional<PickerTextStyle>): TextPickerAttribute;
  textStyle(value: PickerTextStyle): TextPickerAttribute;
  textStyle(style: Optional<PickerTextStyle>): TextPickerAttribute;
  selectedTextStyle(value: PickerTextStyle): TextPickerAttribute;
  selectedTextStyle(style: Optional<PickerTextStyle>): TextPickerAttribute;
  disableTextStyleAnimation(disabled: boolean): TextPickerAttribute;
  defaultTextStyle(style: TextPickerTextStyle): TextPickerAttribute;
  onAccept(callback: (value: string, index: number) => void): TextPickerAttribute;
  onCancel(callback: () => void): TextPickerAttribute;
  onChange(callback: (value: string | string[], index: number | number[]) => void): TextPickerAttribute;
  onChange(callback: Optional<OnTextPickerChangeCallback>): TextPickerAttribute;
  onScrollStop(callback: TextPickerScrollStopCallback): TextPickerAttribute;
  onScrollStop(callback: Optional<TextPickerScrollStopCallback>): TextPickerAttribute;
  onEnterSelectedArea(callback: TextPickerEnterSelectedAreaCallback): TextPickerAttribute;
  selectedIndex(value: number | number[]): TextPickerAttribute;
  selectedIndex(index: Optional<number | number[]>): TextPickerAttribute;
  divider(value: DividerOptions | null): TextPickerAttribute;
  divider(textDivider: Optional<DividerOptions | null>): TextPickerAttribute;
  gradientHeight(value: Dimension): TextPickerAttribute;
  enableHapticFeedback(enable: Optional<boolean>): TextPickerAttribute;
  gradientHeight(height: Optional<Dimension>): TextPickerAttribute;
  digitalCrownSensitivity(sensitivity: Optional<CrownSensitivity>): TextPickerAttribute;
  selectedBackgroundStyle(style: Optional<PickerBackgroundStyle>): TextPickerAttribute;
}
declare interface TextPickerResult {
  value: string | string[];
  index: number | number[];
}
declare interface TextPickerDialogOptions extends TextPickerOptions {
  defaultPickerItemHeight?: number | string;
  canLoop?: boolean;
  disappearTextStyle?: PickerTextStyle;
  textStyle?: PickerTextStyle;
  acceptButtonStyle?: PickerDialogButtonStyle;
  cancelButtonStyle?: PickerDialogButtonStyle;
  selectedTextStyle?: PickerTextStyle;
  disableTextStyleAnimation?: boolean;
  defaultTextStyle?: TextPickerTextStyle;
  onAccept?: (value: TextPickerResult) => void;
  onCancel?: () => void;
  onChange?: (value: TextPickerResult) => void;
  onScrollStop?: Callback<TextPickerResult>;
  onEnterSelectedArea?: Callback<TextPickerResult>;
  maskRect?: Rectangle;
  alignment?: DialogAlignment;
  offset?: Offset;
  backgroundColor?: ResourceColor;
  backgroundBlurStyle?: BlurStyle;
  backgroundBlurStyleOptions?: BackgroundBlurStyleOptions;
  backgroundEffect?: BackgroundEffectOptions;
  onDidAppear?: () => void;
  onDidDisappear?: () => void;
  onWillAppear?: () => void;
  onWillDisappear?: () => void;
  shadow?: ShadowOptions | ShadowStyle; 
  enableHoverMode?: boolean;
  hoverModeArea?: HoverModeAreaType;
  enableHapticFeedback?: boolean;
  selectedBackgroundStyle?: PickerBackgroundStyle;
}
declare class TextPickerDialog {
  static show(options?: TextPickerDialogOptions);
}
declare const TextPicker: TextPickerInterface;
declare const TextPickerInstance: TextPickerAttribute;