import image from '../../@ohos.multimedia.image';
import drawing from '../../@ohos.graphics.drawing';
import matrix4 from '../../@ohos.matrix4'
import { BusinessError } from '../../@ohos.base';
import { DrawableDescriptor } from '../../@ohos.arkui.drawableDescriptor';
import { ImageAIOptions, ImageAnalyzerConfig } from './imageCommon';
import { ResourceStr, ResourceColor, ColorFilter, EdgeWidths, ColorMetrics } from './units';
import { ImageFit, ImageRepeat, CopyOptions } from './enums';
import { Resource } from '../../global/resource';
import { CommonMethod, PointLightStyle, PixelMap } from './common'
declare type DrawableDescriptor = import ('../api/@ohos.arkui.drawableDescriptor').DrawableDescriptor;
declare type DrawingColorFilter = import('../api/@ohos.graphics.drawing').default.ColorFilter;
declare type DrawingColorFilter = drawing.ColorFilter;
declare type ResolutionQuality  = import('../api/@ohos.multimedia.image').default.ResolutionQuality;
declare type ResolutionQuality = image.ResolutionQuality;
declare type DrawingLattice  = import('../api/@ohos.graphics.drawing').default.Lattice;
declare type DrawingLattice = drawing.Lattice;
declare type ImageMatrix = import ('../api/@ohos.matrix4').default.Matrix4Transit;
declare type ImageMatrix = matrix4.Matrix4Transit;
declare type BusinessError<T> = import('../api/@ohos.base').BusinessError<T>;
declare enum ImageRenderMode {
  Original,
  Template,
}
declare enum ImageContent {
  EMPTY = 0,
}
declare enum DynamicRangeMode {
  HIGH = 0,
  CONSTRAINT = 1,
  STANDARD = 2,
}
declare enum ImageInterpolation {
  None,
  Low,
  Medium,
  High,
}
declare enum ImageRotateOrientation {
  AUTO = 0,
  UP = 1,
  RIGHT = 2,
  DOWN = 3,
  LEFT = 4,
  UP_MIRRORED = 5,
  RIGHT_MIRRORED = 6,
  DOWN_MIRRORED = 7,
  LEFT_MIRRORED = 8,
}
export interface ImageCompleteEvent {
  width: number;
  height: number;
  componentWidth: number;
  componentHeight: number;
  loadingStatus: number;
  contentWidth: number;
  contentHeight: number;
  contentOffsetX: number;
  contentOffsetY: number;
}
interface ImageInterface {
  (src: PixelMap | ResourceStr | DrawableDescriptor): ImageAttribute;
  (src: PixelMap | ResourceStr | DrawableDescriptor | ImageContent): ImageAttribute;
  (src: PixelMap | ResourceStr | DrawableDescriptor, imageAIOptions: ImageAIOptions): ImageAttribute;
}
interface ImageSourceSize {
  width: number;
  height: number;
}
declare class ColorContent {
  static readonly ORIGIN: ColorContent;
}
declare class ImageAttribute extends CommonMethod<ImageAttribute> {
  alt(value: string | Resource | PixelMap): ImageAttribute;
  matchTextDirection(value: boolean): ImageAttribute;
  fitOriginalSize(value: boolean): ImageAttribute;
  fillColor(value: ResourceColor): ImageAttribute;
  fillColor(color: ResourceColor | ColorContent): ImageAttribute;
  fillColor(color: ResourceColor | ColorContent | ColorMetrics): ImageAttribute;
  objectFit(value: ImageFit): ImageAttribute;
  imageMatrix(matrix: ImageMatrix): ImageAttribute;
  objectRepeat(value: ImageRepeat): ImageAttribute;
  autoResize(value: boolean): ImageAttribute;
  renderMode(value: ImageRenderMode): ImageAttribute;
  dynamicRangeMode(value: DynamicRangeMode): ImageAttribute;
 hdrBrightness(brightness: number): ImageAttribute;
  interpolation(value: ImageInterpolation): ImageAttribute;
  sourceSize(value: ImageSourceSize): ImageAttribute;
  syncLoad(value: boolean): ImageAttribute;
  colorFilter(value: ColorFilter | DrawingColorFilter): ImageAttribute;
  copyOption(value: CopyOptions): ImageAttribute;
  draggable(value: boolean): ImageAttribute;
  pointLight(value: PointLightStyle): ImageAttribute;
  edgeAntialiasing(value: number): ImageAttribute;
  onComplete(
    callback: (event?: {
      width: number;
      height: number;
      componentWidth: number;
      componentHeight: number;
      loadingStatus: number;
      contentWidth: number;
      contentHeight: number;
      contentOffsetX: number;
      contentOffsetY: number;
    }) => void,
  ): ImageAttribute;
  onComplete(callback: ImageOnCompleteCallback): ImageAttribute;
  onError(callback: ImageErrorCallback): ImageAttribute;
  onFinish(event: () => void): ImageAttribute;
  enableAnalyzer(enable: boolean): ImageAttribute;
  analyzerConfig(config: ImageAnalyzerConfig): ImageAttribute;
  resizable(value: ResizableOptions): ImageAttribute;
  privacySensitive(supported: boolean): ImageAttribute;
  enhancedImageQuality(imageQuality: ResolutionQuality): ImageAttribute;
  orientation(orientation: ImageRotateOrientation) : ImageAttribute;
}
declare const Image: ImageInterface;
declare const ImageInstance: ImageAttribute;
type ImageErrorCallback = (error: ImageError) => void;
type ImageOnCompleteCallback = (loadEvent?: ImageCompleteEvent) => void;
declare interface ImageError {
  componentWidth: number;
  componentHeight: number;
  message: string
  error?: BusinessError<void>;
}
declare interface ResizableOptions {
  slice?: EdgeWidths;
  lattice?: DrawingLattice;
}