import { ResourceColor, ResourceStr, Length } from './units';
import { DecorationStyleInterface, MutableStyledString, StyledString } from './styled_string';
import { SelectionOptions, Callback } from './common';
import { TextDecorationType, TextDecorationStyle } from './enums';
declare enum TextDataDetectorType {
  PHONE_NUMBER = 0,
  URL = 1,
  EMAIL = 2,
  ADDRESS = 3,
  DATE_TIME = 4,
}
declare interface TextDataDetectorConfig {
  types: TextDataDetectorType[]
  onDetectResultUpdate?: (result: string) => void
  onDetectResultUpdate?: Callback<string>
  color?: ResourceColor,
  decoration?: DecorationStyleInterface;
  enablePreviewMenu?: boolean;
}
declare interface TextRange {
  start?: number;
  end?: number;
}
declare interface InsertValue {
  insertOffset: number;
  insertValue: string;
}
declare enum TextDeleteDirection {
  BACKWARD = 0,
  FORWARD = 1,
}
declare enum SuperscriptStyle {
  NORMAL = 0,
  SUPERSCRIPT = 1,
  SUBSCRIPT = 2,
}
declare enum MenuType {
  SELECTION_MENU = 0,
  PREVIEW_MENU = 1,
}
declare enum AutoCapitalizationMode {
  NONE = 0,
  WORDS = 1,
  SENTENCES = 2,
  ALL_CHARACTERS = 3,
}
declare interface DeleteValue {
  deleteOffset: number;
  direction: TextDeleteDirection;
  deleteValue: string;
}
declare type OnDidChangeCallback = (rangeBefore: TextRange, rangeAfter: TextRange) => void;
declare type EditableTextOnChangeCallback = (value: string, previewText?: PreviewText, options?: TextChangeOptions) => void;
declare interface TextBaseController {
  setSelection(selectionStart: number, selectionEnd: number, options?: SelectionOptions): void;
  closeSelectionMenu(): void;
  getLayoutManager(): LayoutManager;
}
declare interface TextEditControllerEx extends TextBaseController {
  isEditing(): boolean;
  stopEditing(): void;
  setCaretOffset(offset: number): boolean;
  getCaretOffset(): number;
  getPreviewText?(): PreviewText;
  getPreviewText(): PreviewText;
}
declare interface PreviewText {
  offset: number;
  value: string;
}
declare interface StyledStringController {
  setStyledString(styledString: StyledString): void;
  getStyledString(): MutableStyledString;
}
declare interface StyledStringChangedListener {
  onWillChange?: Callback<StyledStringChangeValue, boolean>;
  onDidChange?: OnDidChangeCallback;
}
interface StyledStringChangeValue {
  range: TextRange;
  replacementString: StyledString;
  previewText?: StyledString;
}
declare interface LayoutManager {
  getLineCount(): number;
  getGlyphPositionAtCoordinate(x: number, y: number): PositionWithAffinity;
  getLineMetrics(lineNumber: number): LineMetrics;
  getRectsForRange(range: TextRange, widthStyle: RectWidthStyle, heightStyle: RectHeightStyle): Array<TextBox>;
}
interface PositionWithAffinity {
  position: number;
  affinity: Affinity;
}
declare type Affinity = import('../api/@ohos.graphics.text').default.Affinity;
declare type LineMetrics = import('../api/@ohos.graphics.text').default.LineMetrics; 
declare type RectWidthStyle = import('../api/@ohos.graphics.text').default.RectWidthStyle;
declare type RectHeightStyle = import('../api/@ohos.graphics.text').default.RectHeightStyle;
declare type TextBox = import('../api/@ohos.graphics.text').default.TextBox;
interface CaretStyle {
  width?: Length,
  color?: ResourceColor,
}
declare class TextMenuItemId {
  static of(id: ResourceStr): TextMenuItemId;
  equals(id: TextMenuItemId): boolean;
  static readonly CUT: TextMenuItemId;
  static readonly COPY: TextMenuItemId;
  static readonly PASTE: TextMenuItemId;
  static readonly SELECT_ALL: TextMenuItemId;
  static readonly COLLABORATION_SERVICE: TextMenuItemId;
  static readonly CAMERA_INPUT: TextMenuItemId;
  static readonly AI_WRITER: TextMenuItemId;
  static readonly TRANSLATE: TextMenuItemId;
  static readonly SEARCH: TextMenuItemId;
  static readonly SHARE: TextMenuItemId;
  static readonly url: TextMenuItemId;
  static readonly email: TextMenuItemId;
  static readonly phoneNumber: TextMenuItemId;
  static readonly address: TextMenuItemId;
  static readonly dateTime: TextMenuItemId;
}
declare interface TextMenuItem {
  content: ResourceStr;
  icon?: ResourceStr;
  id: TextMenuItemId;
  labelInfo?: ResourceStr;
}
type OnPrepareMenuCallback = (menuItems: Array<TextMenuItem>) => Array<TextMenuItem>;
type OnCreateMenuCallback = (menuItems: Array<TextMenuItem>) => Array<TextMenuItem>;
type OnMenuItemClickCallback = (menuItem: TextMenuItem, range: TextRange) => boolean
declare interface EditMenuOptions {
  onCreateMenu(menuItems: Array<TextMenuItem>): Array<TextMenuItem>;
  onMenuItemClick(menuItem: TextMenuItem, range: TextRange): boolean;
  onPrepareMenu?: OnPrepareMenuCallback;
  onCreateMenu: OnCreateMenuCallback;
  onMenuItemClick: OnMenuItemClickCallback;
}
interface DecorationStyleResult {
  type: TextDecorationType;
  color: ResourceColor;
  style?: TextDecorationStyle;
  thicknessScale?: number;
}
declare interface FontSettingOptions {
  enableVariableFontWeight?: boolean;
 }
