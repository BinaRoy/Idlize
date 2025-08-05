import { Dimension } from './units';
import { CommonMethod } from './common';
interface ColumnSplitInterface {
  (): ColumnSplitAttribute;
}
interface ColumnSplitDividerStyle {
  startMargin?: Dimension;
  endMargin?: Dimension;
}
declare class ColumnSplitAttribute extends CommonMethod<ColumnSplitAttribute> {
  resizeable(value: boolean): ColumnSplitAttribute;
  divider(value: ColumnSplitDividerStyle | null): ColumnSplitAttribute;
}
declare const ColumnSplitInstance: ColumnSplitAttribute;
declare const ColumnSplit: ColumnSplitInterface;