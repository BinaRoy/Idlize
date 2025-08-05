declare interface RouteInfo {
  name: string;
  param?: unknown;
}
declare interface NavRouterInterface {
  (): NavRouterAttribute;
  (value: RouteInfo): NavRouterAttribute;
}
declare enum NavRouteMode {
  PUSH_WITH_RECREATE,
  PUSH,
  REPLACE
}
declare class NavRouterAttribute extends CommonMethod<NavRouterAttribute> {
  onStateChange(callback: (isActivated: boolean) => void): NavRouterAttribute;
  mode(mode: NavRouteMode): NavRouterAttribute;
}
declare const NavRouter: NavRouterInterface;
declare const NavRouterInstance: NavRouterAttribute;