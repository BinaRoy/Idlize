/**
 * Minimal test component to exercise dts2peer -> CJ number/string mapping rules
 * Only affects component layer. Used by npm run run:cj:small (input-dir=./tests/small-cangjie)
 */

declare interface CommonMethod<T = any> {}

declare interface SomeType {
  name: string;
  count?: number;
}

/**
 * Attribute type must be a class (most real SDK files use class),
 * so that component detection works consistently.
 */
declare class TextAllCasesAttribute extends CommonMethod<TextAllCasesAttribute> {
  /** @unit vp */ width?: number;
  /** @unit fp */ fontSize?: number;
  /** @unit px */ borderWidth?: number;
  /** @unit percent */ marginPercent?: number;
  /** @unit lpx */ absoluteOffset?: number;

  /** @range 0..1 @default 1.0 */ opacity?: number;
  /** @range 0..10 @default 1.0 */ scale?: number;
  /** @range 0..360 */ rotation?: number;
  /** @range 0..1 @default 0.0 */ progress?: number;

  maxLines?: number;
  itemCount?: number;
  duration?: number;

  id?: number;
  timestamp?: number;
  selectedIndex?: number;
  orderCode?: number;

  height: number;

  title?: string;
  isVisible?: boolean;

  config?: { key: string; value?: number };
  items?: SomeType[];
  child?: SomeType;
  tuple?: [number, number];
  dict?: Record<string, number>;

  sizeText?: string;
  widthString?: string;

  /** @resource color */ colorString?: string;
  /** @resource string */ textRes?: string;
}

interface TextAllCasesInterface {
  (): TextAllCasesAttribute;
  (builder: (attr: TextAllCasesAttribute) => void): TextAllCasesAttribute;

  (
    content?: string | Resource,

    /** @unit vp */ width?: number,
    /** @unit fp */ fontSize?: number,
    /** @unit px */ borderWidth?: number,
    /** @unit percent */ marginPercent?: number,
    /** @unit lpx */ absoluteOffset?: number,

    /** @range 0..1 @default 1.0 */ opacity?: number,
    /** @range 0..10 @default 1.0 */ scale?: number,
    /** @range 0..360 */ rotation?: number,
    /** @range 0..1 @default 0.0 */ progress?: number,

    maxLines?: number,
    itemCount?: number,
    duration?: number,

    id?: number,
    timestamp?: number,
    selectedIndex?: number,
    orderCode?: number,

    height: number,

    title?: string,
    isVisible?: boolean,

    config?: { key: string; value?: number },
    items?: SomeType[],
    child?: SomeType,
    tuple?: [number, number],
    dict?: Record<string, number>,

    sizeText?: string,
    widthString?: string,

    /** @resource color */ colorString?: string,
    /** @resource string */ textRes?: string
  ): TextAllCasesAttribute;
}

declare const TextAllCases: TextAllCasesInterface;


