import { CommonMethod } from './common';
import { CustomBuilder } from './builder';
import { ResourceStr } from './units';
declare interface MenuItemGroupOptions {
  header?: ResourceStr | CustomBuilder;
  footer?: ResourceStr | CustomBuilder;
}
interface MenuItemGroupInterface {
  (value?: MenuItemGroupOptions): MenuItemGroupAttribute;
}
declare class MenuItemGroupAttribute extends CommonMethod<MenuItemGroupAttribute> {}
declare const MenuItemGroup: MenuItemGroupInterface;
declare const MenuItemGroupInstance: MenuItemGroupAttribute;