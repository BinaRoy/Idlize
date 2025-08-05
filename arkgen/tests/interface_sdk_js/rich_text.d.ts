import { CommonMethod} from './common';
interface RichTextInterface {
  (content: string | Resource): RichTextAttribute;
  (content: string): RichTextAttribute;
}
declare class RichTextAttribute extends CommonMethod<RichTextAttribute> {
  onStart(callback: () => void): RichTextAttribute;
  onComplete(callback: () => void): RichTextAttribute;
}
declare const RichText: RichTextInterface;
declare const RichTextInstance: RichTextAttribute;