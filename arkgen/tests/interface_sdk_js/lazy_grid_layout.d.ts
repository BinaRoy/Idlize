import { CommonMethod } from './common';
import { LengthMetrics } from '../Graphics';
interface LazyVGridLayoutInterface {
  (): LazyVGridLayoutAttribute;
}
declare class LazyGridLayoutAttribute<T> extends CommonMethod<T> {
  rowsGap(value: LengthMetrics): T;
  columnsGap(value: LengthMetrics): T;
}
declare class LazyVGridLayoutAttribute extends LazyGridLayoutAttribute<LazyVGridLayoutAttribute> {
  columnsTemplate(value: string): LazyVGridLayoutAttribute;
}
declare const LazyVGridLayout: LazyVGridLayoutInterface;
declare const LazyVGridLayoutInstance: LazyVGridLayoutAttribute;