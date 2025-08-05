import { ICurve, TranslateOptions, ScaleOptions } from './common';
import { Curve } from './enums';
declare enum RouteType {
  None,
  Push,
  Pop,
}
declare enum SlideEffect {
  Left,
  Right,
  Top,
  Bottom,
  START = 5,
  END = 6,
}
declare class CommonTransition<T> {
  constructor();
  slide(value: SlideEffect): T;
  translate(value: TranslateOptions): T;
  scale(value: ScaleOptions): T;
  opacity(value: number): T;
}
declare class CommonTransition {
  slide(value: SlideEffect): this;
  translate(value: TranslateOptions): this;
  scale(value: ScaleOptions): this;
  opacity(value: number): this;
}
declare interface PageTransitionOptions {
  type?: RouteType;
  duration?: number;
  curve?: Curve | string | ICurve;
  delay?: number;
}
declare type PageTransitionCallback = (type: RouteType, progress: number) => void;
interface PageTransitionEnterInterface extends CommonTransition<PageTransitionEnterInterface> {
  (value: PageTransitionOptions): PageTransitionEnterInterface;
  onEnter(event: PageTransitionCallback): PageTransitionEnterInterface;
}
declare class PageTransitionEnter extends CommonTransition {
  static $_invoke(value: PageTransitionOptions): PageTransitionEnter;
  onEnter(event: PageTransitionCallback): this;
}
interface PageTransitionExitInterface extends CommonTransition<PageTransitionExitInterface> {
  (value: PageTransitionOptions): PageTransitionExitInterface;
  onExit(event: PageTransitionCallback): PageTransitionExitInterface;
}
declare class PageTransitionExit extends CommonTransition {
  static $_invoke(value: PageTransitionOptions): PageTransitionExit;
  onExit(event: PageTransitionCallback): this;
}
declare const PageTransitionEnter: PageTransitionEnterInterface;
declare const PageTransitionExit: PageTransitionExitInterface;