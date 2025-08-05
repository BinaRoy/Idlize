import { CommonShapeMethod } from './common';
import { ShapePoint } from './line';
declare interface PolygonOptions {
  width?: Length;
  height?: Length;
}
interface PolygonInterface {
  new (options?: PolygonOptions): PolygonAttribute;
  (options?: PolygonOptions): PolygonAttribute;
}
declare class PolygonAttribute extends CommonShapeMethod<PolygonAttribute> {
  points(value: Array<any>): PolygonAttribute;
   points(value: Array<ShapePoint>): PolygonAttribute;
}
declare const Polygon: PolygonInterface;
declare const PolygonInstance: PolygonAttribute;
interface PolygonInterface {
  (options?: PolygonOptions): PolygonAttribute;
}