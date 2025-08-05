import { CommonShapeMethod } from './common';
import { ShapePoint } from './line';
declare interface PolylineOptions {
  width?: Length;
  height?: Length;
}
interface PolylineInterface {
  new (options?: PolylineOptions): PolylineAttribute;
  (options?: PolylineOptions): PolylineAttribute;
}
declare class PolylineAttribute extends CommonShapeMethod<PolylineAttribute> {
  points(value: Array<any>): PolylineAttribute;
  points(value: Array<ShapePoint>): PolylineAttribute;
}
declare const Polyline: PolylineInterface;
declare const PolylineInstance: PolylineAttribute;
interface PolylineInterface {
  (options?: PolylineOptions): PolylineAttribute;
}