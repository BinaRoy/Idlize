import { ResourceColor, Length } from './units';
import { CommonMethod } from './common';
import { FontWeight, MarqueeUpdateStrategy } from './enums';
import { Resource } from './../../../api/global/resource';
interface MarqueeOptions {
  start: boolean;
  step?: number;
  loop?: number;
  fromStart?: boolean;
  src: string;
}
interface MarqueeInterface {
  (options: MarqueeOptions): MarqueeAttribute;
}
declare class MarqueeAttribute extends CommonMethod<MarqueeAttribute> {
  fontColor(value: ResourceColor): MarqueeAttribute;
  fontSize(value: Length): MarqueeAttribute;
  allowScale(value: boolean): MarqueeAttribute;
  fontWeight(value: number | FontWeight | string): MarqueeAttribute;
  fontFamily(value: string | Resource): MarqueeAttribute;
  marqueeUpdateStrategy(value: MarqueeUpdateStrategy): MarqueeAttribute;
  onStart(event: () => void): MarqueeAttribute;
  onBounce(event: () => void): MarqueeAttribute;
  onFinish(event: () => void): MarqueeAttribute;
}
declare const Marquee: MarqueeInterface;
declare const MarqueeInstance: MarqueeAttribute;