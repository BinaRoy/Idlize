import { CommonMethod} from './common';
interface EffectComponentInterface {
  (): EffectComponentAttribute;
  (options?: EffectComponentOptions): EffectComponentAttribute;
}
declare enum EffectLayer {
  NONE = 0,
  CHARGE_MOTION = 1,
  CHARGE_TEXT = 2
}
declare interface EffectComponentOptions {
  effectLayer?: EffectLayer;
}
declare class EffectComponentAttribute extends CommonMethod<EffectComponentAttribute> {
  alwaysSnapshot(enable: boolean): EffectComponentAttribute;
}
declare const EffectComponent: EffectComponentInterface;
declare const EffectComponentInstance: EffectComponentAttribute;