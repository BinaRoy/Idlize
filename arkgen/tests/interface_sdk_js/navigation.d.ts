import window from '../../@ohos.window';
import { Resource } from '../../global/resource';
import { TextModifier } from '../../arkui/TextModifier';
import { LengthMetrics } from '../../arkui/Graphics';
import { Callback, BlurStyle, CommonMethod, Optional, LayoutSafeAreaType, LayoutSafeAreaEdge, BackgroundEffectOptions, BackgroundBlurStyleOptions, PixelMap, Bindable } from './common'
import { CustomBuilder, PageMapBuilder } from './builder'
import { Length, ResourceStr, ResourceColor, Dimension, VoidCallback } from './units'
import { TitleHeight } from './enums'
import { SymbolGlyphModifier } from '../../arkui/SymbolGlyphModifier'
import { NavDestinationContext, NavDestinationMode } from './navDestination'
declare type SystemBarStyle = import('../api/@ohos.window').default.SystemBarStyle;
declare type SystemBarStyle = window.SystemBarStyle;
declare interface NavigationCommonTitle {
  main: string | Resource;
  sub: string | Resource;
}
declare interface NavigationCustomTitle {
  builder: CustomBuilder;
  height: TitleHeight | Length;
}
declare enum NavigationMode {
  Stack,
  Split,
  Auto,
}
declare enum NavBarPosition {
  Start,
  End,
}
declare enum NavigationTitleMode {
  Free = 0,
  Full,
  Mini,
}
declare interface NavigationMenuItem {
  value: string | Resource;
  icon?: string | Resource;
  symbolIcon?: SymbolGlyphModifier;
  isEnabled?: boolean;
  action?: () => void;
}
declare interface PopInfo {
  info: NavPathInfo;
  result: Object;
}
declare class NavPathInfo {
  constructor(name: string, param: unknown, onPop?: import('../api/@ohos.base').Callback<PopInfo>, isEntry?: boolean);
  constructor(name: string, param: Object | null | undefined, onPop?: Callback<PopInfo>, isEntry?: boolean);
  name: string;
  param?: unknown;
  param?: Object | null | undefined;
  onPop?: import('../api/@ohos.base').Callback<PopInfo>;
  onPop?: Callback<PopInfo>;
  isEntry?: boolean;
  navDestinationId?: string;
}
declare enum LaunchMode {
  STANDARD = 0,
  MOVE_TO_TOP_SINGLETON = 1,
  POP_TO_SINGLETON = 2,
  NEW_INSTANCE = 3,
}
declare interface NavigationOptions {
  launchMode?: LaunchMode;
  animated?: boolean;
}
declare class NavPathStack {
  constructor();
  pushPath(info: NavPathInfo, animated?: boolean): void;
  pushPath(info: NavPathInfo, options?: NavigationOptions): void;
  pushDestination(info: NavPathInfo, animated?: boolean): Promise<void>;
  pushDestination(info: NavPathInfo, options?: NavigationOptions): Promise<void>;
  pushPathByName(name: string, param: unknown, animated?: boolean): void;
  pushPathByName(name: string, param: Object | null | undefined, animated?: boolean): void;
  pushPathByName(name: string, param: Object, onPop: import('../api/@ohos.base').Callback<PopInfo>, animated?: boolean): void;
  pushPathByName(name: string, param: Object, onPop: Callback<PopInfo>, animated?: boolean): void;
  pushDestinationByName(name: string, param: Object, animated?: boolean): Promise<void>;
  pushDestinationByName(name: string, param: Object, onPop: import('../api/@ohos.base').Callback<PopInfo>, animated?: boolean): Promise<void>;
  pushDestinationByName(name: string, param: Object, onPop: Callback<PopInfo>, animated?: boolean): Promise<void>;
  replacePath(info: NavPathInfo, animated?: boolean): void;
  replacePath(info: NavPathInfo, options?: NavigationOptions): void;
  replaceDestination(info: NavPathInfo, options?: NavigationOptions): Promise<void>;
  replacePathByName(name: string, param: Object, animated?: boolean): void;
  removeByIndexes(indexes: Array<number>): number;
  removeByName(name: string): number;
  removeByNavDestinationId(navDestinationId: string): boolean;
  pop(animated?: boolean): NavPathInfo | undefined;
  pop(result: Object, animated?: boolean): NavPathInfo | undefined;
  popToName(name: string, animated?: boolean): number;
  popToName(name: string, result: Object, animated?: boolean): number;
  popToIndex(index: number, animated?: boolean): void;
  popToIndex(index: number, result: Object, animated?: boolean): void;
  moveToTop(name: string, animated?: boolean): number;
  moveIndexToTop(index: number, animated?: boolean): void;
  clear(animated?: boolean): void;
  getAllPathName(): Array<string>;
  getParamByIndex(index: number): unknown | undefined;
  getParamByIndex(index: number): Object | null | undefined;
  getParamByName(name: string): Array<unknown>;
  getParamByName(name: string): Array<Object | null | undefined>;
  getIndexByName(name: string): Array<number>;
  getParent(): NavPathStack | null;
  size(): number;
  disableAnimation(value: boolean): void;
  setInterception(interception: NavigationInterception): void;
  getPathStack(): Array<NavPathInfo>;
  setPathStack(pathStack: Array<NavPathInfo>, animated?: boolean): void;
}
declare type NavBar = 'navBar'
declare type InterceptionShowCallback = (from: NavDestinationContext|NavBar, to: NavDestinationContext|NavBar, operation: NavigationOperation, isAnimated: boolean) => void;
declare type InterceptionModeCallback = (mode: NavigationMode) => void;
declare interface NavigationInterception {
  willShow?: InterceptionShowCallback;
  didShow?: InterceptionShowCallback;
  modeChange?: InterceptionModeCallback;
}
declare interface HomePathInfo {
  name: string;
  param?: Object;
}
interface NavigationInterface {
  (): NavigationAttribute;
  (pathInfos: NavPathStack): NavigationAttribute;
  (pathInfos: NavPathStack, homeDestination: HomePathInfo): NavigationAttribute;
}
declare enum ToolbarItemStatus {
  NORMAL = 0,
  DISABLED = 1,
  ACTIVE = 2,
}
declare enum NavigationOperation {
  PUSH = 1,
  POP = 2,
  REPLACE = 3,
}
declare interface ToolbarItem {
  value: ResourceStr;
  icon?: ResourceStr;
  symbolIcon?: SymbolGlyphModifier;
  action?: () => void;
  status?: ToolbarItemStatus;
  activeIcon?: ResourceStr;
  activeSymbolIcon?: SymbolGlyphModifier;
}
declare interface NavigationTitleOptions {
  backgroundColor?: ResourceColor;
  backgroundBlurStyle?: BlurStyle;
  backgroundBlurStyleOptions?: BackgroundBlurStyleOptions;
  backgroundEffect?: BackgroundEffectOptions;
  barStyle?: BarStyle;
  paddingStart?: LengthMetrics;
  paddingEnd?: LengthMetrics;
  mainTitleModifier?: TextModifier;
  subTitleModifier?: TextModifier;
  enableHoverMode?: boolean;
}
declare enum BarStyle {
  STANDARD = 0,
  STACK = 1,
  SAFE_AREA_PADDING = 2,
}
declare interface NavigationToolbarOptions {
  backgroundColor?: ResourceColor;
  backgroundBlurStyle?: BlurStyle;
  backgroundBlurStyleOptions?: BackgroundBlurStyleOptions;
  backgroundEffect?: BackgroundEffectOptions;
  moreButtonOptions?: MoreButtonOptions;
  barStyle?: BarStyle;
  hideItemValue?: boolean
}
declare interface NavigationMenuOptions {
  moreButtonOptions?: MoreButtonOptions;
}
declare interface MoreButtonOptions {
  backgroundBlurStyle?: BlurStyle;
  backgroundBlurStyleOptions?: BackgroundBlurStyleOptions;
  backgroundEffect?: BackgroundEffectOptions;
}
declare class NavigationAttribute extends CommonMethod<NavigationAttribute> {
  navBarWidth(value: Length): NavigationAttribute;
  navBarWidth(value: Length | Bindable<Length>): NavigationAttribute;
  navBarPosition(value: NavBarPosition): NavigationAttribute;
  navBarWidthRange(value: [Dimension, Dimension]): NavigationAttribute;
  minContentWidth(value: Dimension): NavigationAttribute;
  mode(value: NavigationMode): NavigationAttribute;
  backButtonIcon(value: string | PixelMap | Resource | SymbolGlyphModifier): NavigationAttribute;
  backButtonIcon(icon: string | PixelMap | Resource | SymbolGlyphModifier, accessibilityText?: ResourceStr): NavigationAttribute;
  hideNavBar(value: boolean): NavigationAttribute;
  title(value: ResourceStr | CustomBuilder | NavigationCommonTitle | NavigationCustomTitle, options?: NavigationTitleOptions): NavigationAttribute;
  subTitle(value: string): NavigationAttribute;
  hideTitleBar(value: boolean): NavigationAttribute;
  hideTitleBar(hide: boolean, animated: boolean): NavigationAttribute;
  hideBackButton(value: boolean): NavigationAttribute;
  titleMode(value: NavigationTitleMode): NavigationAttribute;
  menus(value: Array<NavigationMenuItem> | CustomBuilder): NavigationAttribute;
  menus(items: Array<NavigationMenuItem> | CustomBuilder, options?: NavigationMenuOptions): NavigationAttribute;
  toolBar(value: object | CustomBuilder): NavigationAttribute;
  toolbarConfiguration(value: Array<ToolbarItem> | CustomBuilder, options?: NavigationToolbarOptions): NavigationAttribute;
  hideToolBar(value: boolean): NavigationAttribute;
  hideToolBar(hide: boolean, animated: boolean): NavigationAttribute;
  enableToolBarAdaptation(enable: Optional<boolean>): NavigationAttribute;
  onTitleModeChange(callback: (titleMode: NavigationTitleMode) => void): NavigationAttribute;
  onNavBarStateChange(callback: (isVisible: boolean) => void): NavigationAttribute;
  onNavigationModeChange(callback: (mode: NavigationMode) => void): NavigationAttribute;
  navDestination(builder: (name: string, param: unknown) => void): NavigationAttribute;
  navDestination(builder: PageMapBuilder | undefined): NavigationAttribute;
  customNavContentTransition(delegate: (from: NavContentInfo, to: NavContentInfo, operation: NavigationOperation) => NavigationAnimatedTransition | undefined): NavigationAttribute;
  ignoreLayoutSafeArea(types?: Array<LayoutSafeAreaType>, edges?: Array<LayoutSafeAreaEdge>): NavigationAttribute;
  systemBarStyle(style: Optional<SystemBarStyle>): NavigationAttribute;
  recoverable(recoverable: Optional<boolean>): NavigationAttribute;
  enableDragBar(isEnabled: Optional<boolean>): NavigationAttribute;
  enableModeChangeAnimation(isEnabled: Optional<boolean>): NavigationAttribute;
  splitPlaceholder(placeholder: ComponentContent): NavigationAttribute;
}
declare interface NavigationAnimatedTransition {
  onTransitionEnd?: (success: boolean) => void
  timeout?: number;
  isInteractive?: boolean;
  transition: (transitionProxy: NavigationTransitionProxy) => void
}
declare interface NavigationTransitionProxy {
  from: NavContentInfo;
  to: NavContentInfo;
  isInteractive?: boolean;
  finishTransition(): void;
  cancelTransition?(): void;
  cancelTransition?: VoidCallback;
  updateTransition?(progress: number): void;
  updateTransition?: UpdateTransitionCallback;
}
declare type UpdateTransitionCallback = (progress: number) => void;
declare interface NavContentInfo {
  name?: string;
  index: number;
  mode?: NavDestinationMode;
  param?: Object;
  navDestinationId?: string;
}
declare const Navigation: NavigationInterface;
declare const NavigationInstance: NavigationAttribute;