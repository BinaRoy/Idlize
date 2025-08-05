import { CommonMethod,ContentModifier,CommonConfiguration } from './common'
import { ResourceColor } from './units'
declare enum LoadingProgressStyle {
  Default,
  Circular,
  Orbital,
}
interface LoadingProgressInterface {
  (): LoadingProgressAttribute;
}
declare class LoadingProgressAttribute extends CommonMethod<LoadingProgressAttribute> {
  color(value: ResourceColor): LoadingProgressAttribute;
  enableLoading(value: boolean): LoadingProgressAttribute;
  contentModifier(modifier: ContentModifier<LoadingProgressConfiguration>): LoadingProgressAttribute;
}
declare interface LoadingProgressConfiguration extends CommonConfiguration<LoadingProgressConfiguration> {
  enableLoading: boolean;
}
declare const LoadingProgress: LoadingProgressInterface;
declare const LoadingProgressInstance: LoadingProgressAttribute;