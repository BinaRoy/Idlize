import { BaseEvent, SourceTool, Callback } from './common'
import { InteractionHand } from './enums'
declare enum PanDirection {
  None,
  Horizontal,
  Left,
  Right,
  Vertical,
  Up,
  Down,
  All,
}
declare enum SwipeDirection {
  None,
  Horizontal,
  Vertical,
  All,
}
declare enum GestureMode {
  Sequence,
  Parallel,
  Exclusive,
}
declare enum GestureMask {
  Normal,
  IgnoreInternal,
}
declare enum GestureJudgeResult {
  CONTINUE = 0,
  REJECT = 1,
}
declare namespace GestureControl {
  enum GestureType {
    TAP_GESTURE = 0,
    LONG_PRESS_GESTURE = 1,
    PAN_GESTURE = 2,
    PINCH_GESTURE = 3,
    SWIPE_GESTURE = 4,
    ROTATION_GESTURE = 5,
    DRAG = 6,
    CLICK = 7,
  }
}
declare interface GestureInfo {
  tag?: string;
  type: GestureControl.GestureType;
  isSystemGesture: boolean;
}
declare interface EventLocationInfo {
  x: number;
  y: number;
  windowX: number;
  windowY: number;
  displayX: number;
  displayY: number;
}
interface FingerInfo {
  id: number;
  globalDisplayX?: number;
  globalDisplayY?: number;
  globalX: number;
  globalY: number;
  localX: number;
  localY: number;
  displayX: number;
  displayY: number;
  hand?: InteractionHand;
}
declare type GestureType =
  TapGestureInterface
  | LongPressGestureInterface
  | PanGestureInterface
  | PinchGestureInterface
  | SwipeGestureInterface
  | RotationGestureInterface
  | GestureGroupInterface;
