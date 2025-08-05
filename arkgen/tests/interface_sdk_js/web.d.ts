import webview from '../../@ohos.web.webview';
import image from '../../@ohos.multimedia.image';
import { CommonMethod, Callback, TouchEvent, NestedScrollOptions, KeyEvent } from './common';
import { CustomBuilder } from './builder'
import { Resource } from '../../global/resource';
import { Position, ResourceStr } from './units';
import { MenuType, EditMenuOptions } from './textCommon';
import { CopyOptions, NestedScrollMode } from './enums';
type WebviewController = webview.WebviewController;
declare type WebviewController = import('../api/@ohos.web.webview').default.WebviewController;
type OnNavigationEntryCommittedCallback = (loadCommittedDetails: LoadCommittedDetails) => void;
type OnSslErrorEventCallback = (sslErrorEvent: SslErrorEvent) => void;
type OnLargestContentfulPaintCallback = (largestContentfulPaint: LargestContentfulPaint) => void;
type OnFirstMeaningfulPaintCallback = (firstMeaningfulPaint: FirstMeaningfulPaint) => void;
type OnOverrideUrlLoadingCallback = (webResourceRequest: WebResourceRequest) => boolean;
type OnIntelligentTrackingPreventionCallback = (details: IntelligentTrackingPreventionDetails) => void;
type OnNativeEmbedVisibilityChangeCallback = (nativeEmbedVisibilityInfo: NativeEmbedVisibilityInfo) => void;
declare interface NativeMediaPlayerConfig {
  enable: boolean;
  shouldOverlay: boolean;
}
type OnRenderProcessNotRespondingCallback = (data : RenderProcessNotRespondingData) => void;
type OnRenderProcessRespondingCallback = () => void;
type OnViewportFitChangedCallback = (viewportFit: ViewportFit) => void;
type OnAdsBlockedCallback = (details: AdsBlockedDetails) => void;
declare interface AdsBlockedDetails {
  url: string;
  adsBlocked: Array<string>;
}
declare interface WebKeyboardOptions {
  useSystemKeyboard: boolean;
  enterKeyType?: int;
  customKeyboard?: CustomBuilder;
}
declare class WebKeyboardController {
  constructor();
  insertText(text: string): void;
  deleteForward(length: int): void;
  deleteBackward(length: int): void;
  sendFunctionKey(key: int): void;
  close(): void;
}
declare interface WebKeyboardCallbackInfo {
  controller: WebKeyboardController;
  attributes: Record<string, string>;
}
type WebKeyboardCallback = (keyboardCallbackInfo: WebKeyboardCallbackInfo) => WebKeyboardOptions;
declare enum MessageLevel {
  Debug,
  Error,
  Info,
  Log,
  Warn
}
declare enum MixedMode {
  All = 0,
  Compatible = 1,
  None = 2
}
type OnSafeBrowsingCheckResultCallback = (threatType: ThreatType) => void;
declare enum HitTestType {
  EditText = 0,
  Email = 1,
  HttpAnchor = 2,
  HttpAnchorImg = 3,
  Img = 4,
  Map = 5,
  Phone = 6,
  Unknown = 7
}
declare enum CacheMode {
  Default = 0,
  None = 1,
  Online = 2,
  Only = 3
}
declare enum OverScrollMode {
  NEVER = 0,
  ALWAYS = 1
}
declare enum BlurOnKeyboardHideMode {
  SILENT = 0,
  BLUR = 1
}
declare enum WebDarkMode {
  Off = 0,
  On = 1,
  Auto = 2
}
declare enum WebCaptureMode {
  HOME_SCREEN = 0
}
declare enum ThreatType {
  THREAT_ILLEGAL = 0,
  THREAT_FRAUD = 1,
  THREAT_RISK = 2,
  THREAT_WARNING = 3
}
declare interface WebMediaOptions {
  resumeInterval?: int;
  audioExclusive?: boolean;
  audioSessionType?: AudioSessionType;
}
declare interface ScreenCaptureConfig {
  captureMode: WebCaptureMode;
}
declare class FullScreenExitHandler {
  constructor();
  exitFullScreen(): void;
}
declare interface FullScreenEnterEvent {
  handler: FullScreenExitHandler;
  videoWidth?: number;
  videoHeight?: number;
}
type OnFullScreenEnterCallback = (event: FullScreenEnterEvent) => void;
type MouseInfoCallback = (event: NativeEmbedMouseInfo) => void;
declare enum RenderExitReason {
  ProcessAbnormalTermination = 0,
  ProcessWasKilled = 1,
  ProcessCrashed = 2,
  ProcessOom = 3,
  ProcessExitUnknown = 4
}
type OnContextMenuHideCallback = () => void;
declare enum SslError {
  Invalid = 0,
  HostMismatch = 1,
  DateInvalid = 2,
  Untrusted = 3
}
declare enum FileSelectorMode {
  FileOpenMode = 0,
  FileOpenMultipleMode = 1,
  FileOpenFolderMode = 2,
  FileSaveMode = 3
}
declare enum WebLayoutMode {
  NONE = 0,
  FIT_CONTENT = 1
}
declare enum RenderProcessNotRespondingReason {
  INPUT_TIMEOUT = 0,
  NAVIGATION_COMMIT_TIMEOUT = 1
}
declare class FileSelectorParam {
  constructor();
  getTitle(): string;
  getMode(): FileSelectorMode;
  getAcceptType(): Array<string>;
  isCapture(): boolean;
  getMimeTypes(): Array<string>;
}
declare class JsResult {
  constructor();
  handleCancel(): void;
  handleConfirm(): void;
  handlePromptConfirm(result: string): void;
}
declare class FileSelectorResult {
  constructor();
  handleFileList(fileList: Array<string>): void;
}
declare class HttpAuthHandler {
  constructor();
  confirm(userName: string, password: string): boolean;
  cancel(): void;
  isHttpAuthInfoSaved(): boolean;
}
declare class SslErrorHandler {
  constructor();
  handleConfirm(): void;
  handleCancel(): void;
  handleCancel(abortLoading: boolean): void;
}
declare class ClientAuthenticationHandler {
  constructor();
  confirm(priKeyFile: string, certChainFile: string): void;
  confirm(authUri: string): void;
  cancel(): void;
  ignore(): void;
}
declare enum ProtectedResourceType {
  MidiSysex = 'TYPE_MIDI_SYSEX',
  VIDEO_CAPTURE = 'TYPE_VIDEO_CAPTURE',
  AUDIO_CAPTURE = 'TYPE_AUDIO_CAPTURE',
  SENSOR = 'TYPE_SENSOR'
}
declare class PermissionRequest {
  constructor();
  deny(): void;
  getOrigin(): string;
  getAccessibleResource(): Array<string>;
  grant(resources: Array<string>): void;
}
declare class ScreenCaptureHandler {
  constructor();
  getOrigin(): string;
  grant(config: ScreenCaptureConfig): void;
  deny(): void;
}
declare class DataResubmissionHandler {
  constructor();
  resend(): void;
  cancel(): void;
}
declare class ControllerHandler {
  constructor();
  setWebController(controller: WebviewController): void;
}
declare enum ContextMenuSourceType {
  None = 0,
  Mouse = 1,
  LongPress = 2
}
declare enum ContextMenuMediaType {
  None = 0,
  Image = 1
  VIDEO = 2,
  AUDIO = 3
}
declare enum ContextMenuInputFieldType {
  None = 0,
  PlainText = 1,
  Password = 2,
  Number = 3,
  Telephone = 4,
  Other = 5
}
declare enum NativeEmbedStatus {
  CREATE = 0,
  UPDATE = 1,
  DESTROY = 2,
  ENTER_BFCACHE = 3,
  LEAVE_BFCACHE = 4
}
declare enum ContextMenuEditStateFlags {
  NONE = 0,
  CAN_CUT = 1 << 0,
  CAN_COPY = 1 << 1,
  CAN_PASTE = 1 << 2,
  CAN_SELECT_ALL = 1 << 3
}
declare enum WebNavigationType {
  UNKNOWN = 0,
  MAIN_FRAME_NEW_ENTRY = 1,
  MAIN_FRAME_EXISTING_ENTRY = 2,
  NAVIGATION_TYPE_NEW_SUBFRAME = 4,
  NAVIGATION_TYPE_AUTO_SUBFRAME = 5
}
declare enum RenderMode {
  ASYNC_RENDER = 0,
  SYNC_RENDER = 1
}
declare enum ViewportFit {
  AUTO = 0,
  CONTAINS = 1,
  COVER = 2
}
declare class WebContextMenuParam {
  constructor();
  x(): int;
  y(): int;
  getLinkUrl(): string;
  getUnfilteredLinkUrl(): string;
  getSourceUrl(): string;
  existsImageContents(): boolean;
  getMediaType(): ContextMenuMediaType;
  getSelectionText(): string;
  getSourceType(): ContextMenuSourceType;
  getInputFieldType(): ContextMenuInputFieldType;
  isEditable(): boolean;
  getEditStateFlags(): int;
  getPreviewWidth(): int;
  getPreviewHeight(): int;
}
declare class WebContextMenuResult {
  constructor();
  closeContextMenu(): void;
  copyImage(): void;
  copy(): void;
  paste(): void;
  cut(): void;
  selectAll(): void;
  redo(): void;
  undo(): void;
  pasteAndMatchStyle(): void;
}
declare class ConsoleMessage {
  constructor(message: string, sourceId: string, lineNumber: number, messageLevel: MessageLevel);
  constructor();
  getMessage(): string;
  getSourceId(): string;
  getLineNumber(): number;
  getMessageLevel(): MessageLevel;
}
declare class WebResourceRequest {
  constructor();
  getRequestHeader(): Array<Header>;
  getRequestUrl(): string;
  isRequestGesture(): boolean;
  isMainFrame(): boolean;
  isRedirect(): boolean;
  getRequestMethod(): string;
}
declare class WebResourceResponse {
  constructor();
  getResponseData(): string;
  getResponseDataEx(): string | number | ArrayBuffer | Resource | undefined;
  getResponseEncoding(): string;
  getResponseMimeType(): string;
  getReasonMessage(): string;
  getResponseHeader(): Array<Header>;
  getResponseCode(): number;
  setResponseData(data: string | number | Resource | ArrayBuffer): void;
  setResponseEncoding(encoding: string): void;
  setResponseMimeType(mimeType: string): void;
  setReasonMessage(reason: string): void;
  setResponseHeader(header: Array<Header>): void;
  setResponseCode(code: number): void;
  setResponseIsReady(IsReady: boolean): void;
  getResponseIsReady(): boolean;
}
declare interface Header {
  headerKey: string;
  headerValue: string;
}
declare class WebResourceError {
  constructor();
  getErrorInfo(): string;
  getErrorCode(): number;
}
declare class JsGeolocation {
  constructor();
  invoke(origin: string, allow: boolean, retain: boolean): void;
}
declare class WebCookie {
  constructor();
  setCookie();
  saveCookie();
}
declare class EventResult {
  constructor();
  setGestureEventResult(result: boolean): void;
  setGestureEventResult(result: boolean, stopPropagation: boolean): void;
  setMouseEventResult(result: boolean, stopPropagation?: boolean): void;
}
declare class WebController {
  constructor();
  onInactive(): void;
  onActive(): void;
  zoom(factor: number): void;
  clearHistory(): void;
  runJavaScript(options: { script: string, callback?: (result: string) => void });
  loadData(options: { data: string, mimeType: string, encoding: string, baseUrl?: string, historyUrl?: string });
  loadUrl(options: { url: string | Resource, headers?: Array<Header> });
  refresh();
  stop();
  registerJavaScriptProxy(options: { object: object, name: string, methodList: Array<string> });
  deleteJavaScriptRegister(name: string);
  getHitTest(): HitTestType;
  requestFocus();
  accessBackward(): boolean;
  accessForward(): boolean;
  accessStep(step: number): boolean;
  backward();
  forward();
  getCookieManager(): WebCookie;
}
declare interface WebOptions {
  src: string | Resource;
  controller: WebController | WebviewController;
  controller: WebviewController;
  renderMode? : RenderMode;
  incognitoMode? : boolean;
  sharedRenderProcessToken? : string;
}
declare interface ScriptItem {
  script: string;
  scriptRules: Array<string>;
}
declare interface LoadCommittedDetails {
  isMainFrame: boolean;
  isSameDocument: boolean;
  didReplaceEntry: boolean;
  navigationType: WebNavigationType;
  url: string;
}
declare interface IntelligentTrackingPreventionDetails {
  host: string;
  trackerHost: string;
}
interface WebInterface {
  (value: WebOptions): WebAttribute;
}
declare interface NativeEmbedInfo {
  id?: string;
  type?: string;
  src?: string;
  position?: Position;
  width?: int;
  height?: int;
  url?: string;
  tag?: string;
  params?: Map<string, string>;
}
declare interface NativeEmbedDataInfo {
  status?: NativeEmbedStatus;
  surfaceId?: string;
  embedId?: string;
  info?: NativeEmbedInfo;
}
declare interface NativeEmbedVisibilityInfo {
  visibility: boolean;
  embedId: string;
}
declare interface NativeEmbedTouchInfo {
  embedId?: string;
  touchEvent?: TouchEvent;
  result?: EventResult;
}
declare interface NativeEmbedMouseInfo {
  embedId?: string;
  mouseEvent?: MouseEvent;
   result?: EventResult;
 }
