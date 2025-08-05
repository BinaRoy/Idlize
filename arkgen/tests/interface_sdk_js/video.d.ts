import { Resource } from '../../global/resource';
import { ImageAIOptions, ImageAnalyzerConfig } from './imageCommon';
import { ImageFit } from './enums';
import { CommonMethod, Callback, PixelMap } from './common';
import { VoidCallback, ColorMetrics } from './units';
declare enum SeekMode {
  PreviousKeyframe,
  NextKeyframe,
  ClosestKeyframe,
  Accurate,
}
declare enum PlaybackSpeed {
  Speed_Forward_0_75_X,
  Speed_Forward_1_00_X,
  Speed_Forward_1_25_X,
  Speed_Forward_1_75_X,
  Speed_Forward_2_00_X,
}
interface FullscreenInfo {
  fullscreen: boolean;
}
interface PreparedInfo {
  duration: number;
}
interface PlaybackInfo {
  time: number;
}
declare interface PosterOptions {
  showFirstFrame?: boolean;
}
declare interface VideoOptions {
  src?: string | Resource;
  currentProgressRate?: number | string | PlaybackSpeed;
  previewUri?: string | PixelMap | Resource;
  controller?: VideoController;
  imageAIOptions?: ImageAIOptions;
  posterOptions?: PosterOptions;
}
declare class VideoController {
  constructor();
  start();
  start(): void;
  pause();
  pause(): void;
  stop();
  stop(): void;
  setCurrentTime(value: number);
  setCurrentTime(value: number): void;
  requestFullscreen(value: boolean);
  requestFullscreen(value: boolean): void;
  exitFullscreen();
  exitFullscreen(): void;
  setCurrentTime(value: number, seekMode: SeekMode);
  setCurrentTime(value: number, seekMode: SeekMode): void;
  reset(): void;
}
interface VideoInterface {
  (value: VideoOptions): VideoAttribute;
}
declare class VideoAttribute extends CommonMethod<VideoAttribute> {
  muted(value: boolean): VideoAttribute;
  autoPlay(value: boolean): VideoAttribute;
  controls(value: boolean): VideoAttribute;
  loop(value: boolean): VideoAttribute;
  objectFit(value: ImageFit): VideoAttribute;
  onStart(event: VoidCallback): VideoAttribute;
  onPause(event: VoidCallback): VideoAttribute;
  onFinish(event: VoidCallback): VideoAttribute;
  onFullscreenChange(callback: Callback<FullscreenInfo>): VideoAttribute;
  onPrepared(callback: Callback<PreparedInfo>): VideoAttribute;
  onSeeking(callback: Callback<PlaybackInfo>): VideoAttribute;
  onSeeked(callback: Callback<PlaybackInfo>): VideoAttribute;
  onUpdate(callback: Callback<PlaybackInfo>): VideoAttribute;
  onError(event: VoidCallback | import('../api/@ohos.base').ErrorCallback): VideoAttribute;
  onError(event: () => void): VideoAttribute;
  onStop(event: Callback<void>): VideoAttribute;
  enableAnalyzer(enable: boolean): VideoAttribute;
  analyzerConfig(config: ImageAnalyzerConfig): VideoAttribute;
  surfaceBackgroundColor(color: ColorMetrics): VideoAttribute;
  enableShortcutKey(enabled: boolean): VideoAttribute;
}
declare const Video: VideoInterface;
declare const VideoInstance: VideoAttribute;