import { ResourceStr, Font, ResourceColor } from './units';
import { CommonMethod, Bindable } from './common';
import { CustomBuilder } from './builder';
import { SymbolGlyphModifier } from '../../arkui/SymbolGlyphModifier';
declare interface MenuItemOptions {
  startIcon?: ResourceStr;
  symbolStartIcon?: SymbolGlyphModifier;
  content?: ResourceStr;
  endIcon?: ResourceStr;
  symbolEndIcon?: SymbolGlyphModifier;
  labelInfo?: ResourceStr;
  builder?: CustomBuilder;
}
interface MenuItemInterface {
  (value?: MenuItemOptions | CustomBuilder): MenuItemAttribute;
}
declare class MenuItemAttribute extends CommonMethod<MenuItemAttribute> {
  selected(value: boolean): MenuItemAttribute;
    selected(value: boolean | undefined | Bindable<boolean>): MenuItemAttribute;
  selectIcon(value: boolean | ResourceStr | SymbolGlyphModifier): MenuItemAttribute;
  onChange(callback: (selected: boolean) => void): MenuItemAttribute;
  contentFont(value: Font): MenuItemAttribute;
  contentFontColor(value: ResourceColor): MenuItemAttribute;
  labelFont(value: Font): MenuItemAttribute;
  labelFontColor(value: ResourceColor): MenuItemAttribute;
}
declare const MenuItem: MenuItemInterface;
declare const MenuItemInstance: MenuItemAttribute;