import { BarState, Edge, Color, EdgeEffect, ScrollSource ,Curve} from './enums'
import { ICurve, RectResult, ScrollableCommonMethod, EdgeEffectOptions, NestedScrollOptions,CommonMethod } from './common'
import { Dimension, Length, VoidCallback, Resource, LengthMetrics } from './units'
import { ScrollSnapAlign, ScrollState } from './list'
declare enum ScrollDirection {
  Vertical,
  Horizontal,
  Free,
  None,
}
declare enum ScrollAlign {
  START,
  CENTER,
  END,
  AUTO,
}
declare interface OffsetResult {
  xOffset: number;
  yOffset: number;
}
declare interface ScrollEdgeOptions {
  velocity?: number;
}
declare interface ScrollToIndexOptions {
  extraOffset?: LengthMetrics;
}
declare interface ScrollAnimationOptions {
  duration?: number;
  curve?: Curve | ICurve;
  canOverScroll?: boolean;
}
declare interface OffsetOptions {
  xOffset?: Dimension;
  yOffset?: Dimension;
}
declare interface UIScrollEvent extends UIScrollableCommonEvent {
  setOnWillScroll(callback: ScrollOnWillScrollCallback | undefined): void;
  setOnDidScroll(callback: ScrollOnScrollCallback | undefined): void;
}
declare class Scroller {
  constructor();
  scrollTo(options: ScrollOptions);
  scrollTo(options: ScrollOptions): void;
  scrollEdge(value: Edge, options?: ScrollEdgeOptions);
  scrollEdge(value: Edge, options?: ScrollEdgeOptions): void;
  fling(velocity: number): void;
  scrollPage(value: ScrollPageOptions);
  scrollPage(value: ScrollPageOptions): void;
  scrollPage(value: { next: boolean; direction?: Axis });
  currentOffset() : OffsetResult;
  scrollToIndex(value: number, smooth?: boolean, align?: ScrollAlign, options?: ScrollToIndexOptions);
  scrollToIndex(value: number, smooth?: boolean, align?: ScrollAlign, options?: ScrollToIndexOptions): void;
  scrollBy(dx: Length, dy: Length);
  scrollBy(dx: Length, dy: Length): void;
  isAtEnd(): boolean;
  getItemRect(index: number): RectResult;
  getItemIndex(x: number, y: number): number;
}
declare interface ScrollOptions {
  xOffset: number | string;
  yOffset: number | string;
  animation?: ScrollAnimationOptions | boolean;
  canOverScroll?: boolean;
}
declare interface ScrollPageOptions {
  next: boolean;
  animation?: boolean;
}
declare interface ScrollSnapOptions {
  snapAlign: ScrollSnapAlign;
  snapPagination?: Dimension | Array<Dimension>;
  enableSnapToStart?: boolean;
  enableSnapToEnd?: boolean;
}
interface ScrollInterface {
  (scroller?: Scroller): ScrollAttribute;
}
declare type OnScrollEdgeCallback = (side: Edge) => void;
interface OnScrollFrameBeginHandlerResult {
  offsetRemain: number;
}
declare type OnScrollFrameBeginCallback = (offset: number, state: ScrollState) => OnScrollFrameBeginHandlerResult;
declare class ScrollAttribute extends ScrollableCommonMethod<ScrollAttribute> {
  scrollable(value: ScrollDirection): ScrollAttribute;
  onScroll(event: (xOffset: number, yOffset: number) => void): ScrollAttribute;
  onWillScroll(handler: ScrollOnWillScrollCallback): ScrollAttribute;
  onDidScroll(handler: ScrollOnScrollCallback): ScrollAttribute;
  onScrollEdge(event: OnScrollEdgeCallback): ScrollAttribute;
  onScrollStart(event: VoidCallback): ScrollAttribute;
  onScrollEnd(event: () => void): ScrollAttribute;
  onScrollStop(event: VoidCallback): ScrollAttribute;
  scrollBar(barState: BarState): ScrollAttribute;
  scrollBarColor(color: Color | number | string): ScrollAttribute;
  scrollBarWidth(value: number | string): ScrollAttribute;
  edgeEffect(edgeEffect: EdgeEffect, options?: EdgeEffectOptions): ScrollAttribute;
  onScrollFrameBegin(event: OnScrollFrameBeginCallback): ScrollAttribute;
  nestedScroll(value: NestedScrollOptions): ScrollAttribute;
  enableScrollInteraction(value: boolean): ScrollAttribute;
  friction(value: number | Resource): ScrollAttribute;
  scrollSnap(value: ScrollSnapOptions): ScrollAttribute;
  enablePaging(value: boolean): ScrollAttribute;
  initialOffset(value: OffsetOptions): ScrollAttribute;
}
declare type ScrollOnScrollCallback = (xOffset: number, yOffset: number, scrollState: ScrollState) => void;
declare type ScrollOnWillScrollCallback =
 (xOffset: number, yOffset: number, scrollState: ScrollState, scrollSource: ScrollSource) => void | OffsetResult;
 declare type ScrollOnWillScrollCallback =
 (xOffset: number, yOffset: number, scrollState: ScrollState, scrollSource: ScrollSource) => undefined | OffsetResult;
declare const Scroll: ScrollInterface;
declare const ScrollInstance: ScrollAttribute;