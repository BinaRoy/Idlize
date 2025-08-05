import { Resource } from './../../../api/global/resource'
import { CommonMethod } from './common'
import { Color } from './enums'
interface HyperlinkInterface {
  (address: string | Resource, content?: string | Resource): HyperlinkAttribute;
}
declare class HyperlinkAttribute extends CommonMethod<HyperlinkAttribute> {
  color(value: Color | number | string | Resource): HyperlinkAttribute;
}
declare const Hyperlink: HyperlinkInterface;
declare const HyperlinkInterface: HyperlinkAttribute;