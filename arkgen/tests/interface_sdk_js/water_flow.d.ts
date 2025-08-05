import { ScrollableCommonMethod, NestedScrollOptions, CommonMethod, Optional, OnWillScrollCallback, OnScrollCallback } from './common';
import { CustomBuilder } from './builder'
import { Length, Dimension, Margin, ConstraintSizeOptions, Resource } from './units';
import { Scroller, OnScrollFrameBeginCallback } from './scroll';
import { ScrollState } from './list'
import { FlexDirection } from './enums'
import { ComponentContent } from '../../arkui/ComponentContent'
declare type GetItemMainSizeByIndex = (index: number) => number;
declare class SectionOptions {
  itemsCount: number;
  crossCount?: number;
  onGetItemMainSizeByIndex?: GetItemMainSizeByIndex;
  columnsGap?: Dimension;
  rowsGap?: Dimension;
  margin?: Margin | Dimension;
}
declare class WaterFlowSections {
  constructor();
  splice(start: number, deleteCount?: number, sections?: Array<SectionOptions>): boolean;
  push(section: SectionOptions): boolean;
  update(sectionIndex:number, section: SectionOptions): boolean;
  values(): Array<SectionOptions>;
  length(): number;
}
declare enum WaterFlowLayoutMode {
  ALWAYS_TOP_DOWN = 0,
  SLIDING_WINDOW = 1,
}
declare interface WaterFlowOptions {
  footer?: CustomBuilder;
  footerContent?: ComponentContent;
  scroller?: Scroller;
  sections?: WaterFlowSections;
  layoutMode?: WaterFlowLayoutMode;
}
declare interface UIWaterFlowEvent extends UIScrollableCommonEvent {
  setOnWillScroll(callback: OnWillScrollCallback | undefined): void;
  setOnDidScroll(callback: OnScrollCallback | undefined): void;
  setOnScrollIndex(callback: OnWaterFlowScrollIndexCallback | undefined): void;
}
declare type OnWaterFlowScrollIndexCallback = (first: number, last: number) => void;
interface WaterFlowInterface {
  (options?: WaterFlowOptions): WaterFlowAttribute;
}
declare class WaterFlowAttribute extends ScrollableCommonMethod<WaterFlowAttribute> {
  columnsTemplate(value: string): WaterFlowAttribute;
  itemConstraintSize(value: ConstraintSizeOptions): WaterFlowAttribute;
  rowsTemplate(value: string): WaterFlowAttribute;
  columnsGap(value: Length): WaterFlowAttribute;
  rowsGap(value: Length): WaterFlowAttribute;
  layoutDirection(value: FlexDirection): WaterFlowAttribute;
  nestedScroll(value: NestedScrollOptions): WaterFlowAttribute;
  enableScrollInteraction(value: boolean): WaterFlowAttribute;
  friction(value: number | Resource): WaterFlowAttribute;
  cachedCount(value: number): WaterFlowAttribute;
  cachedCount(count: number, show: boolean): WaterFlowAttribute;
  syncLoad(enable: boolean): WaterFlowAttribute;
  onReachStart(event: () => void): WaterFlowAttribute;
  onReachEnd(event: () => void): WaterFlowAttribute;
  onScrollFrameBegin(event: OnScrollFrameBeginCallback): WaterFlowAttribute;
  onScrollIndex(event: (first: number, last: number) => void): WaterFlowAttribute;
  onWillScroll(handler: Optional<OnWillScrollCallback>): WaterFlowAttribute;
  onDidScroll(handler: OnScrollCallback): WaterFlowAttribute;
}
declare const WaterFlow: WaterFlowInterface;
declare const WaterFlowInstance: WaterFlowAttribute;