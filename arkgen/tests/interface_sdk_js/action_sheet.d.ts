import { Resource } from '../../global/resource';
import {
  VoidCallback, ResourceStr, ResourceColor, Dimension, BorderRadiuses, LocalizedEdgeColors, EdgeColors,
  EdgeWidths, LocalizedEdgeWidths, EdgeStyles, LocalizedBorderRadiuses
} from './units';
import { Callback, DismissReason, Rectangle, BlurStyle, TransitionEffect, ShadowOptions, HoverModeAreaType, 
  ShadowStyle, BackgroundBlurStyleOptions, BackgroundEffectOptions } from './common';
import { DialogButtonStyle, BorderStyle } from './enums';
import { DialogAlignment } from './alertDialog';
import { LevelOrder, LevelMode, ImmersiveMode } from '../../@ohos.promptAction';
interface SheetInfo {
  title: string | Resource;
  icon?: string | Resource;
  action: VoidCallback;
}
declare interface DismissDialogAction {
  dismiss: Callback<void>;
  dismiss(): void;
  reason: DismissReason;
}
interface ActionSheetButtonOptions {
  enabled?: boolean;
  defaultFocus?: boolean;
  style?: DialogButtonStyle;
  value: string | Resource;
  action: VoidCallback;
}
interface ActionSheetOffset {
  dx: number | string | Resource;
  dy: number | string | Resource;
}
declare type LevelMode = import('../api/@ohos.promptAction').LevelMode;
declare type ImmersiveMode = import('../api/@ohos.promptAction').ImmersiveMode;
interface ActionSheetOptions
{
  title: string | Resource;
  subtitle?: ResourceStr;
  message: string | Resource;
  confirm?: ActionSheetButtonOptions;
  cancel?: VoidCallback;
  sheets: Array<SheetInfo>;
  autoCancel?: boolean;
  alignment?: DialogAlignment;
  offset?: ActionSheetOffset;
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
declare class ActionSheet {
  static show(value: ActionSheetOptions);
}