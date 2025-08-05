import { TextContentControllerBase, SelectionOptions,Callback,CommonMethod,Optional,TextDecorationOptions, Bindable } from './common';
import { CustomBuilder } from './builder';
import { ResourceStr,Length,ResourceColor ,Dimension,Font} from './units';
import { CaretStyle, EditableTextOnChangeCallback, InsertValue, DeleteValue, EditMenuOptions,KeyboardAppearance,EditableTextChangeValue,AutoCapitalizationMode } from './textCommon';
import { EnterKeyType, OnTextSelectionChangeCallback, OnContentScrollCallback, OnPasteCallback, SubmitEvent } from './textInput';
import { CopyOptions,TextAlign } from './enums';
import { KeyboardOptions } from './richEditor';
import { Resource } from '../../global/resource';
import { SymbolGlyphModifier } from '../SymbolGlyphModifier';
declare class SearchController extends TextContentControllerBase {
  constructor();
  caretPosition(value: number): void;
  stopEditing(): void;
  setTextSelection(selectionStart: number, selectionEnd: number, options?: SelectionOptions): void;
}
declare enum CancelButtonStyle {
  CONSTANT,
  INVISIBLE,
  INPUT
}
declare enum SearchType {
  NORMAL = 0,
  NUMBER = 2,
  PHONE_NUMBER = 3,
  EMAIL = 5,
  NUMBER_DECIMAL = 12,
  URL = 13,
  ONE_TIME_CODE = 14,
}
declare interface SearchOptions {
  value?: ResourceStr;
  value?: string | Bindable<string>;
  placeholder?: ResourceStr;
  icon?: string;
  controller?: SearchController;
}
interface SearchInterface {
  (options?: SearchOptions): SearchAttribute;
}
interface IconOptions {
  size?: Length;
  color?: ResourceColor;
  src?: ResourceStr;
}
interface SearchButtonOptions {
  fontSize?: Length;
  fontColor?: ResourceColor;
  autoDisable?: Boolean;
}
interface CancelButtonOptions {
  style?: CancelButtonStyle;
  icon?: IconOptions;
}
interface CancelButtonSymbolOptions {
  style?: CancelButtonStyle;
  icon?: SymbolGlyphModifier;
}
declare type SearchSubmitCallback = (searchContent: string, event?: SubmitEvent) => void;
declare class SearchAttribute extends CommonMethod<SearchAttribute> {
  searchButton(value: ResourceStr, option?: SearchButtonOptions): SearchAttribute;
  fontColor(value: ResourceColor): SearchAttribute;
  searchIcon(value: IconOptions | SymbolGlyphModifier): SearchAttribute;
  cancelButton(value: CancelButtonOptions | CancelButtonSymbolOptions): SearchAttribute;
  textIndent(value: Dimension): SearchAttribute;
  inputFilter(value: ResourceStr, error?: Callback<string>): SearchAttribute;
  onEditChange(callback: Callback<boolean>): SearchAttribute;
  selectedBackgroundColor(value: ResourceColor): SearchAttribute;
  caretStyle(value: CaretStyle): SearchAttribute;
  placeholderColor(value: ResourceColor): SearchAttribute;
  placeholderFont(value?: Font): SearchAttribute;
  textFont(value?: Font): SearchAttribute;
  enterKeyType(value: EnterKeyType): SearchAttribute;
  onSubmit(callback: Callback<string>): SearchAttribute;
  onSubmit(callback: SearchSubmitCallback): SearchAttribute;
  onSubmit(callback: Callback<string> | SearchSubmitCallback): SearchAttribute;
  onChange(callback: EditableTextOnChangeCallback): SearchAttribute;
  onTextSelectionChange(callback: OnTextSelectionChangeCallback): SearchAttribute;
  onContentScroll(callback: OnContentScrollCallback): SearchAttribute;
  onCopy(callback: Callback<string>): SearchAttribute;
  onCut(callback: Callback<string>): SearchAttribute;
  onPaste(callback: OnPasteCallback): SearchAttribute;
  copyOption(value: CopyOptions): SearchAttribute;
  maxLength(value: number): SearchAttribute;
  textAlign(value: TextAlign): SearchAttribute;
  enableKeyboardOnFocus(value: boolean): SearchAttribute;
  selectionMenuHidden(value: boolean): SearchAttribute;
  minFontSize(value: number | string | Resource): SearchAttribute;
  maxFontSize(value: number | string | Resource): SearchAttribute;
  minFontScale(scale: Optional<number | Resource>): SearchAttribute;
   maxFontScale(scale: Optional<number | Resource>): SearchAttribute;
  customKeyboard(value: CustomBuilder, options?: KeyboardOptions): SearchAttribute;
  decoration(value: TextDecorationOptions): SearchAttribute;
  letterSpacing(value: number | string | Resource): SearchAttribute;
  lineHeight(value: number | string | Resource): SearchAttribute;
  type(value: SearchType): SearchAttribute;
  fontFeature(value: string): SearchAttribute;
  onWillInsert(callback: Callback<InsertValue, boolean>): SearchAttribute;
  onDidInsert(callback: Callback<InsertValue>): SearchAttribute;
  onWillDelete(callback: Callback<DeleteValue, boolean>): SearchAttribute;
  onDidDelete(callback: Callback<DeleteValue>): SearchAttribute;
  onWillAttachIME(callback: Callback<IMEClient>): SearchAttribute;
  editMenuOptions(editMenu: EditMenuOptions): SearchAttribute;
  enablePreviewText(enable: boolean): SearchAttribute;
  enableHapticFeedback(isEnabled: boolean): SearchAttribute;
  autoCapitalizationMode(mode: AutoCapitalizationMode): SearchAttribute;
  halfLeading(halfLeading: Optional<boolean>): SearchAttribute;
  stopBackPress(isStopped: Optional<boolean>): SearchAttribute;
  onWillChange(callback: Callback<EditableTextChangeValue, boolean>): SearchAttribute;
  keyboardAppearance(appearance: Optional<KeyboardAppearance>): SearchAttribute;
  strokeWidth(width: Optional<LengthMetrics>): SearchAttribute;
  strokeColor(color: Optional<ResourceColor>): SearchAttribute;
  enableAutoSpacing(enabled: Optional<boolean>): SearchAttribute;
}
declare const Search: SearchInterface;
declare const SearchInstance: SearchAttribute;