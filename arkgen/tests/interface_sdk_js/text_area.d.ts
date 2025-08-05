import { KeyboardOptions, PasteEvent } from './richEditor';
import { CaretStyle, DeleteValue, EditMenuOptions, EditableTextOnChangeCallback, InsertValue,
  AutoCapitalizationMode,EditableTextChangeValue,KeyboardAppearance } from './textCommon';
import { BarState, CopyOptions, FontStyle, FontWeight, LineBreakStrategy, TextContentStyle, TextAlign, TextOverflow,
    TextHeightAdaptivePolicy, WordBreak, EllipsisMode } from './enums';
import { EnterKeyType, SubmitEvent, ContentType } from './textInput';
import { Dimension, Font, Length, LengthMetrics, ResourceColor, ResourceStr } from './units';
import { InputCounterOptions, TextContentControllerBase, SelectionOptions,
    TextDecorationOptions, CommonMethod, Callback, Optional, Bindable } from './common';
import { CustomBuilder } from './builder';
import { Resource } from '../../global/resource';
declare class TextAreaController extends TextContentControllerBase {
  constructor();
  caretPosition(value: number): void;
  setTextSelection(selectionStart: number, selectionEnd: number, options?: SelectionOptions): void;
  stopEditing(): void;
}
declare interface TextAreaOptions {
  placeholder?: ResourceStr;
  text?: ResourceStr;
  text?: ResourceStr | Bindable<ResourceStr> | Bindable<Resource> | Bindable<string>;
  controller?: TextAreaController;
}
interface TextAreaInterface {
  (value?: TextAreaOptions): TextAreaAttribute;
}
declare enum TextAreaType {
  NORMAL = 0,
  NUMBER = 2,
  PHONE_NUMBER = 3,
  EMAIL = 5,
  NUMBER_DECIMAL = 12,
  URL = 13,
  ONE_TIME_CODE = 14,
}
declare type TextAreaSubmitCallback = (enterKeyType: EnterKeyType, event?: SubmitEvent) => void;
declare class TextAreaAttribute extends CommonMethod<TextAreaAttribute> {
  placeholderColor(value: ResourceColor): TextAreaAttribute;
  placeholderFont(value: Font): TextAreaAttribute;
  enterKeyType(value: EnterKeyType): TextAreaAttribute;
  textAlign(value: TextAlign): TextAreaAttribute;
  caretColor(value: ResourceColor): TextAreaAttribute;
  fontColor(value: ResourceColor): TextAreaAttribute;
  fontSize(value: Length): TextAreaAttribute;
  fontStyle(value: FontStyle): TextAreaAttribute;
  fontWeight(value: number | FontWeight | ResourceStr): TextAreaAttribute;
  fontFamily(value: ResourceStr): TextAreaAttribute;
  textOverflow(value: TextOverflow): TextAreaAttribute;
  textIndent(value: Dimension): TextAreaAttribute;
  inputFilter(value: ResourceStr, error?: (value: string) => void): TextAreaAttribute;
  caretStyle(value: CaretStyle): TextAreaAttribute;
  selectedBackgroundColor(value: ResourceColor): TextAreaAttribute;
  onSubmit(callback: (enterKey: EnterKeyType) => void): TextAreaAttribute;
  onSubmit(callback: TextAreaSubmitCallback): TextAreaAttribute;
  onSubmit(callback: ((enterKey: EnterKeyType) => void) | TextAreaSubmitCallback): TextAreaAttribute;
  onChange(callback: EditableTextOnChangeCallback): TextAreaAttribute;
  onTextSelectionChange(callback: (selectionStart: number, selectionEnd: number) => void): TextAreaAttribute;
  onContentScroll(callback: (totalOffsetX: number, totalOffsetY: number) => void): TextAreaAttribute;
  onEditChange(callback: (isEditing: boolean) => void): TextAreaAttribute;
  onCopy(callback: (value: string) => void): TextAreaAttribute;
  onCut(callback: (value: string) => void): TextAreaAttribute;
  onPaste(callback: (value: string, event: PasteEvent) => void): TextAreaAttribute;
  copyOption(value: CopyOptions): TextAreaAttribute;
  enableKeyboardOnFocus(value: boolean): TextAreaAttribute;
  maxLength(value: number): TextAreaAttribute;
  showCounter(value: boolean, options?: InputCounterOptions): TextAreaAttribute;
  style(value: TextContentStyle): TextAreaAttribute;
  barState(value: BarState): TextAreaAttribute;
  selectionMenuHidden(value: boolean): TextAreaAttribute;
  minFontSize(value: number | string | Resource): TextAreaAttribute;
  maxFontSize(value: number | string | Resource): TextAreaAttribute;
  minFontScale(scale: Optional<number | Resource>): TextAreaAttribute;
  maxFontScale(scale: Optional<number | Resource>): TextAreaAttribute;
  heightAdaptivePolicy(value: TextHeightAdaptivePolicy): TextAreaAttribute;
  maxLines(value: number): TextAreaAttribute;
  maxLines(lines: number, options: MaxLinesOptions): TextAreaAttribute;
  minLines(lines: Optional<number>): TextAreaAttribute;
  wordBreak(value: WordBreak): TextAreaAttribute;
  lineBreakStrategy(strategy: LineBreakStrategy): TextAreaAttribute;
  customKeyboard(value: CustomBuilder, options?: KeyboardOptions): TextAreaAttribute;
  decoration(value: TextDecorationOptions): TextAreaAttribute;
  letterSpacing(value: number | string | Resource): TextAreaAttribute;
  lineSpacing(value: LengthMetrics): TextAreaAttribute;
  lineSpacing(value: LengthMetrics, options?: LineSpacingOptions): TextAreaAttribute;
  lineHeight(value: number | string | Resource): TextAreaAttribute;
  type(value: TextAreaType): TextAreaAttribute;
  enableAutoFill(value: boolean): TextAreaAttribute;
  contentType(contentType: ContentType): TextAreaAttribute;
  fontFeature(value: string): TextAreaAttribute;
  onWillInsert(callback: Callback<InsertValue, boolean>): TextAreaAttribute;
  onDidInsert(callback: Callback<InsertValue>): TextAreaAttribute;
  onWillDelete(callback: Callback<DeleteValue, boolean>): TextAreaAttribute;
  onDidDelete(callback: Callback<DeleteValue>): TextAreaAttribute;
  editMenuOptions(editMenu: EditMenuOptions): TextAreaAttribute;
  enablePreviewText(enable: boolean): TextAreaAttribute;
  enableHapticFeedback(isEnabled: boolean): TextAreaAttribute;
  autoCapitalizationMode(mode: AutoCapitalizationMode): TextAreaAttribute;
  halfLeading(halfLeading: Optional<boolean>): TextAreaAttribute;
  ellipsisMode(mode: Optional<EllipsisMode>): TextAreaAttribute;
  stopBackPress(isStopped: Optional<boolean>): TextAreaAttribute;
  onWillChange(callback: Callback<EditableTextChangeValue, boolean>): TextAreaAttribute;
  keyboardAppearance(appearance: Optional<KeyboardAppearance>): TextAreaAttribute;
  strokeWidth(width: Optional<LengthMetrics>): TextAreaAttribute;
  strokeColor(color: Optional<ResourceColor>): TextAreaAttribute;
  enableAutoSpacing(enabled: Optional<boolean>): TextAreaAttribute;
}
declare const TextArea: TextAreaInterface;
declare const TextAreaInstance: TextAreaAttribute;