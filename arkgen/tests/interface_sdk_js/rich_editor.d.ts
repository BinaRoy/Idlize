import {  ShadowOptions, ClickEvent, SelectionOptions, CommonMethod, Callback, HapticFeedbackMode, RectResult, HoverEvent, PixelMap } from './common';
import { CustomBuilder } from './builder';
import { ResourceColor, Length, ResourceStr, Dimension, Margin, BorderRadiuses, Font, VoidCallback } from './units';
import { FontStyle, FontWeight, TextAlign, WordBreak, LineBreakStrategy, ImageSpanAlignment, ImageFit, ResponseType, CopyOptions, BarState } from './enums';
import { DecorationStyleInterface, StyledString, MutableStyledString } from './styledString';
import { Resource } from './../../../api/global/resource';
import { SymbolEffectStrategy, SymbolRenderingStrategy } from './symbolglyph';
import { DecorationStyleResult, TextRange, MenuType, TextEditControllerEx, LayoutManager, PreviewText, StyledStringController, StyledStringChangedListener, TextDataDetectorConfig, OnDidChangeCallback, EditMenuOptions, KeyboardAppearance } from './textCommon';
import { GestureEvent } from './gesture';
import { EnterKeyType, SubmitEvent } from './textInput';
import { LengthMetrics , ColorMetrics } from '../Graphics';
import { TextBackgroundStyle } from "./span";
declare enum RichEditorDeleteDirection {
  BACKWARD,
  FORWARD,
}
declare enum RichEditorSpanType {
  TEXT = 0,
  IMAGE = 1,
  MIXED = 2,
  BUILDER = 3,
  DEFAULT = 4,
}
declare enum UndoStyle {
  CLEAR_STYLE = 0,
  KEEP_STYLE = 1,
}
declare enum RichEditorResponseType {
  RIGHT_CLICK = 0,
  LONG_PRESS = 1,
  SELECT = 2,
  DEFAULT = 3,
}
declare interface RichEditorSpanPosition {
  spanIndex: number;
  spanRange: [number, number];
}
declare interface RichEditorTextStyle {
  fontColor?: ResourceColor;
  fontSize?: Length | number;
  fontStyle?: FontStyle;
  fontWeight?: number | FontWeight | string;
  fontFamily?: ResourceStr;
  decoration?: DecorationStyleInterface;
  textShadow?: ShadowOptions | Array<ShadowOptions>;
  letterSpacing?: number | string;
  lineHeight?: number | string | Resource;
  halfLeading?: boolean;
  fontFeature?: string;
  textBackgroundStyle?: TextBackgroundStyle;
}
declare interface LeadingMarginPlaceholder {
  pixelMap: PixelMap;
  size: [Dimension, Dimension];
}
declare interface RichEditorParagraphStyle {
  textAlign?: TextAlign;
  textVerticalAlign?: TextVerticalAlign;
  leadingMargin?: Dimension | LeadingMarginPlaceholder;
  wordBreak?: WordBreak;
  lineBreakStrategy?: LineBreakStrategy;
  paragraphSpacing?: number;
}
declare interface PasteEvent {
  preventDefault?: Callback<void>;
  preventDefault?: VoidCallback;
}
declare interface RichEditorTextSpan {
  spanPosition: RichEditorSpanPosition;
  value: string;
  textStyle?: RichEditorTextStyle;
}
interface RichEditorLayoutStyle {
  margin?: Dimension | Margin;
  borderRadius?: Dimension | BorderRadiuses;
}
declare interface RichEditorImageSpanStyle {
  size?: [Dimension, Dimension];
  verticalAlign?: ImageSpanAlignment;
  objectFit?: ImageFit;
  layoutStyle?: RichEditorLayoutStyle;
}
declare interface RichEditorSymbolSpanStyle {
  fontSize?: number | string | Resource;
  fontColor?: Array<ResourceColor>;
  fontWeight?: number | FontWeight | string;
  effectStrategy?: SymbolEffectStrategy;
  renderingStrategy?: SymbolRenderingStrategy;
}
declare interface RichEditorTextStyleResult {
  fontColor: ResourceColor;
  fontSize: number;
  fontStyle: FontStyle;
  fontWeight: number;
  fontFamily: string;
  decoration: DecorationStyleResult;
  textShadow?: Array<ShadowOptions>;
  letterSpacing?: number;
  lineHeight?: number;
  halfLeading?: boolean;
  fontFeature?: string;
  textBackgroundStyle?: TextBackgroundStyle;
}
declare interface RichEditorParagraphResult {
  style: RichEditorParagraphStyle;
  range: [number, number];
}
declare interface RichEditorSymbolSpanStyleResult {
  fontSize: number | string | Resource;
  fontColor: Array<ResourceColor>;
  fontWeight: number | FontWeight | string;
  effectStrategy: SymbolEffectStrategy;
  renderingStrategy: SymbolRenderingStrategy;
}
declare interface RichEditorTextSpanResult {
  spanPosition: RichEditorSpanPosition;
  value: string;
  textStyle: RichEditorTextStyleResult;
  offsetInSpan: [number, number];
  symbolSpanStyle?: RichEditorSymbolSpanStyle;
  valueResource?: Resource;
  paragraphStyle?: RichEditorParagraphStyle;
  previewText?: string;
  urlStyle?: RichEditorUrlStyle;
}
declare interface RichEditorImageSpanStyleResult {
  size: [number, number];
  verticalAlign: ImageSpanAlignment;
  objectFit: ImageFit;
  layoutStyle?: RichEditorLayoutStyle;
}
declare interface RichEditorImageSpanResult {
  spanPosition: RichEditorSpanPosition;
  valuePixelMap?: PixelMap;
  valueResourceStr?: ResourceStr;
  imageStyle: RichEditorImageSpanStyleResult;
  offsetInSpan: [number, number];
}
declare interface RichEditorImageSpan {
  spanPosition: RichEditorSpanPosition;
  value: PixelMap | ResourceStr;
  imageStyle?: RichEditorImageSpanStyle;
}
declare interface RichEditorRange {
  start?: number;
  end?: number;
}
declare interface RichEditorGesture {
  onClick?: Callback<ClickEvent>;
  onLongPress?: Callback<GestureEvent>;
  onDoubleClick?: Callback<GestureEvent>;
}
declare interface RichEditorTextSpanOptions {
  offset?: number;
  style?: RichEditorTextStyle;
  paragraphStyle?: RichEditorParagraphStyle;
  gesture?: RichEditorGesture;
  urlStyle?: RichEditorUrlStyle;
}
declare interface KeyboardOptions {
  supportAvoidance?: boolean;
}
declare interface RichEditorImageSpanOptions {
  offset?: number;
  imageStyle?: RichEditorImageSpanStyle;
  gesture?: RichEditorGesture;
  onHover?: OnHoverCallback;
}
declare interface RichEditorBuilderSpanOptions {
  offset?: number;
  dragBackgroundColor? : ColorMetrics;
  isDragShadowNeeded?: boolean;
}
declare interface PlaceholderStyle {
  font?: Font;
  fontColor?: ResourceColor;
}
declare interface RichEditorSpanStyleOptions extends RichEditorRange { }
declare interface RichEditorParagraphStyleOptions extends RichEditorRange {
  style: RichEditorParagraphStyle;
}
declare interface RichEditorUpdateTextSpanStyleOptions extends RichEditorSpanStyleOptions {
  textStyle: RichEditorTextStyle;
    urlStyle?: RichEditorUrlStyle;
}
declare interface RichEditorUpdateImageSpanStyleOptions extends RichEditorSpanStyleOptions {
  imageStyle: RichEditorImageSpanStyle;
}
declare interface RichEditorUpdateSymbolSpanStyleOptions extends RichEditorSpanStyleOptions {
  symbolStyle: RichEditorSymbolSpanStyle;
}
declare interface RichEditorSymbolSpanOptions {
  offset?: number;
  style?: RichEditorSymbolSpanStyle;
}
declare interface RichEditorSelection {
  selection: [number, number];
  spans: Array<RichEditorTextSpanResult | RichEditorImageSpanResult>;
}
declare interface RichEditorInsertValue {
  insertOffset: number;
  insertValue: string;
  previewText?: string;
}
declare interface RichEditorDeleteValue {
  offset: number;
  direction: RichEditorDeleteDirection;
  length: number;
  richEditorDeleteSpans: Array<RichEditorTextSpanResult | RichEditorImageSpanResult>;
}
declare interface RichEditorChangeValue {
  rangeBefore: TextRange;
  replacedSpans: Array<RichEditorTextSpanResult>;
  replacedImageSpans: Array<RichEditorImageSpanResult>;
  replacedSymbolSpans: Array<RichEditorTextSpanResult>;
  changeReason?: TextChangeReason;
}
declare interface RichEditorOptions {
  controller: RichEditorController;
}
declare interface RichEditorStyledStringOptions {
  controller: RichEditorStyledStringController;
}
declare interface SelectionMenuOptions {
  onAppear?: MenuOnAppearCallback;
  onDisappear?: Callback<void>;
  onDisappear?: VoidCallback;
  menuType?: MenuType;
  onMenuShow?: MenuCallback;
  onMenuHide?: MenuCallback;
  previewMenuOptions?: PreviewMenuOptions;
}
declare interface PreviewMenuOptions {
  hapticFeedbackMode? : HapticFeedbackMode;
}
declare class RichEditorBaseController implements TextEditControllerEx {
  getCaretOffset(): number;
  setCaretOffset(offset: number): boolean;
  closeSelectionMenu(): void;
  getTypingStyle(): RichEditorTextStyle;
  setTypingStyle(value: RichEditorTextStyle): void;
  setTypingParagraphStyle(style: RichEditorParagraphStyle): void;
  setSelection(selectionStart: number, selectionEnd: number, options?: SelectionOptions): void;
  isEditing(): boolean;
  stopEditing(): void;
  getLayoutManager(): LayoutManager;
  getPreviewText(): PreviewText;
  getCaretRect(): RectResult | undefined;
}
declare class RichEditorController extends RichEditorBaseController {
  addTextSpan(content: ResourceStr, options?: RichEditorTextSpanOptions): number;
  addImageSpan(value: PixelMap | ResourceStr, options?: RichEditorImageSpanOptions): number;
  addBuilderSpan(value: CustomBuilder, options?: RichEditorBuilderSpanOptions): number;
  addSymbolSpan(value: Resource, options?: RichEditorSymbolSpanOptions ): number;
  updateSpanStyle(value: RichEditorUpdateTextSpanStyleOptions | RichEditorUpdateImageSpanStyleOptions | RichEditorUpdateSymbolSpanStyleOptions): void;
  updateParagraphStyle(value: RichEditorParagraphStyleOptions): void;
  deleteSpans(value?: RichEditorRange): void;
  getSpans(value?: RichEditorRange): Array<RichEditorImageSpanResult | RichEditorTextSpanResult>;
  getParagraphs(value?: RichEditorRange): Array<RichEditorParagraphResult>;
  getSelection(): RichEditorSelection;
  fromStyledString(value: StyledString): Array<RichEditorSpan>;
    toStyledString(value: RichEditorRange): StyledString;
}
declare type RichEditorSpan = RichEditorImageSpanResult | RichEditorTextSpanResult;
declare class RichEditorStyledStringController extends RichEditorBaseController implements StyledStringController {
  setStyledString(styledString: StyledString): void;
  getStyledString(): MutableStyledString;
  getSelection(): RichEditorRange;
  onContentChanged(listener: StyledStringChangedListener): void;
}
declare class RichEditorAttribute extends CommonMethod<RichEditorAttribute> {
  onReady(callback: Callback<void>): RichEditorAttribute;
  onReady(callback: VoidCallback): RichEditorAttribute;
  onSelect(callback: Callback<RichEditorSelection>): RichEditorAttribute;
  onSelectionChange(callback: Callback<RichEditorRange>): RichEditorAttribute;
  aboutToIMEInput(callback: Callback<RichEditorInsertValue, boolean>): RichEditorAttribute;
  onIMEInputComplete(callback: Callback<RichEditorTextSpanResult>): RichEditorAttribute;
  onDidIMEInput(callback: Callback<TextRange>): RichEditorAttribute;
  aboutToDelete(callback: Callback<RichEditorDeleteValue, boolean>): RichEditorAttribute;
  onDeleteComplete(callback: Callback<void>): RichEditorAttribute;
  onDeleteComplete(callback: VoidCallback): RichEditorAttribute;
  copyOptions(value: CopyOptions): RichEditorAttribute;
  bindSelectionMenu(spanType: RichEditorSpanType, content: CustomBuilder, responseType: ResponseType | RichEditorResponseType,
    options?: SelectionMenuOptions): RichEditorAttribute;
  customKeyboard(value: CustomBuilder, options?: KeyboardOptions): RichEditorAttribute;
  onPaste(callback: PasteEventCallback): RichEditorAttribute;
  enableDataDetector(enable: boolean): RichEditorAttribute;
  enablePreviewText(enable: boolean): RichEditorAttribute;
  dataDetectorConfig(config: TextDataDetectorConfig): RichEditorAttribute;
  placeholder(value: ResourceStr, style?: PlaceholderStyle): RichEditorAttribute;
  caretColor(value: ResourceColor): RichEditorAttribute;
  selectedBackgroundColor(value: ResourceColor): RichEditorAttribute;
  onEditingChange(callback: Callback<boolean>): RichEditorAttribute;
  enterKeyType(value: EnterKeyType): RichEditorAttribute;
  onSubmit(callback: SubmitCallback): RichEditorAttribute;
  onWillChange(callback: Callback<RichEditorChangeValue, boolean>) : RichEditorAttribute;
  onDidChange(callback: OnDidChangeCallback) : RichEditorAttribute;
  onCut(callback: Callback<CutEvent>): RichEditorAttribute;
  onCopy(callback: Callback<CopyEvent>): RichEditorAttribute;
  editMenuOptions(editMenu: EditMenuOptions): RichEditorAttribute;
  enableKeyboardOnFocus(isEnabled: boolean): RichEditorAttribute;
  enableHapticFeedback(isEnabled: boolean): RichEditorAttribute;
  barState(state: BarState): RichEditorAttribute;
  maxLength(maxLength: Optional<number>): RichEditorAttribute;
  maxLines(maxLines: Optional<number>): RichEditorAttribute;
  enableAutoSpacing(enable: Optional<boolean>): RichEditorAttribute;
  keyboardAppearance(appearance: Optional<KeyboardAppearance>): RichEditorAttribute;
  stopBackPress(isStopped: Optional<boolean>): RichEditorAttribute;
  undoStyle(style: Optional<UndoStyle>): RichEditorAttribute;
}
declare interface CutEvent {
  preventDefault?: Callback<void>;
  preventDefault?: VoidCallback;
}
declare interface CopyEvent {
  preventDefault?: Callback<void>;
  preventDefault?: VoidCallback;
}
declare interface RichEditorUrlStyle {
  url?: ResourceStr;
}
declare type SubmitCallback = (enterKey: EnterKeyType, event: SubmitEvent) => void;
declare type MenuOnAppearCallback = (start: number, end: number) => void;
declare type MenuCallback = (start: number, end: number) => void;
declare type PasteEventCallback = (event?: PasteEvent) => void;
declare type OnHoverCallback = (status: boolean, event: HoverEvent) => void;
interface RichEditorInterface {
  (value: RichEditorOptions): RichEditorAttribute;
  (options: RichEditorStyledStringOptions): RichEditorAttribute;
}
declare const RichEditorInstance: RichEditorAttribute;
declare const RichEditor: RichEditorInterface;