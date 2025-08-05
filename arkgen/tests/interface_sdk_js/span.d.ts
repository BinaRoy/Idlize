import { ResourceColor, Dimension, BorderRadiuses, Length, Font } from './units';
import { CommonMethod, ShadowOptions } from './common';
import { LengthMetrics } from './../Graphics';
import { Resource } from './../../../api/global/resource';
import { FontStyle, FontWeight, TextCase } from './enums';
import { DecorationStyleInterface } from './styledString';
declare interface TextBackgroundStyle {
  color?: ResourceColor;
  radius?: Dimension | BorderRadiuses;
}
declare class BaseSpan<T> extends CommonMethod<T> {
  textBackgroundStyle(style: TextBackgroundStyle): T;
    baselineOffset(value: LengthMetrics): T;
}
interface SpanInterface {
  (value: string | Resource): SpanAttribute;
}
declare class SpanAttribute extends BaseSpan<SpanAttribute> {
  font(value: Font): SpanAttribute;
  fontColor(value: ResourceColor): SpanAttribute;
  fontSize(value: number | string | Resource): SpanAttribute;
  fontStyle(value: FontStyle): SpanAttribute;
  fontWeight(value: number | FontWeight | ResourceStr): SpanAttribute;
  fontWeight(value: number | FontWeight | string): SpanAttribute;
  fontFamily(value: string | Resource): SpanAttribute;
  decoration(value: DecorationStyleInterface): SpanAttribute;
  letterSpacing(value: number | ResourceStr): SpanAttribute;
  letterSpacing(value: number | string): SpanAttribute;
  textCase(value: TextCase): SpanAttribute;
  lineHeight(value: Length): SpanAttribute;
  textShadow(value: ShadowOptions | Array<ShadowOptions>): SpanAttribute;
}
declare const Span: SpanInterface;
declare const SpanInstance: SpanAttribute;