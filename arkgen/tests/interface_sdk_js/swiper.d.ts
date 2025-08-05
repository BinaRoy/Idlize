import { IndicatorComponentController } from './indicatorcomponent';
import { CommonMethod, Callback, ICurve, Optional, Bindable } from './common';
import { EdgeEffect, Curve, PageFlipMode } from './enums';
import { Length, LengthMetrics, VoidCallback, ResourceColor, VP, Font } from './units';
declare class SwiperController {
  constructor();
  showNext();
  showNext(): void;
  showPrevious();
  showPrevious(): void;
  changeIndex(index: number, useAnimation?: boolean);
  changeIndex(index: number, animationMode?: SwiperAnimationMode | boolean);
  changeIndex(index: number, animationMode?: SwiperAnimationMode | boolean): void;
  finishAnimation(callback?: VoidCallback);
  finishAnimation(callback?: VoidCallback): void;
  preloadItems(indices: Optional<Array<number>>): Promise<void>;
}
declare class Indicator<T> {
  left(value: Length): T;
  top(value: Length): T;
  right(value: Length): T;
  bottom(value: Length): T;
  bottom(bottom: LengthMetrics | Length, ignoreSize: boolean): T;
  start(value: LengthMetrics): T;
  end(value: LengthMetrics): T;   
  static dot(): DotIndicator;
  static digit(): DigitIndicator;
}
declare class DotIndicator extends Indicator<DotIndicator> {
  constructor();
  itemWidth(value: Length): DotIndicator;
  itemHeight(value: Length): DotIndicator;
  selectedItemWidth(value: Length): DotIndicator;
  selectedItemHeight(value: Length): DotIndicator;
  mask(value: boolean): DotIndicator;
  color(value: ResourceColor): DotIndicator;
  selectedColor(value: ResourceColor): DotIndicator;
  maxDisplayCount(maxDisplayCount: number): DotIndicator;
  space(space: LengthMetrics): DotIndicator;
}
declare interface SwiperAutoFill {
  minSize: VP;
}
declare class DigitIndicator extends Indicator<DigitIndicator> {
  constructor();
  fontColor(value: ResourceColor): DigitIndicator;
  selectedFontColor(value: ResourceColor): DigitIndicator;
  digitFont(value: Font): DigitIndicator;
  selectedDigitFont(value: Font): DigitIndicator;
}
declare interface ArrowStyle {
  showBackground?: boolean;
  isSidebarMiddle?: boolean;
  backgroundSize?: Length;
  backgroundColor?: ResourceColor;
  arrowSize?: Length;
  arrowColor?: ResourceColor;
}
declare enum SwiperDisplayMode {
  Stretch,
  AutoLinear,
  STRETCH,
  AUTO_LINEAR,
}
interface SwiperInterface {
  (controller?: SwiperController): SwiperAttribute;
}
declare interface IndicatorStyle {
  left?: Length;
  top?: Length;
  right?: Length;
  bottom?: Length;
  size?: Length;
  mask?: boolean;
  color?: ResourceColor;
  selectedColor?: ResourceColor;
}
declare interface SwiperAnimationEvent {
  currentOffset: number;
  targetOffset: number;
  velocity: number;
}
declare interface AutoPlayOptions {
  stopWhenTouched: boolean;
}
declare enum SwiperNestedScrollMode {
  SELF_ONLY = 0,
  SELF_FIRST = 1,
}
declare enum SwiperAnimationMode {
  NO_ANIMATION = 0,
  DEFAULT_ANIMATION = 1,
  FAST_ANIMATION = 2,
}
declare type OnSwiperAnimationStartCallback = (index: number, targetIndex: number, extraInfo: SwiperAnimationEvent) => void;
declare type OnSwiperAnimationEndCallback = (index: number, extraInfo: SwiperAnimationEvent) => void;
declare type OnSwiperGestureSwipeCallback = (index: number, extraInfo: SwiperAnimationEvent) => void;
declare class SwiperAttribute extends CommonMethod<SwiperAttribute> {
  index(value: number): SwiperAttribute;
  index(value: number | Bindable<number>): SwiperAttribute;
  autoPlay(value: boolean): SwiperAttribute;
  autoPlay(autoPlay: boolean, options: AutoPlayOptions): SwiperAttribute;
  interval(value: number): SwiperAttribute;
  indicator(value: DotIndicator | DigitIndicator | boolean): SwiperAttribute;
  indicator(indicator: IndicatorComponentController | DotIndicator | DigitIndicator | boolean): SwiperAttribute;
  displayArrow(value: ArrowStyle | boolean, isHoverShow?: boolean): SwiperAttribute;
  loop(value: boolean): SwiperAttribute;
  duration(value: number): SwiperAttribute;
  vertical(value: boolean): SwiperAttribute;
  itemSpace(value: number | string): SwiperAttribute;
  displayMode(value: SwiperDisplayMode): SwiperAttribute;
  cachedCount(value: number): SwiperAttribute;
  cachedCount(count: number, isShown: boolean): SwiperAttribute;
  displayCount(value: number | string | SwiperAutoFill, swipeByGroup?: boolean): SwiperAttribute;
  effectMode(value: EdgeEffect): SwiperAttribute;
  disableSwipe(value: boolean): SwiperAttribute;
  curve(value: Curve | string | ICurve): SwiperAttribute;
  onChange(event: Callback<number>): SwiperAttribute;
  onSelected(event: Callback<number>): SwiperAttribute;
  indicatorStyle(value?: IndicatorStyle): SwiperAttribute;
  prevMargin(value: Length, ignoreBlank?: boolean): SwiperAttribute;
  nextMargin(value: Length, ignoreBlank?: boolean): SwiperAttribute;
  onUnselected(event: Callback<number>): SwiperAttribute;
  onScrollStateChanged(event: Callback<ScrollState>): SwiperAttribute
  onAnimationStart(event: OnSwiperAnimationStartCallback): SwiperAttribute;
  onAnimationEnd(event: OnSwiperAnimationEndCallback): SwiperAttribute;
  onGestureSwipe(event: OnSwiperGestureSwipeCallback): SwiperAttribute;
  nestedScroll(value: SwiperNestedScrollMode): SwiperAttribute;
  customContentTransition(transition: SwiperContentAnimatedTransition): SwiperAttribute;
  onContentDidScroll(handler: ContentDidScrollCallback): SwiperAttribute;
  indicatorInteractive(value: boolean): SwiperAttribute;
  pageFlipMode(mode: Optional<PageFlipMode>): SwiperAttribute;
  onContentWillScroll(handler: ContentWillScrollCallback): SwiperAttribute;
  maintainVisibleContentPosition(enabled: boolean): SwiperAttribute;
}
declare interface SwiperContentAnimatedTransition {
  timeout?: number;
  transition: Callback<SwiperContentTransitionProxy>;
}
declare interface SwiperContentTransitionProxy {
  selectedIndex: number;
  index: number;
  position: number;
  mainAxisLength: number;
  finishTransition(): void;
}
declare interface SwiperContentWillScrollResult {
  currentIndex: number;
  comingIndex: number;
  offset: number;
}
declare type ContentDidScrollCallback = (selectedIndex: number, index: number, position: number, mainAxisLength: number) => void;
declare type ContentWillScrollCallback = (result: SwiperContentWillScrollResult) => boolean;
declare const Swiper: SwiperInterface;
declare const SwiperInstance: SwiperAttribute;