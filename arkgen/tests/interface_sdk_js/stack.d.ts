import { PointLightStyle, CommonMethod } from './common';
import { Alignment } from './enums';
declare interface StackOptions {
  alignContent?: Alignment;
}
interface StackInterface {
  (options?: StackOptions): StackAttribute;
}
declare class StackAttribute extends CommonMethod<StackAttribute> {
  alignContent(value: Alignment): StackAttribute;
  pointLight(value: PointLightStyle): StackAttribute;
}
declare const Stack: StackInterface;
declare const StackInstance: StackAttribute;