import { CommonMethod } from './common';
import { CustomBuilder } from './builder'
import { TextHeightAdaptivePolicy, TextOverflow, VerticalAlign } from './enums';
import { Dimension, Font, Length, LocalizedPadding, Padding, Resource, ResourceColor, ResourceStr, VoidCallback } from './units';
import { ComponentContent } from '../ComponentContent'
import { SymbolGlyphModifier } from '../SymbolGlyphModifier';
declare enum SelectedMode {
  INDICATOR,
  BOARD
}
declare enum LayoutMode {
  AUTO = 0,
  VERTICAL = 1,
  HORIZONTAL = 2
}
interface IndicatorStyle {
  color?: ResourceColor;
  height?: Length;
  width?: Length;
  borderRadius?: Length;
  marginTop?: Length;
}
declare interface SubTabBarIndicatorStyle {
  color?: ResourceColor;
  height?: Length;
  width?: Length;
  borderRadius?: Length;
  marginTop?: Length;
}
interface BoardStyle {
  borderRadius?: Length;
}
declare interface LabelStyle {
  overflow?: TextOverflow;
  maxLines?: number;
  minFontSize?: number | ResourceStr;
  maxFontSize?: number | ResourceStr;
  heightAdaptivePolicy?: TextHeightAdaptivePolicy;
  font?: Font;
  selectedColor?: ResourceColor;
  unselectedColor?: ResourceColor;
}
declare interface TabBarLabelStyle {
  overflow?: TextOverflow;
  maxLines?: number;
  minFontSize?: number | ResourceStr;
  maxFontSize?: number | ResourceStr;
  heightAdaptivePolicy?: TextHeightAdaptivePolicy;
  font?: Font;
  selectedColor?: ResourceColor;
  unselectedColor?: ResourceColor;
}
declare interface TabBarIconStyle {
  selectedColor?: ResourceColor;
  unselectedColor?: ResourceColor;
}
declare class TabBarSymbol {
  normal: SymbolGlyphModifier;
  selected?: SymbolGlyphModifier;
}
declare interface TabBarOptions {
  icon?: string | Resource;
  text?: string | Resource
}
declare class SubTabBarStyle {
  constructor(content: ResourceStr);
  constructor(content: ResourceStr | ComponentContent);
  static of(content: ResourceStr): SubTabBarStyle;
  static of(content: ResourceStr | ComponentContent): SubTabBarStyle;
  indicator(value: IndicatorStyle): SubTabBarStyle;
  indicator(style: SubTabBarIndicatorStyle): SubTabBarStyle;
  selectedMode(value: SelectedMode): SubTabBarStyle;
  board(value: BoardStyle): SubTabBarStyle;
  labelStyle(value: LabelStyle): SubTabBarStyle;
  labelStyle(style: TabBarLabelStyle): SubTabBarStyle;
  padding(value: Padding | Dimension): SubTabBarStyle;
  padding(padding: LocalizedPadding): SubTabBarStyle;
  id(value: string): SubTabBarStyle;
}
declare class BottomTabBarStyle {
  constructor(icon: ResourceStr | TabBarSymbol, text: ResourceStr);
  static of(icon: ResourceStr | TabBarSymbol, text: ResourceStr): BottomTabBarStyle;
  labelStyle(value: LabelStyle): BottomTabBarStyle;
  labelStyle(style: TabBarLabelStyle): BottomTabBarStyle;
  padding(value: Padding | Dimension | LocalizedPadding): BottomTabBarStyle;
  layoutMode(value: LayoutMode): BottomTabBarStyle;
  verticalAlign(value: VerticalAlign): BottomTabBarStyle;
  symmetricExtensible(value: boolean): BottomTabBarStyle;
  id(value: string): BottomTabBarStyle;
  iconStyle(style: TabBarIconStyle): BottomTabBarStyle;
}
interface TabContentInterface {
  (): TabContentAttribute;
}
declare class TabContentAttribute extends CommonMethod<TabContentAttribute> {
  tabBar(options: string | Resource | CustomBuilder | TabBarOptions): TabContentAttribute;
  tabBar(value: SubTabBarStyle | BottomTabBarStyle): TabContentAttribute;
  tabBar(content: ComponentContent | SubTabBarStyle | BottomTabBarStyle | string | Resource | CustomBuilder | 
    TabBarOptions): TabContentAttribute;
  onWillShow(event: VoidCallback): TabContentAttribute;
  onWillHide(event: VoidCallback): TabContentAttribute;
}
declare const TabContent: TabContentInterface;
declare const TabContentInstance: TabContentAttribute;