import { CommonConfiguration, CommonMethod, ContentModifier, Optional, BlurStyle, Bindable } from './common';
import { ControlSize } from './button';
import { DividerOptions } from './textPicker';
import { ResourceStr, Dimension, EdgeOutlineWidths, ResourceColor, EdgeColors, Resource, Font, Length, Offset, DividerStyleOptions } from './units';
import { SymbolGlyphModifier } from '../SymbolGlyphModifier';
import { TextModifier } from '../TextModifier';
import { OptionWidthMode } from './enums';
declare interface SelectOption {
  value: ResourceStr;
  icon?: ResourceStr;
  symbolIcon?: SymbolGlyphModifier;
}
interface SelectInterface {
  (options: Array<SelectOption>): SelectAttribute;
}
declare enum ArrowPosition {
  END = 0,
  START = 1
}
declare enum MenuAlignType {
  START,
  CENTER,
  END
}
declare enum AvoidanceMode {
  COVER_TARGET,
  AVOID_AROUND_TARGET
}
declare type OnSelectCallback = (index: number, selectStr: string) => void;
declare interface MenuOutlineOptions {
  width?: Dimension | EdgeOutlineWidths;
  color?: ResourceColor | EdgeColors;
 }
declare class SelectAttribute extends CommonMethod<SelectAttribute> {
  selected(value: number | Resource): SelectAttribute;
  selected(numCount: Optional<number | Resource>): SelectAttribute;
  selected(numCount: number | Resource | undefined | Bindable<number> | Bindable<Resource>): SelectAttribute;
  value(value: ResourceStr): SelectAttribute;
  value(resStr: Optional<ResourceStr>): SelectAttribute;
  value(resStr: ResourceStr | undefined | Bindable<string> | Bindable<Resource>): SelectAttribute;
  font(value: Font): SelectAttribute;
  font(selectFont: Optional<Font>): SelectAttribute;
  fontColor(value: ResourceColor): SelectAttribute;
  fontColor(resColor: Optional<ResourceColor>): SelectAttribute;
  selectedOptionBgColor(value: ResourceColor): SelectAttribute;
  selectedOptionBgColor(resColor: Optional<ResourceColor>): SelectAttribute;
  selectedOptionFont(value: Font): SelectAttribute;
  selectedOptionFont(selectFont: Optional<Font>): SelectAttribute;
  selectedOptionFontColor(value: ResourceColor): SelectAttribute;
  selectedOptionFontColor(resColor: Optional<ResourceColor>): SelectAttribute;
  optionBgColor(value: ResourceColor): SelectAttribute;
  optionBgColor(resColor: Optional<ResourceColor>): SelectAttribute;
  optionFont(value: Font): SelectAttribute;
  optionFont(selectFont: Optional<Font>): SelectAttribute;
  optionFontColor(value: ResourceColor): SelectAttribute;
  optionFontColor(resColor: Optional<ResourceColor>): SelectAttribute;
  onSelect(callback: (index: number, value: string) => void): SelectAttribute;
  onSelect(callback: Optional<OnSelectCallback>): SelectAttribute;
  space(value: Length): SelectAttribute;
  space(spaceLength: Optional<Length>): SelectAttribute;
  arrowPosition(value: ArrowPosition): SelectAttribute;
  arrowPosition(position: Optional<ArrowPosition>): SelectAttribute;
  menuAlign(alignType: MenuAlignType, offset?: Offset): SelectAttribute;
  menuAlign(alignType: Optional<MenuAlignType>, offset?: Offset): SelectAttribute;
  optionWidth(value: Dimension | OptionWidthMode ): SelectAttribute;
  optionWidth(width: Optional<Dimension | OptionWidthMode> ): SelectAttribute;
  optionHeight(value: Dimension): SelectAttribute;
  optionHeight(height: Optional<Dimension>): SelectAttribute;
  menuBackgroundColor(value: ResourceColor): SelectAttribute;
  menuBackgroundColor(resColor: Optional<ResourceColor>): SelectAttribute;
  menuBackgroundBlurStyle(value: BlurStyle): SelectAttribute;
  menuBackgroundBlurStyle(style: Optional<BlurStyle>): SelectAttribute;
  controlSize(value: ControlSize): SelectAttribute;
  controlSize(size: Optional<ControlSize>): SelectAttribute;
  menuItemContentModifier(modifier: ContentModifier<MenuItemConfiguration>): SelectAttribute;
  menuItemContentModifier(modifier: Optional<ContentModifier<MenuItemConfiguration>>): SelectAttribute;
  divider(options: Optional<DividerOptions> | null): SelectAttribute;
  textModifier(modifier: Optional<TextModifier>): SelectAttribute;
  arrowModifier(modifier: Optional<SymbolGlyphModifier>): SelectAttribute;
  optionTextModifier(modifier: Optional<TextModifier>): SelectAttribute;
  selectedOptionTextModifier(modifier: Optional<TextModifier>): SelectAttribute;
  dividerStyle(style: Optional<DividerStyleOptions>): SelectAttribute;
  avoidance(mode: AvoidanceMode): SelectAttribute;
  menuOutline(outline: MenuOutlineOptions): SelectAttribute;
  showInSubWindow(showInSubWindow: Optional<boolean>): SelectAttribute;
  showDefaultSelectedIcon(show: boolean): SelectAttribute;
}
declare interface MenuItemConfiguration extends CommonConfiguration<MenuItemConfiguration>{
  value: ResourceStr;
  icon?: ResourceStr;
  symbolIcon?: SymbolGlyphModifier;
  selected: boolean;
  index: number;
  triggerSelect(index: number, value: string): void;
}
declare const Select: SelectInterface;
declare const SelectInstance: SelectAttribute;