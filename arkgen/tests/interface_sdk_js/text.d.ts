declare interface TextOverflowOptions {
  overflow: TextOverflow;
}
interface TextInterface {
  (content?: string | Resource, value?: TextOptions): TextAttribute;
  }
declare class TextAttribute extends CommonMethod<TextAttribute> {
  font(value: Font): TextAttribute;
  font(fontValue: Font, options?: FontSettingOptions): TextAttribute;
  fontColor(value: ResourceColor): TextAttribute;
  fontSize(value: number | string | Resource): TextAttribute;
  minFontSize(value: number | string | Resource): TextAttribute;
  maxFontSize(value: number | string | Resource): TextAttribute;
  minFontScale(scale: number | Resource): TextAttribute;
  maxFontScale(scale: number | Resource): TextAttribute;
  fontStyle(value: FontStyle): TextAttribute;
  fontWeight(value: number | FontWeight | ResourceStr): TextAttribute;
  fontWeight(weight: number | FontWeight | ResourceStr, options?: FontSettingOptions): TextAttribute;
  lineSpacing(value: LengthMetrics): TextAttribute;
  lineSpacing(value: LengthMetrics, options?: LineSpacingOptions): TextAttribute;
  textAlign(value: TextAlign): TextAttribute;
  textVerticalAlign(textVerticalAlign: Optional<TextVerticalAlign>): TextAttribute;
  lineHeight(value: number | string | Resource): TextAttribute;
  textOverflow(options: TextOverflowOptions): TextAttribute;
  fontFamily(value: string | Resource): TextAttribute;
  maxLines(value: number): TextAttribute;
  decoration(value: DecorationStyleInterface): TextAttribute;
  letterSpacing(value: number | ResourceStr): TextAttribute;
  textCase(value: TextCase): TextAttribute;
  baselineOffset(value: number | ResourceStr): TextAttribute;
  copyOption(value: CopyOptions): TextAttribute;
  draggable(value: boolean): TextAttribute;
  textShadow(value: ShadowOptions | Array<ShadowOptions>): TextAttribute;
  heightAdaptivePolicy(value: TextHeightAdaptivePolicy): TextAttribute;
  textIndent(value: Length): TextAttribute;
  wordBreak(value: WordBreak): TextAttribute;
  lineBreakStrategy(strategy: LineBreakStrategy): TextAttribute;
  onCopy(callback: (value: string) => void): TextAttribute;
  selection(selectionStart: number, selectionEnd: number): TextAttribute;
  caretColor(color: ResourceColor): TextAttribute;
  selectedBackgroundColor(color: ResourceColor): TextAttribute;
  shaderStyle(shader: ShaderStyle): TextAttribute;
  ellipsisMode(value: EllipsisMode): TextAttribute;
  enableDataDetector(enable: boolean): TextAttribute;
  dataDetectorConfig(config: TextDataDetectorConfig): TextAttribute;
  bindSelectionMenu(spanType: TextSpanType, content: CustomBuilder, responseType: TextResponseType,
    options?: SelectionMenuOptions): TextAttribute;
  onTextSelectionChange(callback: (selectionStart: number, selectionEnd: number) => void): TextAttribute;
  fontFeature(value: string): TextAttribute;
  marqueeOptions(options: Optional<TextMarqueeOptions>): TextAttribute;
  onMarqueeStateChange(callback: Callback<MarqueeState>): TextAttribute;
  privacySensitive(supported: boolean): TextAttribute;
  textSelectable(mode: TextSelectableMode): TextAttribute;
  editMenuOptions(editMenu: EditMenuOptions): TextAttribute;
  halfLeading(halfLeading: boolean): TextAttribute;
  trimSpace(trim: Optional<boolean>): TextAttribute;
  enableHapticFeedback(isEnabled: boolean): TextAttribute;
  optimizeTrailingSpace(optimize: Optional<boolean>): TextAttribute;
  enableAutoSpacing(enabled: Optional<boolean>): TextAttribute;
  contentTransition(transition: Optional<ContentTransition>): TextAttribute;
}
declare const TextInstance: TextAttribute;
declare const Text: TextInterface;
declare enum TextSpanType {
  TEXT = 0,
  IMAGE = 1,
  MIXED = 2,
  DEFAULT = 3,
}
declare enum TextResponseType {
  RIGHT_CLICK = 0,
  LONG_PRESS = 1,
  SELECT = 2,
  DEFAULT = 3,
}
declare enum MarqueeState {
  START = 0,
  BOUNCE = 1,
  FINISH = 2,
}
declare enum MarqueeStartPolicy {
  DEFAULT = 0,
  ON_FOCUS = 1,
}
declare interface TextOptions {
  controller: TextController;
}
declare interface TextMarqueeOptions {
  start: boolean;
  step?: number;
  loop?: number;
  fromStart?: boolean;
  delay?: number;
  fadeout?: boolean;
  marqueeStartPolicy?: MarqueeStartPolicy;
}
declare class TextController {
  closeSelectionMenu(): void;
  setStyledString(value: StyledString): void;
  getLayoutManager(): LayoutManager;
}