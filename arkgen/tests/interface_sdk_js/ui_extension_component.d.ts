import Want from '../../@ohos.app.ability.Want'
import { Callback, ErrorCallback, BusinessError } from '../../@ohos.base'
import { CommonMethod, TerminationInfo } from './common'
import { ComponentContent } from '../ComponentContent'
declare enum DpiFollowStrategy {
  FOLLOW_HOST_DPI = 0,
  FOLLOW_UI_EXTENSION_ABILITY_DPI = 1,
}
declare enum WindowModeFollowStrategy {
    FOLLOW_HOST_WINDOW_MODE = 0,
    FOLLOW_UI_EXTENSION_ABILITY_WINDOW_MODE = 1
}
declare interface UIExtensionOptions {
  isTransferringCaller?: boolean;
  placeholder?: ComponentContent;
  areaChangePlaceholder?: Record<string, ComponentContent>;
  dpiFollowStrategy?: DpiFollowStrategy;
    windowModeFollowStrategy?: WindowModeFollowStrategy;
}
declare interface TerminationInfo {
   code: number;
   want?: import('../api/@ohos.app.ability.Want').default;
}
declare type ReceiveCallback = import('../api/@ohos.base').Callback<Record<string, Object>>;
type ReceiveCallback = Callback<Record<string, Object>>;
declare interface UIExtensionProxy {
  send(data: Record<string, Object>): void;
  sendSync(data: Record<string, Object>): Record<string, Object>;
  on(type: 'asyncReceiverRegister', callback: Callback<UIExtensionProxy>): void;
  on(type: 'syncReceiverRegister', callback: Callback<UIExtensionProxy>): void;
  off(type: 'asyncReceiverRegister', callback?: Callback<UIExtensionProxy>): void;
  off(type: 'syncReceiverRegister', callback?: Callback<UIExtensionProxy>): void;
}
interface UIExtensionComponentInterface {
  (
    want: import('../api/@ohos.app.ability.Want').default,
    options?: UIExtensionOptions
  ): UIExtensionComponentAttribute;
  (
    want: Want,
    options?: UIExtensionOptions
  ): UIExtensionComponentAttribute;
}
declare class UIExtensionComponentAttribute extends CommonMethod<UIExtensionComponentAttribute> {
  onRemoteReady(
    callback: import('../api/@ohos.base').Callback<UIExtensionProxy>
  ): UIExtensionComponentAttribute;
  onRemoteReady(
    callback: Callback<UIExtensionProxy>
  ): UIExtensionComponentAttribute;
  onReceive(callback: ReceiveCallback): UIExtensionComponentAttribute;
  onResult(
    callback: import('../api/@ohos.base').Callback<{
      code: number;
      want?: import('../api/@ohos.app.ability.Want').default;
    }>
  ): UIExtensionComponentAttribute;
  onRelease(
    callback: import('../api/@ohos.base').Callback<number>
  ): UIExtensionComponentAttribute;
  onError(
    callback: import('../api/@ohos.base').ErrorCallback
  ): UIExtensionComponentAttribute;
  onError(
    callback: ErrorCallback<BusinessError>
  ): UIExtensionComponentAttribute;
  onTerminated(callback: Callback<TerminationInfo>): UIExtensionComponentAttribute;
    onDrawReady(callback: Callback<void>): UIExtensionComponentAttribute;
}
declare const UIExtensionComponent: UIExtensionComponentInterface;
declare const UIExtensionComponentInstance: UIExtensionComponentAttribute;