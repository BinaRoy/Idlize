import { CommonMethod, Optional } from './common';
import { ColorMetrics, LengthMetrics } from './units';
declare class LinearIndicatorController {
  constructor();
  setProgress(index: number, progress: number): void;
  start(options?: LinearIndicatorStartOptions): void;
  pause(): void;
  stop(): void;
}
declare interface LinearIndicatorStartOptions {
  interval?: number;
  duration?: number;
}
declare interface LinearIndicatorStyle {
  space?: LengthMetrics;
  strokeWidth?: LengthMetrics;
  strokeRadius?: LengthMetrics;
  trackBackgroundColor?: ColorMetrics;
  trackColor?: ColorMetrics;
}
interface LinearIndicatorInterface {
   (count?: number, controller?: LinearIndicatorController): LinearIndicatorAttribute;
}
declare class LinearIndicatorAttribute extends CommonMethod<LinearIndicatorAttribute> {
  indicatorStyle(style: Optional<LinearIndicatorStyle>): LinearIndicatorAttribute;
  indicatorLoop(loop: Optional<boolean>): LinearIndicatorAttribute;
  onChange(callback: Optional<OnLinearIndicatorChangeCallback>): LinearIndicatorAttribute;
}
declare type OnLinearIndicatorChangeCallback = (index: number, progress: number) => void;
declare const LinearIndicator: LinearIndicatorInterface;
declare const LinearIndicatorInstance: LinearIndicatorAttribute