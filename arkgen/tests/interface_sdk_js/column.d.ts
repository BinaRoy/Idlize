import { PointLightStyle, Optional, CommonMethod } from './common';
import { HorizontalAlign, FlexAlign } from './enums';
import { Resource } from './../../global/resource';
declare type SpaceType = string | number | Resource;
interface ColumnOptions {
  space?: string | number;
}
interface ColumnOptionsV2 {
  space?: SpaceType;
}
interface ColumnInterface {
  (options?: ColumnOptions): ColumnAttribute;
  (options?: ColumnOptions | ColumnOptionsV2): ColumnAttribute;
}
declare class ColumnAttribute extends CommonMethod<ColumnAttribute> {
  alignItems(value: HorizontalAlign): ColumnAttribute;
  justifyContent(value: FlexAlign): ColumnAttribute;
  pointLight(value: PointLightStyle): ColumnAttribute;
  reverse(isReversed: Optional<boolean>): ColumnAttribute;
}
declare const Column: ColumnInterface;
declare const ColumnInstance: ColumnAttribute;