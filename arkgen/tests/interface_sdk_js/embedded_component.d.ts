import Want from '../../@ohos.app.ability.Want'
import { Callback, ErrorCallback ,BusinessError} from '../../@ohos.base'
import { CommonMethod, TerminationInfo } from './common'
import { EmbeddedType } from './enums'
interface EmbeddedComponentInterface {
  (
    loader: import('../api/@ohos.app.ability.Want').default,
    type: EmbeddedType
  ): EmbeddedComponentAttribute;
  (
    loader: Want,
    type: EmbeddedType
  ): EmbeddedComponentAttribute;
}
declare interface TerminationInfo {
   code: number;
   want?: import('../api/@ohos.app.ability.Want').default;
}
declare class EmbeddedComponentAttribute extends CommonMethod<EmbeddedComponentAttribute> {
  onTerminated(callback: import('../api/@ohos.base').Callback<TerminationInfo>): EmbeddedComponentAttribute;
  onTerminated(callback: Callback<TerminationInfo>): EmbeddedComponentAttribute;
  onError(callback: import('../api/@ohos.base').ErrorCallback): EmbeddedComponentAttribute;
  onError(callback: ErrorCallback<BusinessError>): EmbeddedComponentAttribute;
}
declare const EmbeddedComponent: EmbeddedComponentInterface;
declare const EmbeddedComponentInstance: EmbeddedComponentAttribute;