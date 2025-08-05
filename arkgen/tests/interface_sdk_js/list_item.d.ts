import { CommonMethod, Bindable } from './common';
import { CustomBuilder } from './builder'
import { Length } from './units';
import { ComponentContent } from '../ComponentContent'
declare enum Sticky {
  None,
  Normal,
  Opacity,
}
declare enum EditMode {
  None,
  Deletable,
  Movable,
}
declare enum SwipeEdgeEffect {
  Spring,
  None,
}
declare enum SwipeActionState {
  COLLAPSED,
  EXPANDED,
  ACTIONING,
}
declare interface SwipeActionItem {
  builder?: CustomBuilder;
  builderComponent?: ComponentContent;
  actionAreaDistance?: Length;
  onAction?: () => void;
  onEnterActionArea?: () => void;
  onExitActionArea?: () => void;
  onStateChange?: (state: SwipeActionState) => void;
}
declare interface SwipeActionOptions {
  start?: CustomBuilder | SwipeActionItem;
  end?: CustomBuilder | SwipeActionItem;
  edgeEffect?: SwipeEdgeEffect;
  onOffsetChange?: (offset: number) => void;
}
declare enum ListItemStyle {
  NONE = 0,
  CARD = 1,
}
declare interface ListItemOptions {
  style?: ListItemStyle;
}
interface ListItemInterface {
  (value?: ListItemOptions): ListItemAttribute;
  (value?: string): ListItemAttribute;
}
declare class ListItemAttribute extends CommonMethod<ListItemAttribute> {
  sticky(value: Sticky): ListItemAttribute;
  editable(value: boolean | EditMode): ListItemAttribute;
  selectable(value: boolean): ListItemAttribute;
  selected(value: boolean): ListItemAttribute;
  selected(value: boolean | Bindable<boolean>): ListItemAttribute;
  swipeAction(value: SwipeActionOptions): ListItemAttribute;
  onSelect(event: (isSelected: boolean) => void): ListItemAttribute;
}
declare const ListItemInstance: ListItemAttribute;
declare const ListItem: ListItemInterface;