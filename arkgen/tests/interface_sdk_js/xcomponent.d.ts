import { ImageAIOptions, ImageAnalyzerConfig } from './imageCommon';
import { CommonMethod } from './common';
import { XComponentType } from './enums';
import { VoidCallback } from './units';
declare interface SurfaceRect {
  offsetX?: number;
  offsetY?: number;
  surfaceWidth: number;
  surfaceHeight: number;
}
declare interface SurfaceRotationOptions {
  lock?: boolean;
}
declare class XComponentController {
  constructor();
  getXComponentSurfaceId(): string;
  getXComponentContext(): Object;
  setXComponentSurfaceSize(value: {
    surfaceWidth: number;
    surfaceHeight: number;
  }): void;
  setXComponentSurfaceRect(rect: SurfaceRect): void;
  getXComponentSurfaceRect(): SurfaceRect;
  setXComponentSurfaceRotation(rotationOptions: SurfaceRotationOptions): void;
  getXComponentSurfaceRotation(): Required<SurfaceRotationOptions>;
  onSurfaceCreated(surfaceId: string): void;
  onSurfaceChanged(surfaceId: string, rect: SurfaceRect): void;
  onSurfaceDestroyed(surfaceId: string): void;
  startImageAnalyzer(config: ImageAnalyzerConfig): Promise<void>;
  stopImageAnalyzer(): void;
  lockCanvas(): DrawingCanvas | null;
  unlockCanvasAndPost(canvas: DrawingCanvas):void;
}
declare interface XComponentOptions {
  type: XComponentType;
  controller: XComponentController;
  imageAIOptions?: ImageAIOptions;
  screenId?: number;
}
declare interface NativeXComponentParameters {
  type: XComponentType;
  imageAIOptions?: ImageAIOptions;
}
interface XComponentInterface {
  (value: { id: string; type: string; libraryname?: string; controller?: XComponentController }): XComponentAttribute;
  (value: { id: string; type: XComponentType; libraryname?: string; controller?: XComponentController }): XComponentAttribute;
  (options: XComponentOptions): XComponentAttribute;
  (params: NativeXComponentParameters): XComponentAttribute;
}
declare type OnNativeLoadCallback = (event?: object) => void;
declare class XComponentAttribute extends CommonMethod<XComponentAttribute> {
  onLoad(callback: OnNativeLoadCallback): XComponentAttribute;
  onDestroy(event: VoidCallback): XComponentAttribute;
  enableAnalyzer(enable: boolean): XComponentAttribute;
  enableSecure(isSecure: boolean): XComponentAttribute;
  hdrBrightness(brightness: number): XComponentAttribute;
  enableTransparentLayer(enabled: boolean): XComponentAttribute;
}
declare const XComponent: XComponentInterface;
declare const XComponentInstance: XComponentAttribute;
declare interface XComponentParameter {
  id: string;
  type: XComponentType;
  libraryname?: string;
  controller?: XComponentController;
}
interface XComponentInterface {
  (value: XComponentParameter): XComponentAttribute;
  (options: XComponentOptions): XComponentAttribute;
  (params: NativeXComponentParameters): XComponentAttribute;
}