import { ResourceColor, Length } from './units'
import { LengthMetrics } from '../Graphics'
import { CommonMethod, Callback, Optional } from './common'
declare enum PatternLockChallengeResult {
  CORRECT = 1,
  WRONG = 2
}
declare interface CircleStyleOptions {
  color?: ResourceColor;
  radius?: LengthMetrics;
  enableWaveEffect?: boolean;
    enableForeground?: boolean;
}
declare class PatternLockController {
  constructor();
  reset();
  reset(): void;
  setChallengeResult(result: PatternLockChallengeResult): void;
}
interface PatternLockInterface {
  (controller?: PatternLockController): PatternLockAttribute;
}
declare class PatternLockAttribute extends CommonMethod<PatternLockAttribute> {
  sideLength(value: Length): PatternLockAttribute;
  circleRadius(value: Length): PatternLockAttribute;
  backgroundColor(value: ResourceColor): PatternLockAttribute;
  regularColor(value: ResourceColor): PatternLockAttribute;
  selectedColor(value: ResourceColor): PatternLockAttribute;
  activeColor(value: ResourceColor): PatternLockAttribute;
  pathColor(value: ResourceColor): PatternLockAttribute;
  pathStrokeWidth(value: number | string): PatternLockAttribute;
  onPatternComplete(callback: (input: Array<number>) => void): PatternLockAttribute;
  autoReset(value: boolean): PatternLockAttribute;
  onDotConnect(callback: import('../api/@ohos.base').Callback<number>): PatternLockAttribute;
  onDotConnect(callback: Callback<number>): PatternLockAttribute;
  activateCircleStyle(options: Optional<CircleStyleOptions>): PatternLockAttribute;
  skipUnselectedPoint(skipped: boolean): PatternLockAttribute;
}
declare const PatternLock: PatternLockInterface;
declare const PatternLockInstance: PatternLockAttribute;