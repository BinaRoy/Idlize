import { CommonMethod } from './common'
import { ResourceColor, ResourceStr } from './units'
import { Resource } from '../../global/resource'
interface QRCodeInterface {
  (value: ResourceStr): QRCodeAttribute;
}
declare class QRCodeAttribute extends CommonMethod<QRCodeAttribute> {
  color(value: ResourceColor): QRCodeAttribute;
  backgroundColor(value: ResourceColor): QRCodeAttribute;
  contentOpacity(value: number | Resource): QRCodeAttribute;
}
declare const QRCode: QRCodeInterface;
declare const QRCodeInstance: QRCodeAttribute;