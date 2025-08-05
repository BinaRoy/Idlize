import { CommonMethod, CommonConfiguration, ContentModifier, Optional, Bindable } from './common';
import { Axis, CrownSensitivity } from './enums';
import { ResourceStr, ResourceColor, Length, Dimension, SizeOptions } from './units';
import { CircleAttribute } from './circle';
import { RectAttribute } from './rect';
import { PathAttribute } from './path';
import { EllipseAttribute } from './ellipse';
import { LinearGradient } from './dataPanel';
declare enum SliderStyle {
  OutSet,
  InSet,
  NONE,
}
declare enum SliderChangeMode {
  Begin,
  Moving,
  End,
  Click,
}
declare enum SliderInteraction {
  SLIDE_AND_CLICK,
  SLIDE_ONLY,
  SLIDE_AND_CLICK_UP = 2
}
declare interface SlideRange {
  from?: number;
  to?: number;
}
declare interface SliderOptions {
  value?: number;
  value?: number | undefined | Bindable<number>;
  min?: number;
  max?: number;
  step?: number;
  style?: SliderStyle;
  direction?: Axis;
  reverse?: boolean;
}
declare enum SliderBlockType {
  DEFAULT,
  IMAGE,
  SHAPE,
}
declare interface SliderBlockStyle {
  type: SliderBlockType;
  image?: ResourceStr;
  shape?: CircleAttribute | EllipseAttribute | PathAttribute | RectAttribute;
}
declare type SliderTriggerChangeCallback = (value: number, mode: SliderChangeMode) => void;
declare interface SliderConfiguration extends CommonConfiguration<SliderConfiguration> {
  value: number;
  min: number;
  max: number;
  step: number;
  triggerChange: SliderTriggerChangeCallback;
}
interface SliderInterface {
  (options?: SliderOptions): SliderAttribute;
}
interface SliderCustomContentOptions {
  accessibilityText?: ResourceStr;
  accessibilityDescription?: ResourceStr;
  accessibilityLevel?: string;
  accessibilityGroup?: boolean;
}
interface SliderPrefixOptions extends SliderCustomContentOptions {
}
interface SliderSuffixOptions extends SliderCustomContentOptions {
}
declare class SliderAttribute extends CommonMethod<SliderAttribute> {
  blockColor(value: ResourceColor): SliderAttribute;
  trackColor(value: ResourceColor | LinearGradient): SliderAttribute;
  selectedColor(value: ResourceColor): SliderAttribute;
  selectedColor(selectedColor: ResourceColor | LinearGradient): SliderAttribute;
  minLabel(value: string): SliderAttribute;
  maxLabel(value: string): SliderAttribute;
  showSteps(value: boolean): SliderAttribute;
  showTips(value: boolean, content?: ResourceStr): SliderAttribute;
  trackThickness(value: Length): SliderAttribute;
  onChange(callback: (value: number, mode: SliderChangeMode) => void): SliderAttribute;
  blockBorderColor(value: ResourceColor): SliderAttribute;
  blockBorderWidth(value: Length): SliderAttribute;
  stepColor(value: ResourceColor): SliderAttribute;
  trackBorderRadius(value: Length): SliderAttribute;
    selectedBorderRadius(value: Dimension): SliderAttribute;
  blockSize(value: SizeOptions): SliderAttribute;
  blockStyle(value: SliderBlockStyle): SliderAttribute;
  stepSize(value: Length): SliderAttribute;
  sliderInteractionMode(value: SliderInteraction): SliderAttribute;
  minResponsiveDistance(value: number): SliderAttribute;
  contentModifier(modifier: ContentModifier<SliderConfiguration>): SliderAttribute;
  slideRange(value: SlideRange): SliderAttribute;
  digitalCrownSensitivity(sensitivity: Optional<CrownSensitivity>): SliderAttribute;
  enableHapticFeedback(enabled: boolean): SliderAttribute;
  prefix(content: ComponentContent, options?: SliderPrefixOptions): SliderAttribute;
  suffix(content: ComponentContent, options?: SliderSuffixOptions): SliderAttribute;
}
declare const Slider: SliderInterface;
declare const SliderInstance: SliderAttribute;