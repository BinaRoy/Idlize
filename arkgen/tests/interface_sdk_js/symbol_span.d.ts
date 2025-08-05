import { Resource } from './../../../api/global/resource';
import { CommonMethod, AttributeModifier } from './common';
import { ResourceColor } from './units';
import { FontWeight } from './enums';
import { SymbolEffectStrategy, SymbolRenderingStrategy } from './symbolglyph';
interface SymbolSpanInterface {
  (value: Resource): SymbolSpanAttribute;
}
declare class SymbolSpanAttribute extends CommonMethod<SymbolSpanAttribute> {
  fontSize(value: number | string | Resource): SymbolSpanAttribute;
  fontColor(value: Array<ResourceColor>): SymbolSpanAttribute;
  fontWeight(value: number | FontWeight | string): SymbolSpanAttribute;
  effectStrategy(value: SymbolEffectStrategy): SymbolSpanAttribute;
  renderingStrategy(value: SymbolRenderingStrategy): SymbolSpanAttribute;
  attributeModifier(modifier: AttributeModifier<SymbolSpanAttribute>): SymbolSpanAttribute;
}
declare const SymbolSpan: SymbolSpanInterface;
declare const SymbolSpanInstance: SymbolSpanAttribute;