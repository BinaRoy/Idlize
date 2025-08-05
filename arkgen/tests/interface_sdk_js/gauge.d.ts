import { CommonMethod,CommonConfiguration,ContentModifier,MultiShadowOptions,Optional  } from './common'
import { CustomBuilder } from './builder'
import { ResourceStr,Dimension,ResourceColor,Length } from './units'
import { LinearGradient } from './dataPanel'
interface GaugeOptions {
  value: number;
  min?: number;
  max?: number;
}
interface GaugeInterface {
  (options: GaugeOptions): GaugeAttribute;
}
declare interface GaugeShadowOptions extends MultiShadowOptions {}
declare interface GaugeIndicatorOptions {
  icon?: ResourceStr;
  space?: Dimension;
}
declare interface GaugeConfiguration extends CommonConfiguration<GaugeConfiguration> {
  value: number;
  min: number;
  max: number;
}
declare class GaugeAttribute extends CommonMethod<GaugeAttribute> {
  value(value: number): GaugeAttribute;
  startAngle(angle: number): GaugeAttribute;
  endAngle(angle: number): GaugeAttribute;
  colors(colors: ResourceColor | LinearGradient | Array<[ResourceColor | LinearGradient, number]>): GaugeAttribute;
  strokeWidth(length: Length): GaugeAttribute;
  description(value: CustomBuilder): GaugeAttribute;
  trackShadow(value: GaugeShadowOptions): GaugeAttribute;
  indicator(value: GaugeIndicatorOptions): GaugeAttribute;
  privacySensitive(isPrivacySensitiveMode: Optional<boolean>): GaugeAttribute;
  contentModifier(modifier: ContentModifier<GaugeConfiguration>): GaugeAttribute;
}
declare const Gauge: GaugeInterface;
declare const GaugeInstance: GaugeAttribute;