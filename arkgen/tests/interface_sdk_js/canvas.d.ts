import { CommonMethod, Callback, PixelMap } from './common';
import { FrameNode } from '../FrameNode';
import { ImageAIOptions, ImageAnalyzerConfig } from './imageCommon';
import { Matrix2D } from './matrix2d';
import { VoidCallback, LengthMetricsUnit, LengthMetrics } from './units';
import { Size } from '../Graphics' 
declare type DrawingCanvas = import('../api/@ohos.graphics.drawing').default.Canvas;
declare type CanvasFillRule = "evenodd" | "nonzero";
declare type CanvasLineCap = "butt" | "round" | "square";
declare type CanvasLineJoin = "bevel" | "miter" | "round";
declare type CanvasDirection = "inherit" | "ltr" | "rtl";
declare type CanvasTextAlign = "center" | "end" | "left" | "right" | "start";
declare type CanvasTextBaseline = "alphabetic" | "bottom" | "hanging" | "ideographic" | "middle" | "top";
declare type ImageSmoothingQuality = "high" | "low" | "medium";
declare type FrameNode = import('../api/arkui/FrameNode').FrameNode;
declare class CanvasGradient {
  addColorStop(offset: number, color: string): void;
  addColorStop(offset: number, color: string | ColorMetrics): void;
}
declare class CanvasPath {
  arc(x: number, y: number, radius: number, startAngle: number, endAngle: number, counterclockwise?: boolean): void;
  arcTo(x1: number, y1: number, x2: number, y2: number, radius: number): void;
  bezierCurveTo(cp1x: number, cp1y: number, cp2x: number, cp2y: number, x: number, y: number): void;
  closePath(): void;
  ellipse(
    x: number,
    y: number,
    radiusX: number,
    radiusY: number,
    rotation: number,
    startAngle: number,
    endAngle: number,
    counterclockwise?: boolean,
  ): void;
  lineTo(x: number, y: number): void;
  moveTo(x: number, y: number): void;
  quadraticCurveTo(cpx: number, cpy: number, x: number, y: number): void;
  rect(x: number, y: number, w: number, h: number): void;
  roundRect(x: number, y: number, w: number, h: number, radii?: number | Array<number>): void;
}
declare class Path2D extends CanvasPath {
  addPath(path: Path2D, transform?: Matrix2D): void;
  constructor();
  constructor(unit: LengthMetricsUnit);
  constructor(path: Path2D);
  constructor(path: Path2D, unit: LengthMetricsUnit);
  constructor(d: string);
  constructor(description: string, unit: LengthMetricsUnit);
}
declare interface CanvasPattern {
  setTransform(transform?: Matrix2D): void;
}
declare interface TextMetrics {
  readonly actualBoundingBoxAscent: number;
  readonly actualBoundingBoxDescent: number;
  readonly actualBoundingBoxLeft: number;
  readonly actualBoundingBoxRight: number;
  readonly alphabeticBaseline: number;
  readonly emHeightAscent: number;
  readonly emHeightDescent: number;
  readonly fontBoundingBoxAscent: number;
  readonly fontBoundingBoxDescent: number;
  readonly hangingBaseline: number;
  readonly ideographicBaseline: number;
  readonly width: number;
  readonly height: number;
}
declare class ImageBitmap {
  readonly height: number;
  get height(): number;
  readonly width: number;
  get width(): number;
  close(): void;
  constructor(src: string);
  constructor(src: string, unit: LengthMetricsUnit);
  constructor(data: PixelMap);
  constructor(data: PixelMap, unit: LengthMetricsUnit);
  constructor(src: PixelMap | string, unit?: LengthMetricsUnit);
}
declare class ImageData {
  readonly data: Uint8ClampedArray;
  get data(): Uint8ClampedArray;
  readonly height: number;
  get height(): number;
  readonly width: number;
  get width(): number;
  constructor(width: number, height: number, data?: Uint8ClampedArray);
  constructor(width: number, height: number, data?: Uint8ClampedArray, unit?: LengthMetricsUnit);
}
declare class RenderingContextSettings {
  antialias?: boolean;
  get antialias(): boolean | undefined;
  set antialias(antialias: boolean | undefined);
  constructor(antialias?: boolean);
}
declare class CanvasRenderer extends CanvasPath {
  letterSpacing: LengthMetrics | string;
  get letterSpacing(): LengthMetrics | string;
  set letterSpacing(letterSpacing: LengthMetrics | string);
  globalAlpha: number;
  get globalAlpha(): number;
  set globalAlpha(globalAlpha: number);
  globalCompositeOperation: string;
  get globalCompositeOperation(): string;
  set globalCompositeOperation(globalCompositeOperation: string);
  drawImage(image: ImageBitmap | PixelMap, dx: number, dy: number): void;
  drawImage(image: ImageBitmap | PixelMap, dx: number, dy: number, dw: number, dh: number): void;
  drawImage(
    image: ImageBitmap | PixelMap,
    sx: number,
    sy: number,
    sw: number,
    sh: number,
    dx: number,
    dy: number,
    dw: number,
    dh: number,
  ): void;
  beginPath(): void;
  clip(fillRule?: CanvasFillRule): void;
  clip(path: Path2D, fillRule?: CanvasFillRule): void;
  fill(fillRule?: CanvasFillRule): void;
  fill(path: Path2D, fillRule?: CanvasFillRule): void;
  stroke(): void;
  stroke(path: Path2D): void;
  stroke(path?: Path2D): void;
  fillStyle: string | number | CanvasGradient | CanvasPattern;
  get fillStyle(): string | number | CanvasGradient | CanvasPattern;
  set fillStyle(fillStyle: string | number | CanvasGradient | CanvasPattern);
  strokeStyle: string | number | CanvasGradient | CanvasPattern;
  get strokeStyle(): string | number | CanvasGradient | CanvasPattern;
  set strokeStyle(strokeStyle: string | number | CanvasGradient | CanvasPattern);
  createLinearGradient(x0: number, y0: number, x1: number, y1: number): CanvasGradient;
  createPattern(image: ImageBitmap, repetition: string | null): CanvasPattern | null;
  createRadialGradient(x0: number, y0: number, r0: number, x1: number, y1: number, r1: number): CanvasGradient;
  createConicGradient(
    startAngle: number,
    x: number,
    y: number
  ): CanvasGradient;
  filter: string;
  get filter(): string;
  set filter(filter: string);
  createImageData(sw: number, sh: number): ImageData;
  createImageData(imagedata: ImageData): ImageData;
  getImageData(sx: number, sy: number, sw: number, sh: number): ImageData;
  getPixelMap(sx: number, sy: number, sw: number, sh: number): PixelMap;
  putImageData(imagedata: ImageData, dx: number | string, dy: number | string): void;
  putImageData(
    imagedata: ImageData,
    dx: number | string,
    dy: number | string,
    dirtyX: number | string,
    dirtyY: number | string,
    dirtyWidth: number | string,
    dirtyHeight: number | string
  ): void;
  imageSmoothingEnabled: boolean;
  get imageSmoothingEnabled(): boolean;
  set imageSmoothingEnabled(imageSmoothingEnabled: boolean);
  imageSmoothingQuality: ImageSmoothingQuality;
  get imageSmoothingQuality(): ImageSmoothingQuality;
  set imageSmoothingQuality(imageSmoothingQuality: ImageSmoothingQuality);
  lineCap: CanvasLineCap;
  get lineCap(): CanvasLineCap;
  set lineCap(lineCap: CanvasLineCap);
  lineDashOffset: number;
  get lineDashOffset(): number;
  set lineDashOffset(lineDashOffset: number);
  lineJoin: CanvasLineJoin;
  get lineJoin(): CanvasLineJoin;
  set lineJoin(lineJoin: CanvasLineJoin);
  lineWidth: number;
  get lineWidth(): number;
  set lineWidth(lineWidth: number);
  miterLimit: number;
  get miterLimit(): number;
  set miterLimit(miterLimit: number);
  getLineDash(): number[];
  setLineDash(segments: number[]): void;
  clearRect(x: number, y: number, w: number, h: number): void;
  fillRect(x: number, y: number, w: number, h: number): void;
  strokeRect(x: number, y: number, w: number, h: number): void;
  shadowBlur: number;
  get shadowBlur(): number;
  set shadowBlur(shadowBlur: number);
  shadowColor: string;
  get shadowColor(): string;
  set shadowColor(shadowColor: string);
  shadowOffsetX: number;
  get shadowOffsetX(): number;
  set shadowOffsetX(shadowOffsetX: number);
  shadowOffsetY: number;
  get shadowOffsetY(): number;
  set shadowOffsetY(shadowOffsetY: number);
  restore(): void;
  save(): void;
  fillText(text: string, x: number, y: number, maxWidth?: number): void;
  measureText(text: string): TextMetrics;
  strokeText(text: string, x: number, y: number, maxWidth?: number): void;
  direction: CanvasDirection;
  get direction(): CanvasDirection;
  set direction(direction: CanvasDirection);
  font: string;
  get font(): string;
  set font(font: string);
  textAlign: CanvasTextAlign;
  get textAlign(): CanvasTextAlign;
  set textAlign(textAlign: CanvasTextAlign);
  textBaseline: CanvasTextBaseline;
  get textBaseline(): CanvasTextBaseline;
  set textBaseline(textBaseline: CanvasTextBaseline);
  getTransform(): Matrix2D;
  resetTransform(): void;
  rotate(angle: number): void;
  scale(x: number, y: number): void;
  setTransform(a: number, b: number, c: number, d: number, e: number, f: number): void;
  setTransform(transform?: Matrix2D): void;
  transform(a: number, b: number, c: number, d: number, e: number, f: number): void;
  translate(x: number, y: number): void;
  setPixelMap(value?: PixelMap): void;
  transferFromImageBitmap(bitmap: ImageBitmap): void;
  saveLayer(): void;
  restoreLayer(): void;
  reset(): void;
}
declare class CanvasRenderingContext2D extends CanvasRenderer {
  readonly height: number;
  get height(): number;
  readonly width: number;
  get width(): number;
  readonly canvas: FrameNode;
  get canvas(): FrameNode;
  toDataURL(type?: string, quality?: any): string;
  toDataURL(type?: string, quality?: number): string;
  startImageAnalyzer(config: ImageAnalyzerConfig): Promise<void>;
  stopImageAnalyzer(): void;
  constructor(settings?: RenderingContextSettings);
  constructor(settings?: RenderingContextSettings, unit?: LengthMetricsUnit);
  on(type: 'onAttach', callback: Callback<void>): void;
  off(type: 'onAttach', callback?: Callback<void>): void;
  on(type: 'onDetach', callback: Callback<void>): void;
  off(type: 'onDetach', callback?: Callback<void>): void;
}
declare class OffscreenCanvasRenderingContext2D extends CanvasRenderer {
  toDataURL(type?: string, quality?: any): string;
  toDataURL(type?: string, quality?: number): string;
  transferToImageBitmap(): ImageBitmap;
  constructor(width: number, height: number, settings?: RenderingContextSettings);
  constructor(width: number, height: number, settings?: RenderingContextSettings, unit?: LengthMetricsUnit);
}
declare class OffscreenCanvas {
  height: number;
  get height(): number;
  set height(height: number);
  width: number;
  get width(): number;
  set width(width: number);
  transferToImageBitmap(): ImageBitmap;
  getContext(contextType: "2d", options?: RenderingContextSettings): OffscreenCanvasRenderingContext2D;
  constructor(width: number, height: number);
  constructor(width: number, height: number, unit: LengthMetricsUnit);
  constructor(width: number, height: number, unit?: LengthMetricsUnit);
}
declare interface Size {
  width: number;
  height: number;
}
declare class DrawingRenderingContext {
  get size(): Size;
  get canvas(): DrawingCanvas;
  invalidate(): void;
  constructor(unit?: LengthMetricsUnit);
}
interface CanvasInterface {
  (context?: CanvasRenderingContext2D | DrawingRenderingContext): CanvasAttribute;
  (context: CanvasRenderingContext2D | DrawingRenderingContext, imageAIOptions: ImageAIOptions): CanvasAttribute;
}
declare class CanvasAttribute extends CommonMethod<CanvasAttribute> {
  onReady(event: VoidCallback): CanvasAttribute;
  enableAnalyzer(enable: boolean): CanvasAttribute;
}
declare const Canvas: CanvasInterface;
declare const CanvasInstance: CanvasAttribute;