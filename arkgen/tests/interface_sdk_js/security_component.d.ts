declare enum SecurityComponentLayoutDirection {
  HORIZONTAL = 0,
  VERTICAL = 1
}
declare class SecurityComponentMethod<T> {
  iconSize(value: Dimension): T;
  layoutDirection(value: SecurityComponentLayoutDirection): T;
  position(value: Position): T;
  markAnchor(value: Position): T;
  offset(value: Position | Edges | LocalizedEdges): T;
  fontSize(value: Dimension): T;
  fontStyle(value: FontStyle): T;
  fontWeight(value: number | FontWeight | string | Resource): T;
  fontFamily(value: string | Resource): T;
  fontColor(value: ResourceColor): T;
  iconColor(value: ResourceColor): T;
  backgroundColor(value: ResourceColor): T;
  borderStyle(value: BorderStyle): T;
  borderWidth(value: Dimension): T;
  borderColor(value: ResourceColor): T;
  borderRadius(value: Dimension): T;
  borderRadius(radius: Dimension | BorderRadiuses): T;
  padding(value: Padding | Dimension): T;
  textIconSpace(value: Dimension): T;
  key(value: string): T;
  width(value: Length): T;
  height(value: Length): T;
  size(value: SizeOptions): T;
  constraintSize(value: ConstraintSizeOptions): T;
  align(alignType: Alignment): T;
  alignRules(alignRule: AlignRuleOption): T;
  alignRules(alignRule: LocalizedAlignRuleOptions): T;
  id(description: string): T;
  chainMode(direction: Axis, style: ChainStyle): T;
  minFontScale(scale: number | Resource): T;
  maxFontScale(scale: number | Resource): T;
  maxLines(line: number | Resource): T;
  minFontSize(minSize: number | string | Resource): T;
  maxFontSize(maxSize: number | string | Resource): T;
  heightAdaptivePolicy(policy: TextHeightAdaptivePolicy): T;
  enabled(respond: boolean): T;
}