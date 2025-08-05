import { ResourceColor } from './units';
import { CommonMethod} from './common';
import { LineCapStyle } from './enums';
interface DividerInterface {
  (): DividerAttribute;
}
declare class DividerAttribute extends CommonMethod<DividerAttribute> {
  vertical(value: boolean): DividerAttribute;
  color(value: ResourceColor): DividerAttribute;
  strokeWidth(value: number | string): DividerAttribute;
  lineCap(value: LineCapStyle): DividerAttribute;
}
declare const Divider: DividerInterface;
declare const DividerInstance: DividerAttribute;