import { CommonMethod, PixelMap } from './common';
import { ResourceColor, Length } from './units';
import { Resource } from '../../global/resource';
import { LineCapStyle, LineJoinStyle } from './enums';
declare interface ViewportRect {
  x?: Length;
  y?: Length;
  width?: Length;
  height?: Length;
}
interface ShapeInterface {
  new (value?: PixelMap): ShapeAttribute;
  (value: PixelMap): ShapeAttribute;
  (): ShapeAttribute;
}
declare class ShapeAttribute extends CommonMethod<ShapeAttribute> {
  viewPort(value: ViewportRect): ShapeAttribute;
  stroke(value: ResourceColor): ShapeAttribute;
  fill(value: ResourceColor): ShapeAttribute;
  strokeDashOffset(value: Length): ShapeAttribute;
  strokeDashArray(value: Array<any>): ShapeAttribute;
  strokeDashArray(value: Array<Length>): ShapeAttribute;
  strokeLineCap(value: LineCapStyle): ShapeAttribute;
  strokeLineJoin(value: LineJoinStyle): ShapeAttribute;
  strokeMiterLimit(value: Length): ShapeAttribute;
  strokeOpacity(value: number | string | Resource): ShapeAttribute;
  fillOpacity(value: number | string | Resource): ShapeAttribute;
  strokeWidth(value: Length): ShapeAttribute;
  antiAlias(value: boolean): ShapeAttribute;
  mesh(value: Array<any>, column: number, row: number): ShapeAttribute;
  mesh(value: Array<number>, column: number, row: number): ShapeAttribute;
}
declare const Shape: ShapeInterface;
declare const ShapeInstance: ShapeAttribute;
interface ShapeInterface {
  (value?: PixelMap): ShapeAttribute;
}