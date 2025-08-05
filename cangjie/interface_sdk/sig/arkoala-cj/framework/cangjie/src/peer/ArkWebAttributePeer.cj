/*
 * Copyright (c) 2024-2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


// WARNING! THIS FILE IS AUTO-GENERATED, DO NOT MAKE CHANGES, THEY WILL BE LOST ON NEXT GENERATION!

package idlize
import std.collection.*
import Interop.*
import KoalaRuntime.*
import KoalaRuntime.memoize.*
import std.time.DateTime
public open class ArkWebPeer <: ArkCommonMethodPeer {
    protected ArkWebPeer(peerPtr: UInt64, id: Int32, name: String, flags: Int32) {
        super(peerPtr, id, name, flags)
    }
    static public func create(component: Option<ComponentBase>, flags: Int32): ArkWebPeer {
        let peerId = PeerNode.nextId()
        let _peerPtr = ArkUIGeneratedNativeModule._Web_construct(peerId, flags)
        let _peer = ArkWebPeer(_peerPtr, peerId, "Web", flags)
        if (let Some(component) <- component) { component.setPeer(_peer) }
        return _peer
    }
    public open func setWebOptionsAttribute(value: WebOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        WebOptions_serializer.write(thisSerializer, value);
        ArkUIGeneratedNativeModule._WebInterface_setWebOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setJavaScriptAccessAttribute(javaScriptAccess: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setJavaScriptAccess(this.peer.ptr, if (javaScriptAccess) { Int32(1) } else { Int32(0) });
    }
    public open func setFileAccessAttribute(fileAccess: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setFileAccess(this.peer.ptr, if (fileAccess) { Int32(1) } else { Int32(0) });
    }
    public open func setOnlineImageAccessAttribute(onlineImageAccess: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setOnlineImageAccess(this.peer.ptr, if (onlineImageAccess) { Int32(1) } else { Int32(0) });
    }
    public open func setDomStorageAccessAttribute(domStorageAccess: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setDomStorageAccess(this.peer.ptr, if (domStorageAccess) { Int32(1) } else { Int32(0) });
    }
    public open func setImageAccessAttribute(imageAccess: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setImageAccess(this.peer.ptr, if (imageAccess) { Int32(1) } else { Int32(0) });
    }
    public open func setMixedModeAttribute(mixedMode: MixedMode): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setMixedMode(this.peer.ptr, mixedMode.value);
    }
    public open func setZoomAccessAttribute(zoomAccess: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setZoomAccess(this.peer.ptr, if (zoomAccess) { Int32(1) } else { Int32(0) });
    }
    public open func setGeolocationAccessAttribute(geolocationAccess: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setGeolocationAccess(this.peer.ptr, if (geolocationAccess) { Int32(1) } else { Int32(0) });
    }
    public open func setJavaScriptProxyAttribute(javaScriptProxy: JavaScriptProxy): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        JavaScriptProxy_serializer.write(thisSerializer, javaScriptProxy);
        ArkUIGeneratedNativeModule._WebAttribute_setJavaScriptProxy(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPasswordAttribute(password: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setPassword(this.peer.ptr, if (password) { Int32(1) } else { Int32(0) });
    }
    public open func setCacheModeAttribute(cacheMode: CacheMode): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setCacheMode(this.peer.ptr, cacheMode.value);
    }
    public open func setDarkModeAttribute(mode: WebDarkMode): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setDarkMode(this.peer.ptr, mode.value);
    }
    public open func setForceDarkAccessAttribute(access: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setForceDarkAccess(this.peer.ptr, if (access) { Int32(1) } else { Int32(0) });
    }
    public open func setMediaOptionsAttribute(options: WebMediaOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        WebMediaOptions_serializer.write(thisSerializer, options);
        ArkUIGeneratedNativeModule._WebAttribute_setMediaOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTableDataAttribute(tableData: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setTableData(this.peer.ptr, if (tableData) { Int32(1) } else { Int32(0) });
    }
    public open func setWideViewModeAccessAttribute(wideViewModeAccess: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setWideViewModeAccess(this.peer.ptr, if (wideViewModeAccess) { Int32(1) } else { Int32(0) });
    }
    public open func setOverviewModeAccessAttribute(overviewModeAccess: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setOverviewModeAccess(this.peer.ptr, if (overviewModeAccess) { Int32(1) } else { Int32(0) });
    }
    public open func setOverScrollModeAttribute(mode: OverScrollMode): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setOverScrollMode(this.peer.ptr, mode.value);
    }
    public open func setBlurOnKeyboardHideModeAttribute(mode: BlurOnKeyboardHideMode): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setBlurOnKeyboardHideMode(this.peer.ptr, mode.value);
    }
    public open func setTextZoomAtioAttribute(textZoomAtio: Float64): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setTextZoomAtio(this.peer.ptr, textZoomAtio);
    }
    public open func setTextZoomRatioAttribute(textZoomRatio: Int32): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setTextZoomRatio(this.peer.ptr, textZoomRatio);
    }
    public open func setDatabaseAccessAttribute(databaseAccess: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setDatabaseAccess(this.peer.ptr, if (databaseAccess) { Int32(1) } else { Int32(0) });
    }
    public open func setInitialScaleAttribute(percent: Float64): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setInitialScale(this.peer.ptr, percent);
    }
    public open func setUserAgentAttribute(userAgent: String): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setUserAgent(this.peer.ptr, userAgent);
    }
    public open func setMetaViewportAttribute(enabled: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setMetaViewport(this.peer.ptr, if (enabled) { Int32(1) } else { Int32(0) });
    }
    public open func setOnPageEndAttribute(callback_: ((parameter: OnPageEndEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnPageEnd(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnPageBeginAttribute(callback_: ((parameter: OnPageBeginEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnPageBegin(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnLoadStartedAttribute(callback_: ((parameter: OnLoadStartedEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnLoadStarted(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnLoadFinishedAttribute(callback_: ((parameter: OnLoadFinishedEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnLoadFinished(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnProgressChangeAttribute(callback_: ((parameter: OnProgressChangeEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnProgressChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnTitleReceiveAttribute(callback_: ((parameter: OnTitleReceiveEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnTitleReceive(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnGeolocationHideAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnGeolocationHide(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnGeolocationShowAttribute(callback_: ((parameter: OnGeolocationShowEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnGeolocationShow(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnRequestSelectedAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnRequestSelected(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnAlertAttribute(callback_: ((parameter: OnAlertEvent) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnAlert(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnBeforeUnloadAttribute(callback_: ((parameter: OnBeforeUnloadEvent) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnBeforeUnload(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnConfirmAttribute(callback_: ((parameter: OnConfirmEvent) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnConfirm(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnPromptAttribute(callback_: ((parameter: OnPromptEvent) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnPrompt(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnConsoleAttribute(callback_: ((parameter: OnConsoleEvent) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnConsole(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnErrorReceiveAttribute(callback_: ((parameter: OnErrorReceiveEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnErrorReceive(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnHttpErrorReceiveAttribute(callback_: ((parameter: OnHttpErrorReceiveEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnHttpErrorReceive(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDownloadStartAttribute(callback_: ((parameter: OnDownloadStartEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnDownloadStart(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnRefreshAccessedHistoryAttribute(callback_: ((parameter: OnRefreshAccessedHistoryEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnRefreshAccessedHistory(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnUrlLoadInterceptAttribute(callback_: ((event: Literal_Union_String_WebResourceRequest_data) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnUrlLoadIntercept(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSslErrorReceiveAttribute(callback_: ((event: Literal_Function_handler_Object_error) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnSslErrorReceive(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnRenderExited0Attribute(callback_: ((parameter: OnRenderExitedEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnRenderExited0(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnRenderExited1Attribute(callback_: ((event: Literal_Object_detail) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnRenderExited1(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnShowFileSelectorAttribute(callback_: ((parameter: OnShowFileSelectorEvent) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnShowFileSelector(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnFileSelectorShowAttribute(callback_: ((event: Literal_Function_callback__Object_fileSelector) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnFileSelectorShow(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnResourceLoadAttribute(callback_: ((parameter: OnResourceLoadEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnResourceLoad(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnFullScreenExitAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnFullScreenExit(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnFullScreenEnterAttribute(callback_: OnFullScreenEnterCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnFullScreenEnter(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnScaleChangeAttribute(callback_: ((parameter: OnScaleChangeEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnScaleChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnHttpAuthRequestAttribute(callback_: ((parameter: OnHttpAuthRequestEvent) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnHttpAuthRequest(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnInterceptRequestAttribute(callback_: ((parameter: OnInterceptRequestEvent) -> WebResourceResponse)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnInterceptRequest(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnPermissionRequestAttribute(callback_: ((parameter: OnPermissionRequestEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnPermissionRequest(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnScreenCaptureRequestAttribute(callback_: ((parameter: OnScreenCaptureRequestEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnScreenCaptureRequest(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnContextMenuShowAttribute(callback_: ((parameter: OnContextMenuShowEvent) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnContextMenuShow(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnContextMenuHideAttribute(callback_: OnContextMenuHideCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnContextMenuHide(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMediaPlayGestureAccessAttribute(access: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setMediaPlayGestureAccess(this.peer.ptr, if (access) { Int32(1) } else { Int32(0) });
    }
    public open func setOnSearchResultReceiveAttribute(callback_: ((parameter: OnSearchResultReceiveEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnSearchResultReceive(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnScrollAttribute(callback_: ((parameter: OnScrollEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnScroll(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSslErrorEventReceiveAttribute(callback_: ((parameter: OnSslErrorEventReceiveEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnSslErrorEventReceive(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSslErrorEventAttribute(callback_: OnSslErrorEventCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnSslErrorEvent(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnClientAuthenticationRequestAttribute(callback_: ((parameter: OnClientAuthenticationEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnClientAuthenticationRequest(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnWindowNewAttribute(callback_: ((parameter: OnWindowNewEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnWindowNew(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnWindowExitAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnWindowExit(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setMultiWindowAccessAttribute(multiWindow: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setMultiWindowAccess(this.peer.ptr, if (multiWindow) { Int32(1) } else { Int32(0) });
    }
    public open func setOnInterceptKeyEventAttribute(callback_: ((parameter: KeyEvent) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnInterceptKeyEvent(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setWebStandardFontAttribute(family: String): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setWebStandardFont(this.peer.ptr, family);
    }
    public open func setWebSerifFontAttribute(family: String): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setWebSerifFont(this.peer.ptr, family);
    }
    public open func setWebSansSerifFontAttribute(family: String): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setWebSansSerifFont(this.peer.ptr, family);
    }
    public open func setWebFixedFontAttribute(family: String): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setWebFixedFont(this.peer.ptr, family);
    }
    public open func setWebFantasyFontAttribute(family: String): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setWebFantasyFont(this.peer.ptr, family);
    }
    public open func setWebCursiveFontAttribute(family: String): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setWebCursiveFont(this.peer.ptr, family);
    }
    public open func setDefaultFixedFontSizeAttribute(size: Int32): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setDefaultFixedFontSize(this.peer.ptr, size);
    }
    public open func setDefaultFontSizeAttribute(size: Int32): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setDefaultFontSize(this.peer.ptr, size);
    }
    public open func setMinFontSizeAttribute(size: Int32): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setMinFontSize(this.peer.ptr, size);
    }
    public open func setMinLogicalFontSizeAttribute(size: Int32): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setMinLogicalFontSize(this.peer.ptr, size);
    }
    public open func setDefaultTextEncodingFormatAttribute(textEncodingFormat: String): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setDefaultTextEncodingFormat(this.peer.ptr, textEncodingFormat);
    }
    public open func setForceDisplayScrollBarAttribute(enabled: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setForceDisplayScrollBar(this.peer.ptr, if (enabled) { Int32(1) } else { Int32(0) });
    }
    public open func setBlockNetworkAttribute(block: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setBlockNetwork(this.peer.ptr, if (block) { Int32(1) } else { Int32(0) });
    }
    public open func setHorizontalScrollBarAccessAttribute(horizontalScrollBar: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setHorizontalScrollBarAccess(this.peer.ptr, if (horizontalScrollBar) { Int32(1) } else { Int32(0) });
    }
    public open func setVerticalScrollBarAccessAttribute(verticalScrollBar: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setVerticalScrollBarAccess(this.peer.ptr, if (verticalScrollBar) { Int32(1) } else { Int32(0) });
    }
    public open func setOnTouchIconUrlReceivedAttribute(callback_: ((parameter: OnTouchIconUrlReceivedEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnTouchIconUrlReceived(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnFaviconReceivedAttribute(callback_: ((parameter: OnFaviconReceivedEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnFaviconReceived(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnPageVisibleAttribute(callback_: ((parameter: OnPageVisibleEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnPageVisible(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnDataResubmittedAttribute(callback_: ((parameter: OnDataResubmittedEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnDataResubmitted(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setPinchSmoothAttribute(isEnabled: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setPinchSmooth(this.peer.ptr, if (isEnabled) { Int32(1) } else { Int32(0) });
    }
    public open func setAllowWindowOpenMethodAttribute(flag: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setAllowWindowOpenMethod(this.peer.ptr, if (flag) { Int32(1) } else { Int32(0) });
    }
    public open func setOnAudioStateChangedAttribute(callback_: ((parameter: OnAudioStateChangedEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnAudioStateChanged(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnFirstContentfulPaintAttribute(callback_: ((parameter: OnFirstContentfulPaintEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnFirstContentfulPaint(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnFirstMeaningfulPaintAttribute(callback_: OnFirstMeaningfulPaintCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnFirstMeaningfulPaint(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnLargestContentfulPaintAttribute(callback_: OnLargestContentfulPaintCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnLargestContentfulPaint(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnLoadInterceptAttribute(callback_: ((parameter: OnLoadInterceptEvent) -> Bool)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnLoadIntercept(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnControllerAttachedAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnControllerAttached(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnOverScrollAttribute(callback_: ((parameter: OnOverScrollEvent) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnOverScroll(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnSafeBrowsingCheckResultAttribute(callback_: OnSafeBrowsingCheckResultCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnSafeBrowsingCheckResult(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnNavigationEntryCommittedAttribute(callback_: OnNavigationEntryCommittedCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnNavigationEntryCommitted(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnIntelligentTrackingPreventionResultAttribute(callback_: OnIntelligentTrackingPreventionCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnIntelligentTrackingPreventionResult(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setJavaScriptOnDocumentStartAttribute(scripts: ArrayList<ScriptItem>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(scripts.size));
        for (scriptsCounterI in 0..scripts.size) {
            let scriptsTmpElement: ScriptItem = scripts[Int64(scriptsCounterI)]
            ScriptItem_serializer.write(thisSerializer, scriptsTmpElement);
        }
        ArkUIGeneratedNativeModule._WebAttribute_setJavaScriptOnDocumentStart(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setJavaScriptOnDocumentEndAttribute(scripts: ArrayList<ScriptItem>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(scripts.size));
        for (scriptsCounterI in 0..scripts.size) {
            let scriptsTmpElement: ScriptItem = scripts[Int64(scriptsCounterI)]
            ScriptItem_serializer.write(thisSerializer, scriptsTmpElement);
        }
        ArkUIGeneratedNativeModule._WebAttribute_setJavaScriptOnDocumentEnd(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setLayoutModeAttribute(mode: WebLayoutMode): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setLayoutMode(this.peer.ptr, mode.value);
    }
    public open func setNestedScrollAttribute(value: Union_NestedScrollOptions_NestedScrollOptionsExt): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (value.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let valueForIdx0 = value.getValue0()
            NestedScrollOptions_serializer.write(thisSerializer, valueForIdx0);
        } else if (value.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let valueForIdx1 = value.getValue1()
            NestedScrollOptionsExt_serializer.write(thisSerializer, valueForIdx1);
        }
        ArkUIGeneratedNativeModule._WebAttribute_setNestedScroll(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableNativeEmbedModeAttribute(mode: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setEnableNativeEmbedMode(this.peer.ptr, if (mode) { Int32(1) } else { Int32(0) });
    }
    public open func setRegisterNativeEmbedRuleAttribute(tag: String, type_: String): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setRegisterNativeEmbedRule(this.peer.ptr, tag, type_);
    }
    public open func setOnNativeEmbedLifecycleChangeAttribute(callback_: ((event: NativeEmbedDataInfo) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnNativeEmbedLifecycleChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnNativeEmbedVisibilityChangeAttribute(callback_: OnNativeEmbedVisibilityChangeCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnNativeEmbedVisibilityChange(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnNativeEmbedGestureEventAttribute(callback_: ((event: NativeEmbedTouchInfo) -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnNativeEmbedGestureEvent(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnNativeEmbedMouseEventAttribute(callback_: MouseInfoCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnNativeEmbedMouseEvent(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setCopyOptionsAttribute(value: CopyOptions): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setCopyOptions(this.peer.ptr, value.value);
    }
    public open func setOnOverrideUrlLoadingAttribute(callback_: OnOverrideUrlLoadingCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnOverrideUrlLoading(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setTextAutosizingAttribute(textAutosizing: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setTextAutosizing(this.peer.ptr, if (textAutosizing) { Int32(1) } else { Int32(0) });
    }
    public open func setEnableNativeMediaPlayerAttribute(config: NativeMediaPlayerConfig): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        NativeMediaPlayerConfig_serializer.write(thisSerializer, config);
        ArkUIGeneratedNativeModule._WebAttribute_setEnableNativeMediaPlayer(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnRenderProcessNotRespondingAttribute(callback_: OnRenderProcessNotRespondingCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnRenderProcessNotResponding(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnRenderProcessRespondingAttribute(callback_: OnRenderProcessRespondingCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnRenderProcessResponding(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setSelectionMenuOptionsAttribute(expandedMenuOptions: ArrayList<ExpandedMenuItemOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(expandedMenuOptions.size));
        for (expandedMenuOptionsCounterI in 0..expandedMenuOptions.size) {
            let expandedMenuOptionsTmpElement: ExpandedMenuItemOptions = expandedMenuOptions[Int64(expandedMenuOptionsCounterI)]
            ExpandedMenuItemOptions_serializer.write(thisSerializer, expandedMenuOptionsTmpElement);
        }
        ArkUIGeneratedNativeModule._WebAttribute_setSelectionMenuOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnViewportFitChangedAttribute(callback_: OnViewportFitChangedCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnViewportFitChanged(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnInterceptKeyboardAttachAttribute(callback_: WebKeyboardCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnInterceptKeyboardAttach(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnAdsBlockedAttribute(callback_: OnAdsBlockedCallback): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnAdsBlocked(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setKeyboardAvoidModeAttribute(mode: WebKeyboardAvoidMode): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setKeyboardAvoidMode(this.peer.ptr, mode.value);
    }
    public open func setEditMenuOptionsAttribute(editMenu: EditMenuOptions): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        EditMenuOptions_serializer.write(thisSerializer, editMenu);
        ArkUIGeneratedNativeModule._WebAttribute_setEditMenuOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableHapticFeedbackAttribute(enabled: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setEnableHapticFeedback(this.peer.ptr, if (enabled) { Int32(1) } else { Int32(0) });
    }
    public open func setBindSelectionMenuAttribute(elementType: WebElementType, content: CustomBuilder, responseType: WebResponseType, options: Option<SelectionMenuOptionsExt>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(CallbackTransformer.transformFromCustomBuilder(content));
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            SelectionMenuOptionsExt_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._WebAttribute_setBindSelectionMenu(this.peer.ptr, elementType.value, thisSerializer.asBuffer(), thisSerializer.length(), responseType.value);
        thisSerializer.release();
    }
    public open func setOptimizeParserBudgetAttribute(optimizeParserBudget: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setOptimizeParserBudget(this.peer.ptr, if (optimizeParserBudget) { Int32(1) } else { Int32(0) });
    }
    public open func setEnableFollowSystemFontWeightAttribute(follow: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setEnableFollowSystemFontWeight(this.peer.ptr, if (follow) { Int32(1) } else { Int32(0) });
    }
    public open func setEnableWebAVSessionAttribute(enabled: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setEnableWebAVSession(this.peer.ptr, if (enabled) { Int32(1) } else { Int32(0) });
    }
    public open func setRunJavaScriptOnDocumentStartAttribute(scripts: ArrayList<ScriptItem>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(scripts.size));
        for (scriptsCounterI in 0..scripts.size) {
            let scriptsTmpElement: ScriptItem = scripts[Int64(scriptsCounterI)]
            ScriptItem_serializer.write(thisSerializer, scriptsTmpElement);
        }
        ArkUIGeneratedNativeModule._WebAttribute_setRunJavaScriptOnDocumentStart(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setRunJavaScriptOnDocumentEndAttribute(scripts: ArrayList<ScriptItem>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(scripts.size));
        for (scriptsCounterI in 0..scripts.size) {
            let scriptsTmpElement: ScriptItem = scripts[Int64(scriptsCounterI)]
            ScriptItem_serializer.write(thisSerializer, scriptsTmpElement);
        }
        ArkUIGeneratedNativeModule._WebAttribute_setRunJavaScriptOnDocumentEnd(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setRunJavaScriptOnHeadEndAttribute(scripts: ArrayList<ScriptItem>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.writeInt32(Int32(scripts.size));
        for (scriptsCounterI in 0..scripts.size) {
            let scriptsTmpElement: ScriptItem = scripts[Int64(scriptsCounterI)]
            ScriptItem_serializer.write(thisSerializer, scriptsTmpElement);
        }
        ArkUIGeneratedNativeModule._WebAttribute_setRunJavaScriptOnHeadEnd(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setNativeEmbedOptionsAttribute(options: Option<EmbedOptions>): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        if (options.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsTmpValue = options
            EmbedOptions_serializer.write(thisSerializer, optionsTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._WebAttribute_setNativeEmbedOptions(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setEnableDataDetectorAttribute(enable: Bool): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setEnableDataDetector(this.peer.ptr, if (enable) { Int32(1) } else { Int32(0) });
    }
    public open func setDataDetectorConfigAttribute(config: TextDataDetectorConfig): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        TextDataDetectorConfig_serializer.write(thisSerializer, config);
        ArkUIGeneratedNativeModule._WebAttribute_setDataDetectorConfig(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setOnActivateContentAttribute(callback_: (() -> Unit)): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        thisSerializer.holdAndWriteCallback(callback_);
        ArkUIGeneratedNativeModule._WebAttribute_setOnActivateContent(this.peer.ptr, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    public open func setBypassVsyncConditionAttribute(condition: WebBypassVsyncCondition): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setBypassVsyncCondition(this.peer.ptr, condition.value);
    }
    public open func setGestureFocusModeAttribute(mode: GestureFocusMode): Unit {
        ArkUIGeneratedNativeModule._WebAttribute_setGestureFocusMode(this.peer.ptr, mode.value);
    }
}
