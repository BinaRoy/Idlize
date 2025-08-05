import { CancelButtonSymbolOptions, CancelButtonOptions } from "./search";
import { Callback, CommonMethod, TextContentControllerBase, SelectionOptions, InputCounterOptions, TextDecorationOptions, Optional, Bindable} from "./common";
import { CustomBuilder } from './builder';
import { BarState, LineBreakStrategy, TextAlign, FontStyle, FontWeight, WordBreak, TextOverflow,
   CopyOptions, TextHeightAdaptivePolicy, TextContentStyle, EllipsisMode } from './enums';
import { Resource, ResourceStr, ResourceColor, Dimension, Font, Length } from './units';
import { InsertValue, DeleteValue, CaretStyle, EditableTextOnChangeCallback, EditMenuOptions,
  AutoCapitalizationMode,EditableTextChangeValue,KeyboardAppearance } from "./textCommon";
import { KeyboardOptions, PasteEvent } from "./richEditor";
declare enum InputType {
  Normal,
  Number,
  PhoneNumber,
  Email,
  Password,
  NUMBER_PASSWORD = 8,
  SCREEN_LOCK_PASSWORD = 9,
  USER_NAME = 10,
  NEW_PASSWORD = 11,
  NUMBER_DECIMAL = 12,
  URL = 13,
  ONE_TIME_CODE = 14,
}
declare enum ContentType {
  USER_NAME = 0,
  PASSWORD = 1,
  NEW_PASSWORD = 2,
  FULL_STREET_ADDRESS = 3,
  HOUSE_NUMBER = 4,
  DISTRICT_ADDRESS = 5,
  CITY_ADDRESS = 6,
  PROVINCE_ADDRESS = 7,
  COUNTRY_ADDRESS = 8,
  PERSON_FULL_NAME = 9,
  PERSON_LAST_NAME = 10,
  PERSON_FIRST_NAME = 11,
  PHONE_NUMBER = 12,
  PHONE_COUNTRY_CODE = 13,
  FULL_PHONE_NUMBER = 14,
  EMAIL_ADDRESS = 15,
  BANK_CARD_NUMBER = 16,
  ID_CARD_NUMBER = 17,
  NICKNAME = 23,
  DETAIL_INFO_WITHOUT_STREET = 24,
  FORMAT_ADDRESS = 25,
  PASSPORT_NUMBER = 26,
  VALIDITY = 27,
  ISSUE_AT = 28,
  ORGANIZATION = 29,
  TAX_ID = 30,
  ADDRESS_CITY_AND_STATE = 31,
  FLIGHT_NUMBER = 32,
  LICENSE_NUMBER = 33,
  LICENSE_FILE_NUMBER = 34,
  LICENSE_PLATE = 35,
  ENGINE_NUMBER = 36,
  LICENSE_CHASSIS_NUMBER = 37
}
declare enum EnterKeyType {
  Go = 2,
  Search = 3,
  Send = 4,
  Next = 5,
  Done = 6,
  PREVIOUS = 7,
  NEW_LINE = 8,
}
declare interface UnderlineColor {
  typing?: ResourceColor | undefined;
  normal?: ResourceColor | undefined;
  error?: ResourceColor | undefined;
  disable?: ResourceColor | undefined;
} 
declare interface SubmitEvent {
  keepEditableState(): void;
  text: string;
}
declare class TextInputController extends TextContentControllerBase {
  constructor();
  caretPosition(value: number): void;
  setTextSelection(selectionStart: number, selectionEnd: number, options?: SelectionOptions): void;
  stopEditing(): void;
}
declare interface TextInputOptions {
  placeholder?: ResourceStr;
  text?: ResourceStr;
   text?: ResourceStr | Bindable<ResourceStr> | Bindable<Resource> | Bindable<string>;
  controller?: TextInputController;
}
declare enum TextInputStyle {
  Default,
  Inline
}
interface TextInputInterface {
  (value?: TextInputOptions): TextInputAttribute;
}
interface PasswordIcon {
  onIconSrc?: string | Resource;
  offIconSrc?: string | Resource;
}
declare type OnSubmitCallback = (enterKey: EnterKeyType, event: SubmitEvent) => void;
declare type OnTextSelectionChangeCallback = (selectionStart: number, selectionEnd: number) => void;
declare type OnContentScrollCallback = (totalOffsetX: number, totalOffsetY: number) => void;
declare type OnPasteCallback = (content: string, event: PasteEvent) => void;
declare class TextInputAttribute extends CommonMethod<TextInputAttribute> {
  type(value: InputType): TextInputAttribute;
  contentType(value: ContentType): TextInputAttribute;
  placeholderColor(value: ResourceColor): TextInputAttribute;
  textOverflow(value: TextOverflow): TextInputAttribute;
  textIndent(value: Dimension): TextInputAttribute;
  placeholderFont(value?: Font): TextInputAttribute;
  enterKeyType(value: EnterKeyType): TextInputAttribute;
  caretColor(value: ResourceColor): TextInputAttribute;
  onEditChanged(callback: (isEditing: boolean) => void): TextInputAttribute;
  onEditChange(callback: Callback<boolean>): TextInputAttribute;
  onSubmit(callback: OnSubmitCallback): TextInputAttribute;
  onChange(callback: EditableTextOnChangeCallback): TextInputAttribute;
  onTextSelectionChange(callback: OnTextSelectionChangeCallback): TextInputAttribute;
  onContentScroll(callback: OnContentScrollCallback): TextInputAttribute;
  maxLength(value: number): TextInputAttribute;
  fontColor(value: ResourceColor): TextInputAttribute;
  fontSize(value: Length): TextInputAttribute;
  fontStyle(value: FontStyle): TextInputAttribute;
  fontWeight(value: number | FontWeight | ResourceStr): TextInputAttribute;
  fontFamily(value: ResourceStr): TextInputAttribute;
  inputFilter(value: ResourceStr, error?: Callback<string>): TextInputAttribute;
  onCopy(callback: Callback<string>): TextInputAttribute;
  onCut(callback: Callback<string>): TextInputAttribute;
  onPaste(callback: OnPasteCallback): TextInputAttribute;
  copyOption(value: CopyOptions): TextInputAttribute;
  showPasswordIcon(value: boolean): TextInputAttribute;
  textAlign(value: TextAlign): TextInputAttribute;
  style(value: TextInputStyle | TextContentStyle): TextInputAttribute;
  caretStyle(value: CaretStyle): TextInputAttribute;
  selectedBackgroundColor(value: ResourceColor): TextInputAttribute;
  caretPosition(value: number): TextInputAttribute;
  enableKeyboardOnFocus(value: boolean): TextInputAttribute;
  passwordIcon(value: PasswordIcon): TextInputAttribute;
  showError(value?: ResourceStr | undefined): TextInputAttribute;
  showUnit(value: CustomBuilder): TextInputAttribute;
  showUnderline(value: boolean): TextInputAttribute;
  underlineColor(value: ResourceColor | UnderlineColor | undefined): TextInputAttribute;
  selectionMenuHidden(value: boolean): TextInputAttribute;
  barState(value: BarState): TextInputAttribute;
  maxLines(value: number): TextInputAttribute;
  wordBreak(value: WordBreak): TextInputAttribute;
  lineBreakStrategy(strategy: LineBreakStrategy): TextInputAttribute;
  customKeyboard(value: CustomBuilder, options?: KeyboardOptions): TextInputAttribute;
  showCounter(value: boolean, options?: InputCounterOptions): TextInputAttribute;
  cancelButton(options: CancelButtonOptions): TextInputAttribute;
  cancelButton(symbolOptions: CancelButtonSymbolOptions): TextInputAttribute;
  cancelButton(symbolOptions: CancelButtonOptions | CancelButtonSymbolOptions): TextInputAttribute;
  selectAll(value: boolean): TextInputAttribute;
  minFontSize(value: number | string | Resource): TextInputAttribute;
  maxFontSize(value: number | string | Resource): TextInputAttribute;
  minFontScale(scale: Optional<number | Resource>): TextInputAttribute;
  maxFontScale(scale: Optional<number | Resource>): TextInputAttribute;
  heightAdaptivePolicy(value: TextHeightAdaptivePolicy): TextInputAttribute;
  enableAutoFill(value: boolean): TextInputAttribute;
  decoration(value: TextDecorationOptions): TextInputAttribute;
  letterSpacing(value: number | string | Resource): TextInputAttribute;
  lineHeight(value: number | string | Resource): TextInputAttribute;
  passwordRules(value: string): TextInputAttribute;
  fontFeature(value: string): TextInputAttribute;  
  showPassword(visible: boolean): TextInputAttribute;
  onSecurityStateChange(callback: Callback<boolean>): TextInputAttribute;
  onWillInsert(callback: Callback<InsertValue, boolean>): TextInputAttribute;
  onDidInsert(callback: Callback<InsertValue>): TextInputAttribute;
  onWillDelete(callback: Callback<DeleteValue, boolean>): TextInputAttribute;
  onDidDelete(callback: Callback<DeleteValue>): TextInputAttribute;
  onWillAttachIME(callback: Callback<IMEClient>): TextInputAttribute;
  editMenuOptions(editMenu: EditMenuOptions): TextInputAttribute;
  enablePreviewText(enable: boolean): TextInputAttribute;
  enableHapticFeedback(isEnabled: boolean): TextInputAttribute;
  autoCapitalizationMode(mode: AutoCapitalizationMode): TextInputAttribute;
  halfLeading(halfLeading: Optional<boolean>): TextInputAttribute;
  ellipsisMode(mode: Optional<EllipsisMode>): TextInputAttribute;
  stopBackPress(isStopped: Optional<boolean>): TextInputAttribute;
  onWillChange(callback: Callback<EditableTextChangeValue, boolean>): TextInputAttribute;
  keyboardAppearance(appearance: Optional<KeyboardAppearance>): TextInputAttribute;
  strokeWidth(width: Optional<LengthMetrics>): TextInputAttribute;
  strokeColor(color: Optional<ResourceColor>): TextInputAttribute;
  enableAutoFillAnimation(enabled: Optional<boolean>): TextInputAttribute;
  enableAutoSpacing(enabled: Optional<boolean>): TextInputAttribute;
}
declare const TextInput: TextInputInterface;
declare const TextInputInstance: TextInputAttribute;