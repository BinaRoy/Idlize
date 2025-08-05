import { CommonShapeMethod } from './common';
import { Length } from './units';
declare type RadiusItem = [Length, Length];
declare interface RectOptions {
  width?: Length;
  height?: Length;
  radius?: Length | Array<any>;
  radius?: Length | Array<RadiusItem>;
}
declare interface RoundedRectOptions {
  width?: Length;
  height?: Length;
  radiusWidth?: Length;
  radiusHeight?: Length;
}
interface RectInterface {
  new (
    options?: RectOptions | RoundedRectOptions,
  ): RectAttribute;
  (
    options?: RectOptions | RoundedRectOptions,
  ): RectAttribute;
}
declare class RectAttribute extends CommonShapeMethod<RectAttribute> {
  radiusWidth(value: Length): RectAttribute;
  radiusHeight(value: Length): RectAttribute;
  radius(value: Length | Array<any>): RectAttribute;
  radius(value: number | string | Array<number | string>): RectAttribute;
}
declare const Rect: RectInterface;
declare const RectInStance: RectAttribute;
declare const RectInstance: RectAttribute;
interface RectInterface {
  (
    options?: RectOptions | RoundedRectOptions,
  ): RectAttribute;
}