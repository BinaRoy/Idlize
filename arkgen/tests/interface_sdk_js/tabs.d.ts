import { BackgroundBlurStyleOptions, BackgroundEffectOptions, BlurStyle, Callback, CommonMethod, Optional, TranslateOptions, DividerStyle, Bindable } from './common';
import { EdgeEffect, PageFlipMode } from './enums';
import { Dimension, Length, ResourceColor } from './units';
declare type CommonModifier = import('../api/arkui/CommonModifier').CommonModifier;
declare enum BarMode {
  Scrollable = 0,
  Fixed = 1,
}
declare enum AnimationMode {
  CONTENT_FIRST = 0,
  ACTION_FIRST = 1,
  NO_ANIMATION = 2,
  CONTENT_FIRST_WITH_JUMP = 3,
  ACTION_FIRST_WITH_JUMP = 4,
}
declare enum BarPosition {
  Start,
  End,
}
declare enum LayoutStyle {
  ALWAYS_CENTER = 0,
  ALWAYS_AVERAGE_SPLIT = 1,
  SPACE_BETWEEN_OR_CENTER = 2
} 
declare enum TabsCacheMode {
  CACHE_BOTH_SIDE = 0,
  CACHE_LATEST_SWITCHED = 1
}
declare class TabsController {
  constructor();
  changeIndex(value: number): void;
  preloadItems(indices: Optional<Array<number>>): Promise<void>;
  setTabBarTranslate(translate: TranslateOptions): void;
  setTabBarOpacity(opacity: number): void;
}
declare interface TabsOptions {
  barPosition?: BarPosition;
  index?: number;
  index?: number | Bindable<number>;
  controller?: TabsController
  barModifier?: CommonModifier
}
interface TabsInterface {
  (options?: TabsOptions): TabsAttribute;
}
interface DividerStyle {
  strokeWidth: Length;
  color?: ResourceColor;
  startMargin?: Length;
  endMargin?: Length;
}
declare interface TabsAnimationEvent {
  currentOffset: number;
  targetOffset: number;
  velocity: number;
}
interface BarGridColumnOptions {
  sm?: number;
  md?: number;
  lg?: number;
  margin?: Dimension;
  gutter?: Dimension;
}
interface ScrollableBarModeOptions {
  margin?: Dimension;
  nonScrollableLayoutStyle?: LayoutStyle;
}
declare type OnTabsAnimationStartCallback = (index: number, targetIndex: number, extraInfo: TabsAnimationEvent) => void;
declare type OnTabsAnimationEndCallback = (index: number, extraInfo: TabsAnimationEvent) => void;
declare type OnTabsGestureSwipeCallback = (index: number, extraInfo: TabsAnimationEvent) => void;
declare type TabsCustomContentTransitionCallback = (from: number, to: number) => TabContentAnimatedTransition | undefined;
declare type OnTabsContentWillChangeCallback = (currentIndex: number, comingIndex: number) => boolean;
declare class TabsAttribute extends CommonMethod<TabsAttribute> {
  vertical(value: boolean): TabsAttribute;
  barPosition(value: BarPosition): TabsAttribute;
  scrollable(value: boolean): TabsAttribute;
  barMode(value: BarMode.Fixed): TabsAttribute;
  barMode(value: BarMode.Scrollable, options: ScrollableBarModeOptions): TabsAttribute;
  barMode(value: BarMode, options?: ScrollableBarModeOptions): TabsAttribute;
  barWidth(value: Length): TabsAttribute;
  barHeight(value: Length): TabsAttribute;
    barHeight(height: Length, noMinHeightLimit: boolean): TabsAttribute;
   animationCurve(curve: Curve | ICurve): TabsAttribute;
  animationDuration(value: number): TabsAttribute;
  animationMode(mode: Optional<AnimationMode>): TabsAttribute;
  edgeEffect(edgeEffect: Optional<EdgeEffect>): TabsAttribute;
  onChange(event: Callback<number>): TabsAttribute;
  onSelected(event: Callback<number>): TabsAttribute;
  onTabBarClick(event: Callback<number>): TabsAttribute;
  onUnselected(event: Callback<number>): TabsAttribute;
  onAnimationStart(handler: OnTabsAnimationStartCallback): TabsAttribute;
  onAnimationEnd(handler: OnTabsAnimationEndCallback): TabsAttribute;
  onGestureSwipe(handler: OnTabsGestureSwipeCallback): TabsAttribute;
  fadingEdge(value: boolean): TabsAttribute;
  divider(value: DividerStyle | null): TabsAttribute;
  barOverlap(value: boolean): TabsAttribute;
  barBackgroundColor(value: ResourceColor): TabsAttribute;
  barGridAlign(value: BarGridColumnOptions): TabsAttribute;
  customContentTransition(delegate: TabsCustomContentTransitionCallback): TabsAttribute;
  barBackgroundBlurStyle(value: BlurStyle): TabsAttribute;
  pageFlipMode(mode: Optional<PageFlipMode>): TabsAttribute;
  barBackgroundBlurStyle(style: BlurStyle, options: BackgroundBlurStyleOptions): TabsAttribute;
  barBackgroundEffect(options: BackgroundEffectOptions): TabsAttribute;
  onContentWillChange(handler: OnTabsContentWillChangeCallback): TabsAttribute;
  cachedMaxCount(count: number, mode: TabsCacheMode): TabsAttribute;
}
declare interface TabContentAnimatedTransition {
  timeout?: number;
  transition: Callback<TabContentTransitionProxy>;
}
declare interface TabContentTransitionProxy {
  from: number;
  to: number;
  finishTransition(): void;
}
declare const Tabs: TabsInterface;
declare const TabsInstance: TabsAttribute;