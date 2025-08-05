import { Content } from '../../@ohos.arkui.node';
declare type Content = import('../api/@ohos.arkui.node').Content;
declare class ContentSlotAttribute {
}
interface ContentSlotInterface {
  (content: Content): ContentSlotAttribute;
}
declare const ContentSlot: ContentSlotInterface;