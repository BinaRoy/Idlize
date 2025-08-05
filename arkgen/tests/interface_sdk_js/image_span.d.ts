import { ResourceStr, ColorFilter} from './units';
import { BaseSpan } from './span';
import { ImageSpanAlignment, ImageFit } from './enums';
import { ImageErrorCallback, DrawingColorFilter } from './image';
import { PixelMap } from './common';
import image from '../../@ohos.multimedia.image';
interface ImageSpanInterface {
  (value: ResourceStr | PixelMap): ImageSpanAttribute;
}
declare class ImageSpanAttribute extends BaseSpan<ImageSpanAttribute> {
  verticalAlign(value: ImageSpanAlignment): ImageSpanAttribute;
  colorFilter(filter: ColorFilter | DrawingColorFilter): ImageSpanAttribute;
  objectFit(value: ImageFit): ImageSpanAttribute;
  onComplete(callback: ImageCompleteCallback): ImageSpanAttribute;
  onError(callback: ImageErrorCallback): ImageSpanAttribute;
  alt(value: PixelMap): ImageSpanAttribute;
}
declare const ImageSpan: ImageSpanInterface;
declare const ImageSpanInstance: ImageSpanAttribute;
type ImageCompleteCallback = (result: ImageLoadResult) => void;
declare interface ImageLoadResult {
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