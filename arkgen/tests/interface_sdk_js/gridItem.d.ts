import { CommonMethod, Bindable } from './common'
declare enum GridItemStyle {
  NONE = 0,
  PLAIN = 1,
}
declare interface GridItemOptions {
  style?: GridItemStyle;
}
interface GridItemInterface {
  (value?: GridItemOptions): GridItemAttribute;
}
declare class GridItemAttribute extends CommonMethod<GridItemAttribute> {
  rowStart(value: number): GridItemAttribute;
  rowEnd(value: number): GridItemAttribute;
  columnStart(value: number): GridItemAttribute;
  columnEnd(value: number): GridItemAttribute;
  forceRebuild(value: boolean): GridItemAttribute;
  selectable(value: boolean): GridItemAttribute;
  selected(value: boolean): GridItemAttribute;
  selected(value: boolean | Bindable<boolean>): GridItemAttribute;
  onSelect(event: (isSelected: boolean) => void): GridItemAttribute;
}
declare const GridItem: GridItemInterface
declare const GridItemInstance: GridItemAttribute;