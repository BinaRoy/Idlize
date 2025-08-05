import { CommonMethod } from './common';
interface RowSplitInterface {
  (): RowSplitAttribute;
}
declare class RowSplitAttribute extends CommonMethod<RowSplitAttribute> {
  resizeable(value: boolean): RowSplitAttribute;
}
declare const RowSplit: RowSplitInterface;
declare const RowSplitInstance: RowSplitAttribute;