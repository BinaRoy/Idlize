import {
  ResourceStr, ResourceColor, VoidCallback, Offset, Dimension, BorderRadiuses, LocalizedBorderRadiuses, EdgeWidths,
  LocalizedEdgeWidths, EdgeColors, LocalizedEdgeColors, EdgeStyles
} from './units';
import { WordBreak, DialogButtonStyle, BorderStyle } from './enums';
import { Rectangle, BlurStyle, Callback, TransitionEffect, ShadowOptions, ShadowStyle, HoverModeAreaType, DismissReason,
  BackgroundBlurStyleOptions, BackgroundEffectOptions } from './common';
import { LevelOrder, ImmersiveMode, LevelMode } from '../../@ohos.promptAction';
import { DismissDialogAction } from './actionSheet';
declare enum DialogAlignment {
  Top,
  Center,
  Bottom,
  Default,
  TopStart,
  TopEnd,
  CenterStart,
  CenterEnd,
  BottomStart,
  BottomEnd,
}
declare enum DialogButtonDirection {
  AUTO = 0,
  HORIZONTAL = 1,
  VERTICAL = 2,
}
declare interface AlertDialogButtonBaseOptions {
  enabled?: boolean;
  defaultFocus?: boolean;
  style?: DialogButtonStyle;
  value: ResourceStr;
  fontColor?: ResourceColor;
  backgroundColor?: ResourceColor;
  action: VoidCallback;
}
declare interface AlertDialogButtonOptions extends AlertDialogButtonBaseOptions {
  primary?: boolean;
}
declare interface TextStyle {
  wordBreak?: WordBreak;
}
declare interface AlertDialogTextStyleOptions {
  wordBreak?: WordBreak;
}
declare type LevelOrder = import('../api/@ohos.promptAction').LevelOrder;
declare interface AlertDialogParam {
  title?: ResourceStr;
  subtitle?: ResourceStr;
  message: ResourceStr;
  autoCancel?: boolean;
  cancel?: VoidCallback;
  alignment?: DialogAlignment;
  offset?: Offset;
  gridCount?: number;
  maskRect?: Rectangle;
  showInSubWindow?: boolean;
  isModal?: boolean;
  backgroundColor?: ResourceColor;
  backgroundBlurStyle?: BlurStyle;
  backgroundBlurStyleOptions?: BackgroundBlurStyleOptions;
  backgroundEffect?: BackgroundEffectOptions;
  onWillDismiss?: Callback<DismissDialogAction>;
  transition?: TransitionEffect;
  cornerRadius?: Dimension | BorderRadiuses | LocalizedBorderRadiuses;
  width?: Dimension;
  height?: Dimension;
  borderWidth?: Dimension | EdgeWidths | LocalizedEdgeWidths;
  borderColor?: ResourceColor | EdgeColors | LocalizedEdgeColors;
  borderStyle?: BorderStyle | EdgeStyles;
  shadow?: ShadowOptions | ShadowStyle;
  textStyle?: TextStyle;
  textStyle?: AlertDialogTextStyleOptions;
  enableHoverMode?: boolean;
  hoverModeArea?: HoverModeAreaType;
  onDidAppear?: Callback<void>;
  onDidDisappear?: Callback<void>;
  onWillAppear?: Callback<void>;
  onWillDisappear?: Callback<void>;
  levelMode?: LevelMode;
  levelUniqueId?: number;
  immersiveMode?: ImmersiveMode;
  levelOrder?: LevelOrder;
}
declare interface AlertDialogParamWithConfirm extends AlertDialogParam {
  confirm?: AlertDialogButtonBaseOptions;
}
declare interface DismissDialogAction {
  dismiss: Callback<void>;
  reason: DismissReason;
}
declare interface AlertDialogParamWithButtons extends AlertDialogParam {
  primaryButton: AlertDialogButtonBaseOptions;
  secondaryButton: AlertDialogButtonBaseOptions;
}
declare interface AlertDialogParamWithOptions extends AlertDialogParam {
  buttons: Array<AlertDialogButtonOptions>;
  buttonDirection?: DialogButtonDirection;
}
declare class AlertDialog {
  static show(value: AlertDialogParamWithConfirm | AlertDialogParamWithButtons | AlertDialogParamWithOptions);
}