import { PointLightStyle, Optional, CommonMethod } from './common';
import { VerticalAlign, FlexAlign } from './enums';
import { SpaceType } from './column';
declare interface RowOptions {
  space?: string | number;
}
interface RowOptionsV2 {
  space?: SpaceType;
}
interface RowInterface {
  (options?: RowOptions): RowAttribute;
  (options?: RowOptions | RowOptionsV2): RowAttribute;
}
declare class RowAttribute extends CommonMethod<RowAttribute> {
  alignItems(value: VerticalAlign): RowAttribute;
  justifyContent(value: FlexAlign): RowAttribute;
  pointLight(value: PointLightStyle): RowAttribute;
  reverse(isReversed: Optional<boolean>): RowAttribute;
}
declare const Row: RowInterface;
declare const RowInstance: RowAttribute;