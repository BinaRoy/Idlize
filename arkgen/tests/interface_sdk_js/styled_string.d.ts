import { Callback, ShadowOptions, ClickEvent, Optional, PixelMap } from './common';
import { TextAlign, FontStyle, FontWeight, TextDecorationType, TextDecorationStyle, WordBreak, TextOverflow, ImageFit, ImageSpanAlignment } from './enums';
import { ResourceStr, ResourceColor, LengthMetrics, SizeOptions, Margin, Padding, BorderRadiuses, ColorFilter } from './units';
import { TextBackgroundStyle } from './span';
import { GestureEvent } from "./gesture";
import { DrawingColorFilter } from './image';
import { LeadingMarginPlaceholder } from './richEditor';
import image from '../../@ohos.multimedia.image';
import drawing from '../../@ohos.graphics.drawing';
import { DrawContext } from '../../arkui/Graphics';
declare type StyledStringMarshallingValue = UserDataSpan;
declare type StyledStringMarshallCallback = (marshallableVal: StyledStringMarshallingValue) => ArrayBuffer;
declare type StyledStringUnmarshallCallback = (buf: ArrayBuffer) => StyledStringMarshallingValue;
declare class StyledString {
    constructor(value: string | ImageAttachment | CustomSpan, styles?: Array<StyleOptions>);
    readonly length: number;
    getString(): string;
    getStyles(start: number, length: number, styledKey?: StyledStringKey): Array<SpanStyle>;
    equals(other: StyledString): boolean;
    subStyledString(start: number, length?: number): StyledString;
    static fromHtml(html: string): Promise<StyledString>;
    static toHtml(styledString: StyledString): string;
    static marshalling(styledString: StyledString, callback: StyledStringMarshallCallback): ArrayBuffer;
    static unmarshalling(buffer: ArrayBuffer, callback: StyledStringUnmarshallCallback): Promise<StyledString>;
    static marshalling(styledString: StyledString): ArrayBuffer;
    static unmarshalling(buffer: ArrayBuffer): Promise<StyledString>;
}
declare interface StyleOptions {
    start?: number;
    length?: number;
    styledKey: StyledStringKey;
    styledValue: StyledStringValue;
}
declare interface SpanStyle {
    start: number;
    length: number;
    styledKey: StyledStringKey;
    styledValue: StyledStringValue;
}
declare class TextStyle {
    constructor(value?: TextStyleInterface);
    readonly fontColor?: ResourceColor;
    readonly fontFamily?: string;
    readonly fontSize?: number;
    readonly fontWeight?: number;
    readonly fontStyle?: FontStyle;
    readonly strokeWidth?: number;
    readonly strokeColor?: ResourceColor;
    readonly superscript?: SuperscriptStyle;
}
declare interface TextStyleInterface {
    fontColor?: ResourceColor;
    fontFamily?: ResourceStr;
    fontSize?: LengthMetrics;
    fontWeight?: number | FontWeight | string;
    fontStyle?: FontStyle;
    strokeWidth?: LengthMetrics;
    strokeColor?: ResourceColor;
    superscript?: SuperscriptStyle;
}
declare interface DecorationOptions {
    enableMultiType?: boolean;
}
declare class DecorationStyle {
    constructor(value: DecorationStyleInterface);
    constructor(value: DecorationStyleInterface, options?: DecorationOptions);
    readonly type: TextDecorationType;
    readonly color?: ResourceColor;
    readonly style?: TextDecorationStyle;
    readonly thicknessScale?: number;
    readonly options?: DecorationOptions;
}
declare interface DecorationStyleInterface {
    type: TextDecorationType;
    color?: ResourceColor;
    style?: TextDecorationStyle;
    thicknessScale?: number;
}
declare class BaselineOffsetStyle {
    constructor(value: LengthMetrics);
    readonly baselineOffset: number;
}
declare class LetterSpacingStyle {
    constructor(value: LengthMetrics);
    readonly letterSpacing: number;
}
declare class TextShadowStyle {
    constructor(value: ShadowOptions | Array<ShadowOptions>);
    readonly textShadow: Array<ShadowOptions>;
}
declare class BackgroundColorStyle {
    constructor(textBackgroundStyle: TextBackgroundStyle);
    readonly textBackgroundStyle: TextBackgroundStyle;
}
declare class GestureStyle {
    constructor(value?: GestureStyleInterface);
}
declare interface GestureStyleInterface {
    onClick?: Callback<ClickEvent>;
    onLongPress?: Callback<GestureEvent>;
    onTouch?: Callback<TouchEvent>;
}
declare class ParagraphStyle {
    constructor(value?: ParagraphStyleInterface);
    readonly textAlign?: TextAlign;
    readonly textVerticalAlign?: TextVerticalAlign;
    readonly textIndent?: number;
    readonly maxLines?: number;
    readonly overflow?: TextOverflow;
    readonly wordBreak?: WordBreak;
    readonly leadingMargin?: number | LeadingMarginPlaceholder;
    readonly paragraphSpacing?: number;
}
declare interface ParagraphStyleInterface {
    textAlign?: TextAlign;
    textVerticalAlign?: TextVerticalAlign;
    textIndent?: LengthMetrics;
    maxLines?: number;
    overflow?: TextOverflow;
    wordBreak?: WordBreak;
    leadingMargin?: LengthMetrics | LeadingMarginPlaceholder;
    paragraphSpacing?: LengthMetrics;
}
declare class LineHeightStyle {
    constructor(lineHeight: LengthMetrics);
    readonly lineHeight: number;
}
declare class UrlStyle {
    constructor(url: string);
    readonly url: string;
}
declare type StyledStringValue = TextStyle | DecorationStyle | BaselineOffsetStyle | LetterSpacingStyle |
TextShadowStyle | GestureStyle | ImageAttachment | ParagraphStyle | LineHeightStyle | UrlStyle | CustomSpan |
UserDataSpan | BackgroundColorStyle;
declare class MutableStyledString extends StyledString {
    constructor(value: string | ImageAttachment | CustomSpan, styles?: Array<StyleOptions>);
    replaceString(start: number, length: number, other: string): void;
    insertString(start: number, other: string): void;
    removeString(start: number, length: number): void;
    replaceStyle(spanStyle: SpanStyle): void;
    setStyle(spanStyle: SpanStyle): void;
    removeStyle(start: number, length: number, styledKey: StyledStringKey): void;
    removeStyles(start: number, length: number): void;
    clearStyles(): void;
    replaceStyledString(start: number, length: number, other: StyledString): void;
    insertStyledString(start: number, other: StyledString): void;
    appendStyledString(other: StyledString): void;
}
declare enum StyledStringKey {
    FONT = 0,
     DECORATION = 1,
     BASELINE_OFFSET = 2,
     LETTER_SPACING = 3,
     TEXT_SHADOW = 4,
     LINE_HEIGHT = 5,
     BACKGROUND_COLOR = 6,
     URL = 7,
    GESTURE = 100,
    PARAGRAPH_STYLE = 200,
    IMAGE = 300,
    CUSTOM_SPAN = 400,
    USER_DATA = 500,
}
declare class ImageAttachment {
    constructor(value: ImageAttachmentInterface);
    constructor(attachment: Optional<AttachmentType>);
    constructor(value: ImageAttachmentInterface | Optional<AttachmentType>);
    readonly value: PixelMap;
    readonly size?: SizeOptions;
    readonly verticalAlign?: ImageSpanAlignment;
    readonly objectFit?: ImageFit;
    readonly layoutStyle?: ImageAttachmentLayoutStyle;
    readonly colorFilter?: ColorFilterType;
}
declare interface ResourceImageAttachmentOptions {
    resourceValue: Optional<ResourceStr>;
    size?: SizeOptions;
    verticalAlign?: ImageSpanAlignment;
    objectFit?: ImageFit;
    layoutStyle?: ImageAttachmentLayoutStyle;
    colorFilter?: ColorFilterType;
    syncLoad?: boolean;
}
declare interface ImageAttachmentInterface {
    value: PixelMap;
    size?: SizeOptions;
    verticalAlign?: ImageSpanAlignment;
    objectFit?: ImageFit;
    layoutStyle?: ImageAttachmentLayoutStyle;
    colorFilter?: ColorFilterType;
}
declare type AttachmentType = ImageAttachmentInterface | ResourceImageAttachmentOptions;
declare type ColorFilterType = ColorFilter | DrawingColorFilter;
declare interface ImageAttachmentLayoutStyle {
    margin?: LengthMetrics | Margin;
    padding?: LengthMetrics | Padding;
    borderRadius?: LengthMetrics | BorderRadiuses;
}
declare interface CustomSpanMetrics {
    width: number;
    height?: number;
}
declare interface CustomSpanDrawInfo {
    x: number;
    lineTop: number;
    lineBottom: number;
    baseline: number;
}
declare interface CustomSpanMeasureInfo {
    fontSize: number;
}
declare abstract class CustomSpan {
    abstract onMeasure(measureInfo: CustomSpanMeasureInfo) : CustomSpanMetrics;
    abstract onDraw(context: DrawContext, drawInfo: CustomSpanDrawInfo): void;
    invalidate(): void;
}
declare abstract class UserDataSpan {}