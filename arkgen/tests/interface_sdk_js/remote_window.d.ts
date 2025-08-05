import { CommonMethod } from './common';
interface RRect {
  left: number;
  top: number;
  width: number;
  height: number;
  radius: number;
}
interface WindowAnimationTarget {
  readonly bundleName: string;
  readonly abilityName: string;
  readonly windowBounds: RRect;
  readonly missionId: number;
}
interface RemoteWindowInterface {
  (target: WindowAnimationTarget): RemoteWindowAttribute;
}
declare class RemoteWindowAttribute extends CommonMethod<RemoteWindowAttribute> {}
declare const RemoteWindow: RemoteWindowInterface;
declare const RemoteWindowInstance: RemoteWindowAttribute;