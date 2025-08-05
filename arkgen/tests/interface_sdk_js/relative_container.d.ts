import { Dimension } from './units';
import { Axis } from './enums';
import { CommonMethod } from './common';
interface RelativeContainerInterface {
  (): RelativeContainerAttribute;
}
declare interface GuideLinePosition {
  start? : Dimension;
  end? : Dimension;
}
declare interface GuideLineStyle {
  id : string;
  direction : Axis;
  position : GuideLinePosition;
}
declare enum BarrierDirection {
  LEFT,
  RIGHT,
  TOP,
  BOTTOM,
}
declare enum LocalizedBarrierDirection {
  START = 0,
  END = 1,
  TOP = 2,
  BOTTOM = 3,
}
declare interface BarrierStyle {
  id : string;
  direction : BarrierDirection;
  referencedId : Array<string>;
}
declare interface LocalizedBarrierStyle {
  id : string;
  localizedDirection : LocalizedBarrierDirection;
  referencedId : Array<string>;
}
declare class RelativeContainerAttribute extends CommonMethod<RelativeContainerAttribute> {
  guideLine(value: Array<GuideLineStyle>): RelativeContainerAttribute;
  barrier(value: Array<BarrierStyle>): RelativeContainerAttribute;
  barrier(barrierStyle: Array<LocalizedBarrierStyle>): RelativeContainerAttribute;
}
declare const RelativeContainer: RelativeContainerInterface;
declare const RelativeContainerInstance: RelativeContainerAttribute;