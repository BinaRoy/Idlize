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
public open class WebControllerInternal {
    public static func fromPtr(ptr: UInt64): WebController {
        return WebController(ptr)
    }
}
public open class WebController <: MaterializedBase {
    var peer: Option<Finalizable> = Option.None
    public open func getPeer(): Option<Finalizable> {
        return this.peer
    }
    WebController(peerPtr: UInt64) {
        this.peer = Finalizable(peerPtr, WebController.getFinalizer())
    }
    WebController() {
        super(WebController.construct())
    }
    static func construct(): UInt64 {
        let retval = ArkUIGeneratedNativeModule._WebController_construct()
        return retval
    }
    static func getFinalizer(): UInt64 {
        return ArkUIGeneratedNativeModule._WebController_getFinalizer()
    }
    public open func onInactive(): Unit {
        let thisPeer = this
        thisPeer.onInactive_serialize()
        return
    }
    public open func onActive(): Unit {
        let thisPeer = this
        thisPeer.onActive_serialize()
        return
    }
    public open func zoom(factor: Float64): Unit {
        let factor_casted: Float64 = factor
        let thisPeer = this
        thisPeer.zoom_serialize(factor_casted)
        return
    }
    public open func clearHistory(): Unit {
        let thisPeer = this
        thisPeer.clearHistory_serialize()
        return
    }
    public open func runJavaScript(options: Literal_String_script_Callback_String_Void_callback_): Unit {
        let options_casted: Literal_String_script_Callback_String_Void_callback_ = options
        let thisPeer = this
        thisPeer.runJavaScript_serialize(options_casted)
        return
    }
    public open func loadData(options: Literal_String_baseUrl_data_encoding_historyUrl_mimeType): Unit {
        let options_casted: Literal_String_baseUrl_data_encoding_historyUrl_mimeType = options
        let thisPeer = this
        thisPeer.loadData_serialize(options_casted)
        return
    }
    public open func loadUrl(options: Literal_Union_String_Resource_url_Array_Header_headers): Unit {
        let options_casted: Literal_Union_String_Resource_url_Array_Header_headers = options
        let thisPeer = this
        thisPeer.loadUrl_serialize(options_casted)
        return
    }
    public open func refresh(): Unit {
        let thisPeer = this
        thisPeer.refresh_serialize()
        return
    }
    public open func stop(): Unit {
        let thisPeer = this
        thisPeer.stop_serialize()
        return
    }
    public open func registerJavaScriptProxy(options: Literal_Object_object__String_name_Array_String_methodList): Unit {
        let options_casted: Literal_Object_object__String_name_Array_String_methodList = options
        let thisPeer = this
        thisPeer.registerJavaScriptProxy_serialize(options_casted)
        return
    }
    public open func deleteJavaScriptRegister(name: String): Unit {
        let name_casted: String = name
        let thisPeer = this
        thisPeer.deleteJavaScriptRegister_serialize(name_casted)
        return
    }
    public open func getHitTest(): HitTestType {
        return this.getHitTest_serialize()
    }
    public open func requestFocus(): Unit {
        let thisPeer = this
        thisPeer.requestFocus_serialize()
        return
    }
    public open func accessBackward(): Bool {
        return this.accessBackward_serialize()
    }
    public open func accessForward(): Bool {
        return this.accessForward_serialize()
    }
    public open func accessStep(step: Float64): Bool {
        let step_casted: Float64 = step
        return this.accessStep_serialize(step_casted)
    }
    public open func backward(): Unit {
        let thisPeer = this
        thisPeer.backward_serialize()
        return
    }
    public open func forward(): Unit {
        let thisPeer = this
        thisPeer.forward_serialize()
        return
    }
    public open func getCookieManager(): WebCookie {
        return this.getCookieManager_serialize()
    }
    private func onInactive_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebController_onInactive(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func onActive_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebController_onActive(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func zoom_serialize(factor: Float64): Unit {
        ArkUIGeneratedNativeModule._WebController_zoom(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, factor);
    }
    private func clearHistory_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebController_clearHistory(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func runJavaScript_serialize(options: Literal_String_script_Callback_String_Void_callback_): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let optionsScript = options.script
        thisSerializer.writeString(optionsScript);
        let optionsCallback_ = options.callback_
        if (optionsCallback_.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsCallback_TmpValue = optionsCallback_
            thisSerializer.holdAndWriteCallback(optionsCallback_TmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._WebController_runJavaScript(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func loadData_serialize(options: Literal_String_baseUrl_data_encoding_historyUrl_mimeType): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let optionsData = options.data
        thisSerializer.writeString(optionsData);
        let optionsMimeType = options.mimeType
        thisSerializer.writeString(optionsMimeType);
        let optionsEncoding = options.encoding
        thisSerializer.writeString(optionsEncoding);
        let optionsBaseUrl = options.baseUrl
        if (optionsBaseUrl.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsBaseUrlTmpValue = optionsBaseUrl
            thisSerializer.writeString(optionsBaseUrlTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        let optionsHistoryUrl = options.historyUrl
        if (optionsHistoryUrl.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsHistoryUrlTmpValue = optionsHistoryUrl
            thisSerializer.writeString(optionsHistoryUrlTmpValue);
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._WebController_loadData(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func loadUrl_serialize(options: Literal_Union_String_Resource_url_Array_Header_headers): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let optionsUrl = options.url
        if (optionsUrl.getSelector() == 0) {
            thisSerializer.writeInt8(Int8(0));
            let optionsUrlForIdx0 = optionsUrl.getValue0()
            thisSerializer.writeString(optionsUrlForIdx0);
        } else if (optionsUrl.getSelector() == 1) {
            thisSerializer.writeInt8(Int8(1));
            let optionsUrlForIdx1 = optionsUrl.getValue1()
            thisSerializer.writeCustomObject("Any", optionsUrlForIdx1);
        }
        let optionsHeaders = options.headers
        if (optionsHeaders.isSome()) {
            thisSerializer.writeInt8(RuntimeType.OBJECT.ordinal);
            let optionsHeadersTmpValue = optionsHeaders
            thisSerializer.writeInt32(Int32(optionsHeadersTmpValue.size));
            for (optionsHeadersTmpValueCounterI in 0..optionsHeadersTmpValue.size) {
                let optionsHeadersTmpValueTmpElement: Header = optionsHeadersTmpValue[Int64(optionsHeadersTmpValueCounterI)]
                Header_serializer.write(thisSerializer, optionsHeadersTmpValueTmpElement);
            }
        } else {
            thisSerializer.writeInt8(RuntimeType.UNDEFINED.ordinal);
        }
        ArkUIGeneratedNativeModule._WebController_loadUrl(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func refresh_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebController_refresh(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func stop_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebController_stop(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func registerJavaScriptProxy_serialize(options: Literal_Object_object__String_name_Array_String_methodList): Unit {
        let thisSerializer: SerializerBase = SerializerBase.hold()
        let optionsObject_ = options.object_
        thisSerializer.holdAndWriteObject(optionsObject_);
        let optionsName = options.name
        thisSerializer.writeString(optionsName);
        let optionsMethodList = options.methodList
        thisSerializer.writeInt32(Int32(optionsMethodList.size));
        for (optionsMethodListCounterI in 0..optionsMethodList.size) {
            let optionsMethodListTmpElement: String = optionsMethodList[Int64(optionsMethodListCounterI)]
            thisSerializer.writeString(optionsMethodListTmpElement);
        }
        ArkUIGeneratedNativeModule._WebController_registerJavaScriptProxy(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, thisSerializer.asBuffer(), thisSerializer.length());
        thisSerializer.release();
    }
    private func deleteJavaScriptRegister_serialize(name: String): Unit {
        ArkUIGeneratedNativeModule._WebController_deleteJavaScriptRegister(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, name);
    }
    private func getHitTest_serialize(): HitTestType {
        let retval = ArkUIGeneratedNativeModule._WebController_getHitTest(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return HitTestType(retval)
    }
    private func requestFocus_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebController_requestFocus(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func accessBackward_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._WebController_accessBackward(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func accessForward_serialize(): Bool {
        let retval = ArkUIGeneratedNativeModule._WebController_accessForward(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        return retval
    }
    private func accessStep_serialize(step: Float64): Bool {
        let retval = ArkUIGeneratedNativeModule._WebController_accessStep(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")}, step)
        return retval
    }
    private func backward_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebController_backward(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func forward_serialize(): Unit {
        ArkUIGeneratedNativeModule._WebController_forward(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")});
    }
    private func getCookieManager_serialize(): WebCookie {
        let retval = ArkUIGeneratedNativeModule._WebController_getCookieManager(if (let Some(peer) <- this.peer) { peer.ptr } else {throw Exception("")})
        let obj: WebCookie = WebCookieInternal.fromPtr(retval)
        return obj
    }
}
public open class WebController_serializer {
    public static func write(buffer: SerializerBase, value: WebController): Unit {
        var valueSerializer: SerializerBase = buffer
        valueSerializer.writePointer(MaterializedBase.toPeerPtr(value));
    }
    public static func read(buffer: DeserializerBase): WebController {
        var valueDeserializer: DeserializerBase = buffer
        var ptr: UInt64 = valueDeserializer.readPointer()
        return WebControllerInternal.fromPtr(ptr)
    }
}
