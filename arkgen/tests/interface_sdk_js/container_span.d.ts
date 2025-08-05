import { TextBackgroundStyle } from './span';
import { AttributeModifier } from './common';
interface ContainerSpanInterface {
  (): ContainerSpanAttribute;
}
declare class ContainerSpanAttribute {
  textBackgroundStyle(style: TextBackgroundStyle): ContainerSpanAttribute;
  attributeModifier(modifier: AttributeModifier<ContainerSpanAttribute>): ContainerSpanAttribute;
}
declare const ContainerSpan: ContainerSpanInterface;
declare const ContainerSpanInstance: ContainerSpanAttribute;