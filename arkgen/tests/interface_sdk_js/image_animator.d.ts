import { Resource } from "../../global/resource";
import image from '../../@ohos.multimedia.image'
import { CommonMethod, PixelMap } from './common'
import { AnimationStatus,FillMode } from './enums'
interface ImageAnimatorInterface {
  (): ImageAnimatorAttribute;
}
interface ImageFrameInfo {
  src: string | Resource | PixelMap;
  width?: number | string;
  height?: number | string;
  top?: number | string;
  left?: number | string;
  duration?: number;
}
declare class ImageAnimatorAttribute extends CommonMethod<ImageAnimatorAttribute> {
  images(value: Array<ImageFrameInfo>): ImageAnimatorAttribute;
  state(value: AnimationStatus): ImageAnimatorAttribute;
  duration(value: number): ImageAnimatorAttribute;
  reverse(value: boolean): ImageAnimatorAttribute;
  fixedSize(value: boolean): ImageAnimatorAttribute;
  preDecode(value: number): ImageAnimatorAttribute;
  fillMode(value: FillMode): ImageAnimatorAttribute;
  iterations(value: number): ImageAnimatorAttribute;
  monitorInvisibleArea(monitorInvisibleArea: boolean) : ImageAnimatorAttribute;
  onStart(event: () => void): ImageAnimatorAttribute;
  onPause(event: () => void): ImageAnimatorAttribute;
  onRepeat(event: () => void): ImageAnimatorAttribute;
  onCancel(event: () => void): ImageAnimatorAttribute;
  onFinish(event: () => void): ImageAnimatorAttribute;
}
declare const ImageAnimator: ImageAnimatorInterface;
declare const ImageAnimatorInstance: ImageAnimatorAttribute;