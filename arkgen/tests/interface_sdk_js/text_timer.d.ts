import { CommonConfiguration,CommonMethod,ShadowOptions,ContentModifier } from './common'
import { ResourceColor,Length,ResourceStr } from './units'
import { FontStyle,FontWeight } from './enums'
declare class TextTimerController {
  constructor();
  start();
  start():void;
  pause();
  pause():void;
  reset();
  reset():void;
}
declare interface TextTimerConfiguration extends CommonConfiguration<TextTimerConfiguration> {
  count: number;
  isCountDown: boolean;
  started: boolean;
  elapsedTime: number;
}
interface TextTimerOptions {
  isCountDown?: boolean;
  count?: number;
  controller?: TextTimerController;
}
interface TextTimerInterface {
  (options?: TextTimerOptions): TextTimerAttribute;
}
declare class TextTimerAttribute extends CommonMethod<TextTimerAttribute> {
  format(value: string): TextTimerAttribute;
  fontColor(value: ResourceColor): TextTimerAttribute;
  fontSize(value: Length): TextTimerAttribute;
  fontStyle(value: FontStyle): TextTimerAttribute;
  fontWeight(value: number | FontWeight | ResourceStr): TextTimerAttribute;
  fontFamily(value: ResourceStr): TextTimerAttribute;
  onTimer(event: (utc: number, elapsedTime: number) => void): TextTimerAttribute;
  textShadow(value: ShadowOptions | Array<ShadowOptions>): TextTimerAttribute;
  contentModifier(modifier: ContentModifier<TextTimerConfiguration>): TextTimerAttribute;
}
declare const TextTimer: TextTimerInterface;
declare const TextTimerInstance: TextTimerAttribute;