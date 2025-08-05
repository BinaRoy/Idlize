import { Callback, Optional, CommonMethod, Bindable } from './common'
import { CustomBuilder } from './builder'
import { ResourceStr } from './units'
import { ComponentContent } from '../ComponentContent'
declare enum RefreshStatus {
  Inactive,
  Drag,
  OverDrag,
  Refresh,
  Done,
}
interface RefreshOptions {
  refreshing: boolean;
  refreshing: boolean | Bindable<boolean>;
  offset?: number | string;
  friction?: number | string;
  promptText?: ResourceStr;
  builder?: CustomBuilder;
  refreshingContent?: ComponentContent;
}
interface RefreshInterface {
  (value: RefreshOptions): RefreshAttribute;
}
declare class RefreshAttribute extends CommonMethod<RefreshAttribute> {
  onStateChange(callback: (state: RefreshStatus) => void): RefreshAttribute;
  onRefreshing(callback: () => void): RefreshAttribute;
  refreshOffset(value: number): RefreshAttribute;
  pullToRefresh(value: boolean): RefreshAttribute;
  onOffsetChange(callback: Callback<number>): RefreshAttribute;
  pullDownRatio(ratio: Optional<number>): RefreshAttribute;
  maxPullDownDistance(distance: Optional<number>): RefreshAttribute;
}
declare const Refresh: RefreshInterface;
declare const RefreshInstance: RefreshAttribute;