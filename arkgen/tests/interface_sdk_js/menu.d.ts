import { CommonMethod } from './common';
import { Length, Font, ResourceColor, Dimension, BorderRadiuses, DividerStyleOptions } from './units';
interface MenuInterface {
  (): MenuAttribute;
}
declare enum SubMenuExpandingMode {
  SIDE_EXPAND = 0,
  EMBEDDED_EXPAND = 1,
  STACK_EXPAND = 2,
}
declare class MenuAttribute extends CommonMethod<MenuAttribute> {
  fontSize(value: Length): MenuAttribute;
  font(value: Font): MenuAttribute;
  fontColor(value: ResourceColor): MenuAttribute;
  radius(value: Dimension | BorderRadiuses): MenuAttribute;
  menuItemDivider(options: DividerStyleOptions | undefined): MenuAttribute;
  menuItemGroupDivider(options: DividerStyleOptions | undefined): MenuAttribute;
  subMenuExpandingMode(mode: SubMenuExpandingMode): MenuAttribute;
  subMenuExpandSymbol(symbol: SymbolGlyphModifier): MenuAttribute;
}
declare const Menu: MenuInterface;
declare const MenuInstance: MenuAttribute;