import { ResourceColor, Length } from './units'
import { CommonMethod, ContentModifier, CommonConfiguration, MultiShadowOptions } from './common'
declare enum DataPanelType {
  Line,
  Circle,
}
declare interface ColorStop {
  color: ResourceColor;
  offset: Length;
}
declare class LinearGradient {
  constructor(colorStops: ColorStop[]);
}
declare interface DataPanelShadowOptions extends MultiShadowOptions {
  colors?: Array<ResourceColor | LinearGradient>;
}
declare interface DataPanelOptions {
  values: number[];
  max?: number;
  type?: DataPanelType;
}
interface DataPanelInterface {
  (options: DataPanelOptions): DataPanelAttribute;
}
declare interface DataPanelConfiguration extends CommonConfiguration<DataPanelConfiguration> {
  values: number[];
  maxValue: number;
}
declare class DataPanelAttribute extends CommonMethod<DataPanelAttribute> {
  closeEffect(value: boolean): DataPanelAttribute;
  valueColors(value: Array<ResourceColor | LinearGradient>): DataPanelAttribute;
  trackBackgroundColor(value: ResourceColor): DataPanelAttribute;
  strokeWidth(value: Length): DataPanelAttribute;
  trackShadow(value: DataPanelShadowOptions): DataPanelAttribute;
  contentModifier(modifier: ContentModifier<DataPanelConfiguration>): DataPanelAttribute;
}
declare const DataPanel: DataPanelInterface
declare const DataPanelInstance: DataPanelAttribute;