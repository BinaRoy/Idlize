import { CommonMethod, Callback } from './common';
import { DotIndicator, DigitIndicator } from './swiper';
declare class IndicatorComponentController {
  constructor();
  showNext():void;
  showPrevious():void;
  changeIndex(index: number, useAnimation?: boolean):void;
}
interface IndicatorComponentInterface {
  (controller?: IndicatorComponentController): IndicatorComponentAttribute;
}
declare class IndicatorComponentAttribute extends CommonMethod<IndicatorComponentAttribute> {
  initialIndex(index: number): IndicatorComponentAttribute;
  count(totalCount: number): IndicatorComponentAttribute;
  style(indicatorStyle: DotIndicator | DigitIndicator): IndicatorComponentAttribute;
  loop(isLoop: boolean): IndicatorComponentAttribute;
  vertical(isVertical: boolean): IndicatorComponentAttribute;
  onChange(event: Callback<number>): IndicatorComponentAttribute;
}
declare const IndicatorComponent: IndicatorComponentInterface;
declare const IndicatorComponentInstance: IndicatorComponentAttribute;