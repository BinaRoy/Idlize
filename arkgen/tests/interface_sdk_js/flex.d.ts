import { LengthMetrics } from '../Graphics';
import { PointLightStyle, CommonMethod } from './common';
import { FlexWrap, FlexDirection, ItemAlign, FlexAlign } from './enums';
declare interface FlexOptions {
  direction?: FlexDirection;
  wrap?: FlexWrap;
  justifyContent?: FlexAlign;
  alignItems?: ItemAlign;
  alignContent?: FlexAlign;
  space?: FlexSpaceOptions;
}
declare interface FlexSpaceOptions {
  main?: LengthMetrics;
  cross?: LengthMetrics;
}
interface FlexInterface {
  (value?: FlexOptions): FlexAttribute;
}
declare class FlexAttribute extends CommonMethod<FlexAttribute> {
  pointLight(value: PointLightStyle): FlexAttribute;
}
declare const Flex: FlexInterface;
declare const FlexInstance: FlexAttribute;