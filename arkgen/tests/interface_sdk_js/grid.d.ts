import { EdgeEffectOptions, NestedScrollOptions, ItemDragInfo, ScrollableCommonMethod, Optional, CommonMethod, OnWillScrollCallback, OnScrollCallback, OnItemDragStartCallback } from './common';
import { Length, Resource } from './units';
import { Scroller, OnScrollFrameBeginCallback } from './scroll';
import { ScrollState } from './list';
import { BarState, Color, EdgeEffect } from './enums';
declare interface GridLayoutOptions {
  regularSize: [number, number];
  irregularIndexes?: number[];
  onGetIrregularSizeByIndex?: (index: number) => [number, number]
  onGetRectByIndex?: (index: number) => [number, number, number, number]
}
interface GridInterface {
  (scroller?: Scroller, layoutOptions?: GridLayoutOptions): GridAttribute;
}
declare enum GridDirection {
  Row,
  Column,
  RowReverse,
  ColumnReverse,
}
declare enum GridItemAlignment {
  DEFAULT = 0,
  STRETCH = 1,
}
declare interface ComputedBarAttribute {
  totalOffset: number;
  totalLength: number;
}
declare interface UIGridEvent extends UIScrollableCommonEvent {
  setOnWillScroll(callback: OnWillScrollCallback | undefined): void;
  setOnDidScroll(callback: OnScrollCallback | undefined): void;
  setOnScrollIndex(callback: OnGridScrollIndexCallback | undefined): void;
}
declare type OnGridScrollIndexCallback = (first: number, last: number) => void;
declare class GridAttribute extends ScrollableCommonMethod<GridAttribute> {
  columnsTemplate(value: string): GridAttribute;
  rowsTemplate(value: string): GridAttribute;
  columnsGap(value: Length): GridAttribute;
  rowsGap(value: Length): GridAttribute;
  scrollBarWidth(value: number | string): GridAttribute;
  scrollBarColor(value: Color | number | string): GridAttribute;
  scrollBar(value: BarState): GridAttribute;
  onScrollBarUpdate(event: (index: number, offset: number) => ComputedBarAttribute): GridAttribute;
  onScrollIndex(event: (first: number, last: number) => void): GridAttribute;
  cachedCount(value: number): GridAttribute;
  cachedCount(count: number, show: boolean): GridAttribute;
  editMode(value: boolean): GridAttribute;
  multiSelectable(value: boolean): GridAttribute;
  maxCount(value: number): GridAttribute;
  minCount(value: number): GridAttribute;
  cellLength(value: number): GridAttribute;
  layoutDirection(value: GridDirection): GridAttribute;
  supportAnimation(value: boolean): GridAttribute;
  onItemDragStart(event: (event: ItemDragInfo, itemIndex: number) => (() => any) | void): GridAttribute;
  onItemDragStart(event: OnItemDragStartCallback): GridAttribute;
  onItemDragEnter(event: (event: ItemDragInfo) => void): GridAttribute;
  onItemDragMove(event: (event: ItemDragInfo, itemIndex: number, insertIndex: number) => void): GridAttribute;
  onItemDragLeave(event: (event: ItemDragInfo, itemIndex: number) => void): GridAttribute;
  onItemDrop(
    event: (event: ItemDragInfo, itemIndex: number, insertIndex: number, isSuccess: boolean) => void,
  ): GridAttribute;
  edgeEffect(value: EdgeEffect, options?: EdgeEffectOptions): GridAttribute;
  nestedScroll(value: NestedScrollOptions): GridAttribute;
  enableScrollInteraction(value: boolean): GridAttribute;
  friction(value: number | Resource): GridAttribute;
    alignItems(alignment: Optional<GridItemAlignment>): GridAttribute;
    focusWrapMode(mode: Optional<FocusWrapMode>): GridAttribute;
  syncLoad(enable: boolean): GridAttribute;
  onScroll(event: (scrollOffset: number, scrollState: ScrollState) => void): GridAttribute;
  onReachStart(event: () => void): GridAttribute;
  onReachEnd(event: () => void): GridAttribute;
  onScrollStart(event: () => void): GridAttribute;
  onScrollStop(event: () => void): GridAttribute;
  onScrollFrameBegin(event: OnScrollFrameBeginCallback): GridAttribute;
  onWillScroll(handler: Optional<OnWillScrollCallback>): GridAttribute;
  onDidScroll(handler: OnScrollCallback): GridAttribute;
}
declare const Grid: GridInterface;
declare const GridInstance: GridAttribute;