export type GestureType = Gesture | GestureGroup;
interface BaseGestureEvent extends BaseEvent {
  fingerList: FingerInfo[];
  fingerInfos?: FingerInfo[];
}
interface TapGestureEvent extends BaseGestureEvent {
  tapLocation?: EventLocationInfo;
}
interface LongPressGestureEvent extends BaseGestureEvent {
  repeat: boolean;
}
interface PanGestureEvent extends BaseGestureEvent {
  offsetX: number;
  offsetY: number;
  velocityX: number;
  velocityY: number;
  velocity: number;
}
interface PinchGestureEvent extends BaseGestureEvent {
  scale: number;
  pinchCenterX: number;
  pinchCenterY: number;
}
interface RotationGestureEvent extends BaseGestureEvent {
  angle: number;
}
interface SwipeGestureEvent extends BaseGestureEvent {
  angle: number;
  speed: number;
}
interface GestureEvent extends BaseEvent {
  repeat: boolean;
  fingerList: FingerInfo[];
  fingerInfos?: FingerInfo[];
  offsetX: number;
  offsetY: number;
  angle: number;
  speed: number;
  scale: number;
  pinchCenterX: number;
  pinchCenterY: number;
  velocityX: number;
  velocityY: number;
  velocity: number;
  tapLocation?: EventLocationInfo;
}
interface GestureInterface<T> {
  tag(tag: string): T;
  allowedTypes(types: Array<SourceTool>): T;
}
  interface BaseHandlerOptions {
  isFingerCountLimited?: boolean;
}
export declare class Gesture {
  tag(tag: string): this;
  allowedTypes(types: Array<SourceTool>): this;
}
declare interface TapGestureParameters extends BaseHandlerOptions {
  count?: number;
  fingers?: number;
  distanceThreshold?: number;
}
interface TapGestureInterface extends GestureInterface<TapGestureInterface> {
  (value?: TapGestureParameters): TapGestureInterface;
  onAction(event: (event: GestureEvent) => void): TapGestureInterface;
}
export declare class TapGesture extends Gesture {
  static $_instantiate(factory: () => TapGesture, value?: TapGestureParameters): TapGesture
  onAction(event: Callback<GestureEvent>): this;
}
interface LongPressGestureInterface extends GestureInterface<LongPressGestureInterface> {
  (value?: { fingers?: number; repeat?: boolean; duration?: number }): LongPressGestureInterface;
    (options?: LongPressGestureHandlerOptions): LongPressGestureInterface;
  onAction(event: (event: GestureEvent) => void): LongPressGestureInterface;
  onActionEnd(event: (event: GestureEvent) => void): LongPressGestureInterface;
  onActionCancel(event: () => void): LongPressGestureInterface;
  onActionCancel(event: Callback<GestureEvent>): LongPressGestureInterface;
}
export declare class LongPressGesture extends Gesture {
  static $_instantiate(factory: () => LongPressGesture, value?: LongPressGestureHandlerOptions): LongPressGesture
  onAction(event: Callback<GestureEvent>): this;
  onActionEnd(event: Callback<GestureEvent>): this;
  onActionCancel(event: Callback<GestureEvent>): this;
}
declare class PanGestureOptions {
  constructor(value?: { fingers?: number; direction?: PanDirection; distance?: number });
  constructor(value?: PanGestureHandlerOptions);
  setDirection(value: PanDirection);
  setDirection(value: PanDirection): void;
  setDistance(value: number);
  setDistance(value: number): void;
  setFingers(value: number);
  setFingers(value: number): void;
  getDirection(): PanDirection;
  getDistance(): number;
}
interface PanGestureInterface extends GestureInterface<PanGestureInterface> {
  (value?: { fingers?: number; direction?: PanDirection; distance?: number } | PanGestureOptions): PanGestureInterface;
  (options?: PanGestureHandlerOptions): PanGestureInterface;
  onActionStart(event: (event: GestureEvent) => void): PanGestureInterface;
  onActionUpdate(event: (event: GestureEvent) => void): PanGestureInterface;
  onActionEnd(event: (event: GestureEvent) => void): PanGestureInterface;
  onActionCancel(event: () => void): PanGestureInterface;
  onActionCancel(event: Callback<GestureEvent>): PanGestureInterface;
}
export declare class PanGesture extends Gesture {
  static $_instantiate(factory: () => PanGesture, value?: PanGestureHandlerOptions | PanGestureOptions): PanGesture
  onActionStart(event: Callback<GestureEvent>): this;
  onActionUpdate(event: Callback<GestureEvent>): this;
  onActionEnd(event: Callback<GestureEvent>): this;
  onActionCancel(event: Callback<GestureEvent>): this;
}
interface SwipeGestureInterface extends GestureInterface<SwipeGestureInterface> {
  (value?: { fingers?: number; direction?: SwipeDirection; speed?: number }): SwipeGestureInterface;
  (options?: SwipeGestureHandlerOptions): SwipeGestureInterface;
  onAction(event: (event: GestureEvent) => void): SwipeGestureInterface;
}
export declare class SwipeGesture extends Gesture {
  static $_instantiate(factory: () => SwipeGesture, value?: SwipeGestureHandlerOptions): SwipeGesture
  onAction(event: Callback<GestureEvent>): this;
}
interface PinchGestureInterface extends GestureInterface<PinchGestureInterface> {
  (value?: { fingers?: number; distance?: number }): PinchGestureInterface;
  (options?: PinchGestureHandlerOptions): PinchGestureInterface;
  onActionStart(event: (event: GestureEvent) => void): PinchGestureInterface;
  onActionUpdate(event: (event: GestureEvent) => void): PinchGestureInterface;
  onActionEnd(event: (event: GestureEvent) => void): PinchGestureInterface;
  onActionCancel(event: () => void): PinchGestureInterface;
  onActionCancel(event: Callback<GestureEvent>): PinchGestureInterface;
}
export declare class PinchGesture extends Gesture {
  static $_instantiate(factory: () => PinchGesture, value?: PinchGestureHandlerOptions): PinchGesture
  onActionStart(event: Callback<GestureEvent>): this;
  onActionUpdate(event: Callback<GestureEvent>): this;
  onActionEnd(event: Callback<GestureEvent>): this;
  onActionCancel(event: Callback<GestureEvent>): this;
}
interface RotationGestureInterface extends GestureInterface<RotationGestureInterface> {
  (value?: { fingers?: number; angle?: number }): RotationGestureInterface;
  (options?: RotationGestureHandlerOptions): RotationGestureInterface;
  onActionStart(event: (event: GestureEvent) => void): RotationGestureInterface;
  onActionUpdate(event: (event: GestureEvent) => void): RotationGestureInterface;
  onActionEnd(event: (event: GestureEvent) => void): RotationGestureInterface;
  onActionCancel(event: () => void): RotationGestureInterface;
   onActionCancel(event: Callback<GestureEvent>): RotationGestureInterface;
}
export declare class RotationGesture extends Gesture {
  static $_instantiate(factory: () => RotationGesture, value?: RotationGestureHandlerOptions): RotationGesture
  onActionStart(event: Callback<GestureEvent>): this;
  onActionUpdate(event: Callback<GestureEvent>): this;
  onActionEnd(event: Callback<GestureEvent>): this;
  onActionCancel(event: Callback<GestureEvent>): this;
}
interface GestureGroupInterface {
  (mode: GestureMode, ...gesture: GestureType[]): GestureGroupInterface;
  onCancel(event: () => void): GestureGroupInterface;
}
export declare class GestureGroup {
  static $_instantiate(factory: () => GestureGroup, mode: GestureMode, ...gesture: GestureType[]): GestureGroup;
  onCancel(event: Callback<void>): GestureGroup;
}
declare const TapGesture: TapGestureInterface;
declare const LongPressGesture: LongPressGestureInterface;
declare const PanGesture: PanGestureInterface;
declare const SwipeGesture: SwipeGestureInterface;
declare const PinchGesture: PinchGestureInterface;
declare const RotationGesture: RotationGestureInterface;
declare const GestureGroup: GestureGroupInterface;
declare class GestureHandler<T> implements GestureInterface<T> {
  tag(tag: string): T;
  allowedTypes(types: Array<SourceTool>): T;
}
export declare class GestureHandler {
  tag(tag: string): this;
  allowedTypes(types: Array<SourceTool>): this;
}
interface TapGestureHandlerOptions extends BaseHandlerOptions {
  count?: number;
  fingers?: number;
}
declare class TapGestureHandler extends GestureHandler<TapGestureHandler> {
  constructor(options?: TapGestureHandlerOptions);
  onAction(event: Callback<GestureEvent>): TapGestureHandler;
}
export declare class TapGestureHandler extends GestureHandler {
  constructor(options?: TapGestureHandlerOptions);
  onAction(event: Callback<GestureEvent>): this;
}
interface LongPressGestureHandlerOptions extends BaseHandlerOptions {
  fingers?: number;
  repeat?: boolean;
  duration?: number;
}
declare class LongPressGestureHandler extends GestureHandler<LongPressGestureHandler> {
  constructor(options?: LongPressGestureHandlerOptions);
  onAction(event: Callback<GestureEvent>): LongPressGestureHandler;
  onActionEnd(event: Callback<GestureEvent>): LongPressGestureHandler;
  onActionCancel(event: Callback<void>): LongPressGestureHandler;
  onActionCancel(event: Callback<GestureEvent>): LongPressGestureHandler;
}
export declare class LongPressGestureHandler extends GestureHandler {
  constructor(options?: LongPressGestureHandlerOptions);
  onAction(event: Callback<GestureEvent>): this;
  onActionEnd(event: Callback<GestureEvent>): this;
  onActionCancel(event: Callback<GestureEvent>): this;
}
interface PanGestureHandlerOptions extends BaseHandlerOptions {
  fingers?: number;
  direction?: PanDirection;
  distance?: number;
  distanceMap?: Map<SourceTool, number>;
}
declare class PanGestureHandler extends GestureHandler<PanGestureHandler> {
  constructor(options?: PanGestureHandlerOptions);
  onActionStart(event: Callback<GestureEvent>): PanGestureHandler;
  onActionUpdate(event: Callback<GestureEvent>): PanGestureHandler;
  onActionEnd(event: Callback<GestureEvent>): PanGestureHandler;
  onActionCancel(event: Callback<void>): PanGestureHandler;
  onActionCancel(event: Callback<GestureEvent>): PanGestureHandler;
}
export declare class PanGestureHandler extends GestureHandler {
  constructor(options?: PanGestureHandlerOptions);
  onActionStart(event: Callback<GestureEvent>): this;
  onActionUpdate(event: Callback<GestureEvent>): this;
  onActionEnd(event: Callback<GestureEvent>): this;
  onActionCancel(event: Callback<GestureEvent>): this;
}
interface SwipeGestureHandlerOptions extends BaseHandlerOptions {
  fingers?: number;
  direction?: SwipeDirection;
  speed?: number;
}
declare class SwipeGestureHandler extends GestureHandler<SwipeGestureHandler> {
  constructor(options?: SwipeGestureHandlerOptions);
  onAction(event: Callback<GestureEvent>): SwipeGestureHandler;
}
export declare class SwipeGestureHandler extends GestureHandler {
  constructor(options?: SwipeGestureHandlerOptions);
  onAction(event: Callback<GestureEvent>): this;
}
interface PinchGestureHandlerOptions extends BaseHandlerOptions {
  fingers?: number;
  distance?: number;
}
declare class PinchGestureHandler extends GestureHandler<PinchGestureHandler> {
  constructor(options?: PinchGestureHandlerOptions);
  onActionStart(event: Callback<GestureEvent>): PinchGestureHandler;
  onActionUpdate(event: Callback<GestureEvent>): PinchGestureHandler;
  onActionEnd(event: Callback<GestureEvent>): PinchGestureHandler;
  onActionCancel(event: Callback<void>): PinchGestureHandler;
  onActionCancel(event: Callback<GestureEvent>): PinchGestureHandler;
}
export declare class PinchGestureHandler extends GestureHandler {
  constructor(options?: PinchGestureHandlerOptions);
  onActionStart(event: Callback<GestureEvent>): this;
  onActionUpdate(event: Callback<GestureEvent>): this;
  onActionEnd(event: Callback<GestureEvent>): this;
  onActionCancel(event: Callback<GestureEvent>): this;
}
interface RotationGestureHandlerOptions extends BaseHandlerOptions {
  fingers?: number;
  angle?: number;
}
declare class RotationGestureHandler extends GestureHandler<RotationGestureHandler> {
  constructor(options?: RotationGestureHandlerOptions);
  onActionStart(event: Callback<GestureEvent>): RotationGestureHandler;
  onActionUpdate(event: Callback<GestureEvent>): RotationGestureHandler;
  onActionEnd(event: Callback<GestureEvent>): RotationGestureHandler;
  onActionCancel(event: Callback<void>): RotationGestureHandler;
  onActionCancel(event: Callback<GestureEvent>): RotationGestureHandler;
}
export declare class RotationGestureHandler extends GestureHandler {
  constructor(options?: RotationGestureHandlerOptions);
  onActionStart(event: Callback<GestureEvent>): this;
  onActionUpdate(event: Callback<GestureEvent>): this;
  onActionEnd(event: Callback<GestureEvent>): this;
  onActionCancel(event: Callback<GestureEvent>): this;
}
interface GestureGroupGestureHandlerOptions {
  mode: GestureMode;
  gestures: GestureHandler<TapGestureHandler | LongPressGestureHandler | PanGestureHandler | SwipeGestureHandler | PinchGestureHandler | RotationGestureHandler | GestureGroupHandler>[];
  gestures: GestureHandler[];
}
declare class GestureGroupHandler extends GestureHandler<GestureGroupHandler> {
  constructor(options?: GestureGroupGestureHandlerOptions);
  onCancel(event: Callback<void>): GestureGroupHandler;
}
export declare class GestureGroupHandler extends GestureHandler {
  constructor(options?: GestureGroupGestureHandlerOptions);
  onCancel(event: Callback<void>): this;
}
declare enum GesturePriority {
  NORMAL = 0,
  PRIORITY = 1,
}
declare enum GestureRecognizerState {
  READY = 0,
  DETECTING = 1,
  PENDING = 2,
  BLOCKED = 3,
  SUCCESSFUL = 4,
  FAILED = 5,
}
declare class ScrollableTargetInfo extends EventTargetInfo {
  isBegin(): boolean;
  isEnd(): boolean;
}
declare class EventTargetInfo {
  getId(): string;
}
declare class TouchRecognizer {
    getEventTargetInfo(): EventTargetInfo;
    cancelTouch(): void;
}
declare class GestureRecognizer {
  getTag(): string;
  getType(): GestureControl.GestureType;
  isBuiltIn(): boolean;
  setEnabled(isEnabled: boolean): void;
  isEnabled(): boolean;
  getState(): GestureRecognizerState;
  getEventTargetInfo(): EventTargetInfo;
  isValid(): boolean;
  getFingerCount(): number;
  isFingerCountLimit(): boolean;
  preventBegin(): void;
}
declare class TapRecognizer extends GestureRecognizer {
  getTapCount(): number;
}
declare class LongPressRecognizer extends GestureRecognizer {
  isRepeat(): boolean;
  getDuration(): number;
}
declare class SwipeRecognizer extends GestureRecognizer {
  getVelocityThreshold(): number;
  getDirection(): SwipeDirection;
}
declare class PinchRecognizer extends GestureRecognizer {
  getDistance(): number;
}
declare class RotationRecognizer extends GestureRecognizer {
  getAngle(): number;
}
declare class PanRecognizer extends GestureRecognizer {
  getPanGestureOptions(): PanGestureOptions;
  getDirection(): PanDirection;
  getDistance(): number;
  getDistanceMap(): Map<SourceTool, number>;
}