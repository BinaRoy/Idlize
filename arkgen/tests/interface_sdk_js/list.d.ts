import { ChildrenMainSize, ItemDragInfo, RectResult, ScrollableCommonMethod, Optional,
  OnWillScrollCallback, OnScrollCallback, OnItemDragStartCallback } from './common';
import { Axis } from './enums';
import { OnScrollFrameBeginCallback, ScrollAlign, Scroller } from './scroll';
import { Dimension, Length, LengthConstrain, ResourceColor } from './units';
declare enum ScrollState {
  Idle,
  Scroll,
  Fling,
}
declare enum ListItemAlign {
  Start,
  Center,
  End,
}
declare enum ListItemGroupArea {
  NONE = 0,
  IN_LIST_ITEM_AREA = 1,
  IN_HEADER_AREA = 2,
  IN_FOOTER_AREA = 3,
}
declare enum StickyStyle {
  None = 0,
  Header = 1,
  Footer = 2,
}
declare enum ChainEdgeEffect {
  DEFAULT,
  STRETCH,
}
declare enum ScrollSnapAlign {
  NONE = 0,
  START = 1,
  CENTER = 2,
  END = 3,
}
declare interface ChainAnimationOptions {
  minSpace: Length;
  maxSpace: Length;
  conductivity?: number;
  intensity?: number;
  edgeEffect?: ChainEdgeEffect;
  stiffness?: number;
  damping?: number;
}
declare interface UIListEvent extends UIScrollableCommonEvent {
  setOnWillScroll(callback: OnWillScrollCallback | undefined): void;
  setOnDidScroll(callback: OnScrollCallback | undefined): void;
  setOnScrollIndex(callback: OnListScrollIndexCallback | undefined): void;
  setOnScrollVisibleContentChange(callback: OnScrollVisibleContentChangeCallback | undefined): void;
}
declare interface CloseSwipeActionOptions {
  onFinish?: ()=>void
}
declare interface VisibleListContentInfo {
  index: number
  itemGroupArea?: ListItemGroupArea
  itemIndexInGroup?: number
}
declare type OnScrollVisibleContentChangeCallback = (start: VisibleListContentInfo, end: VisibleListContentInfo) => void;
declare type OnListScrollIndexCallback = (start: number, end: number, center: number) => void;
declare class ListScroller extends Scroller {
  getItemRectInGroup(index: number, indexInGroup: number): RectResult;
  scrollToItemInGroup(index: number, indexInGroup:number, smooth?: boolean, align?: ScrollAlign): void;
  closeAllSwipeActions(options?: CloseSwipeActionOptions): void;
  getVisibleListContentInfo(x: number, y: number): VisibleListContentInfo;
}
interface ListOptions {
  initialIndex?: number;
  space?: number | string;
  scroller?: Scroller;
}
interface ListInterface {
  (options?: ListOptions): ListAttribute;
}
declare interface ListDividerOptions {
  strokeWidth: Length;
  color?: ResourceColor;
  startMargin?: Length;
  endMargin?: Length;
}
declare class ListAttribute extends ScrollableCommonMethod<ListAttribute> {
  lanes(value: number | LengthConstrain, gutter?: Dimension): ListAttribute;
  alignListItem(value: ListItemAlign): ListAttribute;
  listDirection(value: Axis): ListAttribute;
  scrollBar(value: BarState): ListAttribute;
  edgeEffect(value: EdgeEffect, options?: EdgeEffectOptions): ListAttribute;
  contentStartOffset(value: number): ListAttribute;
  contentEndOffset(value: number): ListAttribute;
  divider(
    value: ListDividerOptions | null,
  ): ListAttribute;
  editMode(value: boolean): ListAttribute;
  multiSelectable(value: boolean): ListAttribute;
  cachedCount(value: number): ListAttribute;
  cachedCount(count: number, show: boolean): ListAttribute;
  chainAnimation(value: boolean): ListAttribute;
  chainAnimationOptions(value: ChainAnimationOptions): ListAttribute;
  sticky(value: StickyStyle): ListAttribute;
  scrollSnapAlign(value: ScrollSnapAlign): ListAttribute;
  nestedScroll(value: NestedScrollOptions): ListAttribute;
  enableScrollInteraction(value: boolean): ListAttribute;
  friction(value: number | Resource): ListAttribute;
  childrenMainSize(value: ChildrenMainSize): ListAttribute;
  maintainVisibleContentPosition(enabled: boolean): ListAttribute;
  stackFromEnd(enabled: boolean): ListAttribute;
  focusWrapMode(mode: Optional<FocusWrapMode>): ListAttribute;
  syncLoad(enable: boolean): ListAttribute;
  onScroll(event: (scrollOffset: number, scrollState: ScrollState) => void): ListAttribute;
  onScrollIndex(event: (start: number, end: number, center: number) => void): ListAttribute;
  onScrollVisibleContentChange(handler: OnScrollVisibleContentChangeCallback): ListAttribute;
  onReachStart(event: () => void): ListAttribute;
  onReachEnd(event: () => void): ListAttribute;
  onScrollStart(event: () => void): ListAttribute;
  onScrollStop(event: () => void): ListAttribute;
  onItemDelete(event: (index: number) => boolean): ListAttribute;
  onItemMove(event: (from: number, to: number) => boolean): ListAttribute;
  onItemDragStart(event: (event: ItemDragInfo, itemIndex: number) => ((() => any) | void)): ListAttribute;
  onItemDragStart(event: OnItemDragStartCallback): ListAttribute;
  onItemDragEnter(event: (event: ItemDragInfo) => void): ListAttribute;
  onItemDragMove(event: (event: ItemDragInfo, itemIndex: number, insertIndex: number) => void): ListAttribute;
  onItemDragLeave(event: (event: ItemDragInfo, itemIndex: number) => void): ListAttribute;
  onItemDrop(event: (event: ItemDragInfo, itemIndex: number, insertIndex: number, isSuccess: boolean) => void): ListAttribute;
   onScrollFrameBegin(event: OnScrollFrameBeginCallback): ListAttribute;
  onWillScroll(handler: Optional<OnWillScrollCallback>): ListAttribute;
   onDidScroll(handler: OnScrollCallback): ListAttribute;
}
declare const List: ListInterface;
declare const ListInstance: ListAttribute;