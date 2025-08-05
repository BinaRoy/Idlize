import { CommonMethod, } from './common';
import { Curve,AnimationStatus, FillMode,PlayMode} from './enums'
declare class SpringProp {
  constructor(mass: number, stiffness: number, damping: number);
}
declare class SpringMotion {
  constructor(start: number, end: number, velocity: number, prop: SpringProp);
}
declare class FrictionMotion {
  constructor(friction: number, position: number, velocity: number);
}
declare class ScrollMotion {
  constructor(position: number, velocity: number, min: number, max: number, prop: SpringProp);
}
interface AnimatorInterface {
  (value: string): AnimatorAttribute;
}
declare class AnimatorAttribute extends CommonMethod<AnimatorAttribute> {
  state(value: AnimationStatus): AnimatorAttribute;
  duration(value: number): AnimatorAttribute;
  curve(value: Curve): AnimatorAttribute;
  delay(value: number): AnimatorAttribute;
  fillMode(value: FillMode): AnimatorAttribute;
  iterations(value: number): AnimatorAttribute;
  playMode(value: PlayMode): AnimatorAttribute;
  motion(value: SpringMotion | FrictionMotion | ScrollMotion): AnimatorAttribute;
  onStart(event: () => void): AnimatorAttribute;
  onPause(event: () => void): AnimatorAttribute;
  onRepeat(event: () => void): AnimatorAttribute;
  onCancel(event: () => void): AnimatorAttribute;
  onFinish(event: () => void): AnimatorAttribute;
  onFrame(event: (value: number) => void): AnimatorAttribute;
}
declare const Animator: AnimatorInterface;
declare const AnimatorInstance: AnimatorAttribute;