import { Scroller } from './scroll'
import { BarState } from './enums'
import { Optional, CommonMethod } from './common'
declare enum ScrollBarDirection {
  Vertical,
  Horizontal,
}
declare interface ScrollBarOptions {
  scroller: Scroller;
  direction?: ScrollBarDirection;
  state?: BarState;
}
interface ScrollBarInterface {
  (value: ScrollBarOptions): ScrollBarAttribute;
}
declare class ScrollBarAttribute extends CommonMethod<ScrollBarAttribute> {
    enableNestedScroll(enabled: Optional<boolean>): ScrollBarAttribute;
    scrollBarColor(color: Optional<ColorMetrics>): ScrollBarAttribute;
}
declare const ScrollBar: ScrollBarInterface;
declare const ScrollBarInstance: ScrollBarAttribute;