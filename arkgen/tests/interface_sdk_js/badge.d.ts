import { ResourceColor, Length, Position, Resource, ResourceStr } from './units';
import { FontWeight } from './enums';
import { CommonMethod } from './common';
declare enum BadgePosition {
  RightTop,
  Right,
  Left,
}
declare interface BadgeStyle {
  color?: ResourceColor;
  fontSize?: number | ResourceStr;
  badgeSize?: number | ResourceStr;
  badgeColor?: ResourceColor;
  borderColor?: ResourceColor;
  borderWidth?: Length;
  fontWeight?: number | FontWeight | ResourceStr;
}
declare interface BadgeParam {
  position?: BadgePosition | Position;
  style: BadgeStyle;
}
declare interface BadgeParamWithNumber extends BadgeParam {
  count: number;
  maxCount?: number;
}
declare interface BadgeParamWithString extends BadgeParam {
  value: ResourceStr;
}
interface BadgeInterface {
  (value: BadgeParamWithNumber): BadgeAttribute;
  (value: BadgeParamWithString): BadgeAttribute;
}
declare class BadgeAttribute extends CommonMethod<BadgeAttribute> {}
declare const Badge: BadgeInterface;
declare const BadgeInstance: BadgeAttribute;