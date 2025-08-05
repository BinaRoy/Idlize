import { ResourceColor,Length, PX , VP , LPX, Font, ResourceStr } from './units'
import { Resource } from '../../global/resource';
import { CommonMethod, Optional,ContentModifier,CommonConfiguration } from './common'
import { LinearGradient } from './dataPanel'
import { LengthMetrics } from '../Graphics'
declare interface ProgressOptions<Type extends keyof ProgressStyleMap> {
  value: number;
  total?: number;
  style?: ProgressStyle
  type?: Type
}
declare interface ProgressOptions {
  value: number;
  total?: number;
  type?: ProgressType
}
declare enum ProgressType {
  Linear = 0,
  Ring = 1,
  Eclipse = 2,
  ScaleRing = 3,
  Capsule = 4
}
declare enum ProgressStatus {
  LOADING,
  PROGRESSING
}
declare interface ProgressStyleOptions extends CommonProgressStyleOptions {
  strokeWidth?: Length;
  scaleCount?: number;
  scaleWidth?: Length;
}
declare interface CommonProgressStyleOptions {
  enableSmoothEffect?: boolean;
}
declare interface ScanEffectOptions {
  enableScanEffect?: boolean;
}
declare interface EclipseStyleOptions extends CommonProgressStyleOptions {
}
declare interface ScaleRingStyleOptions extends CommonProgressStyleOptions {
  strokeWidth?: Length;
  scaleWidth?: Length;
  scaleCount?: number;
}
declare interface RingStyleOptions extends ScanEffectOptions, CommonProgressStyleOptions {
  strokeWidth?: Length;
  shadow?: boolean;
  status?: ProgressStatus;
}
declare interface LinearStyleOptions extends ScanEffectOptions, CommonProgressStyleOptions {
  strokeWidth?: Length;
  strokeRadius?: PX | VP | LPX | Resource;
}
declare interface CapsuleStyleOptions extends ScanEffectOptions, CommonProgressStyleOptions {
  borderColor?: ResourceColor;
  borderWidth?: Length;
  content?: ResourceStr;
  font?: Font;
  fontColor?: ResourceColor;
  showDefaultPercentage?: boolean;
  borderRadius?: LengthMetrics;
}
declare enum ProgressStyle {
  Linear,
  Ring,
  Eclipse,
  ScaleRing,
  Capsule,
}
declare interface ProgressStyleMap {
  [ProgressType.Linear]: LinearStyleOptions | ProgressStyleOptions;
  [ProgressType.Ring]: RingStyleOptions | ProgressStyleOptions;
  [ProgressType.Eclipse]: EclipseStyleOptions | ProgressStyleOptions;
  [ProgressType.ScaleRing]: ScaleRingStyleOptions | ProgressStyleOptions;
  [ProgressType.Capsule]: CapsuleStyleOptions | ProgressStyleOptions;
}
interface ProgressInterface {
  <Type extends keyof ProgressStyleMap>(options: ProgressOptions<Type>): ProgressAttribute<Type>;
  (options: ProgressOptions): ProgressAttribute;
}
declare class ProgressAttribute<Type extends keyof ProgressStyleMap = keyof ProgressStyleMap,
  Style extends ProgressStyleMap[Type] = ProgressStyleMap[Type]> extends CommonMethod<ProgressAttribute<Type>> {
  value(value: number): ProgressAttribute<Type>;
  color(value: ResourceColor | LinearGradient): ProgressAttribute<Type>;
  style(value: Style): ProgressAttribute<Type>;
  privacySensitive(isPrivacySensitiveMode: Optional<boolean>): ProgressAttribute<Type>;
  contentModifier(modifier: ContentModifier<ProgressConfiguration>): ProgressAttribute<Type>;
}
declare class ProgressAttribute extends CommonMethod<ProgressAttribute> {
  value(value: number): ProgressAttribute;
  color(value: ResourceColor | LinearGradient): ProgressAttribute;
  style(value: LinearStyleOptions | RingStyleOptions | CapsuleStyleOptions | ProgressStyleOptions): ProgressAttribute;
  privacySensitive(isPrivacySensitiveMode: Optional<boolean>): ProgressAttribute;
  contentModifier(modifier: ContentModifier<ProgressConfiguration>): ProgressAttribute;
}
declare interface ProgressConfiguration extends CommonConfiguration<ProgressConfiguration> {
  value: number;
  total: number;
}
declare const Progress: ProgressInterface;
declare const ProgressInstance: ProgressAttribute<keyof ProgressStyleMap>;