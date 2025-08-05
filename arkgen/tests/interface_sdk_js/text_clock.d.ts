import { CommonConfiguration, CommonMethod, ShadowOptions, ContentModifier, Optional, DateTimeOptions } from './common'
import { ResourceColor, Length, ResourceStr } from './units'
import { FontStyle, FontWeight } from './enums'
declare class TextClockController {
  constructor();
  start();
  start(): void;
  stop();
  stop(): void;
}
declare interface TextClockConfiguration extends CommonConfiguration<TextClockConfiguration> {
  timeZoneOffset: number;
  started: boolean;
  timeValue: number;
}
declare interface TextClockOptions {
  timeZoneOffset?: number;
  controller?: TextClockController
}
interface TextClockInterface {
  (options?: TextClockOptions): TextClockAttribute;
}
declare class TextClockAttribute extends CommonMethod<TextClockAttribute> {
  format(value: ResourceStr): TextClockAttribute;
  onDateChange(event: (value: number) => void): TextClockAttribute;
  fontColor(value: ResourceColor): TextClockAttribute;
  fontSize(value: Length): TextClockAttribute;
  fontStyle(value: FontStyle): TextClockAttribute;
  fontWeight(value: number | FontWeight | string): TextClockAttribute;
  fontFamily(value: ResourceStr): TextClockAttribute;
  textShadow(value: ShadowOptions | Array<ShadowOptions>): TextClockAttribute;
  fontFeature(value: string): TextClockAttribute;
  contentModifier(modifier: ContentModifier<TextClockConfiguration>): TextClockAttribute;
  dateTimeOptions(dateTimeOptions: Optional<DateTimeOptions>): TextClockAttribute;
}
declare const TextClock: TextClockInterface;
declare const TextClockInstance: TextClockAttribute;