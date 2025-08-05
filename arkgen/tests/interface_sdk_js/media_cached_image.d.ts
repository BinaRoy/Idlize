import { ImageAttribute } from './image';
import image from '../../@ohos.multimedia.image';
import { ResourceStr } from './units'
import { DrawableDescriptor } from '../../@ohos.arkui.drawableDescriptor';
interface ASTCResource {
  sources: Array<string>;
  column: number;
}
interface MediaCachedImageInterface {
  (src: PixelMap | ResourceStr | DrawableDescriptor | ASTCResource): MediaCachedImageAttribute;
  (src: image.PixelMap | ResourceStr | DrawableDescriptor | ASTCResource): MediaCachedImageAttribute;
}
declare class MediaCachedImageAttribute extends ImageAttribute {}
declare const MediaCachedImage: MediaCachedImageInterface;
declare const MediaCachedImageInstance: MediaCachedImageAttribute;