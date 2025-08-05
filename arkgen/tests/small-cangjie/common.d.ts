declare enum SourceType {
    Unknown,
    Mouse,
    TouchScreen,
}
declare enum SourceTool {
    Unknown,
    Finger,
    Pen,
    MOUSE,
    TOUCHPAD,
    JOYSTICK,
}

declare interface BaseEvent {
    source: SourceType;
    axisHorizontal?: number;
    axisVertical?: number;
    pressure: number;
    tiltX: number;
    sourceTool: SourceTool;
    getModifierKeyState?(keys: Array<string>): boolean;
    deviceId?: number;
    targetDisplayId?: number;
}

declare interface ClickEvent extends BaseEvent {
    displayX: number;
    displayY: number;
    windowX: number;
    windowY: number;
    screenX: number;
    screenY: number;
    x: number;
    y: number;
    preventDefault: () => void;
  }

declare interface BlurOptions {
    grayscale: [number, number];
}

declare interface AnimateParam {
    duration?: number;
}

declare interface ICurve {
    interpolate(fraction: number): number;
}

declare class AttributeModifier<T> {}

declare interface BlurStyleOptions {
    colorMode?: ThemeColorMode;
    adaptiveColor?: AdaptiveColor;
    scale?: number;
    blurOptions?: BlurOptions;
}

declare enum ThemeColorMode {
    SYSTEM = 0,
    LIGHT = 1,
    DARK = 2
}

declare enum AdaptiveColor {
    DEFAULT = 0,
}

declare interface BackgroundBlurStyleOptions extends BlurStyleOptions {
    policy?: BlurStyleActivePolicy;
    inactiveColor?: ResourceColor;
}

declare enum DragPreviewMode {
    AUTO = 1,
    DISABLE_SCALE = 2,
    ENABLE_DEFAULT_SHADOW = 3,
    ENABLE_DEFAULT_RADIUS = 4,
  }

declare interface DragPreviewOptions {
    mode?: DragPreviewMode | Array<DragPreviewMode>;
    modifier?: ImageModifier;
    numberBadge?: boolean | number;
}

declare interface DragInteractionOptions {

    isMultiSelectionEnabled?: boolean;

    defaultAnimationBeforeLifting?: boolean;
}

declare type ImageModifier = import('../api/arkui/ImageModifier').ImageModifier;

declare class CommonMethod<T> {

    constructor();

    backdropBlur(value: number, options?: BlurOptions): T;

    width(value: Length): T;

    height(value: Length): T;

    key(value: string): T;

    restoreId(value: number): T;

    padding(value: Padding): T;

    bindSheet(isShow: boolean, options?: SheetOptions): T;

    backgroundBlurStyle(value: BlurStyle, options?: BackgroundBlurStyleOptions): T;

    dragPreviewOptions(value: DragPreviewOptions, options?: DragInteractionOptions): T;

    onClick(event: (event: ClickEvent) => void): T;
    onClick(event: Callback<ClickEvent>, distanceThreshold: number): T;
}

declare interface Rectangle {

    x?: Length;

    y?: Length;

    width?: Length;

    height?: Length;
}

declare enum BlurStyle {
    Thin = 0
}

declare enum BlurStyleActivePolicy {
    FOLLOWS_WINDOW_ACTIVE_STATE = 0,

    ALWAYS_ACTIVE = 1,

    ALWAYS_INACTIVE = 2,
}

declare enum SheetSize {
    MEDIUM,
    LARGE,
    FIT_CONTENT = 2,
}

declare enum SheetType {
    BOTTOM = 0,
    CENTER = 1,
    POPUP = 2,
}

declare enum SheetMode {
    OVERLAY = 0,
    EMBEDDED = 1,
}

declare interface SheetTitleOptions {
    title: ResourceStr;
    subtitle?: ResourceStr;
}

declare enum ShadowStyle {
    OUTER_DEFAULT_XS,
    OUTER_DEFAULT_SM,
    OUTER_DEFAULT_MD,
    OUTER_DEFAULT_LG,
    OUTER_FLOATING_SM,
    OUTER_FLOATING_MD,
}

declare enum ShadowType {
    COLOR,
    BLUR,
}

declare interface SizeResult {
    width: number,
    height: number,
}

declare type EdgeWidths = {
    top?: Length;
    right?: Length;
    bottom?: Length;
    left?: Length;
};

declare type Padding = {
    top?: Length;
    right?: Length;
    bottom?: Length;
    left?: Length;
};

declare interface LocalizedEdgeWidths {
    top?: LengthMetrics;
    end?: LengthMetrics;
    bottom?: LengthMetrics;
    start?: LengthMetrics;
};

declare type EdgeColors = {
    top?: ResourceColor;
    right?: ResourceColor;
    bottom?: ResourceColor;
    left?: ResourceColor;
};

declare type BorderRadiuses = {
    topLeft: Length;
    topRight: Length;
    bottomLeft: Length;
    bottomRight: Length;
};

declare interface LocalizedBorderRadiuses  {
    topStart?: LengthMetrics;
    topEnd?: LengthMetrics;
    bottomStart?: LengthMetrics;
    bottomEnd?: LengthMetrics;
};

declare enum BorderStyle {
    Dotted,
    Dashed,
    Solid,
}

declare type EdgeStyles = {
    top?: BorderStyle;
    right?: BorderStyle;
    bottom?: BorderStyle;
    left?: BorderStyle;
};
declare class ScrollableCommonMethod<T> extends CommonMethod<T> {
    scrollBarWidth(value: number | string): T;
}

declare interface BindOptions {
    backgroundColor?: ResourceColor;
}

declare type UIContext = import('../api/@ohos.arkui.UIContext').UIContext;
declare interface SheetOptions extends BindOptions {
    height?: SheetSize | Length;
    dragBar?: boolean;
    maskColor?: ResourceColor;
    blurStyle?: BlurStyle;
    showClose?: boolean | Resource;
    preferType?: SheetType;
    title?: SheetTitleOptions;
    enableOutsideInteractive?: boolean;
    borderStyle?: BorderStyle;
    mode?: SheetMode;
    uiContext?: UIContext;
}

declare interface TranslateOptions {
    x?: number | string;
    y?: number | string;
    z?: number | string;
}

declare interface ContentModifier<T> {

  }

declare type CustomBuilder = (() => any) | void;
