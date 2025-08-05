import { Resource } from '../../global/resource'
import { CommonMethod, Callback, LayoutSafeAreaType, LayoutSafeAreaEdge, Optional, PixelMap } from './common'
import { CustomBuilder } from './builder'
import { Length, ResourceStr } from './units'
import { TitleHeight, Curve } from './enums'
import {
  NavPathInfo, NavPathStack, NavigationTitleOptions, NavigationMenuItem, NavigationToolbarOptions,
  ToolbarItem, NavigationMenuOptions, NavigationOperation, SystemBarStyle
} from './navigation'
import { SymbolGlyphModifier } from '../../arkui/SymbolGlyphModifier'
import window from '../../@ohos.window'
import image from '../../@ohos.multimedia.image'
import { Scroller } from './scroll'
declare type Orientation = import('../api/@ohos.window').default.Orientation;
declare type Orientation = window.Orientation;
declare interface NavDestinationCommonTitle {
  main: string | Resource;
  sub: string | Resource;
}
declare interface NavDestinationCustomTitle {
  builder: CustomBuilder;
  height: TitleHeight | Length;
}
declare enum NavigationSystemTransitionType {
  DEFAULT = 0,
  NONE = 1,
  TITLE = 2,
  CONTENT = 3,
  FADE = 4,
  EXPLODE = 5,
  SLIDE_RIGHT = 6,
  SLIDE_BOTTOM = 7,
}
declare enum NavDestinationMode {
  STANDARD = 0,
  DIALOG = 1,
}
declare enum NavDestinationActiveReason {
  TRANSITION = 0,
  CONTENT_COVER = 1,
  SHEET = 2,
  DIALOG = 3,
  OVERLAY = 4,
  APP_STATE = 5,
}
declare interface NavDestinationInterface {
  (): NavDestinationAttribute;
}
declare interface RouteMapConfig {
  name: string;
  pageSourceFile: string;
  data: Object
}
declare interface NavDestinationContext {
  pathInfo: NavPathInfo;
  pathStack: NavPathStack;
  navDestinationId?: string;
  getConfigInRouteMap(): RouteMapConfig | undefined;
}
declare interface NestedScrollInfo {
  parent: Scroller;
  child: Scroller;
}
declare interface NavDestinationTransition {
  onTransitionEnd?: Callback<void>;
  duration?: number;
  curve?: Curve;
  delay?: number;
  event: Callback<void>;
}
declare class NavDestinationAttribute extends CommonMethod<NavDestinationAttribute> {
  title(value: string | CustomBuilder | NavDestinationCommonTitle | NavDestinationCustomTitle | Resource,
        options?: NavigationTitleOptions): NavDestinationAttribute;
  hideTitleBar(value: boolean): NavDestinationAttribute;
  hideTitleBar(hide: boolean, animated: boolean): NavDestinationAttribute;
  hideBackButton(hide: Optional<boolean>): NavDestinationAttribute;
  onShown(callback: () => void): NavDestinationAttribute;
  onHidden(callback: () => void): NavDestinationAttribute;
  onBackPressed(callback: () => boolean): NavDestinationAttribute;
  onResult(callback: Optional<Callback<Object | null | undefined>>): NavDestinationAttribute;
  mode(value: NavDestinationMode): NavDestinationAttribute;
  backButtonIcon(value: ResourceStr | PixelMap | SymbolGlyphModifier): NavDestinationAttribute;
  backButtonIcon(icon: ResourceStr | PixelMap | SymbolGlyphModifier, accessibilityText?: ResourceStr): NavDestinationAttribute;
  menus(value: Array<NavigationMenuItem> | CustomBuilder): NavDestinationAttribute;
  menus(items: Array<NavigationMenuItem> | CustomBuilder, options?: NavigationMenuOptions): NavDestinationAttribute;
  toolbarConfiguration(toolbarParam: Array<ToolbarItem> | CustomBuilder, options?: NavigationToolbarOptions): NavDestinationAttribute;
  hideToolBar(hide: boolean, animated?: boolean): NavDestinationAttribute;
  onReady(callback: import('../api/@ohos.base').Callback<NavDestinationContext>): NavDestinationAttribute;
  onReady(callback: Callback<NavDestinationContext>): NavDestinationAttribute;
  onWillAppear(callback: Callback<void>): NavDestinationAttribute;
  onWillDisappear(callback: Callback<void>): NavDestinationAttribute;
  onWillShow(callback: Callback<void>): NavDestinationAttribute;
  onWillHide(callback: Callback<void>): NavDestinationAttribute;
  ignoreLayoutSafeArea(types?: Array<LayoutSafeAreaType>, edges?: Array<LayoutSafeAreaEdge>): NavDestinationAttribute;
  systemBarStyle(style: Optional<SystemBarStyle>): NavDestinationAttribute;
  recoverable(recoverable: Optional<boolean>): NavDestinationAttribute;
  systemTransition(type: NavigationSystemTransitionType): NavDestinationAttribute;
  bindToScrollable(scrollers: Array<Scroller>): NavDestinationAttribute;
  bindToNestedScrollable(scrollInfos: Array<NestedScrollInfo>): NavDestinationAttribute;
  onActive(callback: Optional<Callback<NavDestinationActiveReason>>): NavDestinationAttribute;
  onInactive(callback: Optional<Callback<NavDestinationActiveReason>>): NavDestinationAttribute;
  customTransition(delegate: NavDestinationTransitionDelegate): NavDestinationAttribute;
  onNewParam(callback: Optional<Callback<ESObject>>): NavDestinationAttribute;
  onNewParam(callback: Optional<Callback<Object | null | undefined>>): NavDestinationAttribute;
  preferredOrientation(orientation: Optional<Orientation>): NavDestinationAttribute;
  enableStatusBar(enabled: Optional<boolean>, animated?: boolean): NavDestinationAttribute;
  enableNavigationIndicator(enabled: Optional<boolean>): NavDestinationAttribute;
}
declare const NavDestination: NavDestinationInterface;
declare const NavDestinationInstance: NavDestinationAttribute;
declare type NavDestinationTransitionDelegate =
  (operation: NavigationOperation, isEnter: boolean) => Array<NavDestinationTransition> | undefined;