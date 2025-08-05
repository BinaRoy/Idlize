import window from '../../@ohos.window';
import { FoldStatus, Alignment, AppRotation } from './enums';
import { CommonMethod } from './common';
declare type WindowStatusType = import('../api/@ohos.window').default.WindowStatusType;
declare type WindowStatusType = window.WindowStatusType
interface FolderStackOptions {
  upperItems?: Array<string>;
}
interface FolderStackInterface {
  (options?: FolderStackOptions): FolderStackAttribute;
}
interface OnFoldStatusChangeInfo {
  foldStatus: FoldStatus
}
declare type OnFoldStatusChangeCallback = (event: OnFoldStatusChangeInfo) => void;
declare type OnHoverStatusChangeCallback = (param: HoverEventParam) => void;
declare class FolderStackAttribute extends CommonMethod<FolderStackAttribute> {
  alignContent(value: Alignment): FolderStackAttribute;
  onFolderStateChange(callback: OnFoldStatusChangeCallback): FolderStackAttribute;
  onHoverStatusChange(handler: OnHoverStatusChangeCallback): FolderStackAttribute;
  enableAnimation(value: boolean): FolderStackAttribute;
  autoHalfFold(value: boolean): FolderStackAttribute;
}
declare interface HoverEventParam {
  foldStatus: FoldStatus
  isHoverMode: boolean
  appRotation: AppRotation
  windowStatusType: WindowStatusType
}
declare const FolderStack: FolderStackInterface;
declare const FolderStackInstance: FolderStackAttribute;