import {
  Rectangle, AnimateParam, Callback, ShadowOptions, ShadowStyle, KeyboardAvoidMode, BlurStyle, HoverModeAreaType,
  DismissReason, BackgroundBlurStyleOptions, BackgroundEffectOptions
} from './common';
import { CustomBuilder } from './builder';
import { ExtendableComponent } from './extendableComponent';
import { DialogAlignment } from './alertDialog';
import { Offset, ResourceColor, Dimension, BorderRadiuses, EdgeWidths, EdgeColors, EdgeStyles } from './units';
import { BorderStyle } from './enums';
import { LengthMetrics } from '../Graphics';
import { LevelMode, LevelOrder, ImmersiveMode } from '../../@ohos.promptAction';
import { CustomBuilder } from './builder';
import { DismissDialogAction } from './actionSheet';
declare interface CustomDialogControllerOptions {
  builder: any;
  builder: CustomBuilder | ExtendableComponent;
  cancel?: () => void;
  autoCancel?: boolean;
  alignment?: DialogAlignment;
  offset?: Offset;
  customStyle?: boolean;
  gridCount?: number;
  maskColor?: ResourceColor;
  maskRect?: Rectangle;
  openAnimation?: AnimateParam;
  closeAnimation?: AnimateParam;
  showInSubWindow?: boolean;
  backgroundColor?: ResourceColor;
  cornerRadius?: Dimension | BorderRadiuses;
  isModal?: boolean;
  onWillDismiss?: Callback<DismissDialogAction>;
  width?: Dimension;
  height?: Dimension;
  borderWidth?: Dimension | EdgeWidths;
  borderColor?: ResourceColor | EdgeColors;
  borderStyle?: BorderStyle | EdgeStyles;
  shadow?: ShadowOptions | ShadowStyle;
  backgroundBlurStyle?: BlurStyle;
  backgroundBlurStyleOptions?: BackgroundBlurStyleOptions;
  backgroundEffect?: BackgroundEffectOptions;
  keyboardAvoidMode?: KeyboardAvoidMode;
  enableHoverMode?: boolean;
  hoverModeArea?: HoverModeAreaType;
  onDidAppear?: Callback<void>;
  onDidDisappear?: Callback<void>;
  onWillAppear?: Callback<void>;
  onWillDisappear?: Callback<void>;
  keyboardAvoidDistance?: LengthMetrics;
  levelMode?: LevelMode;
  levelUniqueId?: number;
  immersiveMode?: ImmersiveMode;
  levelOrder?: LevelOrder;
  focusable?: boolean;
}
declare interface DismissDialogAction {
  dismiss: Callback<void>;
  reason: DismissReason;
}
declare type PromptActionCommonState = import('../api/@ohos.promptAction').promptAction.CommonState;
declare class CustomDialogController {
  constructor(value: CustomDialogControllerOptions);
  open();
  open(): void;
  close();
  close(): void;
  getState(): PromptActionCommonState;
}