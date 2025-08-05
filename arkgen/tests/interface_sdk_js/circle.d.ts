import { CommonShapeMethod,CommonMethod } from './common';
declare interface CircleOptions {
  width?: Length;
  height?: Length;
}
interface CircleInterface {
  new (value?: CircleOptions): CircleAttribute;
  (value?: CircleOptions): CircleAttribute;
}
declare class CircleAttribute extends CommonShapeMethod<CircleAttribute> {}
declare const Circle: CircleInterface;
declare const CircleInstance: CircleAttribute;
interface CircleInterface {
  (value?: CircleOptions): CircleAttribute;
}