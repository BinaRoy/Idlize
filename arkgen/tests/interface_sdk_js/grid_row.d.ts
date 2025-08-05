import { ItemAlign } from './enums';
import { CommonMethod } from './common';
import { Length } from './units';
declare interface GridRowSizeOption {
  xs?: Length,
  sm?: Length,
  md?: Length,
  lg?: Length,
  xl?: Length,
  xxl?: Length,
}
declare interface GridRowColumnOption {
  xs?: number,
  sm?: number,
  md?: number,
  lg?: number,
  xl?: number,
  xxl?: number,
}
declare interface GutterOption {
  x?: Length | GridRowSizeOption,
  y?: Length | GridRowSizeOption
}
declare enum BreakpointsReference {
  WindowSize,
  ComponentSize,
}
declare enum GridRowDirection {
  Row,
  RowReverse,
}
declare interface BreakPoints {
  value?: Array<string>,
  reference?: BreakpointsReference,
}
declare interface GridRowOptions {
  gutter?: Length | GutterOption;
  columns?: number | GridRowColumnOption;
  breakpoints?: BreakPoints;
  direction?: GridRowDirection;
}
interface GridRowInterface {
  (option?: GridRowOptions): GridRowAttribute;
}
declare class GridRowAttribute extends CommonMethod<GridRowAttribute> {
  onBreakpointChange(callback: (breakpoints: string) => void): GridRowAttribute;
  alignItems(value: ItemAlign): GridRowAttribute;
}
declare const GridRow: GridRowInterface;
declare const GridRowInstance: GridRowAttribute;