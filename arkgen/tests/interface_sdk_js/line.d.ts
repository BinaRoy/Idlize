import { CommonShapeMethod, CommonMethod } from './common';
import { Length } from './units';
export type ShapePoint = [Length, Length];
interface LineOptions {
  width?: Length;
  height?: Length;
}
interface LineInterface {
  new (options?: LineOptions): LineAttribute;
  (options?: LineOptions): LineAttribute;
}
declare class LineAttribute extends CommonShapeMethod<LineAttribute> {
  startPoint(value: Array<any>): LineAttribute;
  startPoint(value: ShapePoint): LineAttribute;
  endPoint(value: Array<any>): LineAttribute;
  endPoint(value: ShapePoint): LineAttribute;
}
declare const Line: LineInterface;
declare const LineInstance: LineAttribute;
interface LineInterface {
  (options?: LineOptions): LineAttribute;
}