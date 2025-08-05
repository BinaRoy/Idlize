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
public interface WebAttributeInterfaces <: CommonMethodInterfaces {
}
public open class WebAttribute <: WebAttributeInterfaces {
    WebAttribute() {
    }
}
public interface WebAttribute {
}
public open class ArkWebComponent <: ArkCommonMethodComponent & WebAttribute {
    public open func getPeer(): ArkWebPeer {
        if (let Some(peer) <- this.peer) {
            return match (peer as ArkWebPeer) { case Some(x) => x; case None => throw Exception("Cast is not succeeded")}
        } else { throw Exception()}
    }
    public open func setWebOptions(value: WebOptions): Unit {
        if (this.checkPriority("setWebOptions")) {
            let value_casted: WebOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setWebOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func javaScriptAccess(javaScriptAccess: Bool): Unit {
        if (this.checkPriority("javaScriptAccess")) {
            let javaScriptAccess_casted: Bool = javaScriptAccess
            let thisPeer = this.getPeer()
            thisPeer.setJavaScriptAccessAttribute(javaScriptAccess_casted)
            return
        }
        return
    }
    )
    public open func fileAccess(fileAccess: Bool): Unit {
        if (this.checkPriority("fileAccess")) {
            let fileAccess_casted: Bool = fileAccess
            let thisPeer = this.getPeer()
            thisPeer.setFileAccessAttribute(fileAccess_casted)
            return
        }
        return
    }
    )
    public open func onlineImageAccess(onlineImageAccess: Bool): Unit {
        if (this.checkPriority("onlineImageAccess")) {
            let onlineImageAccess_casted: Bool = onlineImageAccess
            let thisPeer = this.getPeer()
            thisPeer.setOnlineImageAccessAttribute(onlineImageAccess_casted)
            return
        }
        return
    }
    )
    public open func domStorageAccess(domStorageAccess: Bool): Unit {
        if (this.checkPriority("domStorageAccess")) {
            let domStorageAccess_casted: Bool = domStorageAccess
            let thisPeer = this.getPeer()
            thisPeer.setDomStorageAccessAttribute(domStorageAccess_casted)
            return
        }
        return
    }
    )
    public open func imageAccess(imageAccess: Bool): Unit {
        if (this.checkPriority("imageAccess")) {
            let imageAccess_casted: Bool = imageAccess
            let thisPeer = this.getPeer()
            thisPeer.setImageAccessAttribute(imageAccess_casted)
            return
        }
        return
    }
    )
    public open func mixedMode(mixedMode: MixedMode): Unit {
        if (this.checkPriority("mixedMode")) {
            let mixedMode_casted: MixedMode = mixedMode
            let thisPeer = this.getPeer()
            thisPeer.setMixedModeAttribute(mixedMode_casted)
            return
        }
        return
    }
    )
    public open func zoomAccess(zoomAccess: Bool): Unit {
        if (this.checkPriority("zoomAccess")) {
            let zoomAccess_casted: Bool = zoomAccess
            let thisPeer = this.getPeer()
            thisPeer.setZoomAccessAttribute(zoomAccess_casted)
            return
        }
        return
    }
    )
    public open func geolocationAccess(geolocationAccess: Bool): Unit {
        if (this.checkPriority("geolocationAccess")) {
            let geolocationAccess_casted: Bool = geolocationAccess
            let thisPeer = this.getPeer()
            thisPeer.setGeolocationAccessAttribute(geolocationAccess_casted)
            return
        }
        return
    }
    )
    public open func javaScriptProxy(javaScriptProxy: JavaScriptProxy): Unit {
        if (this.checkPriority("javaScriptProxy")) {
            let javaScriptProxy_casted: JavaScriptProxy = javaScriptProxy
            let thisPeer = this.getPeer()
            thisPeer.setJavaScriptProxyAttribute(javaScriptProxy_casted)
            return
        }
        return
    }
    )
    public open func password(password: Bool): Unit {
        if (this.checkPriority("password")) {
            let password_casted: Bool = password
            let thisPeer = this.getPeer()
            thisPeer.setPasswordAttribute(password_casted)
            return
        }
        return
    }
    )
    public open func cacheMode(cacheMode: CacheMode): Unit {
        if (this.checkPriority("cacheMode")) {
            let cacheMode_casted: CacheMode = cacheMode
            let thisPeer = this.getPeer()
            thisPeer.setCacheModeAttribute(cacheMode_casted)
            return
        }
        return
    }
    )
    public open func darkMode(mode: WebDarkMode): Unit {
        if (this.checkPriority("darkMode")) {
            let mode_casted: WebDarkMode = mode
            let thisPeer = this.getPeer()
            thisPeer.setDarkModeAttribute(mode_casted)
            return
        }
        return
    }
    )
    public open func forceDarkAccess(access: Bool): Unit {
        if (this.checkPriority("forceDarkAccess")) {
            let access_casted: Bool = access
            let thisPeer = this.getPeer()
            thisPeer.setForceDarkAccessAttribute(access_casted)
            return
        }
        return
    }
    )
    public open func mediaOptions(options: WebMediaOptions): Unit {
        if (this.checkPriority("mediaOptions")) {
            let options_casted: WebMediaOptions = options
            let thisPeer = this.getPeer()
            thisPeer.setMediaOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func tableData(tableData: Bool): Unit {
        if (this.checkPriority("tableData")) {
            let tableData_casted: Bool = tableData
            let thisPeer = this.getPeer()
            thisPeer.setTableDataAttribute(tableData_casted)
            return
        }
        return
    }
    )
    public open func wideViewModeAccess(wideViewModeAccess: Bool): Unit {
        if (this.checkPriority("wideViewModeAccess")) {
            let wideViewModeAccess_casted: Bool = wideViewModeAccess
            let thisPeer = this.getPeer()
            thisPeer.setWideViewModeAccessAttribute(wideViewModeAccess_casted)
            return
        }
        return
    }
    )
    public open func overviewModeAccess(overviewModeAccess: Bool): Unit {
        if (this.checkPriority("overviewModeAccess")) {
            let overviewModeAccess_casted: Bool = overviewModeAccess
            let thisPeer = this.getPeer()
            thisPeer.setOverviewModeAccessAttribute(overviewModeAccess_casted)
            return
        }
        return
    }
    )
    public open func overScrollMode(mode: OverScrollMode): Unit {
        if (this.checkPriority("overScrollMode")) {
            let mode_casted: OverScrollMode = mode
            let thisPeer = this.getPeer()
            thisPeer.setOverScrollModeAttribute(mode_casted)
            return
        }
        return
    }
    )
    public open func blurOnKeyboardHideMode(mode: BlurOnKeyboardHideMode): Unit {
        if (this.checkPriority("blurOnKeyboardHideMode")) {
            let mode_casted: BlurOnKeyboardHideMode = mode
            let thisPeer = this.getPeer()
            thisPeer.setBlurOnKeyboardHideModeAttribute(mode_casted)
            return
        }
        return
    }
    )
    public open func textZoomAtio(textZoomAtio: Float64): Unit {
        if (this.checkPriority("textZoomAtio")) {
            let textZoomAtio_casted: Float64 = textZoomAtio
            let thisPeer = this.getPeer()
            thisPeer.setTextZoomAtioAttribute(textZoomAtio_casted)
            return
        }
        return
    }
    )
    public open func textZoomRatio(textZoomRatio: Int32): Unit {
        if (this.checkPriority("textZoomRatio")) {
            let textZoomRatio_casted: Int32 = textZoomRatio
            let thisPeer = this.getPeer()
            thisPeer.setTextZoomRatioAttribute(textZoomRatio_casted)
            return
        }
        return
    }
    )
    public open func databaseAccess(databaseAccess: Bool): Unit {
        if (this.checkPriority("databaseAccess")) {
            let databaseAccess_casted: Bool = databaseAccess
            let thisPeer = this.getPeer()
            thisPeer.setDatabaseAccessAttribute(databaseAccess_casted)
            return
        }
        return
    }
    )
    public open func initialScale(percent: Float64): Unit {
        if (this.checkPriority("initialScale")) {
            let percent_casted: Float64 = percent
            let thisPeer = this.getPeer()
            thisPeer.setInitialScaleAttribute(percent_casted)
            return
        }
        return
    }
    )
    public open func userAgent(userAgent: String): Unit {
        if (this.checkPriority("userAgent")) {
            let userAgent_casted: String = userAgent
            let thisPeer = this.getPeer()
            thisPeer.setUserAgentAttribute(userAgent_casted)
            return
        }
        return
    }
    )
    public open func metaViewport(enabled: Bool): Unit {
        if (this.checkPriority("metaViewport")) {
            let enabled_casted: Bool = enabled
            let thisPeer = this.getPeer()
            thisPeer.setMetaViewportAttribute(enabled_casted)
            return
        }
        return
    }
    )
    public open func onPageEnd(callback_: ((parameter: OnPageEndEvent) -> Unit)): Unit {
        if (this.checkPriority("onPageEnd")) {
            let callback__casted: ((parameter: OnPageEndEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnPageEndAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onPageBegin(callback_: ((parameter: OnPageBeginEvent) -> Unit)): Unit {
        if (this.checkPriority("onPageBegin")) {
            let callback__casted: ((parameter: OnPageBeginEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnPageBeginAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onLoadStarted(callback_: ((parameter: OnLoadStartedEvent) -> Unit)): Unit {
        if (this.checkPriority("onLoadStarted")) {
            let callback__casted: ((parameter: OnLoadStartedEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnLoadStartedAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onLoadFinished(callback_: ((parameter: OnLoadFinishedEvent) -> Unit)): Unit {
        if (this.checkPriority("onLoadFinished")) {
            let callback__casted: ((parameter: OnLoadFinishedEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnLoadFinishedAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onProgressChange(callback_: ((parameter: OnProgressChangeEvent) -> Unit)): Unit {
        if (this.checkPriority("onProgressChange")) {
            let callback__casted: ((parameter: OnProgressChangeEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnProgressChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onTitleReceive(callback_: ((parameter: OnTitleReceiveEvent) -> Unit)): Unit {
        if (this.checkPriority("onTitleReceive")) {
            let callback__casted: ((parameter: OnTitleReceiveEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnTitleReceiveAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onGeolocationHide(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onGeolocationHide")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnGeolocationHideAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onGeolocationShow(callback_: ((parameter: OnGeolocationShowEvent) -> Unit)): Unit {
        if (this.checkPriority("onGeolocationShow")) {
            let callback__casted: ((parameter: OnGeolocationShowEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnGeolocationShowAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onRequestSelected(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onRequestSelected")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnRequestSelectedAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onAlert(callback_: ((parameter: OnAlertEvent) -> Bool)): Unit {
        if (this.checkPriority("onAlert")) {
            let callback__casted: ((parameter: OnAlertEvent) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnAlertAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onBeforeUnload(callback_: ((parameter: OnBeforeUnloadEvent) -> Bool)): Unit {
        if (this.checkPriority("onBeforeUnload")) {
            let callback__casted: ((parameter: OnBeforeUnloadEvent) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnBeforeUnloadAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onConfirm(callback_: ((parameter: OnConfirmEvent) -> Bool)): Unit {
        if (this.checkPriority("onConfirm")) {
            let callback__casted: ((parameter: OnConfirmEvent) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnConfirmAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onPrompt(callback_: ((parameter: OnPromptEvent) -> Bool)): Unit {
        if (this.checkPriority("onPrompt")) {
            let callback__casted: ((parameter: OnPromptEvent) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnPromptAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onConsole(callback_: ((parameter: OnConsoleEvent) -> Bool)): Unit {
        if (this.checkPriority("onConsole")) {
            let callback__casted: ((parameter: OnConsoleEvent) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnConsoleAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onErrorReceive(callback_: ((parameter: OnErrorReceiveEvent) -> Unit)): Unit {
        if (this.checkPriority("onErrorReceive")) {
            let callback__casted: ((parameter: OnErrorReceiveEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnErrorReceiveAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onHttpErrorReceive(callback_: ((parameter: OnHttpErrorReceiveEvent) -> Unit)): Unit {
        if (this.checkPriority("onHttpErrorReceive")) {
            let callback__casted: ((parameter: OnHttpErrorReceiveEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnHttpErrorReceiveAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onDownloadStart(callback_: ((parameter: OnDownloadStartEvent) -> Unit)): Unit {
        if (this.checkPriority("onDownloadStart")) {
            let callback__casted: ((parameter: OnDownloadStartEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnDownloadStartAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onRefreshAccessedHistory(callback_: ((parameter: OnRefreshAccessedHistoryEvent) -> Unit)): Unit {
        if (this.checkPriority("onRefreshAccessedHistory")) {
            let callback__casted: ((parameter: OnRefreshAccessedHistoryEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnRefreshAccessedHistoryAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onUrlLoadIntercept(callback_: ((event: Literal_Union_String_WebResourceRequest_data) -> Bool)): Unit {
        if (this.checkPriority("onUrlLoadIntercept")) {
            let callback__casted: ((event: Literal_Union_String_WebResourceRequest_data) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnUrlLoadInterceptAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onSslErrorReceive(callback_: ((event: Literal_Function_handler_Object_error) -> Unit)): Unit {
        if (this.checkPriority("onSslErrorReceive")) {
            let callback__casted: ((event: Literal_Function_handler_Object_error) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnSslErrorReceiveAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onRenderExited(callback_: ((parameter: OnRenderExitedEvent) -> Unit)): Unit {
        if (this.checkPriority("onRenderExited")) {
            let callback__casted: ((parameter: OnRenderExitedEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnRenderExited0Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onRenderExited(callback_: ((event: Literal_Object_detail) -> Bool)): Unit {
        if (this.checkPriority("onRenderExited")) {
            let callback__casted: ((event: Literal_Object_detail) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnRenderExited1Attribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onShowFileSelector(callback_: ((parameter: OnShowFileSelectorEvent) -> Bool)): Unit {
        if (this.checkPriority("onShowFileSelector")) {
            let callback__casted: ((parameter: OnShowFileSelectorEvent) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnShowFileSelectorAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onFileSelectorShow(callback_: ((event: Literal_Function_callback__Object_fileSelector) -> Unit)): Unit {
        if (this.checkPriority("onFileSelectorShow")) {
            let callback__casted: ((event: Literal_Function_callback__Object_fileSelector) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnFileSelectorShowAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onResourceLoad(callback_: ((parameter: OnResourceLoadEvent) -> Unit)): Unit {
        if (this.checkPriority("onResourceLoad")) {
            let callback__casted: ((parameter: OnResourceLoadEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnResourceLoadAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onFullScreenExit(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onFullScreenExit")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnFullScreenExitAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onFullScreenEnter(callback_: OnFullScreenEnterCallback): Unit {
        if (this.checkPriority("onFullScreenEnter")) {
            let callback__casted: OnFullScreenEnterCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnFullScreenEnterAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onScaleChange(callback_: ((parameter: OnScaleChangeEvent) -> Unit)): Unit {
        if (this.checkPriority("onScaleChange")) {
            let callback__casted: ((parameter: OnScaleChangeEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnScaleChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onHttpAuthRequest(callback_: ((parameter: OnHttpAuthRequestEvent) -> Bool)): Unit {
        if (this.checkPriority("onHttpAuthRequest")) {
            let callback__casted: ((parameter: OnHttpAuthRequestEvent) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnHttpAuthRequestAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onInterceptRequest(callback_: ((parameter: OnInterceptRequestEvent) -> WebResourceResponse)): Unit {
        if (this.checkPriority("onInterceptRequest")) {
            let callback__casted: ((parameter: OnInterceptRequestEvent) -> WebResourceResponse) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnInterceptRequestAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onPermissionRequest(callback_: ((parameter: OnPermissionRequestEvent) -> Unit)): Unit {
        if (this.checkPriority("onPermissionRequest")) {
            let callback__casted: ((parameter: OnPermissionRequestEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnPermissionRequestAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onScreenCaptureRequest(callback_: ((parameter: OnScreenCaptureRequestEvent) -> Unit)): Unit {
        if (this.checkPriority("onScreenCaptureRequest")) {
            let callback__casted: ((parameter: OnScreenCaptureRequestEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnScreenCaptureRequestAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onContextMenuShow(callback_: ((parameter: OnContextMenuShowEvent) -> Bool)): Unit {
        if (this.checkPriority("onContextMenuShow")) {
            let callback__casted: ((parameter: OnContextMenuShowEvent) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnContextMenuShowAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onContextMenuHide(callback_: OnContextMenuHideCallback): Unit {
        if (this.checkPriority("onContextMenuHide")) {
            let callback__casted: OnContextMenuHideCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnContextMenuHideAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func mediaPlayGestureAccess(access: Bool): Unit {
        if (this.checkPriority("mediaPlayGestureAccess")) {
            let access_casted: Bool = access
            let thisPeer = this.getPeer()
            thisPeer.setMediaPlayGestureAccessAttribute(access_casted)
            return
        }
        return
    }
    )
    public open func onSearchResultReceive(callback_: ((parameter: OnSearchResultReceiveEvent) -> Unit)): Unit {
        if (this.checkPriority("onSearchResultReceive")) {
            let callback__casted: ((parameter: OnSearchResultReceiveEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnSearchResultReceiveAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onScroll(callback_: ((parameter: OnScrollEvent) -> Unit)): Unit {
        if (this.checkPriority("onScroll")) {
            let callback__casted: ((parameter: OnScrollEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnScrollAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onSslErrorEventReceive(callback_: ((parameter: OnSslErrorEventReceiveEvent) -> Unit)): Unit {
        if (this.checkPriority("onSslErrorEventReceive")) {
            let callback__casted: ((parameter: OnSslErrorEventReceiveEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnSslErrorEventReceiveAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onSslErrorEvent(callback_: OnSslErrorEventCallback): Unit {
        if (this.checkPriority("onSslErrorEvent")) {
            let callback__casted: OnSslErrorEventCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnSslErrorEventAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onClientAuthenticationRequest(callback_: ((parameter: OnClientAuthenticationEvent) -> Unit)): Unit {
        if (this.checkPriority("onClientAuthenticationRequest")) {
            let callback__casted: ((parameter: OnClientAuthenticationEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnClientAuthenticationRequestAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onWindowNew(callback_: ((parameter: OnWindowNewEvent) -> Unit)): Unit {
        if (this.checkPriority("onWindowNew")) {
            let callback__casted: ((parameter: OnWindowNewEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnWindowNewAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onWindowExit(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onWindowExit")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnWindowExitAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func multiWindowAccess(multiWindow: Bool): Unit {
        if (this.checkPriority("multiWindowAccess")) {
            let multiWindow_casted: Bool = multiWindow
            let thisPeer = this.getPeer()
            thisPeer.setMultiWindowAccessAttribute(multiWindow_casted)
            return
        }
        return
    }
    )
    public open func onInterceptKeyEvent(callback_: ((parameter: KeyEvent) -> Bool)): Unit {
        if (this.checkPriority("onInterceptKeyEvent")) {
            let callback__casted: ((parameter: KeyEvent) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnInterceptKeyEventAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func webStandardFont(family: String): Unit {
        if (this.checkPriority("webStandardFont")) {
            let family_casted: String = family
            let thisPeer = this.getPeer()
            thisPeer.setWebStandardFontAttribute(family_casted)
            return
        }
        return
    }
    )
    public open func webSerifFont(family: String): Unit {
        if (this.checkPriority("webSerifFont")) {
            let family_casted: String = family
            let thisPeer = this.getPeer()
            thisPeer.setWebSerifFontAttribute(family_casted)
            return
        }
        return
    }
    )
    public open func webSansSerifFont(family: String): Unit {
        if (this.checkPriority("webSansSerifFont")) {
            let family_casted: String = family
            let thisPeer = this.getPeer()
            thisPeer.setWebSansSerifFontAttribute(family_casted)
            return
        }
        return
    }
    )
    public open func webFixedFont(family: String): Unit {
        if (this.checkPriority("webFixedFont")) {
            let family_casted: String = family
            let thisPeer = this.getPeer()
            thisPeer.setWebFixedFontAttribute(family_casted)
            return
        }
        return
    }
    )
    public open func webFantasyFont(family: String): Unit {
        if (this.checkPriority("webFantasyFont")) {
            let family_casted: String = family
            let thisPeer = this.getPeer()
            thisPeer.setWebFantasyFontAttribute(family_casted)
            return
        }
        return
    }
    )
    public open func webCursiveFont(family: String): Unit {
        if (this.checkPriority("webCursiveFont")) {
            let family_casted: String = family
            let thisPeer = this.getPeer()
            thisPeer.setWebCursiveFontAttribute(family_casted)
            return
        }
        return
    }
    )
    public open func defaultFixedFontSize(size: Int32): Unit {
        if (this.checkPriority("defaultFixedFontSize")) {
            let size_casted: Int32 = size
            let thisPeer = this.getPeer()
            thisPeer.setDefaultFixedFontSizeAttribute(size_casted)
            return
        }
        return
    }
    )
    public open func defaultFontSize(size: Int32): Unit {
        if (this.checkPriority("defaultFontSize")) {
            let size_casted: Int32 = size
            let thisPeer = this.getPeer()
            thisPeer.setDefaultFontSizeAttribute(size_casted)
            return
        }
        return
    }
    )
    public open func minFontSize(size: Int32): Unit {
        if (this.checkPriority("minFontSize")) {
            let size_casted: Int32 = size
            let thisPeer = this.getPeer()
            thisPeer.setMinFontSizeAttribute(size_casted)
            return
        }
        return
    }
    )
    public open func minLogicalFontSize(size: Int32): Unit {
        if (this.checkPriority("minLogicalFontSize")) {
            let size_casted: Int32 = size
            let thisPeer = this.getPeer()
            thisPeer.setMinLogicalFontSizeAttribute(size_casted)
            return
        }
        return
    }
    )
    public open func defaultTextEncodingFormat(textEncodingFormat: String): Unit {
        if (this.checkPriority("defaultTextEncodingFormat")) {
            let textEncodingFormat_casted: String = textEncodingFormat
            let thisPeer = this.getPeer()
            thisPeer.setDefaultTextEncodingFormatAttribute(textEncodingFormat_casted)
            return
        }
        return
    }
    )
    public open func forceDisplayScrollBar(enabled: Bool): Unit {
        if (this.checkPriority("forceDisplayScrollBar")) {
            let enabled_casted: Bool = enabled
            let thisPeer = this.getPeer()
            thisPeer.setForceDisplayScrollBarAttribute(enabled_casted)
            return
        }
        return
    }
    )
    public open func blockNetwork(block: Bool): Unit {
        if (this.checkPriority("blockNetwork")) {
            let block_casted: Bool = block
            let thisPeer = this.getPeer()
            thisPeer.setBlockNetworkAttribute(block_casted)
            return
        }
        return
    }
    )
    public open func horizontalScrollBarAccess(horizontalScrollBar: Bool): Unit {
        if (this.checkPriority("horizontalScrollBarAccess")) {
            let horizontalScrollBar_casted: Bool = horizontalScrollBar
            let thisPeer = this.getPeer()
            thisPeer.setHorizontalScrollBarAccessAttribute(horizontalScrollBar_casted)
            return
        }
        return
    }
    )
    public open func verticalScrollBarAccess(verticalScrollBar: Bool): Unit {
        if (this.checkPriority("verticalScrollBarAccess")) {
            let verticalScrollBar_casted: Bool = verticalScrollBar
            let thisPeer = this.getPeer()
            thisPeer.setVerticalScrollBarAccessAttribute(verticalScrollBar_casted)
            return
        }
        return
    }
    )
    public open func onTouchIconUrlReceived(callback_: ((parameter: OnTouchIconUrlReceivedEvent) -> Unit)): Unit {
        if (this.checkPriority("onTouchIconUrlReceived")) {
            let callback__casted: ((parameter: OnTouchIconUrlReceivedEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnTouchIconUrlReceivedAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onFaviconReceived(callback_: ((parameter: OnFaviconReceivedEvent) -> Unit)): Unit {
        if (this.checkPriority("onFaviconReceived")) {
            let callback__casted: ((parameter: OnFaviconReceivedEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnFaviconReceivedAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onPageVisible(callback_: ((parameter: OnPageVisibleEvent) -> Unit)): Unit {
        if (this.checkPriority("onPageVisible")) {
            let callback__casted: ((parameter: OnPageVisibleEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnPageVisibleAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onDataResubmitted(callback_: ((parameter: OnDataResubmittedEvent) -> Unit)): Unit {
        if (this.checkPriority("onDataResubmitted")) {
            let callback__casted: ((parameter: OnDataResubmittedEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnDataResubmittedAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func pinchSmooth(isEnabled: Bool): Unit {
        if (this.checkPriority("pinchSmooth")) {
            let isEnabled_casted: Bool = isEnabled
            let thisPeer = this.getPeer()
            thisPeer.setPinchSmoothAttribute(isEnabled_casted)
            return
        }
        return
    }
    )
    public open func allowWindowOpenMethod(flag: Bool): Unit {
        if (this.checkPriority("allowWindowOpenMethod")) {
            let flag_casted: Bool = flag
            let thisPeer = this.getPeer()
            thisPeer.setAllowWindowOpenMethodAttribute(flag_casted)
            return
        }
        return
    }
    )
    public open func onAudioStateChanged(callback_: ((parameter: OnAudioStateChangedEvent) -> Unit)): Unit {
        if (this.checkPriority("onAudioStateChanged")) {
            let callback__casted: ((parameter: OnAudioStateChangedEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnAudioStateChangedAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onFirstContentfulPaint(callback_: ((parameter: OnFirstContentfulPaintEvent) -> Unit)): Unit {
        if (this.checkPriority("onFirstContentfulPaint")) {
            let callback__casted: ((parameter: OnFirstContentfulPaintEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnFirstContentfulPaintAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onFirstMeaningfulPaint(callback_: OnFirstMeaningfulPaintCallback): Unit {
        if (this.checkPriority("onFirstMeaningfulPaint")) {
            let callback__casted: OnFirstMeaningfulPaintCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnFirstMeaningfulPaintAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onLargestContentfulPaint(callback_: OnLargestContentfulPaintCallback): Unit {
        if (this.checkPriority("onLargestContentfulPaint")) {
            let callback__casted: OnLargestContentfulPaintCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnLargestContentfulPaintAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onLoadIntercept(callback_: ((parameter: OnLoadInterceptEvent) -> Bool)): Unit {
        if (this.checkPriority("onLoadIntercept")) {
            let callback__casted: ((parameter: OnLoadInterceptEvent) -> Bool) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnLoadInterceptAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onControllerAttached(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onControllerAttached")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnControllerAttachedAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onOverScroll(callback_: ((parameter: OnOverScrollEvent) -> Unit)): Unit {
        if (this.checkPriority("onOverScroll")) {
            let callback__casted: ((parameter: OnOverScrollEvent) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnOverScrollAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onSafeBrowsingCheckResult(callback_: OnSafeBrowsingCheckResultCallback): Unit {
        if (this.checkPriority("onSafeBrowsingCheckResult")) {
            let callback__casted: OnSafeBrowsingCheckResultCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnSafeBrowsingCheckResultAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onNavigationEntryCommitted(callback_: OnNavigationEntryCommittedCallback): Unit {
        if (this.checkPriority("onNavigationEntryCommitted")) {
            let callback__casted: OnNavigationEntryCommittedCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnNavigationEntryCommittedAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onIntelligentTrackingPreventionResult(callback_: OnIntelligentTrackingPreventionCallback): Unit {
        if (this.checkPriority("onIntelligentTrackingPreventionResult")) {
            let callback__casted: OnIntelligentTrackingPreventionCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnIntelligentTrackingPreventionResultAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func javaScriptOnDocumentStart(scripts: ArrayList<ScriptItem>): Unit {
        if (this.checkPriority("javaScriptOnDocumentStart")) {
            let scripts_casted: ArrayList<ScriptItem> = scripts
            let thisPeer = this.getPeer()
            thisPeer.setJavaScriptOnDocumentStartAttribute(scripts_casted)
            return
        }
        return
    }
    )
    public open func javaScriptOnDocumentEnd(scripts: ArrayList<ScriptItem>): Unit {
        if (this.checkPriority("javaScriptOnDocumentEnd")) {
            let scripts_casted: ArrayList<ScriptItem> = scripts
            let thisPeer = this.getPeer()
            thisPeer.setJavaScriptOnDocumentEndAttribute(scripts_casted)
            return
        }
        return
    }
    )
    public open func layoutMode(mode: WebLayoutMode): Unit {
        if (this.checkPriority("layoutMode")) {
            let mode_casted: WebLayoutMode = mode
            let thisPeer = this.getPeer()
            thisPeer.setLayoutModeAttribute(mode_casted)
            return
        }
        return
    }
    )
    public open func nestedScroll(value: Union_NestedScrollOptions_NestedScrollOptionsExt): Unit {
        if (this.checkPriority("nestedScroll")) {
            let value_casted: Union_NestedScrollOptions_NestedScrollOptionsExt = value
            let thisPeer = this.getPeer()
            thisPeer.setNestedScrollAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func enableNativeEmbedMode(mode: Bool): Unit {
        if (this.checkPriority("enableNativeEmbedMode")) {
            let mode_casted: Bool = mode
            let thisPeer = this.getPeer()
            thisPeer.setEnableNativeEmbedModeAttribute(mode_casted)
            return
        }
        return
    }
    )
    public open func registerNativeEmbedRule(tag: String, type_: String): Unit {
        if (this.checkPriority("registerNativeEmbedRule")) {
            let tag_casted: String = tag
            let type_casted: String = type_
            let thisPeer = this.getPeer()
            thisPeer.setRegisterNativeEmbedRuleAttribute(tag_casted, type_casted)
            return
        }
        return
    }
    )
    public open func onNativeEmbedLifecycleChange(callback_: ((event: NativeEmbedDataInfo) -> Unit)): Unit {
        if (this.checkPriority("onNativeEmbedLifecycleChange")) {
            let callback__casted: ((event: NativeEmbedDataInfo) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnNativeEmbedLifecycleChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onNativeEmbedVisibilityChange(callback_: OnNativeEmbedVisibilityChangeCallback): Unit {
        if (this.checkPriority("onNativeEmbedVisibilityChange")) {
            let callback__casted: OnNativeEmbedVisibilityChangeCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnNativeEmbedVisibilityChangeAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onNativeEmbedGestureEvent(callback_: ((event: NativeEmbedTouchInfo) -> Unit)): Unit {
        if (this.checkPriority("onNativeEmbedGestureEvent")) {
            let callback__casted: ((event: NativeEmbedTouchInfo) -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnNativeEmbedGestureEventAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onNativeEmbedMouseEvent(callback_: MouseInfoCallback): Unit {
        if (this.checkPriority("onNativeEmbedMouseEvent")) {
            let callback__casted: MouseInfoCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnNativeEmbedMouseEventAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func copyOptions(value: CopyOptions): Unit {
        if (this.checkPriority("copyOptions")) {
            let value_casted: CopyOptions = value
            let thisPeer = this.getPeer()
            thisPeer.setCopyOptionsAttribute(value_casted)
            return
        }
        return
    }
    )
    public open func onOverrideUrlLoading(callback_: OnOverrideUrlLoadingCallback): Unit {
        if (this.checkPriority("onOverrideUrlLoading")) {
            let callback__casted: OnOverrideUrlLoadingCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnOverrideUrlLoadingAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func textAutosizing(textAutosizing: Bool): Unit {
        if (this.checkPriority("textAutosizing")) {
            let textAutosizing_casted: Bool = textAutosizing
            let thisPeer = this.getPeer()
            thisPeer.setTextAutosizingAttribute(textAutosizing_casted)
            return
        }
        return
    }
    )
    public open func enableNativeMediaPlayer(config: NativeMediaPlayerConfig): Unit {
        if (this.checkPriority("enableNativeMediaPlayer")) {
            let config_casted: NativeMediaPlayerConfig = config
            let thisPeer = this.getPeer()
            thisPeer.setEnableNativeMediaPlayerAttribute(config_casted)
            return
        }
        return
    }
    )
    public open func onRenderProcessNotResponding(callback_: OnRenderProcessNotRespondingCallback): Unit {
        if (this.checkPriority("onRenderProcessNotResponding")) {
            let callback__casted: OnRenderProcessNotRespondingCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnRenderProcessNotRespondingAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onRenderProcessResponding(callback_: OnRenderProcessRespondingCallback): Unit {
        if (this.checkPriority("onRenderProcessResponding")) {
            let callback__casted: OnRenderProcessRespondingCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnRenderProcessRespondingAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func selectionMenuOptions(expandedMenuOptions: ArrayList<ExpandedMenuItemOptions>): Unit {
        if (this.checkPriority("selectionMenuOptions")) {
            let expandedMenuOptions_casted: ArrayList<ExpandedMenuItemOptions> = expandedMenuOptions
            let thisPeer = this.getPeer()
            thisPeer.setSelectionMenuOptionsAttribute(expandedMenuOptions_casted)
            return
        }
        return
    }
    )
    public open func onViewportFitChanged(callback_: OnViewportFitChangedCallback): Unit {
        if (this.checkPriority("onViewportFitChanged")) {
            let callback__casted: OnViewportFitChangedCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnViewportFitChangedAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onInterceptKeyboardAttach(callback_: WebKeyboardCallback): Unit {
        if (this.checkPriority("onInterceptKeyboardAttach")) {
            let callback__casted: WebKeyboardCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnInterceptKeyboardAttachAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func onAdsBlocked(callback_: OnAdsBlockedCallback): Unit {
        if (this.checkPriority("onAdsBlocked")) {
            let callback__casted: OnAdsBlockedCallback = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnAdsBlockedAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func keyboardAvoidMode(mode: WebKeyboardAvoidMode): Unit {
        if (this.checkPriority("keyboardAvoidMode")) {
            let mode_casted: WebKeyboardAvoidMode = mode
            let thisPeer = this.getPeer()
            thisPeer.setKeyboardAvoidModeAttribute(mode_casted)
            return
        }
        return
    }
    )
    public open func editMenuOptions(editMenu: EditMenuOptions): Unit {
        if (this.checkPriority("editMenuOptions")) {
            let editMenu_casted: EditMenuOptions = editMenu
            let thisPeer = this.getPeer()
            thisPeer.setEditMenuOptionsAttribute(editMenu_casted)
            return
        }
        return
    }
    )
    public open func enableHapticFeedback(enabled: Bool): Unit {
        if (this.checkPriority("enableHapticFeedback")) {
            let enabled_casted: Bool = enabled
            let thisPeer = this.getPeer()
            thisPeer.setEnableHapticFeedbackAttribute(enabled_casted)
            return
        }
        return
    }
    )
    public open func bindSelectionMenu(elementType: WebElementType, content: CustomBuilder, responseType: WebResponseType, options: Option<SelectionMenuOptionsExt>): Unit {
        if (this.checkPriority("bindSelectionMenu")) {
            let elementType_casted: WebElementType = elementType
            let content_casted: CustomBuilder = content
            let responseType_casted: WebResponseType = responseType
            let options_casted: Option<SelectionMenuOptionsExt> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setBindSelectionMenuAttribute(elementType_casted, content_casted, responseType_casted, options_casted)
            return
        }
        return
    }
    )
    public open func optimizeParserBudget(optimizeParserBudget: Bool): Unit {
        if (this.checkPriority("optimizeParserBudget")) {
            let optimizeParserBudget_casted: Bool = optimizeParserBudget
            let thisPeer = this.getPeer()
            thisPeer.setOptimizeParserBudgetAttribute(optimizeParserBudget_casted)
            return
        }
        return
    }
    )
    public open func enableFollowSystemFontWeight(follow: Bool): Unit {
        if (this.checkPriority("enableFollowSystemFontWeight")) {
            let follow_casted: Bool = follow
            let thisPeer = this.getPeer()
            thisPeer.setEnableFollowSystemFontWeightAttribute(follow_casted)
            return
        }
        return
    }
    )
    public open func enableWebAVSession(enabled: Bool): Unit {
        if (this.checkPriority("enableWebAVSession")) {
            let enabled_casted: Bool = enabled
            let thisPeer = this.getPeer()
            thisPeer.setEnableWebAVSessionAttribute(enabled_casted)
            return
        }
        return
    }
    )
    public open func runJavaScriptOnDocumentStart(scripts: ArrayList<ScriptItem>): Unit {
        if (this.checkPriority("runJavaScriptOnDocumentStart")) {
            let scripts_casted: ArrayList<ScriptItem> = scripts
            let thisPeer = this.getPeer()
            thisPeer.setRunJavaScriptOnDocumentStartAttribute(scripts_casted)
            return
        }
        return
    }
    )
    public open func runJavaScriptOnDocumentEnd(scripts: ArrayList<ScriptItem>): Unit {
        if (this.checkPriority("runJavaScriptOnDocumentEnd")) {
            let scripts_casted: ArrayList<ScriptItem> = scripts
            let thisPeer = this.getPeer()
            thisPeer.setRunJavaScriptOnDocumentEndAttribute(scripts_casted)
            return
        }
        return
    }
    )
    public open func runJavaScriptOnHeadEnd(scripts: ArrayList<ScriptItem>): Unit {
        if (this.checkPriority("runJavaScriptOnHeadEnd")) {
            let scripts_casted: ArrayList<ScriptItem> = scripts
            let thisPeer = this.getPeer()
            thisPeer.setRunJavaScriptOnHeadEndAttribute(scripts_casted)
            return
        }
        return
    }
    )
    public open func nativeEmbedOptions(options: Option<EmbedOptions>): Unit {
        if (this.checkPriority("nativeEmbedOptions")) {
            let options_casted: Option<EmbedOptions> = if (let Some(options) <- options) {options} else { throw Exception("Type has to be not None")}
            let thisPeer = this.getPeer()
            thisPeer.setNativeEmbedOptionsAttribute(options_casted)
            return
        }
        return
    }
    )
    public open func enableDataDetector(enable: Bool): Unit {
        if (this.checkPriority("enableDataDetector")) {
            let enable_casted: Bool = enable
            let thisPeer = this.getPeer()
            thisPeer.setEnableDataDetectorAttribute(enable_casted)
            return
        }
        return
    }
    )
    public open func dataDetectorConfig(config: TextDataDetectorConfig): Unit {
        if (this.checkPriority("dataDetectorConfig")) {
            let config_casted: TextDataDetectorConfig = config
            let thisPeer = this.getPeer()
            thisPeer.setDataDetectorConfigAttribute(config_casted)
            return
        }
        return
    }
    )
    public open func onActivateContent(callback_: (() -> Unit)): Unit {
        if (this.checkPriority("onActivateContent")) {
            let callback__casted: (() -> Unit) = callback_
            let thisPeer = this.getPeer()
            thisPeer.setOnActivateContentAttribute(callback__casted)
            return
        }
        return
    }
    )
    public open func bypassVsyncCondition(condition: WebBypassVsyncCondition): Unit {
        if (this.checkPriority("bypassVsyncCondition")) {
            let condition_casted: WebBypassVsyncCondition = condition
            let thisPeer = this.getPeer()
            thisPeer.setBypassVsyncConditionAttribute(condition_casted)
            return
        }
        return
    }
    )
    public open func gestureFocusMode(mode: GestureFocusMode): Unit {
        if (this.checkPriority("gestureFocusMode")) {
            let mode_casted: GestureFocusMode = mode
            let thisPeer = this.getPeer()
            thisPeer.setGestureFocusModeAttribute(mode_casted)
            return
        }
        return
    }
    )
    public open func applyAttributesFinish(): Unit {
        // we call this function outside of class, so need to make it public
        super.applyAttributesFinish()
    }
}
class WebAttributeStyleHolder {
    var value: ?((attributes: WebAttribute) -> Unit)
    init (value: ?((attributes: WebAttribute) -> Unit)) {
        this.value = value
    }
}

class WebAttributeContentHolder {
    var value: ?(() -> Unit)
    init (value: ?(() -> Unit)) {
        this.value = value
    }
}


@Memo(
    public func ArkWeb(
        style: ?((attributes: WebAttribute) -> Unit),
        content_: ?(() -> Unit),
value: WebOptions
    ): Unit {
        let styleHolder = WebAttributeStyleHolder(style)
        let contentHolder = WebAttributeContentHolder(content_)
        let receiver = remember({ =>
            ArkWebComponent()
        })
        NodeAttach<ArkWebPeer>({ => ArkWebPeer.create(receiver, 0) }) {
            receiver.setWebOptions(value)
            if (let Some(style) <- styleHolder.value) {
                style(receiver)
            }
            if (let Some(content) <- contentHolder.value) {
                content()
            }
        }
    }
)
