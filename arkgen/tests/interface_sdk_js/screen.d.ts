import { CommonMethod} from './common';
interface ScreenInterface {
  (screenId: number): ScreenAttribute;
}
declare class ScreenAttribute extends CommonMethod<ScreenAttribute> {
}
declare const Screen: ScreenInterface;
declare const ScreenInstance: ScreenAttribute;