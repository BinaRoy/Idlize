import { Resource as _Resource } from '../../global/resource';
import { Color, BorderStyle, FontWeight, FontStyle, DividerMode} from './enums';
import { OutlineStyle } from './common';
import { LengthMetricsUnit as _LengthMetricsUnit, LengthMetrics as _LengthMetrics, ColorMetrics as _ColorMetrics } from '../Graphics';
declare type Resource = import('../api/global/resource').Resource;
declare type Resource = _Resource;
declare type Length = string | number | Resource;
declare type PX = `${number}px`;
declare type PX = string;
declare type VP = `${number}vp` | number;
declare type VP = string | number;
declare type FP = `${number}fp`;
declare type FP = string;
declare type LPX = `${number}lpx`;
declare type LPX = string;
declare type Percentage = `${number}%`;
declare type Percentage = string;
declare type Degree = `${number}deg`;
declare type Degree = string;
declare type Dimension = PX | VP | FP | LPX | Percentage | Resource;
declare type ResourceStr = string | Resource;
declare interface Padding {
  top?: Length;
  right?: Length;
  bottom?: Length;
  left?: Length;
};
declare interface LocalizedPadding {
  top?: LengthMetrics;
  end?: LengthMetrics;
  bottom?: LengthMetrics;
  start?: LengthMetrics;
};
declare type Margin = Padding;
declare type EdgeWidth = EdgeWidths;
declare interface EdgeWidths {
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
declare interface EdgeOutlineWidths {
  top?: Dimension;
  right?: Dimension;
  bottom?: Dimension;
  left?: Dimension;
};
declare interface BorderRadiuses {
  topLeft?: Length;
  topRight?: Length;
  bottomLeft?: Length;
  bottomRight?: Length;
};
declare interface LocalizedBorderRadiuses  {
  topStart?: LengthMetrics;
  topEnd?: LengthMetrics;
  bottomStart?: LengthMetrics;
  bottomEnd?: LengthMetrics;
};
declare interface OutlineRadiuses {
  topLeft?: Dimension;
  topRight?: Dimension;
  bottomLeft?: Dimension;
  bottomRight?: Dimension;
};
declare interface EdgeColors {
  top?: ResourceColor;
  right?: ResourceColor;
  bottom?: ResourceColor;
  left?: ResourceColor;
};
declare interface LocalizedEdgeColors  {
  top?: ResourceColor;
  end?: ResourceColor;
  bottom?: ResourceColor;
  start?: ResourceColor;
};
declare type LocalizedMargin = LocalizedPadding;
declare interface EdgeStyles {
  top?: BorderStyle;
  right?: BorderStyle;
  bottom?: BorderStyle;
  left?: BorderStyle;
};
declare interface EdgeOutlineStyles {
  top?: OutlineStyle;
  right?: OutlineStyle;
  bottom?: OutlineStyle;
  left?: OutlineStyle;
};
declare interface Offset {
  dx: Length;
  dy: Length;
};
declare type ResourceColor = Color | number | string | Resource;
declare interface LengthConstrain {
  minLength: Length;
  maxLength: Length;
};
declare type VoidCallback  = () => void;
declare type LengthMetricsUnit = import('../api/arkui/Graphics').LengthMetricsUnit;
declare type LengthMetricsUnit = _LengthMetricsUnit;
declare type LengthMetrics = import('../api/arkui/Graphics').LengthMetrics;
declare type LengthMetrics = _LengthMetrics;
declare type ColorMetrics = import('../api/arkui/Graphics').ColorMetrics;
declare type ColorMetrics = _ColorMetrics;
declare interface Font {
  size?: Length;
  weight?: FontWeight | number | string;
  family?: string | Resource;
  style?: FontStyle;
}
declare interface Area {
  width: Length;
  height: Length;
  position: Position;
  globalPosition: Position;
}
declare interface Position {
  x?: Length;
  y?: Length;
}
declare interface LocalizedPosition {
  start?: LengthMetrics;
  top?: LengthMetrics;
}
declare interface Edges {
  top?: Dimension;
  left?: Dimension;
  bottom?: Dimension;
  right?: Dimension;
}
declare interface LocalizedEdges {
  top?: LengthMetrics;
  start?: LengthMetrics;
  bottom?: LengthMetrics;
  end?: LengthMetrics;
}
declare interface Bias {
  horizontal?: number;
  vertical?: number;
}
declare interface ConstraintSizeOptions {
  minWidth?: Length;
  maxWidth?: Length;
  minHeight?: Length;
  maxHeight?: Length;
}
declare interface SizeOptions {
  width?: Length;
  height?: Length;
}
declare interface BorderOptions {
  width?: EdgeWidths | Length | LocalizedEdgeWidths;
  color?: EdgeColors | ResourceColor | LocalizedEdgeColors;
  radius?: BorderRadiuses | Length | LocalizedBorderRadiuses;
  style?: EdgeStyles | BorderStyle;
  dashGap?: EdgeWidths | LengthMetrics | LocalizedEdgeWidths;
  dashWidth?: EdgeWidths | LengthMetrics | LocalizedEdgeWidths;
}
declare interface OutlineOptions {
  width?: EdgeOutlineWidths | Dimension;
  color?: EdgeColors | ResourceColor | LocalizedEdgeColors;
  radius?: OutlineRadiuses | Dimension;
  style?: EdgeOutlineStyles | OutlineStyle;
}
declare interface MarkStyle {
  strokeColor?: ResourceColor;
  size?: Length;
  strokeWidth?: Length;
}
declare class ColorFilter {
  constructor(value: number[]);
}
declare interface TouchPoint {
  x: Dimension;
  y: Dimension;
}
declare interface DirectionalEdgesT<T> {
  start: T;
  end: T;
  top: T;
  bottom: T;
}
declare interface DividerStyleOptions {
  strokeWidth?: LengthMetrics;
  color?: ResourceColor;
  startMargin?: LengthMetrics;
  endMargin?: LengthMetrics;
  mode?: DividerMode;
}
declare interface ChainWeightOptions {
  horizontal?: number;
  vertical?: number;
}
declare interface AccessibilityOptions {
  accessibilityPreferred?: boolean;
}
declare interface ScrollBarMargin {
  start?: LengthMetrics;
  end?: LengthMetrics;
}