declare interface TextChangeOptions {
  rangeBefore: TextRange;
  rangeAfter: TextRange;
  oldContent: string;
  oldPreviewText: PreviewText;
}
interface EditableTextChangeValue {
  content: string;
  previewText?: PreviewText;
  options?: TextChangeOptions;
}
declare enum TextMenuShowMode {
  DEFAULT = 0,
  PREFER_WINDOW = 1,
}
declare interface TextMenuOptions {
  showMode?: TextMenuShowMode;
}
declare enum KeyboardAppearance {
  NONE_IMMERSIVE = 0,
  IMMERSIVE = 1,
  LIGHT_IMMERSIVE = 2,
  DARK_IMMERSIVE = 3,
}
declare class ShaderStyle {
}
declare class LinearGradientStyle extends ShaderStyle {
  constructor(options: LinearGradientOptions);
  options: LinearGradientOptions;
}
declare class RadialGradientStyle extends ShaderStyle {
  constructor(options: RadialGradientOptions);
  options: RadialGradientOptions;
}
declare class ColorShaderStyle extends ShaderStyle {
  constructor(color: ResourceColor);
  color: ResourceColor;
}
declare class ContentTransition {}
declare class NumericTextTransition extends ContentTransition {
  constructor(options?: NumericTextTransitionOptions);
  flipDirection?: FlipDirection;
  enableBlur?: boolean;
}
declare interface NumericTextTransitionOptions {
  flipDirection?: FlipDirection;
  enableBlur?: boolean;
}
declare enum FlipDirection {
  DOWN = 0,
  UP = 1,
}
declare interface LineSpacingOptions {
  onlyBetweenLines?: boolean;
}
declare enum TextChangeReason {
  UNKNOWN = 0,
  INPUT = 1,
  PASTE = 2,
  CUT = 3,
  DRAG = 4,
  AUTO_FILL = 5,
  AI_WRITE = 6,
  REDO = 7,
  UNDO = 8,
  CONTROLLER = 9,
  ACCESSIBILITY = 10,
  COLLABORATION = 11,
  STYLUS = 12
}
declare enum TextVerticalAlign {
  BASELINE = 0,
  BOTTOM = 1,
  CENTER = 2,
  TOP = 3,
}
declare interface MaxLinesOptions {
  overflowMode?: MaxLinesMode;
}
declare enum MaxLinesMode {
  CLIP = 0,
  SCROLL = 1,
}
declare enum KeyboardGradientMode {
  NONE = 0,
  LINEAR_GRADIENT = 1,
}
declare enum KeyboardFluidLightMode {
  NONE = 0,
  BACKGROUND_FLUID_LIGHT = 1,
}
declare interface KeyboardAppearanceConfig {
  gradientMode?: KeyboardGradientMode;
  fluidLightMode?: KeyboardFluidLightMode;
}
declare interface IMEClient {
  nodeId: number;
}
declare interface TextLayoutOptions {
  constraintWidth?: LengthMetrics;
}