declare interface FirstMeaningfulPaint {
  navigationStartTime?: long;
  firstMeaningfulPaintTime?: long;
}
declare interface LargestContentfulPaint {
  navigationStartTime?: long;
  largestImagePaintTime?: long;
  largestTextPaintTime?: long;
  imageBPP?: double;
  largestImageLoadStartTime?: long;
  largestImageLoadEndTime?: long;
}
declare interface RenderProcessNotRespondingData {
  jsStack: string;
  pid: int;
  reason: RenderProcessNotRespondingReason;
}
declare interface OnPageEndEvent {
  url: string;
}
declare interface OnPageBeginEvent {
  url: string;
}
declare interface OnLoadStartedEvent {
  url: string;
}
declare interface OnLoadFinishedEvent {
   url: string;
 }
declare interface OnProgressChangeEvent {
  newProgress: int;
}
declare interface OnTitleReceiveEvent {
  title: string;
  isRealTitle?: boolean;
}
declare interface OnGeolocationShowEvent {
  origin: string;
  geolocation: JsGeolocation;
}
declare interface OnAlertEvent {
  url: string;
  message: string;
  result: JsResult;
}
declare interface OnBeforeUnloadEvent {
  url: string;
  message: string;
  result: JsResult;
  isReload?: boolean;
}
declare interface OnConfirmEvent {
  url: string;
  message: string;
  result: JsResult;
}
declare interface OnPromptEvent {
  url: string;
  message: string;
  value: string;
  result: JsResult;
}
declare interface OnConsoleEvent {
  message: ConsoleMessage;
}
declare interface OnErrorReceiveEvent {
  request: WebResourceRequest;
  error: WebResourceError;
}
declare interface OnHttpErrorReceiveEvent {
  request: WebResourceRequest;
  response: WebResourceResponse;
}
declare interface OnDownloadStartEvent {
  url: string;
  userAgent: string;
  contentDisposition: string;
  mimetype: string;
  contentLength: number;
}
declare interface OnRefreshAccessedHistoryEvent {
  url: string;
  isRefreshed: boolean;
}
declare interface OnRenderExitedEvent {
  renderExitReason: RenderExitReason;
}
declare interface OnShowFileSelectorEvent {
  result: FileSelectorResult;
  fileSelector: FileSelectorParam;
}
declare interface OnResourceLoadEvent {
  url: string;
}
declare interface OnScaleChangeEvent {
  oldScale: double;
  newScale: double;
}
declare interface OnHttpAuthRequestEvent {
  handler: HttpAuthHandler;
  host: string;
  realm: string;
}
declare interface OnInterceptRequestEvent {
  request: WebResourceRequest;
}
declare interface OnPermissionRequestEvent {
  request: PermissionRequest;
}
declare interface OnScreenCaptureRequestEvent {
  handler: ScreenCaptureHandler;
}
declare interface OnContextMenuShowEvent {
  param: WebContextMenuParam;
  result: WebContextMenuResult;
}
declare interface OnSearchResultReceiveEvent {
  activeMatchOrdinal: number;
  numberOfMatches: number;
  isDoneCounting: boolean;
}
declare interface OnScrollEvent {
  xOffset: double;
  yOffset: double;
}
declare interface OnSslErrorEventReceiveEvent {
  handler: SslErrorHandler;
  error: SslError;
  certChainData?: Array<Uint8Array>;
}
declare interface OnClientAuthenticationEvent {
  handler : ClientAuthenticationHandler;
  host : string;
  port : number;
  keyTypes : Array<string>;
  issuers : Array<string>;
}
declare interface OnWindowNewEvent {
  isAlert: boolean;
  isUserTrigger: boolean;
  targetUrl: string;
  handler: ControllerHandler;
}
declare interface OnTouchIconUrlReceivedEvent {
  url: string;
  precomposed: boolean;
}
declare interface OnFaviconReceivedEvent {
  favicon: PixelMap;
  favicon: image.PixelMap;
}
declare interface OnPageVisibleEvent {
  url: string;
}
declare interface OnDataResubmittedEvent {
  handler: DataResubmissionHandler;
}
declare interface OnAudioStateChangedEvent {
  playing: boolean;
}
declare interface OnFirstContentfulPaintEvent {
  navigationStartTick: long;
  firstContentfulPaintMs: long;
}
declare interface OnLoadInterceptEvent {
  data: WebResourceRequest;
}
declare interface OnOverScrollEvent {
  xOffset: double;
  yOffset: double;
}
declare interface JavaScriptProxy {
  object: object;
  name: string;
  methodList: Array<string>;
  controller: WebController | WebviewController;
    controller: WebviewController;
  asyncMethodList?: Array<string>;
  permission?: string;
}
declare enum WebKeyboardAvoidMode {
  RESIZE_VISUAL = 0,
  RESIZE_CONTENT = 1,
  OVERLAYS_CONTENT = 2
}
declare enum WebElementType {
  IMAGE = 1,
  LINK = 2
}
declare enum WebResponseType {
  LONG_PRESS = 1
}
declare enum WebBypassVsyncCondition {
  NONE = 0,
  SCROLLBY_FROM_ZERO_OFFSET = 1
}
declare enum AudioSessionType {
  AMBIENT=3
}
declare interface PreviewMenuOptions {
  hapticFeedbackMode?: HapticFeedbackMode;
}
declare interface SelectionMenuOptionsExt {
  onAppear?: Callback<void>;
  onDisappear?: Callback<void>;
  preview?: CustomBuilder;
  menuType?: MenuType;
  previewMenuOptions?: PreviewMenuOptions;
}
declare class WebAttribute extends CommonMethod<WebAttribute> {
  javaScriptAccess(javaScriptAccess: boolean): WebAttribute;
  fileAccess(fileAccess: boolean): WebAttribute;
  onlineImageAccess(onlineImageAccess: boolean): WebAttribute;
  domStorageAccess(domStorageAccess: boolean): WebAttribute;
  imageAccess(imageAccess: boolean): WebAttribute;
  mixedMode(mixedMode: MixedMode): WebAttribute;
  zoomAccess(zoomAccess: boolean): WebAttribute;
  geolocationAccess(geolocationAccess: boolean): WebAttribute;
  javaScriptProxy(javaScriptProxy: JavaScriptProxy): WebAttribute;
  password(password: boolean): WebAttribute;
  cacheMode(cacheMode: CacheMode): WebAttribute;
  darkMode(mode: WebDarkMode): WebAttribute;
  forceDarkAccess(access: boolean): WebAttribute;
  mediaOptions(options: WebMediaOptions): WebAttribute;
  tableData(tableData: boolean): WebAttribute;
  wideViewModeAccess(wideViewModeAccess: boolean): WebAttribute;
  overviewModeAccess(overviewModeAccess: boolean): WebAttribute;
  overScrollMode(mode: OverScrollMode): WebAttribute;
  blurOnKeyboardHideMode(mode: BlurOnKeyboardHideMode): WebAttribute;
  textZoomAtio(textZoomAtio: number): WebAttribute;
  textZoomRatio(textZoomRatio: int): WebAttribute;
  databaseAccess(databaseAccess: boolean): WebAttribute;
  initialScale(percent: double): WebAttribute;
  userAgent(userAgent: string): WebAttribute;
  metaViewport(enabled: boolean): WebAttribute;
  onPageEnd(callback: Callback<OnPageEndEvent>): WebAttribute;
  onPageBegin(callback: Callback<OnPageBeginEvent>): WebAttribute;
  onLoadStarted(callback: Callback<OnLoadStartedEvent>): WebAttribute;
  onLoadFinished(callback: Callback<OnLoadFinishedEvent>): WebAttribute;
  onProgressChange(callback: Callback<OnProgressChangeEvent>): WebAttribute;
  onTitleReceive(callback: Callback<OnTitleReceiveEvent>): WebAttribute;
  onGeolocationHide(callback: () => void): WebAttribute;
  onGeolocationShow(callback: Callback<OnGeolocationShowEvent>): WebAttribute;
  onRequestSelected(callback: () => void): WebAttribute;
  onAlert(callback: Callback<OnAlertEvent, boolean>): WebAttribute;
  onBeforeUnload(callback: Callback<OnBeforeUnloadEvent, boolean>): WebAttribute;
  onConfirm(callback: Callback<OnConfirmEvent, boolean>): WebAttribute;
  onPrompt(callback: Callback<OnPromptEvent, boolean>): WebAttribute;
  onConsole(callback: Callback<OnConsoleEvent, boolean>): WebAttribute;
  onErrorReceive(callback: Callback<OnErrorReceiveEvent>): WebAttribute;
  onHttpErrorReceive(callback: Callback<OnHttpErrorReceiveEvent>): WebAttribute;
  onDownloadStart(callback: Callback<OnDownloadStartEvent>): WebAttribute;
  onRefreshAccessedHistory(callback: Callback<OnRefreshAccessedHistoryEvent>): WebAttribute;
  onUrlLoadIntercept(callback: (event?: { data: string | WebResourceRequest }) => boolean): WebAttribute;
  onSslErrorReceive(callback: (event?: { handler: Function, error: object }) => void): WebAttribute;
  onRenderExited(callback: Callback<OnRenderExitedEvent>): WebAttribute;
  onShowFileSelector(callback: Callback<OnShowFileSelectorEvent, boolean>): WebAttribute;
  onRenderExited(callback: (event?: { detail: object }) => boolean): WebAttribute;
  onFileSelectorShow(callback: (event?: { callback: Function, fileSelector: object }) => void): WebAttribute;
  onResourceLoad(callback: Callback<OnResourceLoadEvent>): WebAttribute;
  onFullScreenExit(callback: () => void): WebAttribute;
  onFullScreenEnter(callback: OnFullScreenEnterCallback): WebAttribute;
  onScaleChange(callback: Callback<OnScaleChangeEvent>): WebAttribute;
  onHttpAuthRequest(callback: Callback<OnHttpAuthRequestEvent, boolean>): WebAttribute;
  onInterceptRequest(callback: Callback<OnInterceptRequestEvent, WebResourceResponse>): WebAttribute;
  onPermissionRequest(callback: Callback<OnPermissionRequestEvent>): WebAttribute;
  onScreenCaptureRequest(callback: Callback<OnScreenCaptureRequestEvent>): WebAttribute;
  onContextMenuShow(callback: Callback<OnContextMenuShowEvent, boolean>): WebAttribute;
  onContextMenuHide(callback: OnContextMenuHideCallback): WebAttribute;
  mediaPlayGestureAccess(access: boolean): WebAttribute;
  onSearchResultReceive(callback: Callback<OnSearchResultReceiveEvent>): WebAttribute;
  onScroll(callback: Callback<OnScrollEvent>): WebAttribute;
  onSslErrorEventReceive(callback: Callback<OnSslErrorEventReceiveEvent>): WebAttribute;
  onSslErrorEvent(callback: OnSslErrorEventCallback): WebAttribute;
  onClientAuthenticationRequest(callback: Callback<OnClientAuthenticationEvent>): WebAttribute;
  onWindowNew(callback: Callback<OnWindowNewEvent>): WebAttribute;
  onWindowExit(callback: () => void): WebAttribute;
  multiWindowAccess(multiWindow: boolean): WebAttribute;
  onInterceptKeyEvent(callback: (event: KeyEvent) => boolean): WebAttribute;
  webStandardFont(family: string): WebAttribute;
  webSerifFont(family: string): WebAttribute;
  webSansSerifFont(family: string): WebAttribute;
  webFixedFont(family: string): WebAttribute;
  webFantasyFont(family: string): WebAttribute;
  webCursiveFont(family: string): WebAttribute;
  defaultFixedFontSize(size: int): WebAttribute;
  defaultFontSize(size: int): WebAttribute;
  minFontSize(size: int): WebAttribute;
  minLogicalFontSize(size: int): WebAttribute;
  defaultTextEncodingFormat(textEncodingFormat: string): WebAttribute;
  forceDisplayScrollBar(enabled: boolean): WebAttribute;
  blockNetwork(block: boolean): WebAttribute;
  horizontalScrollBarAccess(horizontalScrollBar: boolean): WebAttribute;
  verticalScrollBarAccess(verticalScrollBar: boolean): WebAttribute;
  onTouchIconUrlReceived(callback: Callback<OnTouchIconUrlReceivedEvent>): WebAttribute;
  onFaviconReceived(callback: Callback<OnFaviconReceivedEvent>): WebAttribute;
  onPageVisible(callback: Callback<OnPageVisibleEvent>): WebAttribute;
  onDataResubmitted(callback: Callback<OnDataResubmittedEvent>): WebAttribute;
  pinchSmooth(isEnabled: boolean): WebAttribute;
  allowWindowOpenMethod(flag: boolean): WebAttribute;
  onAudioStateChanged(callback: Callback<OnAudioStateChangedEvent>): WebAttribute;
  onFirstContentfulPaint(callback: Callback<OnFirstContentfulPaintEvent>): WebAttribute;
  onFirstMeaningfulPaint(callback: OnFirstMeaningfulPaintCallback): WebAttribute;
  onLargestContentfulPaint(callback: OnLargestContentfulPaintCallback): WebAttribute;
  onLoadIntercept(callback: Callback<OnLoadInterceptEvent, boolean>): WebAttribute;
  onControllerAttached(callback: () => void): WebAttribute;
  onOverScroll(callback: Callback<OnOverScrollEvent>): WebAttribute;
  onSafeBrowsingCheckResult(callback: OnSafeBrowsingCheckResultCallback): WebAttribute;
  onNavigationEntryCommitted(callback: OnNavigationEntryCommittedCallback): WebAttribute;
  onIntelligentTrackingPreventionResult(callback: OnIntelligentTrackingPreventionCallback): WebAttribute;
  javaScriptOnDocumentStart(scripts: Array<ScriptItem>): WebAttribute;
  javaScriptOnDocumentEnd(scripts: Array<ScriptItem>): WebAttribute;
  layoutMode(mode: WebLayoutMode): WebAttribute;
  nestedScroll(value: NestedScrollOptions | NestedScrollOptionsExt): WebAttribute;
  enableNativeEmbedMode(mode: boolean): WebAttribute;
  registerNativeEmbedRule(tag: string, type:string): WebAttribute;
  onNativeEmbedLifecycleChange(callback: (event: NativeEmbedDataInfo) => void): WebAttribute;
  onNativeEmbedVisibilityChange(callback: OnNativeEmbedVisibilityChangeCallback): WebAttribute;
  onNativeEmbedGestureEvent(callback: (event: NativeEmbedTouchInfo) => void): WebAttribute;
  onNativeEmbedMouseEvent(callback: MouseInfoCallback): WebAttribute;
  copyOptions(value: CopyOptions): WebAttribute;
  onOverrideUrlLoading(callback: OnOverrideUrlLoadingCallback): WebAttribute;
  textAutosizing(textAutosizing: boolean): WebAttribute;
  enableNativeMediaPlayer(config: NativeMediaPlayerConfig): WebAttribute;
  onRenderProcessNotResponding(callback: OnRenderProcessNotRespondingCallback): WebAttribute;
  onRenderProcessResponding(callback: OnRenderProcessRespondingCallback): WebAttribute;
  selectionMenuOptions(expandedMenuOptions: Array<ExpandedMenuItemOptions>): WebAttribute;
  onViewportFitChanged(callback: OnViewportFitChangedCallback): WebAttribute;
  onInterceptKeyboardAttach(callback: WebKeyboardCallback): WebAttribute;
  onAdsBlocked(callback: OnAdsBlockedCallback): WebAttribute;
  keyboardAvoidMode(mode: WebKeyboardAvoidMode): WebAttribute;
  editMenuOptions(editMenu: EditMenuOptions): WebAttribute;
  enableHapticFeedback(enabled: boolean): WebAttribute;
  bindSelectionMenu(elementType: WebElementType, content: CustomBuilder, responseType: WebResponseType,
      options?: SelectionMenuOptionsExt): WebAttribute;
  optimizeParserBudget(optimizeParserBudget: boolean): WebAttribute;
  enableFollowSystemFontWeight(follow: boolean): WebAttribute;
  enableWebAVSession(enabled: boolean): WebAttribute;
  runJavaScriptOnDocumentStart(scripts: Array<ScriptItem>): WebAttribute;
  runJavaScriptOnDocumentEnd(scripts: Array<ScriptItem>): WebAttribute;
  runJavaScriptOnHeadEnd(scripts: Array<ScriptItem>): WebAttribute;
  nativeEmbedOptions(options?: EmbedOptions): WebAttribute;
  enableDataDetector(enable: boolean): WebAttribute;
  dataDetectorConfig(config: TextDataDetectorConfig): WebAttribute;
  onActivateContent(callback: Callback<void>): WebAttribute;
  bypassVsyncCondition(condition: WebBypassVsyncCondition): WebAttribute;
  gestureFocusMode(mode: GestureFocusMode): WebAttribute;
}
declare const Web: WebInterface;
declare const WebInstance: WebAttribute;
declare interface SslErrorEvent {
  handler: SslErrorHandler;
  error: SslError;
  url: string;
  originalUrl: string;
  referrer: string;
  isFatalError: boolean;
  isMainFrame: boolean;
}
declare interface ExpandedMenuItemOptions {
  content: ResourceStr;
  startIcon?: ResourceStr;
  action: (selectedText: {plainText: string}) => void;
}
declare interface NestedScrollOptionsExt {
  scrollUp?: NestedScrollMode;
  scrollDown?: NestedScrollMode;
  scrollRight?: NestedScrollMode;
  scrollLeft?: NestedScrollMode;
}
declare interface EmbedOptions {
  supportDefaultIntrinsicSize?: boolean;
  supportCssDisplayChange?: boolean;
}
declare enum GestureFocusMode {
  DEFAULT = 0,
  GESTURE_TAP_AND_LONG_PRESS = 1
}