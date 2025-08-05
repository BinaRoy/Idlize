declare enum NavigationType {
  Push,
  Back,
  Replace,
}
interface NavigatorInterface {
  (value?: { target: string; type?: NavigationType }): NavigatorAttribute;
  (): NavigatorAttribute;
}
declare class NavigatorAttribute extends CommonMethod<NavigatorAttribute> {
  active(value: boolean): NavigatorAttribute;
  type(value: NavigationType): NavigatorAttribute;
  target(value: string): NavigatorAttribute;
  params(value: object): NavigatorAttribute;
}
declare const Navigator: NavigatorInterface;
declare const NavigatorInstance: NavigatorAttribute;